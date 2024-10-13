(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var669 0)
(declare-sort var172 0)
(declare-sort var1972 0)
(declare-sort var1794 0)
(declare-sort var1270 0)
(declare-sort var1144 0)
(declare-sort var817 0)
(declare-sort var3600 0)
(declare-sort var1347 0)
(declare-sort var2240 0)
(declare-sort var182 0)
(declare-sort var898 0)
(declare-sort var759 0)
(declare-sort var966 0)
(declare-sort var2904 0)
(declare-sort var2377 0)
(declare-sort var732 0)
(declare-sort var543 0)
(declare-sort var3169 0)
(declare-sort var2357 0)
(declare-sort var2079 0)
(declare-sort var3672 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2240_isDebugEnabled/1662963326 (var2240) Bool)
(declare-fun getLength-Arr-var1972-1 ((Array Int var1972)) Int)
(declare-fun arr-var1794-init () (Array Int var1794))
(declare-fun var182_fill/1714691754 ((Array Int var1270) var1270) void)
(declare-fun cast-from-__Array__Int__var1794__-to-__Array__Int__var1270__ ((Array Int var1794)) (Array Int var1270))
(declare-fun cast-from-var1794-to-var1270 (var1794) var1270)
(declare-fun var898-init () var898)
(declare-fun getFactory/1727443054 (var2904) var966)
(declare-fun cast-from-var669-to-var2904 (var669) var2904)
(declare-fun var966_getSQLExceptionHelper/176842062 (var966) var2377)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun entityPersister/-1696328119 (var669) var732)
(declare-fun var543_infoString/-1514970405 (var817 (Array Int var1972) var966) String)
(declare-fun cast-from-var732-to-var817 (var732) var817)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun staticLoadQuery/-1696328119 (var669) var3169)
(declare-fun getSqlStatement/-1507129255 (var2357) String)
(declare-fun cast-from-var3169-to-var2357 (var3169) var2357)
(declare-fun convert/1666256987 (var2377 var759 String String) var2079)
(declare-fun cast-from-var2079-to-var3672 (var2079) var3672)
(declare-const null-var669 var669)
(declare-const null-var172 var172)
(declare-const null-__Array__Int__var1972__ (Array Int var1972))
(declare-const null-var1794 var1794)
(declare-const null-var1270 var1270)
(declare-const null-String String)
(declare-const null-var1972 var1972)
(declare-const null-var817 var817)
(declare-const null-var3600 var3600)
(declare-const null-var1347 var1347)
(declare-const var669-log var2240)
(declare-const null-var759 var759)
(declare-const var1508 var669) ; Statement: r9 := @this: org.hibernate.loader.entity.plan.AbstractLoadPlanBasedEntityLoader 
(assert (not (= var1508 null-var669)))
(declare-const var211 var172) ; Statement: r10 := @parameter0: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var211 null-var172)))
(declare-const var1271 (Array Int var1972)) ; Statement: r1 := @parameter1: java.io.Serializable[] 
(assert (not (= var1271 null-__Array__Int__var1972__)))
(declare-const var27 var1794) ; Statement: r2 := @parameter2: org.hibernate.type.Type 
(assert (not (= var27 null-var1794)))
(declare-const var3883 var1270) ; Statement: r4 := @parameter3: java.lang.Object 
(assert (not (= var3883 null-var1270)))
(declare-const var2237 String) ; Statement: r5 := @parameter4: java.lang.String 
(assert (not (= var2237 null-String)))
(declare-const var3905 var1972) ; Statement: r6 := @parameter5: java.io.Serializable 
(assert (not (= var3905 null-var1972)))
(declare-const var1129 var817) ; Statement: r14 := @parameter6: org.hibernate.persister.entity.EntityPersister 
(assert (not (= var1129 null-var817)))
(declare-const var1194 var3600) ; Statement: r7 := @parameter7: org.hibernate.LockOptions 
(assert (not (= var1194 null-var3600)))
(declare-const var3230 var1347) ; Statement: r8 := @parameter8: java.lang.Boolean 
(assert (not (= var3230 null-var1347)))
(define-const var1646 var2240 var669-log) ; Statement: $r0 = <org.hibernate.loader.entity.plan.AbstractLoadPlanBasedEntityLoader: org.hibernate.internal.CoreMessageLogger log> 
(define-const var1005 Bool (var2240_isDebugEnabled/1662963326 var1646)) ; Statement: $z0 = interfaceinvoke $r0.<org.hibernate.internal.CoreMessageLogger: boolean isDebugEnabled()>() 
 ; Statement: if $z0 == 0 goto $i0 = lengthof r1 
