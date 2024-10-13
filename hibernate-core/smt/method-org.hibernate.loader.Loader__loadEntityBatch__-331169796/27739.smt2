(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3513 0)
(declare-sort var988 0)
(declare-sort var790 0)
(declare-sort var1345 0)
(declare-sort var61 0)
(declare-sort var200 0)
(declare-sort var2431 0)
(declare-sort var402 0)
(declare-sort var1935 0)
(declare-sort var1890 0)
(declare-sort var3120 0)
(declare-sort var1528 0)
(declare-sort var3735 0)
(declare-sort var2348 0)
(declare-sort var3485 0)
(declare-sort var1623 0)
(declare-sort var2536 0)
(declare-sort var3357 0)
(declare-sort var2723 0)
(declare-sort var3129 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1890_isDebugEnabled/1662963326 (var1890) Bool)
(declare-fun getLength-Arr-var790-1 ((Array Int var790)) Int)
(declare-fun arr-var1345-init () (Array Int var1345))
(declare-fun var3120_fill/1714691754 ((Array Int var61) var61) void)
(declare-fun cast-from-__Array__Int__var1345__-to-__Array__Int__var61__ ((Array Int var1345)) (Array Int var61))
(declare-fun cast-from-var1345-to-var61 (var1345) var61)
(declare-fun var1528-init () var1528)
(declare-fun factory/515813576 (var3513) var2348)
(declare-fun var2348_getJdbcServices/779116026 (var2348) var3485)
(declare-fun var3485_getSqlExceptionHelper/1800321680 (var3485) var1623)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getEntityPersisters/113379178 (var3513) (Array Int var2536))
(declare-fun getFactory/324636549 (var3513) var2348)
(declare-fun var3357_infoString/-1514970405 (var2431 (Array Int var790) var2348) String)
(declare-fun cast-from-var2536-to-var2431 (var2536) var2431)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getSQLString/1754936683 (var3513) String)
(declare-fun convert/1666256987 (var1623 var3735 String String) var2723)
(declare-fun cast-from-var2723-to-var3129 (var2723) var3129)
(declare-const null-var3513 var3513)
(declare-const null-var988 var988)
(declare-const null-__Array__Int__var790__ (Array Int var790))
(declare-const null-var1345 var1345)
(declare-const null-var61 var61)
(declare-const null-String String)
(declare-const null-var790 var790)
(declare-const null-var2431 var2431)
(declare-const null-var402 var402)
(declare-const null-var1935 var1935)
(declare-const var3513-LOG var1890)
(declare-const null-var3735 var3735)
(declare-const var1644 var3513) ; Statement: r9 := @this: org.hibernate.loader.Loader 
(assert (not (= var1644 null-var3513)))
(declare-const var3515 var988) ; Statement: r10 := @parameter0: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var3515 null-var988)))
(declare-const var3516 (Array Int var790)) ; Statement: r1 := @parameter1: java.io.Serializable[] 
(assert (not (= var3516 null-__Array__Int__var790__)))
(declare-const var2238 var1345) ; Statement: r2 := @parameter2: org.hibernate.type.Type 
(assert (not (= var2238 null-var1345)))
(declare-const var3184 var61) ; Statement: r4 := @parameter3: java.lang.Object 
(assert (not (= var3184 null-var61)))
(declare-const var8 String) ; Statement: r5 := @parameter4: java.lang.String 
(assert (not (= var8 null-String)))
(declare-const var871 var790) ; Statement: r6 := @parameter5: java.io.Serializable 
(assert (not (= var871 null-var790)))
(declare-const var2942 var2431) ; Statement: r13 := @parameter6: org.hibernate.persister.entity.EntityPersister 
(assert (not (= var2942 null-var2431)))
(declare-const var634 var402) ; Statement: r7 := @parameter7: org.hibernate.LockOptions 
(assert (not (= var634 null-var402)))
(declare-const var2778 var1935) ; Statement: r8 := @parameter8: java.lang.Boolean 
(assert (not (= var2778 null-var1935)))
(define-const var727 var1890 var3513-LOG) ; Statement: $r0 = <org.hibernate.loader.Loader: org.hibernate.internal.CoreMessageLogger LOG> 
(define-const var217 Bool (var1890_isDebugEnabled/1662963326 var727)) ; Statement: $z0 = interfaceinvoke $r0.<org.hibernate.internal.CoreMessageLogger: boolean isDebugEnabled()>() 
 ; Statement: if $z0 == 0 goto $i0 = lengthof r1 
