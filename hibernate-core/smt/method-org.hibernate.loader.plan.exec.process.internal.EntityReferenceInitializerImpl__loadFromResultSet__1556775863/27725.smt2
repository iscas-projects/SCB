(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3030 0)
(declare-sort var1304 0)
(declare-sort var3538 0)
(declare-sort var1083 0)
(declare-sort var1853 0)
(declare-sort var3768 0)
(declare-sort var1647 0)
(declare-sort var3798 0)
(declare-sort var2874 0)
(declare-sort var3754 0)
(declare-sort var2984 0)
(declare-sort var1243 0)
(declare-sort var3550 0)
(declare-sort var2042 0)
(declare-sort var1433 0)
(declare-sort var1754 0)
(declare-sort var631 0)
(declare-sort var1986 0)
(declare-sort var1073 0)
(declare-sort var1610 0)
(declare-sort var1399 0)
(declare-sort var2782 0)
(declare-sort var3882 0)
(declare-sort var889 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1399!class ClassObject)
(declare-fun getIdentifier/1096977613 (var3768) var3798)
(declare-fun var3538_getSession/2033509049 (var3538) var2874)
(declare-fun var2874_getFactory/1122061256 (var2874) var3754)
(declare-fun var3754_getMetamodel/1171873935 (var3754) var2984)
(declare-fun var2984_entityPersister/1947554472 (var2984 String) var1243)
(declare-fun cast-from-var1243-to-var3550 (var1243) var3550)
(declare-fun isTraceEnabled/-1224920803 (var2042) Bool)
(declare-fun var1433_addUninitializedEntity/-1157837876 (var3768 var1083 var1243 var1647 var2874) void)
(declare-fun cast-from-var3550-to-var1243 (var3550) var1243)
(declare-fun var1243_getRootEntityName/775871466 (var1243) String)
(declare-fun entityReference/1428728031 (var3030) var1754)
(declare-fun var3754_getServiceRegistry/762402722 (var3754) var1986)
(declare-fun var1610_getService/-972330729 (var1610 ClassObject) var1073)
(declare-fun cast-from-var1986-to-var1610 (var1986) var1610)
(declare-fun cast-from-var1073-to-var1399 (var1073) var1399)
(declare-fun var1399_getSqlExceptionHelper/1800321680 (var1399) var2782)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1083) String)
(declare-fun cast-from-var3768-to-var1083 (var3768) var1083)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun convert/-1513422912 (var2782 var631 String) var3882)
(declare-fun cast-from-var3882-to-var889 (var3882) var889)
(declare-const null-var3030 var3030)
(declare-const null-var1304 var1304)
(declare-const null-var3538 var3538)
(declare-const null-var1083 var1083)
(declare-const null-String String)
(declare-const null-var3768 var3768)
(declare-const null-var1647 var1647)
(declare-const var3030-log var2042)
(declare-const null-var631 var631)
(declare-const var2871 var3030) ; Statement: r16 := @this: org.hibernate.loader.plan.exec.process.internal.EntityReferenceInitializerImpl 
(assert (not (= var2871 null-var3030)))
(declare-const var3094 var1304) ; Statement: r15 := @parameter0: java.sql.ResultSet 
(assert (not (= var3094 null-var1304)))
(declare-const var2694 var3538) ; Statement: r2 := @parameter1: org.hibernate.loader.plan.exec.process.spi.ResultSetProcessingContext 
(assert (not (= var2694 null-var3538)))
(declare-const var3332 var1083) ; Statement: r10 := @parameter2: java.lang.Object 
(assert (not (= var3332 null-var1083)))
(declare-const var3431 String) ; Statement: r5 := @parameter3: java.lang.String 
(assert (not (= var3431 null-String)))
(declare-const var2245 var3768) ; Statement: r0 := @parameter4: org.hibernate.engine.spi.EntityKey 
(assert (not (= var2245 null-var3768)))
(declare-const var874 var1647) ; Statement: r11 := @parameter5: org.hibernate.LockMode 
(assert (not (= var874 null-var1647)))
(assert true)
(define-const var2219 var3798 (getIdentifier/1096977613 var2245)) ; Statement: r1 = virtualinvoke r0.<org.hibernate.engine.spi.EntityKey: java.io.Serializable getIdentifier()>() 
(define-const var3525 var2874 (var3538_getSession/2033509049 var2694)) ; Statement: r3 = interfaceinvoke r2.<org.hibernate.loader.plan.exec.process.spi.ResultSetProcessingContext: org.hibernate.engine.spi.SharedSessionContractImplementor getSession()>() 
(define-const var2760 var3754 (var2874_getFactory/1122061256 var3525)) ; Statement: $r4 = interfaceinvoke r3.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var1723 var2984 (var3754_getMetamodel/1171873935 var2760)) ; Statement: $r6 = interfaceinvoke $r4.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.metamodel.spi.MetamodelImplementor getMetamodel()>() 
(define-const var1091 var1243 (var2984_entityPersister/1947554472 var1723 var3431)) ; Statement: $r7 = interfaceinvoke $r6.<org.hibernate.metamodel.spi.MetamodelImplementor: org.hibernate.persister.entity.EntityPersister entityPersister(java.lang.String)>(r5) 
(define-const var684 var3550 (cast-from-var1243-to-var3550 var1091)) ; Statement: r8 = (org.hibernate.persister.entity.Loadable) $r7 
(define-const var1040 var2042 var3030-log) ; Statement: $r9 = <org.hibernate.loader.plan.exec.process.internal.EntityReferenceInitializerImpl: org.jboss.logging.Logger log> 
(assert true)
(define-const var870 Bool (isTraceEnabled/-1224920803 var1040)) ; Statement: $z0 = virtualinvoke $r9.<org.jboss.logging.Logger: boolean isTraceEnabled()>() 
 ; Statement: if $z0 == 0 goto staticinvoke <org.hibernate.engine.internal.TwoPhaseLoad: void addUninitializedEntity(org.hibernate.engine.spi.EntityKey,java.lang.Object,org.hibernate.persister.entity.EntityPersister,org.hibernate.LockMode,org.hibernate.engine.spi.SharedSessionContractImplementor)>(r0, r10, r8, r11, r3) 
