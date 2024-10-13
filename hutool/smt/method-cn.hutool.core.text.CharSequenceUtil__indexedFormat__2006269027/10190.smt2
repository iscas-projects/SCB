(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1835 0)
(declare-sort var3596 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_toString/-1426662429 (String) String)
(declare-fun var3596_format/590284840 (String (Array Int var1835)) String)
(declare-const null-String String)
(declare-const null-__Array__Int__var1835__ (Array Int var1835))
(declare-const var2001 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var2001 null-String)))
(declare-const var2231 (Array Int var1835)) ; Statement: r1 := @parameter1: java.lang.Object[] 
(assert (not (= var2231 null-__Array__Int__var1835__)))
(define-const var410 String (String_toString/-1426662429 var2001)) ; Statement: $r2 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
(define-const var2322 String (var3596_format/590284840 var410 var2231)) ; Statement: $r3 = staticinvoke <java.text.MessageFormat: java.lang.String format(java.lang.String,java.lang.Object[])>($r2, r1) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String_toString/-1426662429=([java.lang.CharSequence], java.lang.String), var3596_format/590284840=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2001=r0, var1835=java.lang.Object, var2231=r1, var410=$r2, var3596=java.text.MessageFormat, var2322=$r3}
; {r0=var2001, java.lang.Object=var1835, r1=var2231, $r2=var410, java.text.MessageFormat=var3596, $r3=var2322}
;seq <java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	r1 := @parameter1: java.lang.Object[];	$r2 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	$r3 = staticinvoke <java.text.MessageFormat: java.lang.String format(java.lang.String,java.lang.Object[])>($r2, r1);	return $r3
;block_num 1