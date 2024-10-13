(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2331 0)
(declare-sort var3137 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var3137-init () (Array Int var3137))
(declare-fun slope/635239470 (var2331) Float64)
(declare-fun Float64_valueOf/679560954 (Float64) Float64)
(declare-fun cast-from-Float64-to-var3137 (Float64) var3137)
(declare-fun yIntercept/635239470 (var2331) Float64)
(declare-fun String_format/1339386452 (String (Array Int var3137)) String)
(declare-const null-var2331 var2331)
(declare-const null-__Array__Int__var3137__ (Array Int var3137))
(declare-const var3213 var2331) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.math.LinearTransformation$RegularLinearTransformation 
(assert (not (= var3213 null-var2331)))
(define-const var3805 (Array Int var3137) arr-var3137-init) ; Statement: $r0 = newarray (java.lang.Object)[2] 
(define-const var1259 Float64 (slope/635239470 var3213)) ; Statement: $d0 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.math.LinearTransformation$RegularLinearTransformation: double slope> 
(define-const var3581 Float64 (Float64_valueOf/679560954 var1259)) ; Statement: $r2 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>($d0) 
(declare-const var3805!1 (Array Int var3137))
(assert (not (= var3805!1 null-__Array__Int__var3137__)))
(assert (= (select var3805!1 0) (cast-from-Float64-to-var3137 var3581))) ; Statement: $r0[0] = $r2 
(define-const var3902 Float64 (yIntercept/635239470 var3213)) ; Statement: $d1 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.math.LinearTransformation$RegularLinearTransformation: double yIntercept> 
(define-const var480 Float64 (Float64_valueOf/679560954 var3902)) ; Statement: $r3 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>($d1) 
(declare-const var3805!2 (Array Int var3137))
(assert (not (= var3805!2 null-__Array__Int__var3137__)))
(assert (= (select var3805!2 1) (cast-from-Float64-to-var3137 var480))) ; Statement: $r0[1] = $r3 
(define-const var2443 String (String_format/1339386452 "y = %g * x + %g" var3805!2)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("y = %g * x + %g", $r0) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var3137-init=([], java.lang.Object[]), slope/635239470=([com.google.javascript.jscomp.jarjar.com.google.common.math.LinearTransformation$RegularLinearTransformation], double), Float64_valueOf/679560954=([double], java.lang.Double), cast-from-Float64-to-var3137=([java.lang.Double], java.lang.Object), yIntercept/635239470=([com.google.javascript.jscomp.jarjar.com.google.common.math.LinearTransformation$RegularLinearTransformation], double), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2331=com.google.javascript.jscomp.jarjar.com.google.common.math.LinearTransformation$RegularLinearTransformation, var3213=r1, var3137=java.lang.Object, var3805=$r0, var1259=$d0, var3581=$r2, var3902=$d1, var480=$r3, var2443=$r4}
; {com.google.javascript.jscomp.jarjar.com.google.common.math.LinearTransformation$RegularLinearTransformation=var2331, r1=var3213, java.lang.Object=var3137, $r0=var3805, $d0=var1259, $r2=var3581, $d1=var3902, $r3=var480, $r4=var2443}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.math.LinearTransformation$RegularLinearTransformation;	$r0 = newarray (java.lang.Object)[2];	$d0 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.math.LinearTransformation$RegularLinearTransformation: double slope>;	$r2 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>($d0);	$r0[0] = $r2;	$d1 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.math.LinearTransformation$RegularLinearTransformation: double yIntercept>;	$r3 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>($d1);	$r0[1] = $r3;	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("y = %g * x + %g", $r0);	return $r4
;block_num 1