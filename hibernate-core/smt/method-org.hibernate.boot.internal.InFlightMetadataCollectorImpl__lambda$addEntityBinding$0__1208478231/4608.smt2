(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3601 0)
(declare-sort var2899 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getJpaEntityName/-1907231596 (var2899) String)
(declare-const null-String String)
(declare-const null-var2899 var2899)
(declare-const var3805 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3805 null-String)))
(declare-const var1746 var2899) ; Statement: r0 := @parameter1: org.hibernate.mapping.PersistentClass 
(assert (not (= var1746 null-var2899)))
(assert true)
(define-const var402 String (getJpaEntityName/-1907231596 var1746)) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.mapping.PersistentClass: java.lang.String getJpaEntityName()>() 
(assert true)
(define-const var2247 Bool (= var402 var3805)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {getJpaEntityName/-1907231596=([org.hibernate.mapping.PersistentClass], java.lang.String)}
; {var3805=r1, var3601=null_type, var2899=org.hibernate.mapping.PersistentClass, var1746=r0, var402=$r2, var2247=$z0}
; {r1=var3805, null_type=var3601, org.hibernate.mapping.PersistentClass=var2899, r0=var1746, $r2=var402, $z0=var2247}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: org.hibernate.mapping.PersistentClass;	$r2 = virtualinvoke r0.<org.hibernate.mapping.PersistentClass: java.lang.String getJpaEntityName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	return $z0
;block_num 1