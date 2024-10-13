(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3662 0)
(declare-sort var1341 0)
(declare-sort var2788 0)
(declare-sort var1545 0)
(declare-sort var3470 0)
(declare-sort var3860 0)
(declare-sort var269 0)
(declare-sort var3724 0)
(declare-sort var3274 0)
(declare-sort var3932 0)
(declare-sort var1492 0)
(declare-sort var2693 0)
(declare-sort var3690 0)
(declare-sort var3456 0)
(declare-sort var3941 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var269-init () var269)
(declare-fun factory/515813576 (var3662) var3274)
(declare-fun var3274_getJdbcServices/779116026 (var3274) var3932)
(declare-fun var3932_getSqlExceptionHelper/1800321680 (var3932) var1492)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getCollectionPersisters/165895453 (var3662) (Array Int var2693))
(declare-fun getFactory/324636549 (var3662) var3274)
(declare-fun var3690_collectionInfoString/-918966595 (var2693 (Array Int var2788) var3274) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getSQLString/1754936683 (var3662) String)
(declare-fun convert/1666256987 (var1492 var3724 String String) var3456)
(declare-fun cast-from-var3456-to-var3941 (var3456) var3941)
(declare-const null-var3662 var3662)
(declare-const null-var1341 var1341)
(declare-const null-__Array__Int__var2788__ (Array Int var2788))
(declare-const null-__Array__Int__var1545__ (Array Int var1545))
(declare-const null-__Array__Int__var3470__ (Array Int var3470))
(declare-const null-var3860 var3860)
(declare-const null-var3470 var3470)
(declare-const null-var3724 var3724)
(declare-const var1940 var3662) ; Statement: r0 := @this: org.hibernate.loader.Loader 
(assert (not (= var1940 null-var3662)))
(declare-const var3825 var1341) ; Statement: r1 := @parameter0: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var3825 null-var1341)))
(declare-const var2961 (Array Int var2788)) ; Statement: r6 := @parameter1: java.io.Serializable[] 
(assert (not (= var2961 null-__Array__Int__var2788__)))
(declare-const var3717 (Array Int var1545)) ; Statement: r4 := @parameter2: java.lang.Object[] 
(assert (not (= var3717 null-__Array__Int__var1545__)))
(declare-const var3469 (Array Int var3470)) ; Statement: r3 := @parameter3: org.hibernate.type.Type[] 
(assert (not (= var3469 null-__Array__Int__var3470__)))
(declare-const var2048 var3860) ; Statement: r5 := @parameter4: java.util.Map 
(assert (not (= var2048 null-var3860)))
(declare-const var2668 var3470) ; Statement: r21 := @parameter5: org.hibernate.type.Type 
(assert (not (= var2668 null-var3470)))
(define-const var3819 var269 var269-init) ; Statement: $r22 = new org.hibernate.engine.spi.QueryParameters 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3867 var3724) ; Statement: $r7 := @caughtexception 
(assert (not (= var3867 null-var3724)))
(define-const var2832 var3274 (factory/515813576 var1940)) ; Statement: $r8 = r0.<org.hibernate.loader.Loader: org.hibernate.engine.spi.SessionFactoryImplementor factory> 
(define-const var2176 var3932 (var3274_getJdbcServices/779116026 var2832)) ; Statement: $r9 = interfaceinvoke $r8.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.engine.jdbc.spi.JdbcServices getJdbcServices()>() 
(define-const var2464 var1492 (var3932_getSqlExceptionHelper/1800321680 var2176)) ; Statement: $r19 = interfaceinvoke $r9.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.engine.jdbc.spi.SqlExceptionHelper getSqlExceptionHelper()>() 
(define-const var1324 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1324)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1324!1 String)
(assert (= var1324!1 ""))
(assert true)
(define-const var3492 String (append/672562846 var1324!1 "could not load collection by subselect: ")) ; Statement: $r15 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not load collection by subselect: ") 
(declare-const var1324!2 String)
(assert (= var1324!2 (str.++ var1324!1 "could not load collection by subselect: ")))
(assert true)
(define-const var2746 (Array Int var2693) (getCollectionPersisters/165895453 var1940)) ; Statement: $r11 = virtualinvoke r0.<org.hibernate.loader.Loader: org.hibernate.persister.collection.CollectionPersister[] getCollectionPersisters()>() 
(define-const var966 var2693 (select var2746 0)) ; Statement: $r12 = $r11[0] 
(assert true)
(define-const var2203 var3274 (getFactory/324636549 var1940)) ; Statement: $r13 = virtualinvoke r0.<org.hibernate.loader.Loader: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var2051 String (var3690_collectionInfoString/-918966595 var966 var2961 var2203)) ; Statement: $r14 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String collectionInfoString(org.hibernate.persister.collection.CollectionPersister,java.io.Serializable[],org.hibernate.engine.spi.SessionFactoryImplementor)>($r12, r6, $r13) 
(assert true)
(define-const var3115 String (append/672562846 var3492 var2051)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var3492!1 String)
(assert (= var3492!1 (str.++ var3492 var2051)))
(assert true)
(define-const var257 String (toString/-2075883882 var3115)) ; Statement: $r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3918 String (getSQLString/1754936683 var1940)) ; Statement: $r17 = virtualinvoke r0.<org.hibernate.loader.Loader: java.lang.String getSQLString()>() 
(assert true)
(define-const var1195 var3456 (convert/1666256987 var2464 var3867 var257 var3918)) ; Statement: $r20 = virtualinvoke $r19.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String,java.lang.String)>($r7, $r18, $r17) 
(define-const var2937 var3941 (cast-from-var3456-to-var3941 var1195)) ; Statement: $r24 = (java.lang.Throwable) $r20 
 ; Statement: throw $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {var269-init=([], org.hibernate.engine.spi.QueryParameters), factory/515813576=([org.hibernate.loader.Loader], org.hibernate.engine.spi.SessionFactoryImplementor), var3274_getJdbcServices/779116026=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.engine.jdbc.spi.JdbcServices), var3932_getSqlExceptionHelper/1800321680=([org.hibernate.engine.jdbc.spi.JdbcServices], org.hibernate.engine.jdbc.spi.SqlExceptionHelper), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getCollectionPersisters/165895453=([org.hibernate.loader.Loader], org.hibernate.persister.collection.CollectionPersister[]), getFactory/324636549=([org.hibernate.loader.Loader], org.hibernate.engine.spi.SessionFactoryImplementor), var3690_collectionInfoString/-918966595=([org.hibernate.persister.collection.CollectionPersister, java.io.Serializable[], org.hibernate.engine.spi.SessionFactoryImplementor], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getSQLString/1754936683=([org.hibernate.loader.Loader], java.lang.String), convert/1666256987=([org.hibernate.engine.jdbc.spi.SqlExceptionHelper, java.sql.SQLException, java.lang.String, java.lang.String], org.hibernate.JDBCException), cast-from-var3456-to-var3941=([org.hibernate.JDBCException], java.lang.Throwable)}
