(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1841 0)
(declare-sort var1705 0)
(declare-sort var1591 0)
(declare-sort var3718 0)
(declare-sort var357 0)
(declare-sort var894 0)
(declare-sort var570 0)
(declare-sort var3129 0)
(declare-sort var2883 0)
(declare-sort var667 0)
(declare-sort var272 0)
(declare-sort var3894 0)
(declare-sort var2404 0)
(declare-sort var13 0)
(declare-sort var2443 0)
(declare-sort var3889 0)
(declare-sort var2090 0)
(declare-sort var3975 0)
(declare-sort var1021 0)
(declare-sort var2208 0)
(declare-sort var2383 0)
(declare-sort var258 0)
(declare-sort var251 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var357_isDebugEnabled/1662963326 (var357) Bool)
(declare-fun getLength-Arr-var1591-1 ((Array Int var1591)) Int)
(declare-fun arr-var3718-init () (Array Int var3718))
(declare-fun var894_fill/1714691754 ((Array Int var570) var570) void)
(declare-fun cast-from-__Array__Int__var3718__-to-__Array__Int__var570__ ((Array Int var3718)) (Array Int var570))
(declare-fun cast-from-var3718-to-var570 (var3718) var570)
(declare-fun var3129-init () var3129)
(declare-fun <init>/418799281 (var3129 (Array Int var3718) (Array Int var570) (Array Int var1591)) void)
(declare-fun cast-from-__Array__Int__var1591__-to-__Array__Int__var570__ ((Array Int var1591)) (Array Int var570))
(declare-fun sqlTemplate/1043610007 (var1841) String)
(declare-fun alias/1043610007 (var1841) String)
(declare-fun collectionPersister/610479977 (var667) var2883)
(declare-fun cast-from-var1841-to-var667 (var1841) var667)
(declare-fun var272_getKeyColumnNames/-374017113 (var272) (Array Int String))
(declare-fun cast-from-var2883-to-var272 (var2883) var272)
(declare-fun var1705_getJdbcServices/-1615476239 (var1705) var3894)
(declare-fun var3894_getJdbcEnvironment/1999269849 (var3894) var2404)
(declare-fun var2404_getDialect/-1607750029 (var2404) var13)
(declare-fun var2443_expandBatchIdPlaceholder/-1151354256 (String (Array Int var1591) String (Array Int String) var13) String)
(declare-fun var3894_getSqlExceptionHelper/1800321680 (var3894) var2090)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getFactory/324636549 (var1021) var3975)
(declare-fun cast-from-var1841-to-var1021 (var1841) var1021)
(declare-fun var2208_collectionInfoString/-918966595 (var2383 (Array Int var1591) var3975) String)
(declare-fun cast-from-var2883-to-var2383 (var2883) var2383)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun convert/1666256987 (var2090 var3889 String String) var258)
(declare-fun cast-from-var258-to-var251 (var258) var251)
(declare-const null-var1841 var1841)
(declare-const null-var1705 var1705)
(declare-const null-__Array__Int__var1591__ (Array Int var1591))
(declare-const null-var3718 var3718)
(declare-const var1841-LOG var357)
(declare-const null-var3889 var3889)
(declare-const var3997 var1841) ; Statement: r4 := @this: org.hibernate.loader.collection.DynamicBatchingCollectionInitializerBuilder$DynamicBatchingCollectionLoader 
(assert (not (= var3997 null-var1841)))
(declare-const var1189 var1705) ; Statement: r8 := @parameter0: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var1189 null-var1705)))
(declare-const var2357 (Array Int var1591)) ; Statement: r1 := @parameter1: java.io.Serializable[] 
(assert (not (= var2357 null-__Array__Int__var1591__)))
(declare-const var2076 var3718) ; Statement: r2 := @parameter2: org.hibernate.type.Type 
(assert (not (= var2076 null-var3718)))
(define-const var1940 var357 var1841-LOG) ; Statement: $r0 = <org.hibernate.loader.collection.DynamicBatchingCollectionInitializerBuilder$DynamicBatchingCollectionLoader: org.hibernate.internal.CoreMessageLogger LOG> 
(define-const var2875 Bool (var357_isDebugEnabled/1662963326 var1940)) ; Statement: $z0 = interfaceinvoke $r0.<org.hibernate.internal.CoreMessageLogger: boolean isDebugEnabled()>() 
 ; Statement: if $z0 == 0 goto $i0 = lengthof r1 
