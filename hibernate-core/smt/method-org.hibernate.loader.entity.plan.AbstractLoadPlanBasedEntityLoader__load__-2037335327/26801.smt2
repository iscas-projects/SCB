(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2256 0)
(declare-sort var895 0)
(declare-sort var706 0)
(declare-sort var1510 0)
(declare-sort var586 0)
(declare-sort var1709 0)
(declare-sort var2213 0)
(declare-sort var1007 0)
(declare-sort var3180 0)
(declare-sort var858 0)
(declare-sort var2797 0)
(declare-sort var3705 0)
(declare-sort var530 0)
(declare-sort var71 0)
(declare-sort var374 0)
(declare-sort var764 0)
(declare-sort var423 0)
(declare-sort var104 0)
(declare-sort var1080 0)
(declare-sort var2164 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2213-init () var2213)
(declare-fun var1510_getJdbcServices/-1615476239 (var1510) var3180)
(declare-fun var3180_getSqlExceptionHelper/1800321680 (var3180) var858)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun entityPersister/-1696328119 (var2256) var2797)
(declare-fun var530_getIdentifierType/1645724036 (var530) var3705)
(declare-fun cast-from-var2797-to-var530 (var2797) var530)
(declare-fun getFactory/1727443054 (var374) var71)
(declare-fun cast-from-var2256-to-var374 (var2256) var374)
(declare-fun var764_infoString/1358266057 (var530 var706 var3705 var71) String)
(declare-fun cast-from-var895-to-var706 (var895) var706)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun staticLoadQuery/-1696328119 (var2256) var423)
(declare-fun getSqlStatement/-1507129255 (var104) String)
(declare-fun cast-from-var423-to-var104 (var423) var104)
(declare-fun convert/1666256987 (var858 var1007 String String) var1080)
(declare-fun cast-from-var1080-to-var2164 (var1080) var2164)
(declare-const null-var2256 var2256)
(declare-const null-var895 var895)
(declare-const null-var706 var706)
(declare-const null-var1510 var1510)
(declare-const null-var586 var586)
(declare-const null-var1709 var1709)
(declare-const null-var1007 var1007)
(declare-const var2608 var2256) ; Statement: r2 := @this: org.hibernate.loader.entity.plan.AbstractLoadPlanBasedEntityLoader 
(assert (not (= var2608 null-var2256)))
(declare-const var541 var895) ; Statement: r6 := @parameter0: java.io.Serializable 
(assert (not (= var541 null-var895)))
(declare-const var3766 var706) ; Statement: r7 := @parameter1: java.lang.Object 
(assert (not (= var3766 null-var706)))
(declare-const var2960 var1510) ; Statement: r12 := @parameter2: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var2960 null-var1510)))
(declare-const var1156 var586) ; Statement: r10 := @parameter3: org.hibernate.LockOptions 
(assert (not (= var1156 null-var586)))
(declare-const var3572 var1709) ; Statement: r11 := @parameter4: java.lang.Boolean 
(assert (not (= var3572 null-var1709)))
(define-const var3901 var2213 var2213-init) ; Statement: $r33 = new org.hibernate.engine.spi.QueryParameters 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2546 var1007) ; Statement: $r18 := @caughtexception 
(assert (not (= var2546 null-var1007)))
(define-const var1070 var3180 (var1510_getJdbcServices/-1615476239 var2960)) ; Statement: $r19 = interfaceinvoke r12.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.jdbc.spi.JdbcServices getJdbcServices()>() 
(define-const var2199 var858 (var3180_getSqlExceptionHelper/1800321680 var1070)) ; Statement: $r31 = interfaceinvoke $r19.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.engine.jdbc.spi.SqlExceptionHelper getSqlExceptionHelper()>() 
(define-const var2795 String String-init) ; Statement: $r34 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2795)) ; Statement: specialinvoke $r34.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2795!1 String)
(assert (= var2795!1 ""))
(assert true)
(define-const var1604 String (append/672562846 var2795!1 "could not load an entity: ")) ; Statement: $r26 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not load an entity: ") 
(declare-const var2795!2 String)
(assert (= var2795!2 (str.++ var2795!1 "could not load an entity: ")))
(define-const var2617 var2797 (entityPersister/-1696328119 var2608)) ; Statement: $r22 = r2.<org.hibernate.loader.entity.plan.AbstractLoadPlanBasedEntityLoader: org.hibernate.persister.entity.OuterJoinLoadable entityPersister> 
(define-const var2135 var2797 (entityPersister/-1696328119 var2608)) ; Statement: $r21 = r2.<org.hibernate.loader.entity.plan.AbstractLoadPlanBasedEntityLoader: org.hibernate.persister.entity.OuterJoinLoadable entityPersister> 
(define-const var1200 var3705 (var530_getIdentifierType/1645724036 (cast-from-var2797-to-var530 var2135))) ; Statement: $r24 = interfaceinvoke $r21.<org.hibernate.persister.entity.OuterJoinLoadable: org.hibernate.type.Type getIdentifierType()>() 
(assert true)
(define-const var491 var71 (getFactory/1727443054 (cast-from-var2256-to-var374 var2608))) ; Statement: $r23 = virtualinvoke r2.<org.hibernate.loader.entity.plan.AbstractLoadPlanBasedEntityLoader: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var3707 String (var764_infoString/1358266057 (cast-from-var2797-to-var530 var2617) (cast-from-var895-to-var706 var541) var1200 var491)) ; Statement: $r25 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String infoString(org.hibernate.persister.entity.EntityPersister,java.lang.Object,org.hibernate.type.Type,org.hibernate.engine.spi.SessionFactoryImplementor)>($r22, r6, $r24, $r23) 
(assert true)
(define-const var2765 String (append/672562846 var1604 var3707)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25) 
(declare-const var1604!1 String)
(assert (= var1604!1 (str.++ var1604 var3707)))
(assert true)
(define-const var3493 String (toString/-2075883882 var2765)) ; Statement: $r30 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2864 var423 (staticLoadQuery/-1696328119 var2608)) ; Statement: $r28 = r2.<org.hibernate.loader.entity.plan.AbstractLoadPlanBasedEntityLoader: org.hibernate.loader.plan.exec.internal.EntityLoadQueryDetails staticLoadQuery> 
(assert true)
(define-const var1384 String (getSqlStatement/-1507129255 (cast-from-var423-to-var104 var2864))) ; Statement: $r29 = virtualinvoke $r28.<org.hibernate.loader.plan.exec.internal.EntityLoadQueryDetails: java.lang.String getSqlStatement()>() 
(assert true)
(define-const var2549 var1080 (convert/1666256987 var2199 var2546 var3493 var1384)) ; Statement: $r32 = virtualinvoke $r31.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String,java.lang.String)>($r18, $r30, $r29) 
(define-const var2974 var2164 (cast-from-var1080-to-var2164 var2549)) ; Statement: $r35 = (java.lang.Throwable) $r32 
 ; Statement: throw $r35 
