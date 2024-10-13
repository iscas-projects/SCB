(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3551 0)
(declare-sort var1104 0)
(declare-sort var2309 0)
(declare-sort var3674 0)
(declare-sort var1289 0)
(declare-sort var1588 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var2309-init () (Array Int var2309))
(declare-fun getClass/1258963082 (var2309) ClassObject)
(declare-fun cast-from-var1104-to-var2309 (var1104) var2309)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(declare-fun cast-from-String-to-var2309 (String) var2309)
(declare-fun var1104_getEntityPersister/-872151685 (var1104) var3674)
(declare-fun var3674_getEntityName/-1914780628 (var3674) String)
(declare-fun var1104_getQuerySpaceUid/-1531144122 (var1104) String)
(declare-fun var1588_getPropertyPath/216432587 (var1588) var1289)
(declare-fun cast-from-var1104-to-var1588 (var1104) var1588)
(declare-fun getFullPath/-627774443 (var1289) String)
(declare-fun String_format/1339386452 (String (Array Int var2309)) String)
(declare-const null-var3551 var3551)
(declare-const null-var1104 var1104)
(declare-const null-__Array__Int__var2309__ (Array Int var2309))
(declare-const var2454 var3551) ; Statement: r10 := @this: org.hibernate.loader.plan.build.spi.ReturnGraphTreePrinter 
(assert (not (= var2454 null-var3551)))
(declare-const var2267 var1104) ; Statement: r1 := @parameter0: org.hibernate.loader.plan.spi.EntityReference 
(assert (not (= var2267 null-var1104)))
(define-const var3415 (Array Int var2309) arr-var2309-init) ; Statement: $r0 = newarray (java.lang.Object)[4] 
(assert true)
(define-const var1657 ClassObject (getClass/1258963082 (cast-from-var1104-to-var2309 var2267))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var82 String (getSimpleName/-390194377 var1657)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(declare-const var3415!1 (Array Int var2309))
(assert (not (= var3415!1 null-__Array__Int__var2309__)))
(assert (= (select var3415!1 0) (cast-from-String-to-var2309 var82))) ; Statement: $r0[0] = $r3 
(define-const var1 var3674 (var1104_getEntityPersister/-872151685 var2267)) ; Statement: $r4 = interfaceinvoke r1.<org.hibernate.loader.plan.spi.EntityReference: org.hibernate.persister.entity.EntityPersister getEntityPersister()>() 
(define-const var3839 String (var3674_getEntityName/-1914780628 var1)) ; Statement: $r5 = interfaceinvoke $r4.<org.hibernate.persister.entity.EntityPersister: java.lang.String getEntityName()>() 
(declare-const var3415!2 (Array Int var2309))
(assert (not (= var3415!2 null-__Array__Int__var2309__)))
(assert (= (select var3415!2 1) (cast-from-String-to-var2309 var3839))) ; Statement: $r0[1] = $r5 
(define-const var1724 String (var1104_getQuerySpaceUid/-1531144122 var2267)) ; Statement: $r6 = interfaceinvoke r1.<org.hibernate.loader.plan.spi.EntityReference: java.lang.String getQuerySpaceUid()>() 
(declare-const var3415!3 (Array Int var2309))
(assert (not (= var3415!3 null-__Array__Int__var2309__)))
(assert (= (select var3415!3 2) (cast-from-String-to-var2309 var1724))) ; Statement: $r0[2] = $r6 
(define-const var508 var1289 (var1588_getPropertyPath/216432587 (cast-from-var1104-to-var1588 var2267))) ; Statement: $r7 = interfaceinvoke r1.<org.hibernate.loader.plan.spi.EntityReference: org.hibernate.loader.PropertyPath getPropertyPath()>() 
(assert true)
(define-const var3550 String (getFullPath/-627774443 var508)) ; Statement: $r8 = virtualinvoke $r7.<org.hibernate.loader.PropertyPath: java.lang.String getFullPath()>() 
(declare-const var3415!4 (Array Int var2309))
(assert (not (= var3415!4 null-__Array__Int__var2309__)))
(assert (= (select var3415!4 3) (cast-from-String-to-var2309 var3550))) ; Statement: $r0[3] = $r8 
(define-const var3885 String (String_format/1339386452 "%s(entity=%s, querySpaceUid=%s, path=%s)" var3415!4)) ; Statement: $r9 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s(entity=%s, querySpaceUid=%s, path=%s)", $r0) 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var2309-init=([], java.lang.Object[]), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1104-to-var2309=([org.hibernate.loader.plan.spi.EntityReference], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), cast-from-String-to-var2309=([java.lang.String], java.lang.Object), var1104_getEntityPersister/-872151685=([org.hibernate.loader.plan.spi.EntityReference], org.hibernate.persister.entity.EntityPersister), var3674_getEntityName/-1914780628=([org.hibernate.persister.entity.EntityPersister], java.lang.String), var1104_getQuerySpaceUid/-1531144122=([org.hibernate.loader.plan.spi.EntityReference], java.lang.String), var1588_getPropertyPath/216432587=([org.hibernate.loader.plan.spi.FetchSource], org.hibernate.loader.PropertyPath), cast-from-var1104-to-var1588=([org.hibernate.loader.plan.spi.EntityReference], org.hibernate.loader.plan.spi.FetchSource), getFullPath/-627774443=([org.hibernate.loader.PropertyPath], java.lang.String), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var3551=org.hibernate.loader.plan.build.spi.ReturnGraphTreePrinter, var2454=r10, var1104=org.hibernate.loader.plan.spi.EntityReference, var2267=r1, var2309=java.lang.Object, var3415=$r0, var1657=$r2, var82=$r3, var3674=org.hibernate.persister.entity.EntityPersister, var1=$r4, var3839=$r5, var1724=$r6, var1289=org.hibernate.loader.PropertyPath, var1588=org.hibernate.loader.plan.spi.FetchSource, var508=$r7, var3550=$r8, var3885=$r9}
; {org.hibernate.loader.plan.build.spi.ReturnGraphTreePrinter=var3551, r10=var2454, org.hibernate.loader.plan.spi.EntityReference=var1104, r1=var2267, java.lang.Object=var2309, $r0=var3415, $r2=var1657, $r3=var82, org.hibernate.persister.entity.EntityPersister=var3674, $r4=var1, $r5=var3839, $r6=var1724, org.hibernate.loader.PropertyPath=var1289, org.hibernate.loader.plan.spi.FetchSource=var1588, $r7=var508, $r8=var3550, $r9=var3885}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r10 := @this: org.hibernate.loader.plan.build.spi.ReturnGraphTreePrinter;	r1 := @parameter0: org.hibernate.loader.plan.spi.EntityReference;	$r0 = newarray (java.lang.Object)[4];	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	$r0[0] = $r3;	$r4 = interfaceinvoke r1.<org.hibernate.loader.plan.spi.EntityReference: org.hibernate.persister.entity.EntityPersister getEntityPersister()>();	$r5 = interfaceinvoke $r4.<org.hibernate.persister.entity.EntityPersister: java.lang.String getEntityName()>();	$r0[1] = $r5;	$r6 = interfaceinvoke r1.<org.hibernate.loader.plan.spi.EntityReference: java.lang.String getQuerySpaceUid()>();	$r0[2] = $r6;	$r7 = interfaceinvoke r1.<org.hibernate.loader.plan.spi.EntityReference: org.hibernate.loader.PropertyPath getPropertyPath()>();	$r8 = virtualinvoke $r7.<org.hibernate.loader.PropertyPath: java.lang.String getFullPath()>();	$r0[3] = $r8;	$r9 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s(entity=%s, querySpaceUid=%s, path=%s)", $r0);	return $r9
;block_num 1