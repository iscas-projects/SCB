(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3711 0)
(declare-sort var4 0)
(declare-sort var1073 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_format/-647569892 (var1073 String (Array Int var4)) String)
(declare-const null-String String)
(declare-const null-__Array__Int__var4__ (Array Int var4))
(declare-const var1073-ROOT var1073)
(declare-const var325 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var325 null-String)))
(declare-const var2040 (Array Int var4)) ; Statement: r1 := @parameter1: java.lang.Object[] 
(assert (not (= var2040 null-__Array__Int__var4__)))
(define-const var2145 var1073 var1073-ROOT) ; Statement: $r2 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var986 String (String_format/-647569892 var2145 var325 var2040)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r2, r0, r1) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var325=r0, var3711=null_type, var4=java.lang.Object, var2040=r1, var1073=java.util.Locale, var2145=$r2, var986=$r3}
; {r0=var325, null_type=var3711, java.lang.Object=var4, r1=var2040, java.util.Locale=var1073, $r2=var2145, $r3=var986}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.Object[];	$r2 = <java.util.Locale: java.util.Locale ROOT>;	$r3 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r2, r0, r1);	return $r3
;block_num 1