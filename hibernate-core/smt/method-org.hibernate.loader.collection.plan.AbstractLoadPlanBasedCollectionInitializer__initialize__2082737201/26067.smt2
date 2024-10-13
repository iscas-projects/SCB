(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var838 0)
(declare-sort var315 0)
(declare-sort var2049 0)
(declare-sort var3111 0)
(declare-sort var3876 0)
(declare-sort var3036 0)
(declare-sort var1428 0)
(declare-sort var643 0)
(declare-sort var1226 0)
(declare-sort var3571 0)
(declare-sort var2710 0)
(declare-sort var923 0)
(declare-sort var1430 0)
(declare-sort var1026 0)
(declare-sort var2217 0)
(declare-sort var1499 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3111_isDebugEnabled/1662963326 (var3111) Bool)
(declare-fun arr-var315-init () (Array Int var315))
(declare-fun var3876-init () var3876)
(declare-fun var2049_getJdbcServices/-1615476239 (var2049) var1428)
(declare-fun var1428_getSqlExceptionHelper/1800321680 (var1428) var643)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun collectionPersister/-31691636 (var838) var1226)
(declare-fun getFactory/1727443054 (var2710) var3571)
(declare-fun cast-from-var838-to-var2710 (var838) var2710)
(declare-fun var923_collectionInfoString/-2038540833 (var1430 var315 var3571) String)
(declare-fun cast-from-var1226-to-var1430 (var1226) var1430)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun staticLoadQuery/-31691636 (var838) var1026)
(declare-fun var1026_getSqlStatement/1542337480 (var1026) String)
(declare-fun convert/1666256987 (var643 var3036 String String) var2217)
(declare-fun cast-from-var2217-to-var1499 (var2217) var1499)
(declare-const null-var838 var838)
(declare-const null-var315 var315)
(declare-const null-var2049 var2049)
(declare-const var838-log var3111)
(declare-const null-__Array__Int__var315__ (Array Int var315))
(declare-const null-var3036 var3036)
(declare-const var411 var838) ; Statement: r5 := @this: org.hibernate.loader.collection.plan.AbstractLoadPlanBasedCollectionInitializer 
(assert (not (= var411 null-var838)))
(declare-const var4 var315) ; Statement: r2 := @parameter0: java.io.Serializable 
(assert (not (= var4 null-var315)))
(declare-const var2491 var2049) ; Statement: r9 := @parameter1: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var2491 null-var2049)))
(define-const var3956 var3111 var838-log) ; Statement: $r0 = <org.hibernate.loader.collection.plan.AbstractLoadPlanBasedCollectionInitializer: org.hibernate.internal.CoreMessageLogger log> 
(define-const var3702 Bool (var3111_isDebugEnabled/1662963326 var3956)) ; Statement: $z0 = interfaceinvoke $r0.<org.hibernate.internal.CoreMessageLogger: boolean isDebugEnabled()>() 
 ; Statement: if $z0 == 0 goto $r1 = newarray (java.io.Serializable)[1] 