; {var3662=org.hibernate.loader.Loader, var1940=r0, var1341=org.hibernate.engine.spi.SharedSessionContractImplementor, var3825=r1, var2788=java.io.Serializable, var2961=r6, var1545=java.lang.Object, var3717=r4, var3470=org.hibernate.type.Type, var3469=r3, var3860=java.util.Map, var2048=r5, var2668=r21, var269=org.hibernate.engine.spi.QueryParameters, var3819=$r22, var3724=java.sql.SQLException, var3867=$r7, var3274=org.hibernate.engine.spi.SessionFactoryImplementor, var2832=$r8, var3932=org.hibernate.engine.jdbc.spi.JdbcServices, var2176=$r9, var1492=org.hibernate.engine.jdbc.spi.SqlExceptionHelper, var2464=$r19, var1324=$r23, var3492=$r15, var2693=org.hibernate.persister.collection.CollectionPersister, var2746=$r11, var966=$r12, var2203=$r13, var3690=org.hibernate.pretty.MessageHelper, var2051=$r14, var3115=$r16, var257=$r18, var3918=$r17, var3456=org.hibernate.JDBCException, var1195=$r20, var3941=java.lang.Throwable, var2937=$r24}
; {org.hibernate.loader.Loader=var3662, r0=var1940, org.hibernate.engine.spi.SharedSessionContractImplementor=var1341, r1=var3825, java.io.Serializable=var2788, r6=var2961, java.lang.Object=var1545, r4=var3717, org.hibernate.type.Type=var3470, r3=var3469, java.util.Map=var3860, r5=var2048, r21=var2668, org.hibernate.engine.spi.QueryParameters=var269, $r22=var3819, java.sql.SQLException=var3724, $r7=var3867, org.hibernate.engine.spi.SessionFactoryImplementor=var3274, $r8=var2832, org.hibernate.engine.jdbc.spi.JdbcServices=var3932, $r9=var2176, org.hibernate.engine.jdbc.spi.SqlExceptionHelper=var1492, $r19=var2464, $r23=var1324, $r15=var3492, org.hibernate.persister.collection.CollectionPersister=var2693, $r11=var2746, $r12=var966, $r13=var2203, org.hibernate.pretty.MessageHelper=var3690, $r14=var2051, $r16=var3115, $r18=var257, $r17=var3918, org.hibernate.JDBCException=var3456, $r20=var1195, java.lang.Throwable=var3941, $r24=var2937}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.loader.Loader;	r1 := @parameter0: org.hibernate.engine.spi.SharedSessionContractImplementor;	r6 := @parameter1: java.io.Serializable[];	r4 := @parameter2: java.lang.Object[];	r3 := @parameter3: org.hibernate.type.Type[];	r5 := @parameter4: java.util.Map;	r21 := @parameter5: org.hibernate.type.Type;	$r22 = new org.hibernate.engine.spi.QueryParameters;	$r7 := @caughtexception;	$r8 = r0.<org.hibernate.loader.Loader: org.hibernate.engine.spi.SessionFactoryImplementor factory>;	$r9 = interfaceinvoke $r8.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.engine.jdbc.spi.JdbcServices getJdbcServices()>();	$r19 = interfaceinvoke $r9.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.engine.jdbc.spi.SqlExceptionHelper getSqlExceptionHelper()>();	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not load collection by subselect: ");	$r11 = virtualinvoke r0.<org.hibernate.loader.Loader: org.hibernate.persister.collection.CollectionPersister[] getCollectionPersisters()>();	$r12 = $r11[0];	$r13 = virtualinvoke r0.<org.hibernate.loader.Loader: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r14 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String collectionInfoString(org.hibernate.persister.collection.CollectionPersister,java.io.Serializable[],org.hibernate.engine.spi.SessionFactoryImplementor)>($r12, r6, $r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	$r17 = virtualinvoke r0.<org.hibernate.loader.Loader: java.lang.String getSQLString()>();	$r20 = virtualinvoke $r19.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String,java.lang.String)>($r7, $r18, $r17);	$r24 = (java.lang.Throwable) $r20;	throw $r24
;block_num 2