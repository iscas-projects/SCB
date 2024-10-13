(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2278 0)
(declare-sort var3308 0)
(declare-sort var1012 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getIdentifierProperty/-40137399 (var2278) var1012)
(declare-fun getName/-1464992742 (var1012) String)
(declare-const null-var2278 var2278)
(declare-const null-String String)
(declare-const null-var1012 var1012)
(declare-const var1497 var2278) ; Statement: r0 := @this: org.hibernate.mapping.PersistentClass 
(assert (not (= var1497 null-var2278)))
(declare-const var364 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var364 null-String)))
(assert true)
(define-const var3369 var1012 (getIdentifierProperty/-40137399 var1497)) ; Statement: r1 = virtualinvoke r0.<org.hibernate.mapping.PersistentClass: org.hibernate.mapping.Property getIdentifierProperty()>() 
 ; Statement: if r1 == null goto $r7 = virtualinvoke r0.<org.hibernate.mapping.PersistentClass: java.util.Iterator getPropertyClosureIterator()>() 
(assert (not (= var3369 null-var1012))) ; Negate: Cond: r1 == null  
(assert true)
(define-const var1478 String (getName/-1464992742 var3369)) ; Statement: $r6 = virtualinvoke r1.<org.hibernate.mapping.Property: java.lang.String getName()>() 
(assert true)
(define-const var794 Bool (= var1478 var364)) ; Statement: $z1 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>(r4) 
 ; Statement: if $z1 == 0 goto $r7 = virtualinvoke r0.<org.hibernate.mapping.PersistentClass: java.util.Iterator getPropertyClosureIterator()>() 
(assert (not (= (ite var794 1 0) 0))) ; Negate: Cond: $z1 == 0  
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {getIdentifierProperty/-40137399=([org.hibernate.mapping.PersistentClass], org.hibernate.mapping.Property), getName/-1464992742=([org.hibernate.mapping.Property], java.lang.String)}
; {var2278=org.hibernate.mapping.PersistentClass, var1497=r0, var364=r4, var3308=null_type, var1012=org.hibernate.mapping.Property, var3369=r1, var1478=$r6, var794=$z1}
; {org.hibernate.mapping.PersistentClass=var2278, r0=var1497, r4=var364, null_type=var3308, org.hibernate.mapping.Property=var1012, r1=var3369, $r6=var1478, $z1=var794}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.hibernate.mapping.PersistentClass;	r4 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<org.hibernate.mapping.PersistentClass: org.hibernate.mapping.Property getIdentifierProperty()>();	if r1 == null goto $r7 = virtualinvoke r0.<org.hibernate.mapping.PersistentClass: java.util.Iterator getPropertyClosureIterator()>();	$r6 = virtualinvoke r1.<org.hibernate.mapping.Property: java.lang.String getName()>();	$z1 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>(r4);	if $z1 == 0 goto $r7 = virtualinvoke r0.<org.hibernate.mapping.PersistentClass: java.util.Iterator getPropertyClosureIterator()>();	return 1
;block_num 3