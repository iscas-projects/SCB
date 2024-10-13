(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1340 0)
(declare-sort var3665 0)
(declare-sort var2317 0)
(declare-sort var1305 0)
(declare-sort var3357 0)
(declare-sort var222 0)
(declare-sort var1851 0)
(declare-sort var1437 0)
(declare-sort var3857 0)
(declare-sort var1425 0)
(declare-sort var3038 0)
(declare-sort var1125 0)
(declare-sort var1056 0)
(declare-sort var1830 0)
(declare-sort var2939 0)
(declare-sort var1706 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3357_isDebugEnabled/1662963326 (var3357) Bool)
(declare-fun getLength-Arr-var2317-1 ((Array Int var2317)) Int)
(declare-fun arr-var1305-init () (Array Int var1305))
(declare-fun var222_fill/1714691754 ((Array Int var1851) var1851) void)
(declare-fun cast-from-__Array__Int__var1305__-to-__Array__Int__var1851__ ((Array Int var1305)) (Array Int var1851))
(declare-fun cast-from-var1305-to-var1851 (var1305) var1851)
(declare-fun var1437-init () var1437)
(declare-fun factory/515813576 (var1340) var1425)
(declare-fun var1425_getJdbcServices/779116026 (var1425) var3038)
(declare-fun var3038_getSqlExceptionHelper/1800321680 (var3038) var1125)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getCollectionPersisters/165895453 (var1340) (Array Int var1056))
(declare-fun getFactory/324636549 (var1340) var1425)
(declare-fun var1830_collectionInfoString/-918966595 (var1056 (Array Int var2317) var1425) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getSQLString/1754936683 (var1340) String)
(declare-fun convert/1666256987 (var1125 var3857 String String) var2939)
(declare-fun cast-from-var2939-to-var1706 (var2939) var1706)
(declare-const null-var1340 var1340)
(declare-const null-var3665 var3665)
(declare-const null-__Array__Int__var2317__ (Array Int var2317))
(declare-const null-var1305 var1305)
(declare-const var1340-LOG var3357)
(declare-const null-var3857 var3857)
(declare-const var53 var1340) ; Statement: r3 := @this: org.hibernate.loader.Loader 
(assert (not (= var53 null-var1340)))
(declare-const var3777 var3665) ; Statement: r4 := @parameter0: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var3777 null-var3665)))
(declare-const var1384 (Array Int var2317)) ; Statement: r1 := @parameter1: java.io.Serializable[] 
(assert (not (= var1384 null-__Array__Int__var2317__)))
(declare-const var2864 var1305) ; Statement: r2 := @parameter2: org.hibernate.type.Type 
(assert (not (= var2864 null-var1305)))
(define-const var1721 var3357 var1340-LOG) ; Statement: $r0 = <org.hibernate.loader.Loader: org.hibernate.internal.CoreMessageLogger LOG> 
(define-const var3947 Bool (var3357_isDebugEnabled/1662963326 var1721)) ; Statement: $z0 = interfaceinvoke $r0.<org.hibernate.internal.CoreMessageLogger: boolean isDebugEnabled()>() 
 ; Statement: if $z0 == 0 goto $i0 = lengthof r1 
