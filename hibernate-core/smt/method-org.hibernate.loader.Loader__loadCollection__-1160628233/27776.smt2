(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3779 0)
(declare-sort var3362 0)
(declare-sort var3842 0)
(declare-sort var3393 0)
(declare-sort var2525 0)
(declare-sort var3087 0)
(declare-sort var2650 0)
(declare-sort var2638 0)
(declare-sort var2002 0)
(declare-sort var724 0)
(declare-sort var201 0)
(declare-sort var2909 0)
(declare-sort var3982 0)
(declare-sort var3921 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2525_isDebugEnabled/1662963326 (var2525) Bool)
(declare-fun arr-var3842-init () (Array Int var3842))
(declare-fun var3087-init () var3087)
(declare-fun arr-var3393-init () (Array Int var3393))
(declare-fun factory/515813576 (var3779) var2638)
(declare-fun var2638_getJdbcServices/779116026 (var2638) var2002)
(declare-fun var2002_getSqlExceptionHelper/1800321680 (var2002) var724)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getCollectionPersisters/165895453 (var3779) (Array Int var201))
(declare-fun getFactory/324636549 (var3779) var2638)
(declare-fun var2909_collectionInfoString/-2038540833 (var201 var3842 var2638) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getSQLString/1754936683 (var3779) String)
(declare-fun convert/1666256987 (var724 var2650 String String) var3982)
(declare-fun cast-from-var3982-to-var3921 (var3982) var3921)
(declare-const null-var3779 var3779)
(declare-const null-var3362 var3362)
(declare-const null-var3842 var3842)
(declare-const null-var3393 var3393)
(declare-const var3779-LOG var2525)
(declare-const null-__Array__Int__var3842__ (Array Int var3842))
(declare-const null-__Array__Int__var3393__ (Array Int var3393))
(declare-const null-var2650 var2650)
(declare-const var219 var3779) ; Statement: r3 := @this: org.hibernate.loader.Loader 
(assert (not (= var219 null-var3779)))
(declare-const var1964 var3362) ; Statement: r4 := @parameter0: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var1964 null-var3362)))
(declare-const var3153 var3842) ; Statement: r2 := @parameter1: java.io.Serializable 
(assert (not (= var3153 null-var3842)))
(declare-const var1306 var3393) ; Statement: r7 := @parameter2: org.hibernate.type.Type 
(assert (not (= var1306 null-var3393)))
(define-const var3247 var2525 var3779-LOG) ; Statement: $r0 = <org.hibernate.loader.Loader: org.hibernate.internal.CoreMessageLogger LOG> 
(define-const var1019 Bool (var2525_isDebugEnabled/1662963326 var3247)) ; Statement: $z0 = interfaceinvoke $r0.<org.hibernate.internal.CoreMessageLogger: boolean isDebugEnabled()>() 
 ; Statement: if $z0 == 0 goto $r1 = newarray (java.io.Serializable)[1] 
