(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1323 0)
(declare-sort var1674 0)
(declare-sort var2767 0)
(declare-sort var1653 0)
(declare-sort var2988 0)
(declare-sort var2028 0)
(declare-sort var3525 0)
(declare-sort var2473 0)
(declare-sort var759 0)
(declare-sort var1375 0)
(declare-sort var3197 0)
(declare-sort var770 0)
(declare-sort var26 0)
(declare-sort var1442 0)
(declare-sort var2502 0)
(declare-sort var1891 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isDebugEnabled/1137532075 (var3525) Bool)
(declare-fun buildQueryParameters/894035660 (var1323 var1674 (Array Int var1674) var2988 var2028) var2473)
(declare-fun var1653_getJdbcServices/-1615476239 (var1653) var1375)
(declare-fun var1375_getSqlExceptionHelper/1800321680 (var1375) var3197)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun persister/591386175 (var1323) var770)
(declare-fun var1653_getFactory/1122061256 (var1653) var26)
(declare-fun var1442_infoString/-1514970405 (var770 (Array Int var1674) var26) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getSQLString/1754936683 (var2767) String)
(declare-fun convert/1666256987 (var3197 var759 String String) var2502)
(declare-fun cast-from-var2502-to-var1891 (var2502) var1891)
(declare-const null-var1323 var1323)
(declare-const null-var1674 var1674)
(declare-const null-var2767 var2767)
(declare-const null-var1653 var1653)
(declare-const null-__Array__Int__var1674__ (Array Int var1674))
(declare-const null-var2988 var2988)
(declare-const null-var2028 var2028)
(declare-const var1323-log var3525)
(declare-const null-var759 var759)
(declare-const var1907 var1323) ; Statement: r1 := @this: org.hibernate.loader.entity.plan.BatchingEntityLoader 
(assert (not (= var1907 null-var1323)))
(declare-const var2826 var1674) ; Statement: r2 := @parameter0: java.io.Serializable 
(assert (not (= var2826 null-var1674)))
(declare-const var2258 var2767) ; Statement: r6 := @parameter1: org.hibernate.loader.Loader 
(assert (not (= var2258 null-var2767)))
(declare-const var2863 var1653) ; Statement: r7 := @parameter2: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var2863 null-var1653)))
(declare-const var316 (Array Int var1674)) ; Statement: r3 := @parameter3: java.io.Serializable[] 
(assert (not (= var316 null-__Array__Int__var1674__)))
(declare-const var2482 var2988) ; Statement: r4 := @parameter4: java.lang.Object 
(assert (not (= var2482 null-var2988)))
(declare-const var1041 var2028) ; Statement: r5 := @parameter5: org.hibernate.LockOptions 
(assert (not (= var1041 null-var2028)))
(define-const var130 var3525 var1323-log) ; Statement: $r0 = <org.hibernate.loader.entity.plan.BatchingEntityLoader: org.jboss.logging.Logger log> 
(assert true)
(define-const var696 Bool (isDebugEnabled/1137532075 var130)) ; Statement: $z0 = virtualinvoke $r0.<org.jboss.logging.Logger: boolean isDebugEnabled()>() 
 ; Statement: if $z0 == 0 goto $r14 = virtualinvoke r1.<org.hibernate.loader.entity.plan.BatchingEntityLoader: org.hibernate.engine.spi.QueryParameters buildQueryParameters(java.io.Serializable,java.io.Serializable[],java.lang.Object,org.hibernate.LockOptions)>(r2, r3, r4, r5) 
