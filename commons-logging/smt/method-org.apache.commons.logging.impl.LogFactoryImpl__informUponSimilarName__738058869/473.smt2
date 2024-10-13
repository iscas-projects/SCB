(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3402 0)
(declare-sort var284 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var3402 var3402)
(declare-const null-String String)
(declare-const var1098 var3402) ; Statement: r3 := @this: org.apache.commons.logging.impl.LogFactoryImpl 
(assert (not (= var1098 null-var3402)))
(declare-const var1866 String) ; Statement: r2 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1866 null-String)))
(declare-const var705 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var705 null-String)))
(declare-const var709 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var709 null-String)))
(assert true)
(define-const var599 Bool (= var705 var709)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $i0 = <org.apache.commons.logging.impl.LogFactoryImpl: int PKG_LEN> 
(assert (not (= (ite var599 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var3402=org.apache.commons.logging.impl.LogFactoryImpl, var1098=r3, var1866=r2, var705=r0, var284=null_type, var709=r1, var599=$z0}
; {org.apache.commons.logging.impl.LogFactoryImpl=var3402, r3=var1098, r2=var1866, r0=var705, null_type=var284, r1=var709, $z0=var599}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: org.apache.commons.logging.impl.LogFactoryImpl;	r2 := @parameter0: java.lang.StringBuilder;	r0 := @parameter1: java.lang.String;	r1 := @parameter2: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $i0 = <org.apache.commons.logging.impl.LogFactoryImpl: int PKG_LEN>;	return
;block_num 2