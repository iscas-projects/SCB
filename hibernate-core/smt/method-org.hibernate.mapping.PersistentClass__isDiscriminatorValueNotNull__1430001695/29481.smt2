(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3592 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDiscriminatorValue/-1691191832 (var3592) String)
(declare-const null-var3592 var3592)
(declare-const var2420 var3592) ; Statement: r0 := @this: org.hibernate.mapping.PersistentClass 
(assert (not (= var2420 null-var3592)))
(define-const var3848 String "not null") ; Statement: $r2 = "not null" 
(assert true)
(define-const var3901 String (getDiscriminatorValue/-1691191832 var2420)) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.mapping.PersistentClass: java.lang.String getDiscriminatorValue()>() 
(assert true)
(define-const var3143 Bool (= var3848 var3901)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {getDiscriminatorValue/-1691191832=([org.hibernate.mapping.PersistentClass], java.lang.String)}
; {var3592=org.hibernate.mapping.PersistentClass, var2420=r0, var3848=$r2, var3901=$r1, var3143=$z0}
; {org.hibernate.mapping.PersistentClass=var3592, r0=var2420, $r2=var3848, $r1=var3901, $z0=var3143}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.hibernate.mapping.PersistentClass;	$r2 = "not null";	$r1 = virtualinvoke r0.<org.hibernate.mapping.PersistentClass: java.lang.String getDiscriminatorValue()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	return $z0
;block_num 1