(check-sat)
(get-model)
(get-unsat-core)
; {var2213-init=([], org.hibernate.engine.spi.QueryParameters), var1510_getJdbcServices/-1615476239=([org.hibernate.engine.spi.SharedSessionContractImplementor], org.hibernate.engine.jdbc.spi.JdbcServices), var3180_getSqlExceptionHelper/1800321680=([org.hibernate.engine.jdbc.spi.JdbcServices], org.hibernate.engine.jdbc.spi.SqlExceptionHelper), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), entityPersister/-1696328119=([org.hibernate.loader.entity.plan.AbstractLoadPlanBasedEntityLoader], org.hibernate.persister.entity.OuterJoinLoadable), var530_getIdentifierType/1645724036=([org.hibernate.persister.entity.EntityPersister], org.hibernate.type.Type), cast-from-var2797-to-var530=([org.hibernate.persister.entity.OuterJoinLoadable], org.hibernate.persister.entity.EntityPersister), getFactory/1727443054=([org.hibernate.loader.plan.exec.internal.AbstractLoadPlanBasedLoader], org.hibernate.engine.spi.SessionFactoryImplementor), cast-from-var2256-to-var374=([org.hibernate.loader.entity.plan.AbstractLoadPlanBasedEntityLoader], org.hibernate.loader.plan.exec.internal.AbstractLoadPlanBasedLoader), var764_infoString/1358266057=([org.hibernate.persister.entity.EntityPersister, java.lang.Object, org.hibernate.type.Type, org.hibernate.engine.spi.SessionFactoryImplementor], java.lang.String), cast-from-var895-to-var706=([java.io.Serializable], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), staticLoadQuery/-1696328119=([org.hibernate.loader.entity.plan.AbstractLoadPlanBasedEntityLoader], org.hibernate.loader.plan.exec.internal.EntityLoadQueryDetails), getSqlStatement/-1507129255=([org.hibernate.loader.plan.exec.internal.AbstractLoadQueryDetails], java.lang.String), cast-from-var423-to-var104=([org.hibernate.loader.plan.exec.internal.EntityLoadQueryDetails], org.hibernate.loader.plan.exec.internal.AbstractLoadQueryDetails), convert/1666256987=([org.hibernate.engine.jdbc.spi.SqlExceptionHelper, java.sql.SQLException, java.lang.String, java.lang.String], org.hibernate.JDBCException), cast-from-var1080-to-var2164=([org.hibernate.JDBCException], java.lang.Throwable)}
; {var2256=org.hibernate.loader.entity.plan.AbstractLoadPlanBasedEntityLoader, var2608=r2, var895=java.io.Serializable, var541=r6, var706=java.lang.Object, var3766=r7, var1510=org.hibernate.engine.spi.SharedSessionContractImplementor, var2960=r12, var586=org.hibernate.LockOptions, var1156=r10, var1709=java.lang.Boolean, var3572=r11, var2213=org.hibernate.engine.spi.QueryParameters, var3901=$r33, var1007=java.sql.SQLException, var2546=$r18, var3180=org.hibernate.engine.jdbc.spi.JdbcServices, var1070=$r19, var858=org.hibernate.engine.jdbc.spi.SqlExceptionHelper, var2199=$r31, var2795=$r34, var1604=$r26, var2797=org.hibernate.persister.entity.OuterJoinLoadable, var2617=$r22, var2135=$r21, var3705=org.hibernate.type.Type, var530=org.hibernate.persister.entity.EntityPersister, var1200=$r24, var71=org.hibernate.engine.spi.SessionFactoryImplementor, var374=org.hibernate.loader.plan.exec.internal.AbstractLoadPlanBasedLoader, var491=$r23, var764=org.hibernate.pretty.MessageHelper, var3707=$r25, var2765=$r27, var3493=$r30, var423=org.hibernate.loader.plan.exec.internal.EntityLoadQueryDetails, var2864=$r28, var104=org.hibernate.loader.plan.exec.internal.AbstractLoadQueryDetails, var1384=$r29, var1080=org.hibernate.JDBCException, var2549=$r32, var2164=java.lang.Throwable, var2974=$r35}
; {org.hibernate.loader.entity.plan.AbstractLoadPlanBasedEntityLoader=var2256, r2=var2608, java.io.Serializable=var895, r6=var541, java.lang.Object=var706, r7=var3766, org.hibernate.engine.spi.SharedSessionContractImplementor=var1510, r12=var2960, org.hibernate.LockOptions=var586, r10=var1156, java.lang.Boolean=var1709, r11=var3572, org.hibernate.engine.spi.QueryParameters=var2213, $r33=var3901, java.sql.SQLException=var1007, $r18=var2546, org.hibernate.engine.jdbc.spi.JdbcServices=var3180, $r19=var1070, org.hibernate.engine.jdbc.spi.SqlExceptionHelper=var858, $r31=var2199, $r34=var2795, $r26=var1604, org.hibernate.persister.entity.OuterJoinLoadable=var2797, $r22=var2617, $r21=var2135, org.hibernate.type.Type=var3705, org.hibernate.persister.entity.EntityPersister=var530, $r24=var1200, org.hibernate.engine.spi.SessionFactoryImplementor=var71, org.hibernate.loader.plan.exec.internal.AbstractLoadPlanBasedLoader=var374, $r23=var491, org.hibernate.pretty.MessageHelper=var764, $r25=var3707, $r27=var2765, $r30=var3493, org.hibernate.loader.plan.exec.internal.EntityLoadQueryDetails=var423, $r28=var2864, org.hibernate.loader.plan.exec.internal.AbstractLoadQueryDetails=var104, $r29=var1384, org.hibernate.JDBCException=var1080, $r32=var2549, java.lang.Throwable=var2164, $r35=var2974}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.loader.entity.plan.AbstractLoadPlanBasedEntityLoader;	r6 := @parameter0: java.io.Serializable;	r7 := @parameter1: java.lang.Object;	r12 := @parameter2: org.hibernate.engine.spi.SharedSessionContractImplementor;	r10 := @parameter3: org.hibernate.LockOptions;	r11 := @parameter4: java.lang.Boolean;	$r33 = new org.hibernate.engine.spi.QueryParameters;	$r18 := @caughtexception;	$r19 = interfaceinvoke r12.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.jdbc.spi.JdbcServices getJdbcServices()>();	$r31 = interfaceinvoke $r19.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.engine.jdbc.spi.SqlExceptionHelper getSqlExceptionHelper()>();	$r34 = new java.lang.StringBuilder;	specialinvoke $r34.<java.lang.StringBuilder: void <init>()>();	$r26 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not load an entity: ");	$r22 = r2.<org.hibernate.loader.entity.plan.AbstractLoadPlanBasedEntityLoader: org.hibernate.persister.entity.OuterJoinLoadable entityPersister>;	$r21 = r2.<org.hibernate.loader.entity.plan.AbstractLoadPlanBasedEntityLoader: org.hibernate.persister.entity.OuterJoinLoadable entityPersister>;	$r24 = interfaceinvoke $r21.<org.hibernate.persister.entity.OuterJoinLoadable: org.hibernate.type.Type getIdentifierType()>();	$r23 = virtualinvoke r2.<org.hibernate.loader.entity.plan.AbstractLoadPlanBasedEntityLoader: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r25 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String infoString(org.hibernate.persister.entity.EntityPersister,java.lang.Object,org.hibernate.type.Type,org.hibernate.engine.spi.SessionFactoryImplementor)>($r22, r6, $r24, $r23);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25);	$r30 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>();	$r28 = r2.<org.hibernate.loader.entity.plan.AbstractLoadPlanBasedEntityLoader: org.hibernate.loader.plan.exec.internal.EntityLoadQueryDetails staticLoadQuery>;	$r29 = virtualinvoke $r28.<org.hibernate.loader.plan.exec.internal.EntityLoadQueryDetails: java.lang.String getSqlStatement()>();	$r32 = virtualinvoke $r31.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String,java.lang.String)>($r18, $r30, $r29);	$r35 = (java.lang.Throwable) $r32;	throw $r35
;block_num 2