(assert (= (ite var217 1 0) 0)) ; Cond: $z0 == 0 
(define-const var621 Int (getLength-Arr-var790-1 var3516)) ; Statement: $i0 = lengthof r1 
(define-const var2837 (Array Int var1345) arr-var1345-init) ; Statement: $r17 = newarray (org.hibernate.type.Type)[$i0] 
;(assert (var3120_fill/1714691754 (cast-from-__Array__Int__var1345__-to-__Array__Int__var61__ var2837) (cast-from-var1345-to-var61 var2238))) ; Statement: staticinvoke <java.util.Arrays: void fill(java.lang.Object[],java.lang.Object)>($r17, r2) 

(declare-const var2837!1 (Array Int var1345))
(declare-const var2238!1 var1345)
(define-const var1136 var1528 var1528-init) ; Statement: $r32 = new org.hibernate.engine.spi.QueryParameters 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3928 var3735) ; Statement: $r18 := @caughtexception 
(assert (not (= var3928 null-var3735)))
(define-const var943 var2348 (factory/515813576 var1644)) ; Statement: $r19 = r9.<org.hibernate.loader.Loader: org.hibernate.engine.spi.SessionFactoryImplementor factory> 
(define-const var3565 var3485 (var2348_getJdbcServices/779116026 var943)) ; Statement: $r20 = interfaceinvoke $r19.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.engine.jdbc.spi.JdbcServices getJdbcServices()>() 
(define-const var231 var1623 (var3485_getSqlExceptionHelper/1800321680 var3565)) ; Statement: $r30 = interfaceinvoke $r20.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.engine.jdbc.spi.SqlExceptionHelper getSqlExceptionHelper()>() 
(define-const var3691 String String-init) ; Statement: $r33 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3691)) ; Statement: specialinvoke $r33.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3691!1 String)
(assert (= var3691!1 ""))
(assert true)
(define-const var680 String (append/672562846 var3691!1 "could not load an entity batch: ")) ; Statement: $r26 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not load an entity batch: ") 
(declare-const var3691!2 String)
(assert (= var3691!2 (str.++ var3691!1 "could not load an entity batch: ")))
(assert true)
(define-const var1559 (Array Int var2536) (getEntityPersisters/113379178 var1644)) ; Statement: $r22 = virtualinvoke r9.<org.hibernate.loader.Loader: org.hibernate.persister.entity.Loadable[] getEntityPersisters()>() 
(define-const var181 var2536 (select var1559 0)) ; Statement: $r23 = $r22[0] 
(assert true)
(define-const var2656 var2348 (getFactory/324636549 var1644)) ; Statement: $r24 = virtualinvoke r9.<org.hibernate.loader.Loader: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var1955 String (var3357_infoString/-1514970405 (cast-from-var2536-to-var2431 var181) var3516 var2656)) ; Statement: $r25 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String infoString(org.hibernate.persister.entity.EntityPersister,java.io.Serializable[],org.hibernate.engine.spi.SessionFactoryImplementor)>($r23, r1, $r24) 
(assert true)
(define-const var1604 String (append/672562846 var680 var1955)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25) 
(declare-const var680!1 String)
(assert (= var680!1 (str.++ var680 var1955)))
(assert true)
(define-const var1168 String (toString/-2075883882 var1604)) ; Statement: $r29 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3766 String (getSQLString/1754936683 var1644)) ; Statement: $r28 = virtualinvoke r9.<org.hibernate.loader.Loader: java.lang.String getSQLString()>() 
(assert true)
(define-const var861 var2723 (convert/1666256987 var231 var3928 var1168 var3766)) ; Statement: $r31 = virtualinvoke $r30.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String,java.lang.String)>($r18, $r29, $r28) 
(define-const var1086 var3129 (cast-from-var2723-to-var3129 var861)) ; Statement: $r34 = (java.lang.Throwable) $r31 
 ; Statement: throw $r34 