(assert (= (ite var2875 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3486 Int (getLength-Arr-var1591-1 var2357)) ; Statement: $i0 = lengthof r1 
(define-const var1543 (Array Int var3718) arr-var3718-init) ; Statement: $r19 = newarray (org.hibernate.type.Type)[$i0] 
;(assert (var894_fill/1714691754 (cast-from-__Array__Int__var3718__-to-__Array__Int__var570__ var1543) (cast-from-var3718-to-var570 var2076))) ; Statement: staticinvoke <java.util.Arrays: void fill(java.lang.Object[],java.lang.Object)>($r19, r2) 

(declare-const var1543!1 (Array Int var3718))
(declare-const var2076!1 var3718)
(define-const var603 var3129 var3129-init) ; Statement: $r35 = new org.hibernate.engine.spi.QueryParameters 
(assert true)
;(assert (<init>/418799281 var603 var1543!1 (cast-from-__Array__Int__var1591__-to-__Array__Int__var570__ var2357) var2357)) ; Statement: specialinvoke $r35.<org.hibernate.engine.spi.QueryParameters: void <init>(org.hibernate.type.Type[],java.lang.Object[],java.io.Serializable[])>($r19, r1, r1) 

(declare-const var603!1 var3129)
(declare-const var1543!2 (Array Int var3718))
(declare-const var2357!1 (Array Int var1591))
(declare-const var2357!2 (Array Int var1591))
(define-const var45 String (sqlTemplate/1043610007 var3997)) ; Statement: $r5 = r4.<org.hibernate.loader.collection.DynamicBatchingCollectionInitializerBuilder$DynamicBatchingCollectionLoader: java.lang.String sqlTemplate> 
(define-const var3220 String (alias/1043610007 var3997)) ; Statement: $r6 = r4.<org.hibernate.loader.collection.DynamicBatchingCollectionInitializerBuilder$DynamicBatchingCollectionLoader: java.lang.String alias> 
(assert true)
(define-const var2863 var2883 (collectionPersister/610479977 (cast-from-var1841-to-var667 var3997))) ; Statement: $r7 = virtualinvoke r4.<org.hibernate.loader.collection.DynamicBatchingCollectionInitializerBuilder$DynamicBatchingCollectionLoader: org.hibernate.persister.collection.QueryableCollection collectionPersister()>() 
(define-const var2273 (Array Int String) (var272_getKeyColumnNames/-374017113 (cast-from-var2883-to-var272 var2863))) ; Statement: $r12 = interfaceinvoke $r7.<org.hibernate.persister.collection.QueryableCollection: java.lang.String[] getKeyColumnNames()>() 
(define-const var3004 var3894 (var1705_getJdbcServices/-1615476239 var1189)) ; Statement: $r9 = interfaceinvoke r8.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.jdbc.spi.JdbcServices getJdbcServices()>() 
(define-const var2133 var2404 (var3894_getJdbcEnvironment/1999269849 var3004)) ; Statement: $r10 = interfaceinvoke $r9.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.engine.jdbc.env.spi.JdbcEnvironment getJdbcEnvironment()>() 
(define-const var1381 var13 (var2404_getDialect/-1607750029 var2133)) ; Statement: $r11 = interfaceinvoke $r10.<org.hibernate.engine.jdbc.env.spi.JdbcEnvironment: org.hibernate.dialect.Dialect getDialect()>() 
(define-const var3496 String (var2443_expandBatchIdPlaceholder/-1151354256 var45 var2357!2 var3220 var2273 var1381)) ; Statement: $r20 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String expandBatchIdPlaceholder(java.lang.String,java.io.Serializable[],java.lang.String,java.lang.String[],org.hibernate.dialect.Dialect)>($r5, r1, $r6, $r12, $r11) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2432 var3889) ; Statement: $r22 := @caughtexception 
(assert (not (= var2432 null-var3889)))
(define-const var931 var3894 (var1705_getJdbcServices/-1615476239 var1189)) ; Statement: $r23 = interfaceinvoke r8.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.jdbc.spi.JdbcServices getJdbcServices()>() 
(define-const var3454 var2090 (var3894_getSqlExceptionHelper/1800321680 var931)) ; Statement: $r31 = interfaceinvoke $r23.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.engine.jdbc.spi.SqlExceptionHelper getSqlExceptionHelper()>() 
(define-const var3224 String String-init) ; Statement: $r36 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3224)) ; Statement: specialinvoke $r36.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3224!1 String)
(assert (= var3224!1 ""))
(assert true)
(define-const var2861 String (append/672562846 var3224!1 "could not initialize a collection batch: ")) ; Statement: $r28 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not initialize a collection batch: ") 
(declare-const var3224!2 String)
(assert (= var3224!2 (str.++ var3224!1 "could not initialize a collection batch: ")))
(assert true)
(define-const var326 var2883 (collectionPersister/610479977 (cast-from-var1841-to-var667 var3997))) ; Statement: $r26 = virtualinvoke r4.<org.hibernate.loader.collection.DynamicBatchingCollectionInitializerBuilder$DynamicBatchingCollectionLoader: org.hibernate.persister.collection.QueryableCollection collectionPersister()>() 
(assert true)
(define-const var1798 var3975 (getFactory/324636549 (cast-from-var1841-to-var1021 var3997))) ; Statement: $r25 = virtualinvoke r4.<org.hibernate.loader.collection.DynamicBatchingCollectionInitializerBuilder$DynamicBatchingCollectionLoader: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var1126 String (var2208_collectionInfoString/-918966595 (cast-from-var2883-to-var2383 var326) var2357!2 var1798)) ; Statement: $r27 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String collectionInfoString(org.hibernate.persister.collection.CollectionPersister,java.io.Serializable[],org.hibernate.engine.spi.SessionFactoryImplementor)>($r26, r1, $r25) 
(assert true)
(define-const var2391 String (append/672562846 var2861 var1126)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27) 
(declare-const var2861!1 String)
(assert (= var2861!1 (str.++ var2861 var1126)))
(assert true)
(define-const var2387 String (toString/-2075883882 var2391)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3102 var258 (convert/1666256987 var3454 var2432 var2387 var3496)) ; Statement: $r32 = virtualinvoke $r31.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String,java.lang.String)>($r22, $r30, $r20) 
(define-const var350 var251 (cast-from-var258-to-var251 var3102)) ; Statement: $r37 = (java.lang.Throwable) $r32 
 ; Statement: throw $r37 