(assert (= (ite var1005 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2431 Int (getLength-Arr-var1972-1 var1271)) ; Statement: $i0 = lengthof r1 
(define-const var57 (Array Int var1794) arr-var1794-init) ; Statement: $r18 = newarray (org.hibernate.type.Type)[$i0] 
;(assert (var182_fill/1714691754 (cast-from-__Array__Int__var1794__-to-__Array__Int__var1270__ var57) (cast-from-var1794-to-var1270 var27))) ; Statement: staticinvoke <java.util.Arrays: void fill(java.lang.Object[],java.lang.Object)>($r18, r2) 

(declare-const var57!1 (Array Int var1794))
(declare-const var27!1 var1794)
(define-const var1884 var898 var898-init) ; Statement: $r32 = new org.hibernate.engine.spi.QueryParameters 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var270 var759) ; Statement: $r19 := @caughtexception 
(assert (not (= var270 null-var759)))
(assert true)
(define-const var1370 var966 (getFactory/1727443054 (cast-from-var669-to-var2904 var1508))) ; Statement: $r20 = virtualinvoke r9.<org.hibernate.loader.entity.plan.AbstractLoadPlanBasedEntityLoader: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var3962 var2377 (var966_getSQLExceptionHelper/176842062 var1370)) ; Statement: $r30 = interfaceinvoke $r20.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.engine.jdbc.spi.SqlExceptionHelper getSQLExceptionHelper()>() 
(define-const var310 String String-init) ; Statement: $r33 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var310)) ; Statement: specialinvoke $r33.<java.lang.StringBuilder: void <init>()>() 
(declare-const var310!1 String)
(assert (= var310!1 ""))
(assert true)
(define-const var351 String (append/672562846 var310!1 "could not load an entity batch: ")) ; Statement: $r25 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not load an entity batch: ") 
(declare-const var310!2 String)
(assert (= var310!2 (str.++ var310!1 "could not load an entity batch: ")))
(define-const var3649 var732 (entityPersister/-1696328119 var1508)) ; Statement: $r22 = r9.<org.hibernate.loader.entity.plan.AbstractLoadPlanBasedEntityLoader: org.hibernate.persister.entity.OuterJoinLoadable entityPersister> 
(assert true)
(define-const var3065 var966 (getFactory/1727443054 (cast-from-var669-to-var2904 var1508))) ; Statement: $r23 = virtualinvoke r9.<org.hibernate.loader.entity.plan.AbstractLoadPlanBasedEntityLoader: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var1109 String (var543_infoString/-1514970405 (cast-from-var732-to-var817 var3649) var1271 var3065)) ; Statement: $r24 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String infoString(org.hibernate.persister.entity.EntityPersister,java.io.Serializable[],org.hibernate.engine.spi.SessionFactoryImplementor)>($r22, r1, $r23) 
(assert true)
(define-const var2590 String (append/672562846 var351 var1109)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var351!1 String)
(assert (= var351!1 (str.++ var351 var1109)))
(assert true)
(define-const var311 String (toString/-2075883882 var2590)) ; Statement: $r29 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3936 var3169 (staticLoadQuery/-1696328119 var1508)) ; Statement: $r27 = r9.<org.hibernate.loader.entity.plan.AbstractLoadPlanBasedEntityLoader: org.hibernate.loader.plan.exec.internal.EntityLoadQueryDetails staticLoadQuery> 
(assert true)
(define-const var3231 String (getSqlStatement/-1507129255 (cast-from-var3169-to-var2357 var3936))) ; Statement: $r28 = virtualinvoke $r27.<org.hibernate.loader.plan.exec.internal.EntityLoadQueryDetails: java.lang.String getSqlStatement()>() 
(assert true)
(define-const var3710 var2079 (convert/1666256987 var3962 var270 var311 var3231)) ; Statement: $r31 = virtualinvoke $r30.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String,java.lang.String)>($r19, $r29, $r28) 
(define-const var3773 var3672 (cast-from-var2079-to-var3672 var3710)) ; Statement: $r34 = (java.lang.Throwable) $r31 
 ; Statement: throw $r34 