(assert (= (ite var870 1 0) 0)) ; Cond: $z0 == 0 
;(assert (var1433_addUninitializedEntity/-1157837876 var2245 var3332 (cast-from-var3550-to-var1243 var684) var874 var3525)) ; Statement: staticinvoke <org.hibernate.engine.internal.TwoPhaseLoad: void addUninitializedEntity(org.hibernate.engine.spi.EntityKey,java.lang.Object,org.hibernate.persister.entity.EntityPersister,org.hibernate.LockMode,org.hibernate.engine.spi.SharedSessionContractImplementor)>(r0, r10, r8, r11, r3) 

(declare-const var2245!1 var3768)
(declare-const var3332!1 var1083)
(declare-const var684!1 var3550)
(declare-const var874!1 var1647)
(declare-const var3525!1 var2874)
(define-const var2400 var3754 (var2874_getFactory/1122061256 var3525!1)) ; Statement: $r12 = interfaceinvoke r3.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var483 var2984 (var3754_getMetamodel/1171873935 var2400)) ; Statement: $r14 = interfaceinvoke $r12.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.metamodel.spi.MetamodelImplementor getMetamodel()>() 
(define-const var1314 String (var1243_getRootEntityName/775871466 (cast-from-var3550-to-var1243 var684!1))) ; Statement: $r13 = interfaceinvoke r8.<org.hibernate.persister.entity.Loadable: java.lang.String getRootEntityName()>() 
(define-const var3206 var1243 (var2984_entityPersister/1947554472 var483 var1314)) ; Statement: $r56 = interfaceinvoke $r14.<org.hibernate.metamodel.spi.MetamodelImplementor: org.hibernate.persister.entity.EntityPersister entityPersister(java.lang.String)>($r13) 
(define-const var3027 var1754 (entityReference/1428728031 var2871)) ; Statement: $r17 = r16.<org.hibernate.loader.plan.exec.process.internal.EntityReferenceInitializerImpl: org.hibernate.loader.plan.spi.EntityReference entityReference> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2927 var631) ; Statement: $r68 := @caughtexception 
(assert (not (= var2927 null-var631)))
(define-const var1923 var3754 (var2874_getFactory/1122061256 var3525!1)) ; Statement: $r69 = interfaceinvoke r3.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var2343 var1986 (var3754_getServiceRegistry/762402722 var1923)) ; Statement: $r70 = interfaceinvoke $r69.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.service.spi.ServiceRegistryImplementor getServiceRegistry()>() 
(define-const var2754 var1073 (var1610_getService/-972330729 (cast-from-var1986-to-var1610 var2343) var1399!class)) ; Statement: $r71 = interfaceinvoke $r70.<org.hibernate.service.spi.ServiceRegistryImplementor: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/engine/jdbc/spi/JdbcServices;") 
(define-const var3467 var1399 (cast-from-var1073-to-var1399 var2754)) ; Statement: $r72 = (org.hibernate.engine.jdbc.spi.JdbcServices) $r71 
(define-const var2555 var2782 (var1399_getSqlExceptionHelper/1800321680 var3467)) ; Statement: $r77 = interfaceinvoke $r72.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.engine.jdbc.spi.SqlExceptionHelper getSqlExceptionHelper()>() 
(define-const var3461 String String-init) ; Statement: $r84 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3461)) ; Statement: specialinvoke $r84.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3461!1 String)
(assert (= var3461!1 ""))
(assert true)
(define-const var2670 String (append/672562846 var3461!1 "Could not read entity state from ResultSet : ")) ; Statement: $r74 = virtualinvoke $r84.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not read entity state from ResultSet : ") 
(declare-const var3461!2 String)
(assert (= var3461!2 (str.++ var3461!1 "Could not read entity state from ResultSet : ")))
(assert true)
(define-const var2663 String (append/-1031950772 var2670 (cast-from-var3768-to-var1083 var2245!1))) ; Statement: $r75 = virtualinvoke $r74.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var2670!1 String)
(assert (str.prefixof var2670 var2670!1))
(assert true)
(define-const var184 String (toString/-2075883882 var2663)) ; Statement: $r76 = virtualinvoke $r75.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3409 var3882 (convert/-1513422912 var2555 var2927 var184)) ; Statement: $r78 = virtualinvoke $r77.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String)>($r68, $r76) 
(define-const var2804 var889 (cast-from-var3882-to-var889 var3409)) ; Statement: $r87 = (java.lang.Throwable) $r78 
 ; Statement: throw $r87 