(assert (= (ite var3702 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1018 (Array Int var315) arr-var315-init) ; Statement: $r1 = newarray (java.io.Serializable)[1] 
(declare-const var1018!1 (Array Int var315))
(assert (not (= var1018!1 null-__Array__Int__var315__)))
(assert (= (select var1018!1 0) var4)) ; Statement: $r1[0] = r2 
(define-const var853 var3876 var3876-init) ; Statement: $r29 = new org.hibernate.engine.spi.QueryParameters 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2862 var3036) ; Statement: $r16 := @caughtexception 
(assert (not (= var2862 null-var3036)))
(define-const var429 var1428 (var2049_getJdbcServices/-1615476239 var2491)) ; Statement: $r17 = interfaceinvoke r9.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.jdbc.spi.JdbcServices getJdbcServices()>() 
(define-const var3064 var643 (var1428_getSqlExceptionHelper/1800321680 var429)) ; Statement: $r27 = interfaceinvoke $r17.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.engine.jdbc.spi.SqlExceptionHelper getSqlExceptionHelper()>() 
(define-const var2159 String String-init) ; Statement: $r30 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2159)) ; Statement: specialinvoke $r30.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2159!1 String)
(assert (= var2159!1 ""))
(assert true)
(define-const var851 String (append/672562846 var2159!1 "could not initialize a collection: ")) ; Statement: $r22 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not initialize a collection: ") 
(declare-const var2159!2 String)
(assert (= var2159!2 (str.++ var2159!1 "could not initialize a collection: ")))
(define-const var3752 var1226 (collectionPersister/-31691636 var411)) ; Statement: $r19 = r5.<org.hibernate.loader.collection.plan.AbstractLoadPlanBasedCollectionInitializer: org.hibernate.persister.collection.QueryableCollection collectionPersister> 
(assert true)
(define-const var790 var3571 (getFactory/1727443054 (cast-from-var838-to-var2710 var411))) ; Statement: $r20 = virtualinvoke r5.<org.hibernate.loader.collection.plan.AbstractLoadPlanBasedCollectionInitializer: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var3234 String (var923_collectionInfoString/-2038540833 (cast-from-var1226-to-var1430 var3752) var4 var790)) ; Statement: $r21 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String collectionInfoString(org.hibernate.persister.collection.CollectionPersister,java.io.Serializable,org.hibernate.engine.spi.SessionFactoryImplementor)>($r19, r2, $r20) 
(assert true)
(define-const var3546 String (append/672562846 var851 var3234)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var851!1 String)
(assert (= var851!1 (str.++ var851 var3234)))
(assert true)
(define-const var552 String (toString/-2075883882 var3546)) ; Statement: $r26 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var322 var1026 (staticLoadQuery/-31691636 var411)) ; Statement: $r24 = r5.<org.hibernate.loader.collection.plan.AbstractLoadPlanBasedCollectionInitializer: org.hibernate.loader.plan.exec.spi.LoadQueryDetails staticLoadQuery> 
(define-const var1088 String (var1026_getSqlStatement/1542337480 var322)) ; Statement: $r25 = interfaceinvoke $r24.<org.hibernate.loader.plan.exec.spi.LoadQueryDetails: java.lang.String getSqlStatement()>() 
(assert true)
(define-const var1097 var2217 (convert/1666256987 var3064 var2862 var552 var1088)) ; Statement: $r28 = virtualinvoke $r27.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String,java.lang.String)>($r16, $r26, $r25) 
(define-const var3630 var1499 (cast-from-var2217-to-var1499 var1097)) ; Statement: $r31 = (java.lang.Throwable) $r28 
 ; Statement: throw $r31 