(assert (= (ite var3947 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1362 Int (getLength-Arr-var2317-1 var1384)) ; Statement: $i0 = lengthof r1 
(define-const var1471 (Array Int var1305) arr-var1305-init) ; Statement: $r12 = newarray (org.hibernate.type.Type)[$i0] 
;(assert (var222_fill/1714691754 (cast-from-__Array__Int__var1305__-to-__Array__Int__var1851__ var1471) (cast-from-var1305-to-var1851 var2864))) ; Statement: staticinvoke <java.util.Arrays: void fill(java.lang.Object[],java.lang.Object)>($r12, r2) 

(declare-const var1471!1 (Array Int var1305))
(declare-const var2864!1 var1305)
(define-const var3265 var1437 var1437-init) ; Statement: $r27 = new org.hibernate.engine.spi.QueryParameters 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var379 var3857) ; Statement: $r13 := @caughtexception 
(assert (not (= var379 null-var3857)))
(define-const var989 var1425 (factory/515813576 var53)) ; Statement: $r14 = r3.<org.hibernate.loader.Loader: org.hibernate.engine.spi.SessionFactoryImplementor factory> 
(define-const var1279 var3038 (var1425_getJdbcServices/779116026 var989)) ; Statement: $r15 = interfaceinvoke $r14.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.engine.jdbc.spi.JdbcServices getJdbcServices()>() 
(define-const var1636 var1125 (var3038_getSqlExceptionHelper/1800321680 var1279)) ; Statement: $r25 = interfaceinvoke $r15.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.engine.jdbc.spi.SqlExceptionHelper getSqlExceptionHelper()>() 
(define-const var2014 String String-init) ; Statement: $r28 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2014)) ; Statement: specialinvoke $r28.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2014!1 String)
(assert (= var2014!1 ""))
(assert true)
(define-const var2093 String (append/672562846 var2014!1 "could not initialize a collection batch: ")) ; Statement: $r21 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not initialize a collection batch: ") 
(declare-const var2014!2 String)
(assert (= var2014!2 (str.++ var2014!1 "could not initialize a collection batch: ")))
(assert true)
(define-const var2927 (Array Int var1056) (getCollectionPersisters/165895453 var53)) ; Statement: $r17 = virtualinvoke r3.<org.hibernate.loader.Loader: org.hibernate.persister.collection.CollectionPersister[] getCollectionPersisters()>() 
(define-const var211 var1056 (select var2927 0)) ; Statement: $r18 = $r17[0] 
(assert true)
(define-const var1693 var1425 (getFactory/324636549 var53)) ; Statement: $r19 = virtualinvoke r3.<org.hibernate.loader.Loader: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var137 String (var1830_collectionInfoString/-918966595 var211 var1384 var1693)) ; Statement: $r20 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String collectionInfoString(org.hibernate.persister.collection.CollectionPersister,java.io.Serializable[],org.hibernate.engine.spi.SessionFactoryImplementor)>($r18, r1, $r19) 
(assert true)
(define-const var3684 String (append/672562846 var2093 var137)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var2093!1 String)
(assert (= var2093!1 (str.++ var2093 var137)))
(assert true)
(define-const var2097 String (toString/-2075883882 var3684)) ; Statement: $r24 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3335 String (getSQLString/1754936683 var53)) ; Statement: $r23 = virtualinvoke r3.<org.hibernate.loader.Loader: java.lang.String getSQLString()>() 
(assert true)
(define-const var589 var2939 (convert/1666256987 var1636 var379 var2097 var3335)) ; Statement: $r26 = virtualinvoke $r25.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String,java.lang.String)>($r13, $r24, $r23) 
(define-const var2832 var1706 (cast-from-var2939-to-var1706 var589)) ; Statement: $r29 = (java.lang.Throwable) $r26 
 ; Statement: throw $r29 