(check-sat)
(get-model)
(get-unsat-core)
; {var1890_isDebugEnabled/1662963326=([org.hibernate.internal.CoreMessageLogger], boolean), getLength-Arr-var790-1=([java.io.Serializable[]], int), arr-var1345-init=([], org.hibernate.type.Type[]), var3120_fill/1714691754=([java.lang.Object[], java.lang.Object], void), cast-from-__Array__Int__var1345__-to-__Array__Int__var61__=([org.hibernate.type.Type[]], java.lang.Object[]), cast-from-var1345-to-var61=([org.hibernate.type.Type], java.lang.Object), var1528-init=([], org.hibernate.engine.spi.QueryParameters), factory/515813576=([org.hibernate.loader.Loader], org.hibernate.engine.spi.SessionFactoryImplementor), var2348_getJdbcServices/779116026=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.engine.jdbc.spi.JdbcServices), var3485_getSqlExceptionHelper/1800321680=([org.hibernate.engine.jdbc.spi.JdbcServices], org.hibernate.engine.jdbc.spi.SqlExceptionHelper), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getEntityPersisters/113379178=([org.hibernate.loader.Loader], org.hibernate.persister.entity.Loadable[]), getFactory/324636549=([org.hibernate.loader.Loader], org.hibernate.engine.spi.SessionFactoryImplementor), var3357_infoString/-1514970405=([org.hibernate.persister.entity.EntityPersister, java.io.Serializable[], org.hibernate.engine.spi.SessionFactoryImplementor], java.lang.String), cast-from-var2536-to-var2431=([org.hibernate.persister.entity.Loadable], org.hibernate.persister.entity.EntityPersister), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getSQLString/1754936683=([org.hibernate.loader.Loader], java.lang.String), convert/1666256987=([org.hibernate.engine.jdbc.spi.SqlExceptionHelper, java.sql.SQLException, java.lang.String, java.lang.String], org.hibernate.JDBCException), cast-from-var2723-to-var3129=([org.hibernate.JDBCException], java.lang.Throwable)}
; {var3513=org.hibernate.loader.Loader, var1644=r9, var988=org.hibernate.engine.spi.SharedSessionContractImplementor, var3515=r10, var790=java.io.Serializable, var3516=r1, var1345=org.hibernate.type.Type, var2238=r2, var61=java.lang.Object, var3184=r4, var8=r5, var200=null_type, var871=r6, var2431=org.hibernate.persister.entity.EntityPersister, var2942=r13, var402=org.hibernate.LockOptions, var634=r7, var1935=java.lang.Boolean, var2778=r8, var1890=org.hibernate.internal.CoreMessageLogger, var727=$r0, var217=$z0, var621=$i0, var2837=$r17, var3120=java.util.Arrays, var1528=org.hibernate.engine.spi.QueryParameters, var1136=$r32, var3735=java.sql.SQLException, var3928=$r18, var2348=org.hibernate.engine.spi.SessionFactoryImplementor, var943=$r19, var3485=org.hibernate.engine.jdbc.spi.JdbcServices, var3565=$r20, var1623=org.hibernate.engine.jdbc.spi.SqlExceptionHelper, var231=$r30, var3691=$r33, var680=$r26, var2536=org.hibernate.persister.entity.Loadable, var1559=$r22, var181=$r23, var2656=$r24, var3357=org.hibernate.pretty.MessageHelper, var1955=$r25, var1604=$r27, var1168=$r29, var3766=$r28, var2723=org.hibernate.JDBCException, var861=$r31, var3129=java.lang.Throwable, var1086=$r34}
; {org.hibernate.loader.Loader=var3513, r9=var1644, org.hibernate.engine.spi.SharedSessionContractImplementor=var988, r10=var3515, java.io.Serializable=var790, r1=var3516, org.hibernate.type.Type=var1345, r2=var2238, java.lang.Object=var61, r4=var3184, r5=var8, null_type=var200, r6=var871, org.hibernate.persister.entity.EntityPersister=var2431, r13=var2942, org.hibernate.LockOptions=var402, r7=var634, java.lang.Boolean=var1935, r8=var2778, org.hibernate.internal.CoreMessageLogger=var1890, $r0=var727, $z0=var217, $i0=var621, $r17=var2837, java.util.Arrays=var3120, org.hibernate.engine.spi.QueryParameters=var1528, $r32=var1136, java.sql.SQLException=var3735, $r18=var3928, org.hibernate.engine.spi.SessionFactoryImplementor=var2348, $r19=var943, org.hibernate.engine.jdbc.spi.JdbcServices=var3485, $r20=var3565, org.hibernate.engine.jdbc.spi.SqlExceptionHelper=var1623, $r30=var231, $r33=var3691, $r26=var680, org.hibernate.persister.entity.Loadable=var2536, $r22=var1559, $r23=var181, $r24=var2656, org.hibernate.pretty.MessageHelper=var3357, $r25=var1955, $r27=var1604, $r29=var1168, $r28=var3766, org.hibernate.JDBCException=var2723, $r31=var861, java.lang.Throwable=var3129, $r34=var1086}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: org.hibernate.loader.Loader;	r10 := @parameter0: org.hibernate.engine.spi.SharedSessionContractImplementor;	r1 := @parameter1: java.io.Serializable[];	r2 := @parameter2: org.hibernate.type.Type;	r4 := @parameter3: java.lang.Object;	r5 := @parameter4: java.lang.String;	r6 := @parameter5: java.io.Serializable;	r13 := @parameter6: org.hibernate.persister.entity.EntityPersister;	r7 := @parameter7: org.hibernate.LockOptions;	r8 := @parameter8: java.lang.Boolean;	$r0 = <org.hibernate.loader.Loader: org.hibernate.internal.CoreMessageLogger LOG>;	$z0 = interfaceinvoke $r0.<org.hibernate.internal.CoreMessageLogger: boolean isDebugEnabled()>();	if $z0 == 0 goto $i0 = lengthof r1;	$i0 = lengthof r1;	$r17 = newarray (org.hibernate.type.Type)[$i0];	staticinvoke <java.util.Arrays: void fill(java.lang.Object[],java.lang.Object)>($r17, r2);	$r32 = new org.hibernate.engine.spi.QueryParameters;	$r18 := @caughtexception;	$r19 = r9.<org.hibernate.loader.Loader: org.hibernate.engine.spi.SessionFactoryImplementor factory>;	$r20 = interfaceinvoke $r19.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.engine.jdbc.spi.JdbcServices getJdbcServices()>();	$r30 = interfaceinvoke $r20.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.engine.jdbc.spi.SqlExceptionHelper getSqlExceptionHelper()>();	$r33 = new java.lang.StringBuilder;	specialinvoke $r33.<java.lang.StringBuilder: void <init>()>();	$r26 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not load an entity batch: ");	$r22 = virtualinvoke r9.<org.hibernate.loader.Loader: org.hibernate.persister.entity.Loadable[] getEntityPersisters()>();	$r23 = $r22[0];	$r24 = virtualinvoke r9.<org.hibernate.loader.Loader: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r25 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String infoString(org.hibernate.persister.entity.EntityPersister,java.io.Serializable[],org.hibernate.engine.spi.SessionFactoryImplementor)>($r23, r1, $r24);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25);	$r29 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>();	$r28 = virtualinvoke r9.<org.hibernate.loader.Loader: java.lang.String getSQLString()>();	$r31 = virtualinvoke $r30.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String,java.lang.String)>($r18, $r29, $r28);	$r34 = (java.lang.Throwable) $r31;	throw $r34
;block_num 3