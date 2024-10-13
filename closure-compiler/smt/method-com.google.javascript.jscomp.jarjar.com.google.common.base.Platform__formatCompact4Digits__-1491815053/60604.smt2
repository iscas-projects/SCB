(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var446 0)
(declare-sort var3628 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var3628-init () (Array Int var3628))
(declare-fun Float64_valueOf/679560954 (Float64) Float64)
(declare-fun cast-from-Float64-to-var3628 (Float64) var3628)
(declare-fun String_format/-647569892 (var446 String (Array Int var3628)) String)
(declare-const null-Float64 Float64)
(declare-const var446-ROOT var446)
(declare-const null-__Array__Int__var3628__ (Array Int var3628))
(declare-const var3308 Float64) ; Statement: d0 := @parameter0: double 
(assert (not (= var3308 null-Float64)))
(define-const var3815 var446 var446-ROOT) ; Statement: $r1 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var867 (Array Int var3628) arr-var3628-init) ; Statement: $r0 = newarray (java.lang.Object)[1] 
(define-const var712 Float64 (Float64_valueOf/679560954 var3308)) ; Statement: $r2 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0) 
(declare-const var867!1 (Array Int var3628))
(assert (not (= var867!1 null-__Array__Int__var3628__)))
(assert (= (select var867!1 0) (cast-from-Float64-to-var3628 var712))) ; Statement: $r0[0] = $r2 
(define-const var3410 String (String_format/-647569892 var3815 "%.4g" var867!1)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r1, "%.4g", $r0) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var3628-init=([], java.lang.Object[]), Float64_valueOf/679560954=([double], java.lang.Double), cast-from-Float64-to-var3628=([java.lang.Double], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var3308=d0, var446=java.util.Locale, var3815=$r1, var3628=java.lang.Object, var867=$r0, var712=$r2, var3410=$r3}
; {d0=var3308, java.util.Locale=var446, $r1=var3815, java.lang.Object=var3628, $r0=var867, $r2=var712, $r3=var3410}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts d0 := @parameter0: double;	$r1 = <java.util.Locale: java.util.Locale ROOT>;	$r0 = newarray (java.lang.Object)[1];	$r2 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>(d0);	$r0[0] = $r2;	$r3 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r1, "%.4g", $r0);	return $r3
;block_num 1