(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2441 0)
(declare-sort var3291 0)
(declare-sort var656 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_format/-647569892 (var656 String (Array Int var3291)) String)
(declare-const null-String String)
(declare-const null-__Array__Int__var3291__ (Array Int var3291))
(declare-const var656-ROOT var656)
(declare-const var607 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var607 null-String)))
(declare-const var116 (Array Int var3291)) ; Statement: r1 := @parameter1: java.lang.Object[] 
(assert (not (= var116 null-__Array__Int__var3291__)))
(define-const var1220 var656 var656-ROOT) ; Statement: $r2 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var603 String (String_format/-647569892 var1220 var607 var116)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r2, r0, r1) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var607=r0, var2441=null_type, var3291=java.lang.Object, var116=r1, var656=java.util.Locale, var1220=$r2, var603=$r3}
; {r0=var607, null_type=var2441, java.lang.Object=var3291, r1=var116, java.util.Locale=var656, $r2=var1220, $r3=var603}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.Object[];	$r2 = <java.util.Locale: java.util.Locale ROOT>;	$r3 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r2, r0, r1);	return $r3
;block_num 1