(check-sat)
(get-model)
(get-unsat-core)
; {var357_isDebugEnabled/1662963326=([org.hibernate.internal.CoreMessageLogger], boolean), getLength-Arr-var1591-1=([java.io.Serializable[]], int), arr-var3718-init=([], org.hibernate.type.Type[]), var894_fill/1714691754=([java.lang.Object[], java.lang.Object], void), cast-from-__Array__Int__var3718__-to-__Array__Int__var570__=([org.hibernate.type.Type[]], java.lang.Object[]), cast-from-var3718-to-var570=([org.hibernate.type.Type], java.lang.Object), var3129-init=([], org.hibernate.engine.spi.QueryParameters), <init>/418799281=([org.hibernate.engine.spi.QueryParameters, org.hibernate.type.Type[], java.lang.Object[], java.io.Serializable[]], void), cast-from-__Array__Int__var1591__-to-__Array__Int__var570__=([java.io.Serializable[]], java.lang.Object[]), sqlTemplate/1043610007=([org.hibernate.loader.collection.DynamicBatchingCollectionInitializerBuilder$DynamicBatchingCollectionLoader], java.lang.String), alias/1043610007=([org.hibernate.loader.collection.DynamicBatchingCollectionInitializerBuilder$DynamicBatchingCollectionLoader], java.lang.String), collectionPersister/610479977=([org.hibernate.loader.collection.CollectionLoader], org.hibernate.persister.collection.QueryableCollection), cast-from-var1841-to-var667=([org.hibernate.loader.collection.DynamicBatchingCollectionInitializerBuilder$DynamicBatchingCollectionLoader], org.hibernate.loader.collection.CollectionLoader), var272_getKeyColumnNames/-374017113=([org.hibernate.persister.entity.Joinable], java.lang.String[]), cast-from-var2883-to-var272=([org.hibernate.persister.collection.QueryableCollection], org.hibernate.persister.entity.Joinable), var1705_getJdbcServices/-1615476239=([org.hibernate.engine.spi.SharedSessionContractImplementor], org.hibernate.engine.jdbc.spi.JdbcServices), var3894_getJdbcEnvironment/1999269849=([org.hibernate.engine.jdbc.spi.JdbcServices], org.hibernate.engine.jdbc.env.spi.JdbcEnvironment), var2404_getDialect/-1607750029=([org.hibernate.engine.jdbc.env.spi.JdbcEnvironment], org.hibernate.dialect.Dialect), var2443_expandBatchIdPlaceholder/-1151354256=([java.lang.String, java.io.Serializable[], java.lang.String, java.lang.String[], org.hibernate.dialect.Dialect], java.lang.String), var3894_getSqlExceptionHelper/1800321680=([org.hibernate.engine.jdbc.spi.JdbcServices], org.hibernate.engine.jdbc.spi.SqlExceptionHelper), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getFactory/324636549=([org.hibernate.loader.Loader], org.hibernate.engine.spi.SessionFactoryImplementor), cast-from-var1841-to-var1021=([org.hibernate.loader.collection.DynamicBatchingCollectionInitializerBuilder$DynamicBatchingCollectionLoader], org.hibernate.loader.Loader), var2208_collectionInfoString/-918966595=([org.hibernate.persister.collection.CollectionPersister, java.io.Serializable[], org.hibernate.engine.spi.SessionFactoryImplementor], java.lang.String), cast-from-var2883-to-var2383=([org.hibernate.persister.collection.QueryableCollection], org.hibernate.persister.collection.CollectionPersister), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), convert/1666256987=([org.hibernate.engine.jdbc.spi.SqlExceptionHelper, java.sql.SQLException, java.lang.String, java.lang.String], org.hibernate.JDBCException), cast-from-var258-to-var251=([org.hibernate.JDBCException], java.lang.Throwable)}
; {var1841=org.hibernate.loader.collection.DynamicBatchingCollectionInitializerBuilder$DynamicBatchingCollectionLoader, var3997=r4, var1705=org.hibernate.engine.spi.SharedSessionContractImplementor, var1189=r8, var1591=java.io.Serializable, var2357=r1, var3718=org.hibernate.type.Type, var2076=r2, var357=org.hibernate.internal.CoreMessageLogger, var1940=$r0, var2875=$z0, var3486=$i0, var1543=$r19, var894=java.util.Arrays, var570=java.lang.Object, var3129=org.hibernate.engine.spi.QueryParameters, var603=$r35, var45=$r5, var3220=$r6, var2883=org.hibernate.persister.collection.QueryableCollection, var667=org.hibernate.loader.collection.CollectionLoader, var2863=$r7, var272=org.hibernate.persister.entity.Joinable, var2273=$r12, var3894=org.hibernate.engine.jdbc.spi.JdbcServices, var3004=$r9, var2404=org.hibernate.engine.jdbc.env.spi.JdbcEnvironment, var2133=$r10, var13=org.hibernate.dialect.Dialect, var1381=$r11, var2443=org.hibernate.internal.util.StringHelper, var3496=$r20, var3889=java.sql.SQLException, var2432=$r22, var931=$r23, var2090=org.hibernate.engine.jdbc.spi.SqlExceptionHelper, var3454=$r31, var3224=$r36, var2861=$r28, var326=$r26, var3975=org.hibernate.engine.spi.SessionFactoryImplementor, var1021=org.hibernate.loader.Loader, var1798=$r25, var2208=org.hibernate.pretty.MessageHelper, var2383=org.hibernate.persister.collection.CollectionPersister, var1126=$r27, var2391=$r29, var2387=$r30, var258=org.hibernate.JDBCException, var3102=$r32, var251=java.lang.Throwable, var350=$r37}
; {org.hibernate.loader.collection.DynamicBatchingCollectionInitializerBuilder$DynamicBatchingCollectionLoader=var1841, r4=var3997, org.hibernate.engine.spi.SharedSessionContractImplementor=var1705, r8=var1189, java.io.Serializable=var1591, r1=var2357, org.hibernate.type.Type=var3718, r2=var2076, org.hibernate.internal.CoreMessageLogger=var357, $r0=var1940, $z0=var2875, $i0=var3486, $r19=var1543, java.util.Arrays=var894, java.lang.Object=var570, org.hibernate.engine.spi.QueryParameters=var3129, $r35=var603, $r5=var45, $r6=var3220, org.hibernate.persister.collection.QueryableCollection=var2883, org.hibernate.loader.collection.CollectionLoader=var667, $r7=var2863, org.hibernate.persister.entity.Joinable=var272, $r12=var2273, org.hibernate.engine.jdbc.spi.JdbcServices=var3894, $r9=var3004, org.hibernate.engine.jdbc.env.spi.JdbcEnvironment=var2404, $r10=var2133, org.hibernate.dialect.Dialect=var13, $r11=var1381, org.hibernate.internal.util.StringHelper=var2443, $r20=var3496, java.sql.SQLException=var3889, $r22=var2432, $r23=var931, org.hibernate.engine.jdbc.spi.SqlExceptionHelper=var2090, $r31=var3454, $r36=var3224, $r28=var2861, $r26=var326, org.hibernate.engine.spi.SessionFactoryImplementor=var3975, org.hibernate.loader.Loader=var1021, $r25=var1798, org.hibernate.pretty.MessageHelper=var2208, org.hibernate.persister.collection.CollectionPersister=var2383, $r27=var1126, $r29=var2391, $r30=var2387, org.hibernate.JDBCException=var258, $r32=var3102, java.lang.Throwable=var251, $r37=var350}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: org.hibernate.loader.collection.DynamicBatchingCollectionInitializerBuilder$DynamicBatchingCollectionLoader;	r8 := @parameter0: org.hibernate.engine.spi.SharedSessionContractImplementor;	r1 := @parameter1: java.io.Serializable[];	r2 := @parameter2: org.hibernate.type.Type;	$r0 = <org.hibernate.loader.collection.DynamicBatchingCollectionInitializerBuilder$DynamicBatchingCollectionLoader: org.hibernate.internal.CoreMessageLogger LOG>;	$z0 = interfaceinvoke $r0.<org.hibernate.internal.CoreMessageLogger: boolean isDebugEnabled()>();	if $z0 == 0 goto $i0 = lengthof r1;	$i0 = lengthof r1;	$r19 = newarray (org.hibernate.type.Type)[$i0];	staticinvoke <java.util.Arrays: void fill(java.lang.Object[],java.lang.Object)>($r19, r2);	$r35 = new org.hibernate.engine.spi.QueryParameters;	specialinvoke $r35.<org.hibernate.engine.spi.QueryParameters: void <init>(org.hibernate.type.Type[],java.lang.Object[],java.io.Serializable[])>($r19, r1, r1);	$r5 = r4.<org.hibernate.loader.collection.DynamicBatchingCollectionInitializerBuilder$DynamicBatchingCollectionLoader: java.lang.String sqlTemplate>;	$r6 = r4.<org.hibernate.loader.collection.DynamicBatchingCollectionInitializerBuilder$DynamicBatchingCollectionLoader: java.lang.String alias>;	$r7 = virtualinvoke r4.<org.hibernate.loader.collection.DynamicBatchingCollectionInitializerBuilder$DynamicBatchingCollectionLoader: org.hibernate.persister.collection.QueryableCollection collectionPersister()>();	$r12 = interfaceinvoke $r7.<org.hibernate.persister.collection.QueryableCollection: java.lang.String[] getKeyColumnNames()>();	$r9 = interfaceinvoke r8.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.jdbc.spi.JdbcServices getJdbcServices()>();	$r10 = interfaceinvoke $r9.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.engine.jdbc.env.spi.JdbcEnvironment getJdbcEnvironment()>();	$r11 = interfaceinvoke $r10.<org.hibernate.engine.jdbc.env.spi.JdbcEnvironment: org.hibernate.dialect.Dialect getDialect()>();	$r20 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String expandBatchIdPlaceholder(java.lang.String,java.io.Serializable[],java.lang.String,java.lang.String[],org.hibernate.dialect.Dialect)>($r5, r1, $r6, $r12, $r11);	$r22 := @caughtexception;	$r23 = interfaceinvoke r8.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.jdbc.spi.JdbcServices getJdbcServices()>();	$r31 = interfaceinvoke $r23.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.engine.jdbc.spi.SqlExceptionHelper getSqlExceptionHelper()>();	$r36 = new java.lang.StringBuilder;	specialinvoke $r36.<java.lang.StringBuilder: void <init>()>();	$r28 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not initialize a collection batch: ");	$r26 = virtualinvoke r4.<org.hibernate.loader.collection.DynamicBatchingCollectionInitializerBuilder$DynamicBatchingCollectionLoader: org.hibernate.persister.collection.QueryableCollection collectionPersister()>();	$r25 = virtualinvoke r4.<org.hibernate.loader.collection.DynamicBatchingCollectionInitializerBuilder$DynamicBatchingCollectionLoader: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r27 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String collectionInfoString(org.hibernate.persister.collection.CollectionPersister,java.io.Serializable[],org.hibernate.engine.spi.SessionFactoryImplementor)>($r26, r1, $r25);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27);	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	$r32 = virtualinvoke $r31.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String,java.lang.String)>($r22, $r30, $r20);	$r37 = (java.lang.Throwable) $r32;	throw $r37
;block_num 3