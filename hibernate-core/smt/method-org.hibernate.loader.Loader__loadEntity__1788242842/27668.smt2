(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2004 0)
(declare-sort var1276 0)
(declare-sort var1625 0)
(declare-sort var3847 0)
(declare-sort var2063 0)
(declare-sort var2536 0)
(declare-sort var130 0)
(declare-sort var2030 0)
(declare-sort var1818 0)
(declare-sort var3974 0)
(declare-sort var3573 0)
(declare-sort var3800 0)
(declare-sort var2137 0)
(declare-sort var3504 0)
(declare-sort var2908 0)
(declare-sort var2204 0)
(declare-sort var3767 0)
(declare-sort var2878 0)
(declare-sort var2922 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3974_isDebugEnabled/1662963326 (var3974) Bool)
(declare-fun var3573-init () var3573)
(declare-fun getEntityPersisters/113379178 (var2004) (Array Int var2137))
(declare-fun factory/515813576 (var2004) var3504)
(declare-fun var3504_getJdbcServices/779116026 (var3504) var2908)
(declare-fun var2908_getSqlExceptionHelper/1800321680 (var2908) var2204)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getLength-Arr-var2137-1 ((Array Int var2137)) Int)
(declare-fun getFactory/324636549 (var2004) var3504)
(declare-fun var3767_infoString/1358266057 (var130 var1625 var3847 var3504) String)
(declare-fun cast-from-var2137-to-var130 (var2137) var130)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getSQLString/1754936683 (var2004) String)
(declare-fun convert/1666256987 (var2204 var3800 String String) var2878)
(declare-fun cast-from-var2878-to-var2922 (var2878) var2922)
(declare-const null-var2004 var2004)
(declare-const null-var1276 var1276)
(declare-const null-var1625 var1625)
(declare-const null-var3847 var3847)
(declare-const null-String String)
(declare-const null-var2536 var2536)
(declare-const null-var130 var130)
(declare-const null-var2030 var2030)
(declare-const null-var1818 var1818)
(declare-const var2004-LOG var3974)
(declare-const null-var3800 var3800)
(declare-const var817 var2004) ; Statement: r11 := @this: org.hibernate.loader.Loader 
(assert (not (= var817 null-var2004)))
(declare-const var733 var1276) ; Statement: r12 := @parameter0: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var733 null-var1276)))
(declare-const var1876 var1625) ; Statement: r5 := @parameter1: java.lang.Object 
(assert (not (= var1876 null-var1625)))
(declare-const var2677 var3847) ; Statement: r3 := @parameter2: org.hibernate.type.Type 
(assert (not (= var2677 null-var3847)))
(declare-const var2995 var1625) ; Statement: r6 := @parameter3: java.lang.Object 
(assert (not (= var2995 null-var1625)))
(declare-const var1080 String) ; Statement: r7 := @parameter4: java.lang.String 
(assert (not (= var1080 null-String)))
(declare-const var3021 var2536) ; Statement: r8 := @parameter5: java.io.Serializable 
(assert (not (= var3021 null-var2536)))
(declare-const var3362 var130) ; Statement: r15 := @parameter6: org.hibernate.persister.entity.EntityPersister 
(assert (not (= var3362 null-var130)))
(declare-const var3134 var2030) ; Statement: r9 := @parameter7: org.hibernate.LockOptions 
(assert (not (= var3134 null-var2030)))
(declare-const var1137 var1818) ; Statement: r10 := @parameter8: java.lang.Boolean 
(assert (not (= var1137 null-var1818)))
(define-const var3416 var3974 var2004-LOG) ; Statement: $r0 = <org.hibernate.loader.Loader: org.hibernate.internal.CoreMessageLogger LOG> 
(define-const var2273 Bool (var3974_isDebugEnabled/1662963326 var3416)) ; Statement: $z0 = interfaceinvoke $r0.<org.hibernate.internal.CoreMessageLogger: boolean isDebugEnabled()>() 
 ; Statement: if $z0 == 0 goto $r33 = new org.hibernate.engine.spi.QueryParameters 
