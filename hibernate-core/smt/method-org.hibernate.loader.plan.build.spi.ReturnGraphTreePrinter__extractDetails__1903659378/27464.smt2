(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var340 0)
(declare-sort var474 0)
(declare-sort var1219 0)
(declare-sort var2077 0)
(declare-sort var893 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var1219-init () (Array Int var1219))
(declare-fun getClass/1258963082 (var1219) ClassObject)
(declare-fun cast-from-var474-to-var1219 (var474) var1219)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(declare-fun cast-from-String-to-var1219 (String) var1219)
(declare-fun var474_getCollectionPersister/-1256660357 (var474) var2077)
(declare-fun var2077_getRole/758162468 (var2077) String)
(declare-fun var474_getQuerySpaceUid/-1908849877 (var474) String)
(declare-fun var474_getPropertyPath/1324070563 (var474) var893)
(declare-fun getFullPath/-627774443 (var893) String)
(declare-fun String_format/1339386452 (String (Array Int var1219)) String)
(declare-const null-var340 var340)
(declare-const null-var474 var474)
(declare-const null-__Array__Int__var1219__ (Array Int var1219))
(declare-const var2644 var340) ; Statement: r10 := @this: org.hibernate.loader.plan.build.spi.ReturnGraphTreePrinter 
(assert (not (= var2644 null-var340)))
(declare-const var110 var474) ; Statement: r1 := @parameter0: org.hibernate.loader.plan.spi.CollectionReference 
(assert (not (= var110 null-var474)))
(define-const var3906 (Array Int var1219) arr-var1219-init) ; Statement: $r0 = newarray (java.lang.Object)[4] 
(assert true)
(define-const var547 ClassObject (getClass/1258963082 (cast-from-var474-to-var1219 var110))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3520 String (getSimpleName/-390194377 var547)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(declare-const var3906!1 (Array Int var1219))
(assert (not (= var3906!1 null-__Array__Int__var1219__)))
(assert (= (select var3906!1 0) (cast-from-String-to-var1219 var3520))) ; Statement: $r0[0] = $r3 
(define-const var3517 var2077 (var474_getCollectionPersister/-1256660357 var110)) ; Statement: $r4 = interfaceinvoke r1.<org.hibernate.loader.plan.spi.CollectionReference: org.hibernate.persister.collection.CollectionPersister getCollectionPersister()>() 
(define-const var574 String (var2077_getRole/758162468 var3517)) ; Statement: $r5 = interfaceinvoke $r4.<org.hibernate.persister.collection.CollectionPersister: java.lang.String getRole()>() 
(declare-const var3906!2 (Array Int var1219))
(assert (not (= var3906!2 null-__Array__Int__var1219__)))
(assert (= (select var3906!2 1) (cast-from-String-to-var1219 var574))) ; Statement: $r0[1] = $r5 
(define-const var2116 String (var474_getQuerySpaceUid/-1908849877 var110)) ; Statement: $r6 = interfaceinvoke r1.<org.hibernate.loader.plan.spi.CollectionReference: java.lang.String getQuerySpaceUid()>() 
(declare-const var3906!3 (Array Int var1219))
(assert (not (= var3906!3 null-__Array__Int__var1219__)))
(assert (= (select var3906!3 2) (cast-from-String-to-var1219 var2116))) ; Statement: $r0[2] = $r6 
(define-const var1349 var893 (var474_getPropertyPath/1324070563 var110)) ; Statement: $r7 = interfaceinvoke r1.<org.hibernate.loader.plan.spi.CollectionReference: org.hibernate.loader.PropertyPath getPropertyPath()>() 
(assert true)
(define-const var3235 String (getFullPath/-627774443 var1349)) ; Statement: $r8 = virtualinvoke $r7.<org.hibernate.loader.PropertyPath: java.lang.String getFullPath()>() 
(declare-const var3906!4 (Array Int var1219))
(assert (not (= var3906!4 null-__Array__Int__var1219__)))
(assert (= (select var3906!4 3) (cast-from-String-to-var1219 var3235))) ; Statement: $r0[3] = $r8 
(define-const var2088 String (String_format/1339386452 "%s(collection=%s, querySpaceUid=%s, path=%s)" var3906!4)) ; Statement: $r9 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s(collection=%s, querySpaceUid=%s, path=%s)", $r0) 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var1219-init=([], java.lang.Object[]), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var474-to-var1219=([org.hibernate.loader.plan.spi.CollectionReference], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), cast-from-String-to-var1219=([java.lang.String], java.lang.Object), var474_getCollectionPersister/-1256660357=([org.hibernate.loader.plan.spi.CollectionReference], org.hibernate.persister.collection.CollectionPersister), var2077_getRole/758162468=([org.hibernate.persister.collection.CollectionPersister], java.lang.String), var474_getQuerySpaceUid/-1908849877=([org.hibernate.loader.plan.spi.CollectionReference], java.lang.String), var474_getPropertyPath/1324070563=([org.hibernate.loader.plan.spi.CollectionReference], org.hibernate.loader.PropertyPath), getFullPath/-627774443=([org.hibernate.loader.PropertyPath], java.lang.String), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var340=org.hibernate.loader.plan.build.spi.ReturnGraphTreePrinter, var2644=r10, var474=org.hibernate.loader.plan.spi.CollectionReference, var110=r1, var1219=java.lang.Object, var3906=$r0, var547=$r2, var3520=$r3, var2077=org.hibernate.persister.collection.CollectionPersister, var3517=$r4, var574=$r5, var2116=$r6, var893=org.hibernate.loader.PropertyPath, var1349=$r7, var3235=$r8, var2088=$r9}
; {org.hibernate.loader.plan.build.spi.ReturnGraphTreePrinter=var340, r10=var2644, org.hibernate.loader.plan.spi.CollectionReference=var474, r1=var110, java.lang.Object=var1219, $r0=var3906, $r2=var547, $r3=var3520, org.hibernate.persister.collection.CollectionPersister=var2077, $r4=var3517, $r5=var574, $r6=var2116, org.hibernate.loader.PropertyPath=var893, $r7=var1349, $r8=var3235, $r9=var2088}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r10 := @this: org.hibernate.loader.plan.build.spi.ReturnGraphTreePrinter;	r1 := @parameter0: org.hibernate.loader.plan.spi.CollectionReference;	$r0 = newarray (java.lang.Object)[4];	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	$r0[0] = $r3;	$r4 = interfaceinvoke r1.<org.hibernate.loader.plan.spi.CollectionReference: org.hibernate.persister.collection.CollectionPersister getCollectionPersister()>();	$r5 = interfaceinvoke $r4.<org.hibernate.persister.collection.CollectionPersister: java.lang.String getRole()>();	$r0[1] = $r5;	$r6 = interfaceinvoke r1.<org.hibernate.loader.plan.spi.CollectionReference: java.lang.String getQuerySpaceUid()>();	$r0[2] = $r6;	$r7 = interfaceinvoke r1.<org.hibernate.loader.plan.spi.CollectionReference: org.hibernate.loader.PropertyPath getPropertyPath()>();	$r8 = virtualinvoke $r7.<org.hibernate.loader.PropertyPath: java.lang.String getFullPath()>();	$r0[3] = $r8;	$r9 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s(collection=%s, querySpaceUid=%s, path=%s)", $r0);	return $r9
;block_num 1