(check-sat)
(get-model)
(get-unsat-core)
; {var3357_isDebugEnabled/1662963326=([org.hibernate.internal.CoreMessageLogger], boolean), getLength-Arr-var2317-1=([java.io.Serializable[]], int), arr-var1305-init=([], org.hibernate.type.Type[]), var222_fill/1714691754=([java.lang.Object[], java.lang.Object], void), cast-from-__Array__Int__var1305__-to-__Array__Int__var1851__=([org.hibernate.type.Type[]], java.lang.Object[]), cast-from-var1305-to-var1851=([org.hibernate.type.Type], java.lang.Object), var1437-init=([], org.hibernate.engine.spi.QueryParameters), factory/515813576=([org.hibernate.loader.Loader], org.hibernate.engine.spi.SessionFactoryImplementor), var1425_getJdbcServices/779116026=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.engine.jdbc.spi.JdbcServices), var3038_getSqlExceptionHelper/1800321680=([org.hibernate.engine.jdbc.spi.JdbcServices], org.hibernate.engine.jdbc.spi.SqlExceptionHelper), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getCollectionPersisters/165895453=([org.hibernate.loader.Loader], org.hibernate.persister.collection.CollectionPersister[]), getFactory/324636549=([org.hibernate.loader.Loader], org.hibernate.engine.spi.SessionFactoryImplementor), var1830_collectionInfoString/-918966595=([org.hibernate.persister.collection.CollectionPersister, java.io.Serializable[], org.hibernate.engine.spi.SessionFactoryImplementor], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getSQLString/1754936683=([org.hibernate.loader.Loader], java.lang.String), convert/1666256987=([org.hibernate.engine.jdbc.spi.SqlExceptionHelper, java.sql.SQLException, java.lang.String, java.lang.String], org.hibernate.JDBCException), cast-from-var2939-to-var1706=([org.hibernate.JDBCException], java.lang.Throwable)}
; {var1340=org.hibernate.loader.Loader, var53=r3, var3665=org.hibernate.engine.spi.SharedSessionContractImplementor, var3777=r4, var2317=java.io.Serializable, var1384=r1, var1305=org.hibernate.type.Type, var2864=r2, var3357=org.hibernate.internal.CoreMessageLogger, var1721=$r0, var3947=$z0, var1362=$i0, var1471=$r12, var222=java.util.Arrays, var1851=java.lang.Object, var1437=org.hibernate.engine.spi.QueryParameters, var3265=$r27, var3857=java.sql.SQLException, var379=$r13, var1425=org.hibernate.engine.spi.SessionFactoryImplementor, var989=$r14, var3038=org.hibernate.engine.jdbc.spi.JdbcServices, var1279=$r15, var1125=org.hibernate.engine.jdbc.spi.SqlExceptionHelper, var1636=$r25, var2014=$r28, var2093=$r21, var1056=org.hibernate.persister.collection.CollectionPersister, var2927=$r17, var211=$r18, var1693=$r19, var1830=org.hibernate.pretty.MessageHelper, var137=$r20, var3684=$r22, var2097=$r24, var3335=$r23, var2939=org.hibernate.JDBCException, var589=$r26, var1706=java.lang.Throwable, var2832=$r29}
; {org.hibernate.loader.Loader=var1340, r3=var53, org.hibernate.engine.spi.SharedSessionContractImplementor=var3665, r4=var3777, java.io.Serializable=var2317, r1=var1384, org.hibernate.type.Type=var1305, r2=var2864, org.hibernate.internal.CoreMessageLogger=var3357, $r0=var1721, $z0=var3947, $i0=var1362, $r12=var1471, java.util.Arrays=var222, java.lang.Object=var1851, org.hibernate.engine.spi.QueryParameters=var1437, $r27=var3265, java.sql.SQLException=var3857, $r13=var379, org.hibernate.engine.spi.SessionFactoryImplementor=var1425, $r14=var989, org.hibernate.engine.jdbc.spi.JdbcServices=var3038, $r15=var1279, org.hibernate.engine.jdbc.spi.SqlExceptionHelper=var1125, $r25=var1636, $r28=var2014, $r21=var2093, org.hibernate.persister.collection.CollectionPersister=var1056, $r17=var2927, $r18=var211, $r19=var1693, org.hibernate.pretty.MessageHelper=var1830, $r20=var137, $r22=var3684, $r24=var2097, $r23=var3335, org.hibernate.JDBCException=var2939, $r26=var589, java.lang.Throwable=var1706, $r29=var2832}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.hibernate.loader.Loader;	r4 := @parameter0: org.hibernate.engine.spi.SharedSessionContractImplementor;	r1 := @parameter1: java.io.Serializable[];	r2 := @parameter2: org.hibernate.type.Type;	$r0 = <org.hibernate.loader.Loader: org.hibernate.internal.CoreMessageLogger LOG>;	$z0 = interfaceinvoke $r0.<org.hibernate.internal.CoreMessageLogger: boolean isDebugEnabled()>();	if $z0 == 0 goto $i0 = lengthof r1;	$i0 = lengthof r1;	$r12 = newarray (org.hibernate.type.Type)[$i0];	staticinvoke <java.util.Arrays: void fill(java.lang.Object[],java.lang.Object)>($r12, r2);	$r27 = new org.hibernate.engine.spi.QueryParameters;	$r13 := @caughtexception;	$r14 = r3.<org.hibernate.loader.Loader: org.hibernate.engine.spi.SessionFactoryImplementor factory>;	$r15 = interfaceinvoke $r14.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.engine.jdbc.spi.JdbcServices getJdbcServices()>();	$r25 = interfaceinvoke $r15.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.engine.jdbc.spi.SqlExceptionHelper getSqlExceptionHelper()>();	$r28 = new java.lang.StringBuilder;	specialinvoke $r28.<java.lang.StringBuilder: void <init>()>();	$r21 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not initialize a collection batch: ");	$r17 = virtualinvoke r3.<org.hibernate.loader.Loader: org.hibernate.persister.collection.CollectionPersister[] getCollectionPersisters()>();	$r18 = $r17[0];	$r19 = virtualinvoke r3.<org.hibernate.loader.Loader: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r20 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String collectionInfoString(org.hibernate.persister.collection.CollectionPersister,java.io.Serializable[],org.hibernate.engine.spi.SessionFactoryImplementor)>($r18, r1, $r19);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r24 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>();	$r23 = virtualinvoke r3.<org.hibernate.loader.Loader: java.lang.String getSQLString()>();	$r26 = virtualinvoke $r25.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String,java.lang.String)>($r13, $r24, $r23);	$r29 = (java.lang.Throwable) $r26;	throw $r29
;block_num 3