(assert (= (ite var2273 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1135 var3573 var3573-init) ; Statement: $r33 = new org.hibernate.engine.spi.QueryParameters 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1511 var3800) ; Statement: $r19 := @caughtexception 
(assert (not (= var1511 null-var3800)))
(assert true)
(define-const var3811 (Array Int var2137) (getEntityPersisters/113379178 var817)) ; Statement: r20 = virtualinvoke r11.<org.hibernate.loader.Loader: org.hibernate.persister.entity.Loadable[] getEntityPersisters()>() 
(define-const var3394 var3504 (factory/515813576 var817)) ; Statement: $r21 = r11.<org.hibernate.loader.Loader: org.hibernate.engine.spi.SessionFactoryImplementor factory> 
(define-const var3383 var2908 (var3504_getJdbcServices/779116026 var3394)) ; Statement: $r22 = interfaceinvoke $r21.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.engine.jdbc.spi.JdbcServices getJdbcServices()>() 
(define-const var1881 var2204 (var2908_getSqlExceptionHelper/1800321680 var3383)) ; Statement: $r31 = interfaceinvoke $r22.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.engine.jdbc.spi.SqlExceptionHelper getSqlExceptionHelper()>() 
(define-const var1372 String String-init) ; Statement: $r34 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1372)) ; Statement: specialinvoke $r34.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1372!1 String)
(assert (= var1372!1 ""))
(assert true)
(define-const var2409 String (append/672562846 var1372!1 "could not load an entity: ")) ; Statement: $r27 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not load an entity: ") 
(declare-const var1372!2 String)
(assert (= var1372!2 (str.++ var1372!1 "could not load an entity: ")))
(define-const var1991 Int (getLength-Arr-var2137-1 var3811)) ; Statement: $i0 = lengthof r20 
(define-const var381 Int (- var1991 1)) ; Statement: $i1 = $i0 - 1 
(define-const var3903 var2137 (select var3811 var381)) ; Statement: $r24 = r20[$i1] 
(assert true)
(define-const var1311 var3504 (getFactory/324636549 var817)) ; Statement: $r25 = virtualinvoke r11.<org.hibernate.loader.Loader: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var1027 String (var3767_infoString/1358266057 (cast-from-var2137-to-var130 var3903) var1876 var2677 var1311)) ; Statement: $r26 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String infoString(org.hibernate.persister.entity.EntityPersister,java.lang.Object,org.hibernate.type.Type,org.hibernate.engine.spi.SessionFactoryImplementor)>($r24, r5, r3, $r25) 
(assert true)
(define-const var2807 String (append/672562846 var2409 var1027)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26) 
(declare-const var2409!1 String)
(assert (= var2409!1 (str.++ var2409 var1027)))
(assert true)
(define-const var1299 String (toString/-2075883882 var2807)) ; Statement: $r30 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1474 String (getSQLString/1754936683 var817)) ; Statement: $r29 = virtualinvoke r11.<org.hibernate.loader.Loader: java.lang.String getSQLString()>() 
(assert true)
(define-const var652 var2878 (convert/1666256987 var1881 var1511 var1299 var1474)) ; Statement: $r32 = virtualinvoke $r31.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String,java.lang.String)>($r19, $r30, $r29) 
(define-const var2476 var2922 (cast-from-var2878-to-var2922 var652)) ; Statement: $r35 = (java.lang.Throwable) $r32 
 ; Statement: throw $r35 