(assert (= (ite var1019 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1650 (Array Int var3842) arr-var3842-init) ; Statement: $r1 = newarray (java.io.Serializable)[1] 
(declare-const var1650!1 (Array Int var3842))
(assert (not (= var1650!1 null-__Array__Int__var3842__)))
(assert (= (select var1650!1 0) var3153)) ; Statement: $r1[0] = r2 
(define-const var2964 var3087 var3087-init) ; Statement: $r28 = new org.hibernate.engine.spi.QueryParameters 
(define-const var1620 (Array Int var3393) arr-var3393-init) ; Statement: $r6 = newarray (org.hibernate.type.Type)[1] 
(declare-const var1620!1 (Array Int var3393))
(assert (not (= var1620!1 null-__Array__Int__var3393__)))
(assert (= (select var1620!1 0) var1306)) ; Statement: $r6[0] = r7 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1575 var2650) ; Statement: $r14 := @caughtexception 
(assert (not (= var1575 null-var2650)))
(define-const var2680 var2638 (factory/515813576 var219)) ; Statement: $r15 = r3.<org.hibernate.loader.Loader: org.hibernate.engine.spi.SessionFactoryImplementor factory> 
(define-const var3084 var2002 (var2638_getJdbcServices/779116026 var2680)) ; Statement: $r16 = interfaceinvoke $r15.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.engine.jdbc.spi.JdbcServices getJdbcServices()>() 
(define-const var1576 var724 (var2002_getSqlExceptionHelper/1800321680 var3084)) ; Statement: $r26 = interfaceinvoke $r16.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.engine.jdbc.spi.SqlExceptionHelper getSqlExceptionHelper()>() 
(define-const var3856 String String-init) ; Statement: $r29 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3856)) ; Statement: specialinvoke $r29.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3856!1 String)
(assert (= var3856!1 ""))
(assert true)
(define-const var1043 String (append/672562846 var3856!1 "could not initialize a collection: ")) ; Statement: $r22 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not initialize a collection: ") 
(declare-const var3856!2 String)
(assert (= var3856!2 (str.++ var3856!1 "could not initialize a collection: ")))
(assert true)
(define-const var1398 (Array Int var201) (getCollectionPersisters/165895453 var219)) ; Statement: $r18 = virtualinvoke r3.<org.hibernate.loader.Loader: org.hibernate.persister.collection.CollectionPersister[] getCollectionPersisters()>() 
(define-const var693 var201 (select var1398 0)) ; Statement: $r19 = $r18[0] 
(assert true)
(define-const var2700 var2638 (getFactory/324636549 var219)) ; Statement: $r20 = virtualinvoke r3.<org.hibernate.loader.Loader: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var447 String (var2909_collectionInfoString/-2038540833 var693 var3153 var2700)) ; Statement: $r21 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String collectionInfoString(org.hibernate.persister.collection.CollectionPersister,java.io.Serializable,org.hibernate.engine.spi.SessionFactoryImplementor)>($r19, r2, $r20) 
(assert true)
(define-const var3581 String (append/672562846 var1043 var447)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var1043!1 String)
(assert (= var1043!1 (str.++ var1043 var447)))
(assert true)
(define-const var3421 String (toString/-2075883882 var3581)) ; Statement: $r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1705 String (getSQLString/1754936683 var219)) ; Statement: $r24 = virtualinvoke r3.<org.hibernate.loader.Loader: java.lang.String getSQLString()>() 
(assert true)
(define-const var3916 var3982 (convert/1666256987 var1576 var1575 var3421 var1705)) ; Statement: $r27 = virtualinvoke $r26.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String,java.lang.String)>($r14, $r25, $r24) 
(define-const var1508 var3921 (cast-from-var3982-to-var3921 var3916)) ; Statement: $r30 = (java.lang.Throwable) $r27 
 ; Statement: throw $r30 