(check-sat)
(get-model)
(get-unsat-core)
; {var2240_isDebugEnabled/1662963326=([org.hibernate.internal.CoreMessageLogger], boolean), getLength-Arr-var1972-1=([java.io.Serializable[]], int), arr-var1794-init=([], org.hibernate.type.Type[]), var182_fill/1714691754=([java.lang.Object[], java.lang.Object], void), cast-from-__Array__Int__var1794__-to-__Array__Int__var1270__=([org.hibernate.type.Type[]], java.lang.Object[]), cast-from-var1794-to-var1270=([org.hibernate.type.Type], java.lang.Object), var898-init=([], org.hibernate.engine.spi.QueryParameters), getFactory/1727443054=([org.hibernate.loader.plan.exec.internal.AbstractLoadPlanBasedLoader], org.hibernate.engine.spi.SessionFactoryImplementor), cast-from-var669-to-var2904=([org.hibernate.loader.entity.plan.AbstractLoadPlanBasedEntityLoader], org.hibernate.loader.plan.exec.internal.AbstractLoadPlanBasedLoader), var966_getSQLExceptionHelper/176842062=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.engine.jdbc.spi.SqlExceptionHelper), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), entityPersister/-1696328119=([org.hibernate.loader.entity.plan.AbstractLoadPlanBasedEntityLoader], org.hibernate.persister.entity.OuterJoinLoadable), var543_infoString/-1514970405=([org.hibernate.persister.entity.EntityPersister, java.io.Serializable[], org.hibernate.engine.spi.SessionFactoryImplementor], java.lang.String), cast-from-var732-to-var817=([org.hibernate.persister.entity.OuterJoinLoadable], org.hibernate.persister.entity.EntityPersister), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), staticLoadQuery/-1696328119=([org.hibernate.loader.entity.plan.AbstractLoadPlanBasedEntityLoader], org.hibernate.loader.plan.exec.internal.EntityLoadQueryDetails), getSqlStatement/-1507129255=([org.hibernate.loader.plan.exec.internal.AbstractLoadQueryDetails], java.lang.String), cast-from-var3169-to-var2357=([org.hibernate.loader.plan.exec.internal.EntityLoadQueryDetails], org.hibernate.loader.plan.exec.internal.AbstractLoadQueryDetails), convert/1666256987=([org.hibernate.engine.jdbc.spi.SqlExceptionHelper, java.sql.SQLException, java.lang.String, java.lang.String], org.hibernate.JDBCException), cast-from-var2079-to-var3672=([org.hibernate.JDBCException], java.lang.Throwable)}
; {var669=org.hibernate.loader.entity.plan.AbstractLoadPlanBasedEntityLoader, var1508=r9, var172=org.hibernate.engine.spi.SharedSessionContractImplementor, var211=r10, var1972=java.io.Serializable, var1271=r1, var1794=org.hibernate.type.Type, var27=r2, var1270=java.lang.Object, var3883=r4, var2237=r5, var1144=null_type, var3905=r6, var817=org.hibernate.persister.entity.EntityPersister, var1129=r14, var3600=org.hibernate.LockOptions, var1194=r7, var1347=java.lang.Boolean, var3230=r8, var2240=org.hibernate.internal.CoreMessageLogger, var1646=$r0, var1005=$z0, var2431=$i0, var57=$r18, var182=java.util.Arrays, var898=org.hibernate.engine.spi.QueryParameters, var1884=$r32, var759=java.sql.SQLException, var270=$r19, var966=org.hibernate.engine.spi.SessionFactoryImplementor, var2904=org.hibernate.loader.plan.exec.internal.AbstractLoadPlanBasedLoader, var1370=$r20, var2377=org.hibernate.engine.jdbc.spi.SqlExceptionHelper, var3962=$r30, var310=$r33, var351=$r25, var732=org.hibernate.persister.entity.OuterJoinLoadable, var3649=$r22, var3065=$r23, var543=org.hibernate.pretty.MessageHelper, var1109=$r24, var2590=$r26, var311=$r29, var3169=org.hibernate.loader.plan.exec.internal.EntityLoadQueryDetails, var3936=$r27, var2357=org.hibernate.loader.plan.exec.internal.AbstractLoadQueryDetails, var3231=$r28, var2079=org.hibernate.JDBCException, var3710=$r31, var3672=java.lang.Throwable, var3773=$r34}
; {org.hibernate.loader.entity.plan.AbstractLoadPlanBasedEntityLoader=var669, r9=var1508, org.hibernate.engine.spi.SharedSessionContractImplementor=var172, r10=var211, java.io.Serializable=var1972, r1=var1271, org.hibernate.type.Type=var1794, r2=var27, java.lang.Object=var1270, r4=var3883, r5=var2237, null_type=var1144, r6=var3905, org.hibernate.persister.entity.EntityPersister=var817, r14=var1129, org.hibernate.LockOptions=var3600, r7=var1194, java.lang.Boolean=var1347, r8=var3230, org.hibernate.internal.CoreMessageLogger=var2240, $r0=var1646, $z0=var1005, $i0=var2431, $r18=var57, java.util.Arrays=var182, org.hibernate.engine.spi.QueryParameters=var898, $r32=var1884, java.sql.SQLException=var759, $r19=var270, org.hibernate.engine.spi.SessionFactoryImplementor=var966, org.hibernate.loader.plan.exec.internal.AbstractLoadPlanBasedLoader=var2904, $r20=var1370, org.hibernate.engine.jdbc.spi.SqlExceptionHelper=var2377, $r30=var3962, $r33=var310, $r25=var351, org.hibernate.persister.entity.OuterJoinLoadable=var732, $r22=var3649, $r23=var3065, org.hibernate.pretty.MessageHelper=var543, $r24=var1109, $r26=var2590, $r29=var311, org.hibernate.loader.plan.exec.internal.EntityLoadQueryDetails=var3169, $r27=var3936, org.hibernate.loader.plan.exec.internal.AbstractLoadQueryDetails=var2357, $r28=var3231, org.hibernate.JDBCException=var2079, $r31=var3710, java.lang.Throwable=var3672, $r34=var3773}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: org.hibernate.loader.entity.plan.AbstractLoadPlanBasedEntityLoader;	r10 := @parameter0: org.hibernate.engine.spi.SharedSessionContractImplementor;	r1 := @parameter1: java.io.Serializable[];	r2 := @parameter2: org.hibernate.type.Type;	r4 := @parameter3: java.lang.Object;	r5 := @parameter4: java.lang.String;	r6 := @parameter5: java.io.Serializable;	r14 := @parameter6: org.hibernate.persister.entity.EntityPersister;	r7 := @parameter7: org.hibernate.LockOptions;	r8 := @parameter8: java.lang.Boolean;	$r0 = <org.hibernate.loader.entity.plan.AbstractLoadPlanBasedEntityLoader: org.hibernate.internal.CoreMessageLogger log>;	$z0 = interfaceinvoke $r0.<org.hibernate.internal.CoreMessageLogger: boolean isDebugEnabled()>();	if $z0 == 0 goto $i0 = lengthof r1;	$i0 = lengthof r1;	$r18 = newarray (org.hibernate.type.Type)[$i0];	staticinvoke <java.util.Arrays: void fill(java.lang.Object[],java.lang.Object)>($r18, r2);	$r32 = new org.hibernate.engine.spi.QueryParameters;	$r19 := @caughtexception;	$r20 = virtualinvoke r9.<org.hibernate.loader.entity.plan.AbstractLoadPlanBasedEntityLoader: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r30 = interfaceinvoke $r20.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.engine.jdbc.spi.SqlExceptionHelper getSQLExceptionHelper()>();	$r33 = new java.lang.StringBuilder;	specialinvoke $r33.<java.lang.StringBuilder: void <init>()>();	$r25 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not load an entity batch: ");	$r22 = r9.<org.hibernate.loader.entity.plan.AbstractLoadPlanBasedEntityLoader: org.hibernate.persister.entity.OuterJoinLoadable entityPersister>;	$r23 = virtualinvoke r9.<org.hibernate.loader.entity.plan.AbstractLoadPlanBasedEntityLoader: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r24 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String infoString(org.hibernate.persister.entity.EntityPersister,java.io.Serializable[],org.hibernate.engine.spi.SessionFactoryImplementor)>($r22, r1, $r23);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	$r29 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	$r27 = r9.<org.hibernate.loader.entity.plan.AbstractLoadPlanBasedEntityLoader: org.hibernate.loader.plan.exec.internal.EntityLoadQueryDetails staticLoadQuery>;	$r28 = virtualinvoke $r27.<org.hibernate.loader.plan.exec.internal.EntityLoadQueryDetails: java.lang.String getSqlStatement()>();	$r31 = virtualinvoke $r30.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String,java.lang.String)>($r19, $r29, $r28);	$r34 = (java.lang.Throwable) $r31;	throw $r34
;block_num 3