(assert (= (ite var696 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var300 var2473 (buildQueryParameters/894035660 var1907 var2826 var316 var2482 var1041)) ; Statement: $r14 = virtualinvoke r1.<org.hibernate.loader.entity.plan.BatchingEntityLoader: org.hibernate.engine.spi.QueryParameters buildQueryParameters(java.io.Serializable,java.io.Serializable[],java.lang.Object,org.hibernate.LockOptions)>(r2, r3, r4, r5) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3703 var759) ; Statement: $r16 := @caughtexception 
(assert (not (= var3703 null-var759)))
(define-const var1634 var1375 (var1653_getJdbcServices/-1615476239 var2863)) ; Statement: $r17 = interfaceinvoke r7.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.jdbc.spi.JdbcServices getJdbcServices()>() 
(define-const var792 var3197 (var1375_getSqlExceptionHelper/1800321680 var1634)) ; Statement: $r26 = interfaceinvoke $r17.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.engine.jdbc.spi.SqlExceptionHelper getSqlExceptionHelper()>() 
(define-const var829 String String-init) ; Statement: $r28 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var829)) ; Statement: specialinvoke $r28.<java.lang.StringBuilder: void <init>()>() 
(declare-const var829!1 String)
(assert (= var829!1 ""))
(assert true)
(define-const var2248 String (append/672562846 var829!1 "could not load an entity batch: ")) ; Statement: $r22 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not load an entity batch: ") 
(declare-const var829!2 String)
(assert (= var829!2 (str.++ var829!1 "could not load an entity batch: ")))
(assert true)
(define-const var2729 var770 (persister/591386175 var1907)) ; Statement: $r20 = virtualinvoke r1.<org.hibernate.loader.entity.plan.BatchingEntityLoader: org.hibernate.persister.entity.EntityPersister persister()>() 
(define-const var2429 var26 (var1653_getFactory/1122061256 var2863)) ; Statement: $r19 = interfaceinvoke r7.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var1291 String (var1442_infoString/-1514970405 var2729 var316 var2429)) ; Statement: $r21 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String infoString(org.hibernate.persister.entity.EntityPersister,java.io.Serializable[],org.hibernate.engine.spi.SessionFactoryImplementor)>($r20, r3, $r19) 
(assert true)
(define-const var1728 String (append/672562846 var2248 var1291)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var2248!1 String)
(assert (= var2248!1 (str.++ var2248 var1291)))
(assert true)
(define-const var3775 String (toString/-2075883882 var1728)) ; Statement: $r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3863 String (getSQLString/1754936683 var2258)) ; Statement: $r24 = virtualinvoke r6.<org.hibernate.loader.Loader: java.lang.String getSQLString()>() 
(assert true)
(define-const var1446 var2502 (convert/1666256987 var792 var3703 var3775 var3863)) ; Statement: $r27 = virtualinvoke $r26.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String,java.lang.String)>($r16, $r25, $r24) 
(define-const var2961 var1891 (cast-from-var2502-to-var1891 var1446)) ; Statement: $r29 = (java.lang.Throwable) $r27 
 ; Statement: throw $r29 
