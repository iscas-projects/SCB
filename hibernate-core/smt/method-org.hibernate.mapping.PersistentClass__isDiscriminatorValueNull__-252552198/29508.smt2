(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1329 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDiscriminatorValue/-1691191832 (var1329) String)
(declare-const null-var1329 var1329)
(declare-const var1269 var1329) ; Statement: r0 := @this: org.hibernate.mapping.PersistentClass 
(assert (not (= var1269 null-var1329)))
(define-const var605 String "null") ; Statement: $r2 = "null" 
(assert true)
(define-const var3644 String (getDiscriminatorValue/-1691191832 var1269)) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.mapping.PersistentClass: java.lang.String getDiscriminatorValue()>() 
(assert true)
(define-const var510 Bool (= var605 var3644)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {getDiscriminatorValue/-1691191832=([org.hibernate.mapping.PersistentClass], java.lang.String)}
; {var1329=org.hibernate.mapping.PersistentClass, var1269=r0, var605=$r2, var3644=$r1, var510=$z0}
; {org.hibernate.mapping.PersistentClass=var1329, r0=var1269, $r2=var605, $r1=var3644, $z0=var510}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.hibernate.mapping.PersistentClass;	$r2 = "null";	$r1 = virtualinvoke r0.<org.hibernate.mapping.PersistentClass: java.lang.String getDiscriminatorValue()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	return $z0
;block_num 1