(check-sat)
(get-model)
(get-unsat-core)
; {var2525_isDebugEnabled/1662963326=([org.hibernate.internal.CoreMessageLogger], boolean), arr-var3842-init=([], java.io.Serializable[]), var3087-init=([], org.hibernate.engine.spi.QueryParameters), arr-var3393-init=([], org.hibernate.type.Type[]), factory/515813576=([org.hibernate.loader.Loader], org.hibernate.engine.spi.SessionFactoryImplementor), var2638_getJdbcServices/779116026=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.engine.jdbc.spi.JdbcServices), var2002_getSqlExceptionHelper/1800321680=([org.hibernate.engine.jdbc.spi.JdbcServices], org.hibernate.engine.jdbc.spi.SqlExceptionHelper), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getCollectionPersisters/165895453=([org.hibernate.loader.Loader], org.hibernate.persister.collection.CollectionPersister[]), getFactory/324636549=([org.hibernate.loader.Loader], org.hibernate.engine.spi.SessionFactoryImplementor), var2909_collectionInfoString/-2038540833=([org.hibernate.persister.collection.CollectionPersister, java.io.Serializable, org.hibernate.engine.spi.SessionFactoryImplementor], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getSQLString/1754936683=([org.hibernate.loader.Loader], java.lang.String), convert/1666256987=([org.hibernate.engine.jdbc.spi.SqlExceptionHelper, java.sql.SQLException, java.lang.String, java.lang.String], org.hibernate.JDBCException), cast-from-var3982-to-var3921=([org.hibernate.JDBCException], java.lang.Throwable)}
; {var3779=org.hibernate.loader.Loader, var219=r3, var3362=org.hibernate.engine.spi.SharedSessionContractImplementor, var1964=r4, var3842=java.io.Serializable, var3153=r2, var3393=org.hibernate.type.Type, var1306=r7, var2525=org.hibernate.internal.CoreMessageLogger, var3247=$r0, var1019=$z0, var1650=$r1, var3087=org.hibernate.engine.spi.QueryParameters, var2964=$r28, var1620=$r6, var2650=java.sql.SQLException, var1575=$r14, var2638=org.hibernate.engine.spi.SessionFactoryImplementor, var2680=$r15, var2002=org.hibernate.engine.jdbc.spi.JdbcServices, var3084=$r16, var724=org.hibernate.engine.jdbc.spi.SqlExceptionHelper, var1576=$r26, var3856=$r29, var1043=$r22, var201=org.hibernate.persister.collection.CollectionPersister, var1398=$r18, var693=$r19, var2700=$r20, var2909=org.hibernate.pretty.MessageHelper, var447=$r21, var3581=$r23, var3421=$r25, var1705=$r24, var3982=org.hibernate.JDBCException, var3916=$r27, var3921=java.lang.Throwable, var1508=$r30}
; {org.hibernate.loader.Loader=var3779, r3=var219, org.hibernate.engine.spi.SharedSessionContractImplementor=var3362, r4=var1964, java.io.Serializable=var3842, r2=var3153, org.hibernate.type.Type=var3393, r7=var1306, org.hibernate.internal.CoreMessageLogger=var2525, $r0=var3247, $z0=var1019, $r1=var1650, org.hibernate.engine.spi.QueryParameters=var3087, $r28=var2964, $r6=var1620, java.sql.SQLException=var2650, $r14=var1575, org.hibernate.engine.spi.SessionFactoryImplementor=var2638, $r15=var2680, org.hibernate.engine.jdbc.spi.JdbcServices=var2002, $r16=var3084, org.hibernate.engine.jdbc.spi.SqlExceptionHelper=var724, $r26=var1576, $r29=var3856, $r22=var1043, org.hibernate.persister.collection.CollectionPersister=var201, $r18=var1398, $r19=var693, $r20=var2700, org.hibernate.pretty.MessageHelper=var2909, $r21=var447, $r23=var3581, $r25=var3421, $r24=var1705, org.hibernate.JDBCException=var3982, $r27=var3916, java.lang.Throwable=var3921, $r30=var1508}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.hibernate.loader.Loader;	r4 := @parameter0: org.hibernate.engine.spi.SharedSessionContractImplementor;	r2 := @parameter1: java.io.Serializable;	r7 := @parameter2: org.hibernate.type.Type;	$r0 = <org.hibernate.loader.Loader: org.hibernate.internal.CoreMessageLogger LOG>;	$z0 = interfaceinvoke $r0.<org.hibernate.internal.CoreMessageLogger: boolean isDebugEnabled()>();	if $z0 == 0 goto $r1 = newarray (java.io.Serializable)[1];	$r1 = newarray (java.io.Serializable)[1];	$r1[0] = r2;	$r28 = new org.hibernate.engine.spi.QueryParameters;	$r6 = newarray (org.hibernate.type.Type)[1];	$r6[0] = r7;	$r14 := @caughtexception;	$r15 = r3.<org.hibernate.loader.Loader: org.hibernate.engine.spi.SessionFactoryImplementor factory>;	$r16 = interfaceinvoke $r15.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.engine.jdbc.spi.JdbcServices getJdbcServices()>();	$r26 = interfaceinvoke $r16.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.engine.jdbc.spi.SqlExceptionHelper getSqlExceptionHelper()>();	$r29 = new java.lang.StringBuilder;	specialinvoke $r29.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not initialize a collection: ");	$r18 = virtualinvoke r3.<org.hibernate.loader.Loader: org.hibernate.persister.collection.CollectionPersister[] getCollectionPersisters()>();	$r19 = $r18[0];	$r20 = virtualinvoke r3.<org.hibernate.loader.Loader: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r21 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String collectionInfoString(org.hibernate.persister.collection.CollectionPersister,java.io.Serializable,org.hibernate.engine.spi.SessionFactoryImplementor)>($r19, r2, $r20);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	$r24 = virtualinvoke r3.<org.hibernate.loader.Loader: java.lang.String getSQLString()>();	$r27 = virtualinvoke $r26.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String,java.lang.String)>($r14, $r25, $r24);	$r30 = (java.lang.Throwable) $r27;	throw $r30
;block_num 3