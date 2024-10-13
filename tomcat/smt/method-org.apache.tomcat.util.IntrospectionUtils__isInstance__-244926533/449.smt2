(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2901 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const var3975 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var3975 null-ClassObject)))
(declare-const var481 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var481 null-String)))
(assert true)
(define-const var3144 String (getName/-1958580599 var3975)) ; Statement: $r2 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var198 Bool (= var481 var3144)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto r3 = virtualinvoke r1.<java.lang.Class: java.lang.Class[] getInterfaces()>() 
(assert (not (= (ite var198 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-1958580599=([java.lang.Class], java.lang.String)}
; {var3975=r1, var481=r0, var2901=null_type, var3144=$r2, var198=$z0}
; {r1=var3975, r0=var481, null_type=var2901, $r2=var3144, $z0=var198}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @parameter0: java.lang.Class;	r0 := @parameter1: java.lang.String;	$r2 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>();	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto r3 = virtualinvoke r1.<java.lang.Class: java.lang.Class[] getInterfaces()>();	return 1
;block_num 2