(check-sat)
(get-model)
(get-unsat-core)
; {var3111_isDebugEnabled/1662963326=([org.hibernate.internal.CoreMessageLogger], boolean), arr-var315-init=([], java.io.Serializable[]), var3876-init=([], org.hibernate.engine.spi.QueryParameters), var2049_getJdbcServices/-1615476239=([org.hibernate.engine.spi.SharedSessionContractImplementor], org.hibernate.engine.jdbc.spi.JdbcServices), var1428_getSqlExceptionHelper/1800321680=([org.hibernate.engine.jdbc.spi.JdbcServices], org.hibernate.engine.jdbc.spi.SqlExceptionHelper), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), collectionPersister/-31691636=([org.hibernate.loader.collection.plan.AbstractLoadPlanBasedCollectionInitializer], org.hibernate.persister.collection.QueryableCollection), getFactory/1727443054=([org.hibernate.loader.plan.exec.internal.AbstractLoadPlanBasedLoader], org.hibernate.engine.spi.SessionFactoryImplementor), cast-from-var838-to-var2710=([org.hibernate.loader.collection.plan.AbstractLoadPlanBasedCollectionInitializer], org.hibernate.loader.plan.exec.internal.AbstractLoadPlanBasedLoader), var923_collectionInfoString/-2038540833=([org.hibernate.persister.collection.CollectionPersister, java.io.Serializable, org.hibernate.engine.spi.SessionFactoryImplementor], java.lang.String), cast-from-var1226-to-var1430=([org.hibernate.persister.collection.QueryableCollection], org.hibernate.persister.collection.CollectionPersister), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), staticLoadQuery/-31691636=([org.hibernate.loader.collection.plan.AbstractLoadPlanBasedCollectionInitializer], org.hibernate.loader.plan.exec.spi.LoadQueryDetails), var1026_getSqlStatement/1542337480=([org.hibernate.loader.plan.exec.spi.LoadQueryDetails], java.lang.String), convert/1666256987=([org.hibernate.engine.jdbc.spi.SqlExceptionHelper, java.sql.SQLException, java.lang.String, java.lang.String], org.hibernate.JDBCException), cast-from-var2217-to-var1499=([org.hibernate.JDBCException], java.lang.Throwable)}
; {var838=org.hibernate.loader.collection.plan.AbstractLoadPlanBasedCollectionInitializer, var411=r5, var315=java.io.Serializable, var4=r2, var2049=org.hibernate.engine.spi.SharedSessionContractImplementor, var2491=r9, var3111=org.hibernate.internal.CoreMessageLogger, var3956=$r0, var3702=$z0, var1018=$r1, var3876=org.hibernate.engine.spi.QueryParameters, var853=$r29, var3036=java.sql.SQLException, var2862=$r16, var1428=org.hibernate.engine.jdbc.spi.JdbcServices, var429=$r17, var643=org.hibernate.engine.jdbc.spi.SqlExceptionHelper, var3064=$r27, var2159=$r30, var851=$r22, var1226=org.hibernate.persister.collection.QueryableCollection, var3752=$r19, var3571=org.hibernate.engine.spi.SessionFactoryImplementor, var2710=org.hibernate.loader.plan.exec.internal.AbstractLoadPlanBasedLoader, var790=$r20, var923=org.hibernate.pretty.MessageHelper, var1430=org.hibernate.persister.collection.CollectionPersister, var3234=$r21, var3546=$r23, var552=$r26, var1026=org.hibernate.loader.plan.exec.spi.LoadQueryDetails, var322=$r24, var1088=$r25, var2217=org.hibernate.JDBCException, var1097=$r28, var1499=java.lang.Throwable, var3630=$r31}
; {org.hibernate.loader.collection.plan.AbstractLoadPlanBasedCollectionInitializer=var838, r5=var411, java.io.Serializable=var315, r2=var4, org.hibernate.engine.spi.SharedSessionContractImplementor=var2049, r9=var2491, org.hibernate.internal.CoreMessageLogger=var3111, $r0=var3956, $z0=var3702, $r1=var1018, org.hibernate.engine.spi.QueryParameters=var3876, $r29=var853, java.sql.SQLException=var3036, $r16=var2862, org.hibernate.engine.jdbc.spi.JdbcServices=var1428, $r17=var429, org.hibernate.engine.jdbc.spi.SqlExceptionHelper=var643, $r27=var3064, $r30=var2159, $r22=var851, org.hibernate.persister.collection.QueryableCollection=var1226, $r19=var3752, org.hibernate.engine.spi.SessionFactoryImplementor=var3571, org.hibernate.loader.plan.exec.internal.AbstractLoadPlanBasedLoader=var2710, $r20=var790, org.hibernate.pretty.MessageHelper=var923, org.hibernate.persister.collection.CollectionPersister=var1430, $r21=var3234, $r23=var3546, $r26=var552, org.hibernate.loader.plan.exec.spi.LoadQueryDetails=var1026, $r24=var322, $r25=var1088, org.hibernate.JDBCException=var2217, $r28=var1097, java.lang.Throwable=var1499, $r31=var3630}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.loader.collection.plan.AbstractLoadPlanBasedCollectionInitializer;	r2 := @parameter0: java.io.Serializable;	r9 := @parameter1: org.hibernate.engine.spi.SharedSessionContractImplementor;	$r0 = <org.hibernate.loader.collection.plan.AbstractLoadPlanBasedCollectionInitializer: org.hibernate.internal.CoreMessageLogger log>;	$z0 = interfaceinvoke $r0.<org.hibernate.internal.CoreMessageLogger: boolean isDebugEnabled()>();	if $z0 == 0 goto $r1 = newarray (java.io.Serializable)[1];	$r1 = newarray (java.io.Serializable)[1];	$r1[0] = r2;	$r29 = new org.hibernate.engine.spi.QueryParameters;	$r16 := @caughtexception;	$r17 = interfaceinvoke r9.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.jdbc.spi.JdbcServices getJdbcServices()>();	$r27 = interfaceinvoke $r17.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.engine.jdbc.spi.SqlExceptionHelper getSqlExceptionHelper()>();	$r30 = new java.lang.StringBuilder;	specialinvoke $r30.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not initialize a collection: ");	$r19 = r5.<org.hibernate.loader.collection.plan.AbstractLoadPlanBasedCollectionInitializer: org.hibernate.persister.collection.QueryableCollection collectionPersister>;	$r20 = virtualinvoke r5.<org.hibernate.loader.collection.plan.AbstractLoadPlanBasedCollectionInitializer: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r21 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String collectionInfoString(org.hibernate.persister.collection.CollectionPersister,java.io.Serializable,org.hibernate.engine.spi.SessionFactoryImplementor)>($r19, r2, $r20);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r26 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	$r24 = r5.<org.hibernate.loader.collection.plan.AbstractLoadPlanBasedCollectionInitializer: org.hibernate.loader.plan.exec.spi.LoadQueryDetails staticLoadQuery>;	$r25 = interfaceinvoke $r24.<org.hibernate.loader.plan.exec.spi.LoadQueryDetails: java.lang.String getSqlStatement()>();	$r28 = virtualinvoke $r27.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String,java.lang.String)>($r16, $r26, $r25);	$r31 = (java.lang.Throwable) $r28;	throw $r31
;block_num 3