(check-sat)
(get-model)
(get-unsat-core)
; {var3974_isDebugEnabled/1662963326=([org.hibernate.internal.CoreMessageLogger], boolean), var3573-init=([], org.hibernate.engine.spi.QueryParameters), getEntityPersisters/113379178=([org.hibernate.loader.Loader], org.hibernate.persister.entity.Loadable[]), factory/515813576=([org.hibernate.loader.Loader], org.hibernate.engine.spi.SessionFactoryImplementor), var3504_getJdbcServices/779116026=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.engine.jdbc.spi.JdbcServices), var2908_getSqlExceptionHelper/1800321680=([org.hibernate.engine.jdbc.spi.JdbcServices], org.hibernate.engine.jdbc.spi.SqlExceptionHelper), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getLength-Arr-var2137-1=([org.hibernate.persister.entity.Loadable[]], int), getFactory/324636549=([org.hibernate.loader.Loader], org.hibernate.engine.spi.SessionFactoryImplementor), var3767_infoString/1358266057=([org.hibernate.persister.entity.EntityPersister, java.lang.Object, org.hibernate.type.Type, org.hibernate.engine.spi.SessionFactoryImplementor], java.lang.String), cast-from-var2137-to-var130=([org.hibernate.persister.entity.Loadable], org.hibernate.persister.entity.EntityPersister), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getSQLString/1754936683=([org.hibernate.loader.Loader], java.lang.String), convert/1666256987=([org.hibernate.engine.jdbc.spi.SqlExceptionHelper, java.sql.SQLException, java.lang.String, java.lang.String], org.hibernate.JDBCException), cast-from-var2878-to-var2922=([org.hibernate.JDBCException], java.lang.Throwable)}
; {var2004=org.hibernate.loader.Loader, var817=r11, var1276=org.hibernate.engine.spi.SharedSessionContractImplementor, var733=r12, var1625=java.lang.Object, var1876=r5, var3847=org.hibernate.type.Type, var2677=r3, var2995=r6, var1080=r7, var2063=null_type, var2536=java.io.Serializable, var3021=r8, var130=org.hibernate.persister.entity.EntityPersister, var3362=r15, var2030=org.hibernate.LockOptions, var3134=r9, var1818=java.lang.Boolean, var1137=r10, var3974=org.hibernate.internal.CoreMessageLogger, var3416=$r0, var2273=$z0, var3573=org.hibernate.engine.spi.QueryParameters, var1135=$r33, var3800=java.sql.SQLException, var1511=$r19, var2137=org.hibernate.persister.entity.Loadable, var3811=r20, var3504=org.hibernate.engine.spi.SessionFactoryImplementor, var3394=$r21, var2908=org.hibernate.engine.jdbc.spi.JdbcServices, var3383=$r22, var2204=org.hibernate.engine.jdbc.spi.SqlExceptionHelper, var1881=$r31, var1372=$r34, var2409=$r27, var1991=$i0, var381=$i1, var3903=$r24, var1311=$r25, var3767=org.hibernate.pretty.MessageHelper, var1027=$r26, var2807=$r28, var1299=$r30, var1474=$r29, var2878=org.hibernate.JDBCException, var652=$r32, var2922=java.lang.Throwable, var2476=$r35}
; {org.hibernate.loader.Loader=var2004, r11=var817, org.hibernate.engine.spi.SharedSessionContractImplementor=var1276, r12=var733, java.lang.Object=var1625, r5=var1876, org.hibernate.type.Type=var3847, r3=var2677, r6=var2995, r7=var1080, null_type=var2063, java.io.Serializable=var2536, r8=var3021, org.hibernate.persister.entity.EntityPersister=var130, r15=var3362, org.hibernate.LockOptions=var2030, r9=var3134, java.lang.Boolean=var1818, r10=var1137, org.hibernate.internal.CoreMessageLogger=var3974, $r0=var3416, $z0=var2273, org.hibernate.engine.spi.QueryParameters=var3573, $r33=var1135, java.sql.SQLException=var3800, $r19=var1511, org.hibernate.persister.entity.Loadable=var2137, r20=var3811, org.hibernate.engine.spi.SessionFactoryImplementor=var3504, $r21=var3394, org.hibernate.engine.jdbc.spi.JdbcServices=var2908, $r22=var3383, org.hibernate.engine.jdbc.spi.SqlExceptionHelper=var2204, $r31=var1881, $r34=var1372, $r27=var2409, $i0=var1991, $i1=var381, $r24=var3903, $r25=var1311, org.hibernate.pretty.MessageHelper=var3767, $r26=var1027, $r28=var2807, $r30=var1299, $r29=var1474, org.hibernate.JDBCException=var2878, $r32=var652, java.lang.Throwable=var2922, $r35=var2476}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @this: org.hibernate.loader.Loader;	r12 := @parameter0: org.hibernate.engine.spi.SharedSessionContractImplementor;	r5 := @parameter1: java.lang.Object;	r3 := @parameter2: org.hibernate.type.Type;	r6 := @parameter3: java.lang.Object;	r7 := @parameter4: java.lang.String;	r8 := @parameter5: java.io.Serializable;	r15 := @parameter6: org.hibernate.persister.entity.EntityPersister;	r9 := @parameter7: org.hibernate.LockOptions;	r10 := @parameter8: java.lang.Boolean;	$r0 = <org.hibernate.loader.Loader: org.hibernate.internal.CoreMessageLogger LOG>;	$z0 = interfaceinvoke $r0.<org.hibernate.internal.CoreMessageLogger: boolean isDebugEnabled()>();	if $z0 == 0 goto $r33 = new org.hibernate.engine.spi.QueryParameters;	$r33 = new org.hibernate.engine.spi.QueryParameters;	$r19 := @caughtexception;	r20 = virtualinvoke r11.<org.hibernate.loader.Loader: org.hibernate.persister.entity.Loadable[] getEntityPersisters()>();	$r21 = r11.<org.hibernate.loader.Loader: org.hibernate.engine.spi.SessionFactoryImplementor factory>;	$r22 = interfaceinvoke $r21.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.engine.jdbc.spi.JdbcServices getJdbcServices()>();	$r31 = interfaceinvoke $r22.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.engine.jdbc.spi.SqlExceptionHelper getSqlExceptionHelper()>();	$r34 = new java.lang.StringBuilder;	specialinvoke $r34.<java.lang.StringBuilder: void <init>()>();	$r27 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not load an entity: ");	$i0 = lengthof r20;	$i1 = $i0 - 1;	$r24 = r20[$i1];	$r25 = virtualinvoke r11.<org.hibernate.loader.Loader: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r26 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String infoString(org.hibernate.persister.entity.EntityPersister,java.lang.Object,org.hibernate.type.Type,org.hibernate.engine.spi.SessionFactoryImplementor)>($r24, r5, r3, $r25);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26);	$r30 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>();	$r29 = virtualinvoke r11.<org.hibernate.loader.Loader: java.lang.String getSQLString()>();	$r32 = virtualinvoke $r31.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String,java.lang.String)>($r19, $r30, $r29);	$r35 = (java.lang.Throwable) $r32;	throw $r35
;block_num 3