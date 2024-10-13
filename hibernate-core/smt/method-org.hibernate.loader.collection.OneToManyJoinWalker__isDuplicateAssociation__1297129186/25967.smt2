(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3243 0)
(declare-sort var3090 0)
(declare-sort var3361 0)
(declare-sort var1472 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun oneToManyPersister/-1078755899 (var3243) var3361)
(declare-fun var1472_getTableName/48490405 (var1472) String)
(declare-fun cast-from-var3361-to-var1472 (var3361) var1472)
(declare-const null-var3243 var3243)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var2595 var3243) ; Statement: r0 := @this: org.hibernate.loader.collection.OneToManyJoinWalker 
(assert (not (= var2595 null-var3243)))
(declare-const var3780 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3780 null-String)))
(declare-const var569 (Array Int String)) ; Statement: r4 := @parameter1: java.lang.String[] 
(assert (not (= var569 null-__Array__Int__String__)))
(define-const var2722 var3361 (oneToManyPersister/-1078755899 var2595)) ; Statement: $r1 = r0.<org.hibernate.loader.collection.OneToManyJoinWalker: org.hibernate.persister.collection.QueryableCollection oneToManyPersister> 
(define-const var3445 String (var1472_getTableName/48490405 (cast-from-var3361-to-var1472 var2722))) ; Statement: $r3 = interfaceinvoke $r1.<org.hibernate.persister.collection.QueryableCollection: java.lang.String getTableName()>() 
(assert true)
(define-const var1021 Bool (= var3445 var3780)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 == 0 goto $z3 = 0 
(assert (= (ite var1021 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1391 Bool (ite (= 1 0) true false)) ; Statement: $z3 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z3 != 0 goto $z4 = 1 
(assert (not (= (ite var1391 1 0) 0))) ; Cond: $z3 != 0 
(define-const var3150 Bool (ite (= 1 1) true false)) ; Statement: $z4 = 1 
 ; Statement: goto [?= return $z4] 
(assert true) ; Non Conditional
 ; Statement: return $z4 
(check-sat)
(get-model)
(get-unsat-core)
; {oneToManyPersister/-1078755899=([org.hibernate.loader.collection.OneToManyJoinWalker], org.hibernate.persister.collection.QueryableCollection), var1472_getTableName/48490405=([org.hibernate.persister.entity.Joinable], java.lang.String), cast-from-var3361-to-var1472=([org.hibernate.persister.collection.QueryableCollection], org.hibernate.persister.entity.Joinable)}
; {var3243=org.hibernate.loader.collection.OneToManyJoinWalker, var2595=r0, var3780=r2, var3090=null_type, var569=r4, var3361=org.hibernate.persister.collection.QueryableCollection, var2722=$r1, var1472=org.hibernate.persister.entity.Joinable, var3445=$r3, var1021=$z0, var1391=$z3, var3150=$z4}
; {org.hibernate.loader.collection.OneToManyJoinWalker=var3243, r0=var2595, r2=var3780, null_type=var3090, r4=var569, org.hibernate.persister.collection.QueryableCollection=var3361, $r1=var2722, org.hibernate.persister.entity.Joinable=var1472, $r3=var3445, $z0=var1021, $z3=var1391, $z4=var3150}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.hibernate.loader.collection.OneToManyJoinWalker;	r2 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.String[];	$r1 = r0.<org.hibernate.loader.collection.OneToManyJoinWalker: org.hibernate.persister.collection.QueryableCollection oneToManyPersister>;	$r3 = interfaceinvoke $r1.<org.hibernate.persister.collection.QueryableCollection: java.lang.String getTableName()>();	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 == 0 goto $z3 = 0;	$z3 = 0;	if $z3 != 0 goto $z4 = 1;	$z4 = 1;	goto [?= return $z4];	return $z4
;block_num 5