(check-sat)
(get-model)
(get-unsat-core)
; {isDebugEnabled/1137532075=([org.jboss.logging.Logger], boolean), buildQueryParameters/894035660=([org.hibernate.loader.entity.plan.BatchingEntityLoader, java.io.Serializable, java.io.Serializable[], java.lang.Object, org.hibernate.LockOptions], org.hibernate.engine.spi.QueryParameters), var1653_getJdbcServices/-1615476239=([org.hibernate.engine.spi.SharedSessionContractImplementor], org.hibernate.engine.jdbc.spi.JdbcServices), var1375_getSqlExceptionHelper/1800321680=([org.hibernate.engine.jdbc.spi.JdbcServices], org.hibernate.engine.jdbc.spi.SqlExceptionHelper), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), persister/591386175=([org.hibernate.loader.entity.plan.BatchingEntityLoader], org.hibernate.persister.entity.EntityPersister), var1653_getFactory/1122061256=([org.hibernate.engine.spi.SharedSessionContractImplementor], org.hibernate.engine.spi.SessionFactoryImplementor), var1442_infoString/-1514970405=([org.hibernate.persister.entity.EntityPersister, java.io.Serializable[], org.hibernate.engine.spi.SessionFactoryImplementor], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getSQLString/1754936683=([org.hibernate.loader.Loader], java.lang.String), convert/1666256987=([org.hibernate.engine.jdbc.spi.SqlExceptionHelper, java.sql.SQLException, java.lang.String, java.lang.String], org.hibernate.JDBCException), cast-from-var2502-to-var1891=([org.hibernate.JDBCException], java.lang.Throwable)}
; {var1323=org.hibernate.loader.entity.plan.BatchingEntityLoader, var1907=r1, var1674=java.io.Serializable, var2826=r2, var2767=org.hibernate.loader.Loader, var2258=r6, var1653=org.hibernate.engine.spi.SharedSessionContractImplementor, var2863=r7, var316=r3, var2988=java.lang.Object, var2482=r4, var2028=org.hibernate.LockOptions, var1041=r5, var3525=org.jboss.logging.Logger, var130=$r0, var696=$z0, var2473=org.hibernate.engine.spi.QueryParameters, var300=$r14, var759=java.sql.SQLException, var3703=$r16, var1375=org.hibernate.engine.jdbc.spi.JdbcServices, var1634=$r17, var3197=org.hibernate.engine.jdbc.spi.SqlExceptionHelper, var792=$r26, var829=$r28, var2248=$r22, var770=org.hibernate.persister.entity.EntityPersister, var2729=$r20, var26=org.hibernate.engine.spi.SessionFactoryImplementor, var2429=$r19, var1442=org.hibernate.pretty.MessageHelper, var1291=$r21, var1728=$r23, var3775=$r25, var3863=$r24, var2502=org.hibernate.JDBCException, var1446=$r27, var1891=java.lang.Throwable, var2961=$r29}
; {org.hibernate.loader.entity.plan.BatchingEntityLoader=var1323, r1=var1907, java.io.Serializable=var1674, r2=var2826, org.hibernate.loader.Loader=var2767, r6=var2258, org.hibernate.engine.spi.SharedSessionContractImplementor=var1653, r7=var2863, r3=var316, java.lang.Object=var2988, r4=var2482, org.hibernate.LockOptions=var2028, r5=var1041, org.jboss.logging.Logger=var3525, $r0=var130, $z0=var696, org.hibernate.engine.spi.QueryParameters=var2473, $r14=var300, java.sql.SQLException=var759, $r16=var3703, org.hibernate.engine.jdbc.spi.JdbcServices=var1375, $r17=var1634, org.hibernate.engine.jdbc.spi.SqlExceptionHelper=var3197, $r26=var792, $r28=var829, $r22=var2248, org.hibernate.persister.entity.EntityPersister=var770, $r20=var2729, org.hibernate.engine.spi.SessionFactoryImplementor=var26, $r19=var2429, org.hibernate.pretty.MessageHelper=var1442, $r21=var1291, $r23=var1728, $r25=var3775, $r24=var3863, org.hibernate.JDBCException=var2502, $r27=var1446, java.lang.Throwable=var1891, $r29=var2961}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.loader.entity.plan.BatchingEntityLoader;	r2 := @parameter0: java.io.Serializable;	r6 := @parameter1: org.hibernate.loader.Loader;	r7 := @parameter2: org.hibernate.engine.spi.SharedSessionContractImplementor;	r3 := @parameter3: java.io.Serializable[];	r4 := @parameter4: java.lang.Object;	r5 := @parameter5: org.hibernate.LockOptions;	$r0 = <org.hibernate.loader.entity.plan.BatchingEntityLoader: org.jboss.logging.Logger log>;	$z0 = virtualinvoke $r0.<org.jboss.logging.Logger: boolean isDebugEnabled()>();	if $z0 == 0 goto $r14 = virtualinvoke r1.<org.hibernate.loader.entity.plan.BatchingEntityLoader: org.hibernate.engine.spi.QueryParameters buildQueryParameters(java.io.Serializable,java.io.Serializable[],java.lang.Object,org.hibernate.LockOptions)>(r2, r3, r4, r5);	$r14 = virtualinvoke r1.<org.hibernate.loader.entity.plan.BatchingEntityLoader: org.hibernate.engine.spi.QueryParameters buildQueryParameters(java.io.Serializable,java.io.Serializable[],java.lang.Object,org.hibernate.LockOptions)>(r2, r3, r4, r5);	$r16 := @caughtexception;	$r17 = interfaceinvoke r7.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.jdbc.spi.JdbcServices getJdbcServices()>();	$r26 = interfaceinvoke $r17.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.engine.jdbc.spi.SqlExceptionHelper getSqlExceptionHelper()>();	$r28 = new java.lang.StringBuilder;	specialinvoke $r28.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not load an entity batch: ");	$r20 = virtualinvoke r1.<org.hibernate.loader.entity.plan.BatchingEntityLoader: org.hibernate.persister.entity.EntityPersister persister()>();	$r19 = interfaceinvoke r7.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r21 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String infoString(org.hibernate.persister.entity.EntityPersister,java.io.Serializable[],org.hibernate.engine.spi.SessionFactoryImplementor)>($r20, r3, $r19);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	$r24 = virtualinvoke r6.<org.hibernate.loader.Loader: java.lang.String getSQLString()>();	$r27 = virtualinvoke $r26.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String,java.lang.String)>($r16, $r25, $r24);	$r29 = (java.lang.Throwable) $r27;	throw $r29
;block_num 3