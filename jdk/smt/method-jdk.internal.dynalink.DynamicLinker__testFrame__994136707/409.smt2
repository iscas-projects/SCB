(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1696 0)
(declare-sort var277 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getMethodName/1120671905 (var1696) String)
(declare-const null-var1696 var1696)
(declare-const null-String String)
(declare-const var1598 var1696) ; Statement: r1 := @parameter0: java.lang.StackTraceElement 
(assert (not (= var1598 null-var1696)))
(declare-const var100 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var100 null-String)))
(declare-const var864 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var864 null-String)))
(assert true)
(define-const var723 String (getMethodName/1120671905 var1598)) ; Statement: $r2 = virtualinvoke r1.<java.lang.StackTraceElement: java.lang.String getMethodName()>() 
(assert true)
(define-const var2275 Bool (= var100 var723)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto $z2 = 0 
(assert (= (ite var2275 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1347 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {getMethodName/1120671905=([java.lang.StackTraceElement], java.lang.String)}
; {var1696=java.lang.StackTraceElement, var1598=r1, var100=r0, var277=null_type, var864=r3, var723=$r2, var2275=$z0, var1347=$z2}
; {java.lang.StackTraceElement=var1696, r1=var1598, r0=var100, null_type=var277, r3=var864, $r2=var723, $z0=var2275, $z2=var1347}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @parameter0: java.lang.StackTraceElement;	r0 := @parameter1: java.lang.String;	r3 := @parameter2: java.lang.String;	$r2 = virtualinvoke r1.<java.lang.StackTraceElement: java.lang.String getMethodName()>();	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto $z2 = 0;	$z2 = 0;	return $z2
;block_num 3