(check-sat)
(get-model)
(get-unsat-core)
; {getIdentifier/1096977613=([org.hibernate.engine.spi.EntityKey], java.io.Serializable), var3538_getSession/2033509049=([org.hibernate.loader.plan.exec.process.spi.ResultSetProcessingContext], org.hibernate.engine.spi.SharedSessionContractImplementor), var2874_getFactory/1122061256=([org.hibernate.engine.spi.SharedSessionContractImplementor], org.hibernate.engine.spi.SessionFactoryImplementor), var3754_getMetamodel/1171873935=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.metamodel.spi.MetamodelImplementor), var2984_entityPersister/1947554472=([org.hibernate.metamodel.spi.MetamodelImplementor, java.lang.String], org.hibernate.persister.entity.EntityPersister), cast-from-var1243-to-var3550=([org.hibernate.persister.entity.EntityPersister], org.hibernate.persister.entity.Loadable), isTraceEnabled/-1224920803=([org.jboss.logging.Logger], boolean), var1433_addUninitializedEntity/-1157837876=([org.hibernate.engine.spi.EntityKey, java.lang.Object, org.hibernate.persister.entity.EntityPersister, org.hibernate.LockMode, org.hibernate.engine.spi.SharedSessionContractImplementor], void), cast-from-var3550-to-var1243=([org.hibernate.persister.entity.Loadable], org.hibernate.persister.entity.EntityPersister), var1243_getRootEntityName/775871466=([org.hibernate.persister.entity.EntityPersister], java.lang.String), entityReference/1428728031=([org.hibernate.loader.plan.exec.process.internal.EntityReferenceInitializerImpl], org.hibernate.loader.plan.spi.EntityReference), var3754_getServiceRegistry/762402722=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.service.spi.ServiceRegistryImplementor), var1610_getService/-972330729=([org.hibernate.service.ServiceRegistry, java.lang.Class], org.hibernate.service.Service), cast-from-var1986-to-var1610=([org.hibernate.service.spi.ServiceRegistryImplementor], org.hibernate.service.ServiceRegistry), cast-from-var1073-to-var1399=([org.hibernate.service.Service], org.hibernate.engine.jdbc.spi.JdbcServices), var1399_getSqlExceptionHelper/1800321680=([org.hibernate.engine.jdbc.spi.JdbcServices], org.hibernate.engine.jdbc.spi.SqlExceptionHelper), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3768-to-var1083=([org.hibernate.engine.spi.EntityKey], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), convert/-1513422912=([org.hibernate.engine.jdbc.spi.SqlExceptionHelper, java.sql.SQLException, java.lang.String], org.hibernate.JDBCException), cast-from-var3882-to-var889=([org.hibernate.JDBCException], java.lang.Throwable)}
; {var3030=org.hibernate.loader.plan.exec.process.internal.EntityReferenceInitializerImpl, var2871=r16, var1304=java.sql.ResultSet, var3094=r15, var3538=org.hibernate.loader.plan.exec.process.spi.ResultSetProcessingContext, var2694=r2, var1083=java.lang.Object, var3332=r10, var3431=r5, var1853=null_type, var3768=org.hibernate.engine.spi.EntityKey, var2245=r0, var1647=org.hibernate.LockMode, var874=r11, var3798=java.io.Serializable, var2219=r1, var2874=org.hibernate.engine.spi.SharedSessionContractImplementor, var3525=r3, var3754=org.hibernate.engine.spi.SessionFactoryImplementor, var2760=$r4, var2984=org.hibernate.metamodel.spi.MetamodelImplementor, var1723=$r6, var1243=org.hibernate.persister.entity.EntityPersister, var1091=$r7, var3550=org.hibernate.persister.entity.Loadable, var684=r8, var2042=org.jboss.logging.Logger, var1040=$r9, var870=$z0, var1433=org.hibernate.engine.internal.TwoPhaseLoad, var2400=$r12, var483=$r14, var1314=$r13, var3206=$r56, var1754=org.hibernate.loader.plan.spi.EntityReference, var3027=$r17, var631=java.sql.SQLException, var2927=$r68, var1923=$r69, var1986=org.hibernate.service.spi.ServiceRegistryImplementor, var2343=$r70, var1073=org.hibernate.service.Service, var1610=org.hibernate.service.ServiceRegistry, var1399=org.hibernate.engine.jdbc.spi.JdbcServices, var2754=$r71, var3467=$r72, var2782=org.hibernate.engine.jdbc.spi.SqlExceptionHelper, var2555=$r77, var3461=$r84, var2670=$r74, var2663=$r75, var184=$r76, var3882=org.hibernate.JDBCException, var3409=$r78, var889=java.lang.Throwable, var2804=$r87}
; {org.hibernate.loader.plan.exec.process.internal.EntityReferenceInitializerImpl=var3030, r16=var2871, java.sql.ResultSet=var1304, r15=var3094, org.hibernate.loader.plan.exec.process.spi.ResultSetProcessingContext=var3538, r2=var2694, java.lang.Object=var1083, r10=var3332, r5=var3431, null_type=var1853, org.hibernate.engine.spi.EntityKey=var3768, r0=var2245, org.hibernate.LockMode=var1647, r11=var874, java.io.Serializable=var3798, r1=var2219, org.hibernate.engine.spi.SharedSessionContractImplementor=var2874, r3=var3525, org.hibernate.engine.spi.SessionFactoryImplementor=var3754, $r4=var2760, org.hibernate.metamodel.spi.MetamodelImplementor=var2984, $r6=var1723, org.hibernate.persister.entity.EntityPersister=var1243, $r7=var1091, org.hibernate.persister.entity.Loadable=var3550, r8=var684, org.jboss.logging.Logger=var2042, $r9=var1040, $z0=var870, org.hibernate.engine.internal.TwoPhaseLoad=var1433, $r12=var2400, $r14=var483, $r13=var1314, $r56=var3206, org.hibernate.loader.plan.spi.EntityReference=var1754, $r17=var3027, java.sql.SQLException=var631, $r68=var2927, $r69=var1923, org.hibernate.service.spi.ServiceRegistryImplementor=var1986, $r70=var2343, org.hibernate.service.Service=var1073, org.hibernate.service.ServiceRegistry=var1610, org.hibernate.engine.jdbc.spi.JdbcServices=var1399, $r71=var2754, $r72=var3467, org.hibernate.engine.jdbc.spi.SqlExceptionHelper=var2782, $r77=var2555, $r84=var3461, $r74=var2670, $r75=var2663, $r76=var184, org.hibernate.JDBCException=var3882, $r78=var3409, java.lang.Throwable=var889, $r87=var2804}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r16 := @this: org.hibernate.loader.plan.exec.process.internal.EntityReferenceInitializerImpl;	r15 := @parameter0: java.sql.ResultSet;	r2 := @parameter1: org.hibernate.loader.plan.exec.process.spi.ResultSetProcessingContext;	r10 := @parameter2: java.lang.Object;	r5 := @parameter3: java.lang.String;	r0 := @parameter4: org.hibernate.engine.spi.EntityKey;	r11 := @parameter5: org.hibernate.LockMode;	r1 = virtualinvoke r0.<org.hibernate.engine.spi.EntityKey: java.io.Serializable getIdentifier()>();	r3 = interfaceinvoke r2.<org.hibernate.loader.plan.exec.process.spi.ResultSetProcessingContext: org.hibernate.engine.spi.SharedSessionContractImplementor getSession()>();	$r4 = interfaceinvoke r3.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r6 = interfaceinvoke $r4.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.metamodel.spi.MetamodelImplementor getMetamodel()>();	$r7 = interfaceinvoke $r6.<org.hibernate.metamodel.spi.MetamodelImplementor: org.hibernate.persister.entity.EntityPersister entityPersister(java.lang.String)>(r5);	r8 = (org.hibernate.persister.entity.Loadable) $r7;	$r9 = <org.hibernate.loader.plan.exec.process.internal.EntityReferenceInitializerImpl: org.jboss.logging.Logger log>;	$z0 = virtualinvoke $r9.<org.jboss.logging.Logger: boolean isTraceEnabled()>();	if $z0 == 0 goto staticinvoke <org.hibernate.engine.internal.TwoPhaseLoad: void addUninitializedEntity(org.hibernate.engine.spi.EntityKey,java.lang.Object,org.hibernate.persister.entity.EntityPersister,org.hibernate.LockMode,org.hibernate.engine.spi.SharedSessionContractImplementor)>(r0, r10, r8, r11, r3);	staticinvoke <org.hibernate.engine.internal.TwoPhaseLoad: void addUninitializedEntity(org.hibernate.engine.spi.EntityKey,java.lang.Object,org.hibernate.persister.entity.EntityPersister,org.hibernate.LockMode,org.hibernate.engine.spi.SharedSessionContractImplementor)>(r0, r10, r8, r11, r3);	$r12 = interfaceinvoke r3.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r14 = interfaceinvoke $r12.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.metamodel.spi.MetamodelImplementor getMetamodel()>();	$r13 = interfaceinvoke r8.<org.hibernate.persister.entity.Loadable: java.lang.String getRootEntityName()>();	$r56 = interfaceinvoke $r14.<org.hibernate.metamodel.spi.MetamodelImplementor: org.hibernate.persister.entity.EntityPersister entityPersister(java.lang.String)>($r13);	$r17 = r16.<org.hibernate.loader.plan.exec.process.internal.EntityReferenceInitializerImpl: org.hibernate.loader.plan.spi.EntityReference entityReference>;	$r68 := @caughtexception;	$r69 = interfaceinvoke r3.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r70 = interfaceinvoke $r69.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.service.spi.ServiceRegistryImplementor getServiceRegistry()>();	$r71 = interfaceinvoke $r70.<org.hibernate.service.spi.ServiceRegistryImplementor: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/engine/jdbc/spi/JdbcServices;");	$r72 = (org.hibernate.engine.jdbc.spi.JdbcServices) $r71;	$r77 = interfaceinvoke $r72.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.engine.jdbc.spi.SqlExceptionHelper getSqlExceptionHelper()>();	$r84 = new java.lang.StringBuilder;	specialinvoke $r84.<java.lang.StringBuilder: void <init>()>();	$r74 = virtualinvoke $r84.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not read entity state from ResultSet : ");	$r75 = virtualinvoke $r74.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r76 = virtualinvoke $r75.<java.lang.StringBuilder: java.lang.String toString()>();	$r78 = virtualinvoke $r77.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String)>($r68, $r76);	$r87 = (java.lang.Throwable) $r78;	throw $r87
;block_num 3