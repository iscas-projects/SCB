(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1883 0)
(declare-sort var3685 0)
(declare-sort var2790 0)
(declare-sort var1223 0)
(declare-sort var970 0)
(declare-sort var354 0)
(declare-sort var1627 0)
(declare-sort var1818 0)
(declare-sort var1560 0)
(declare-sort var1255 0)
(declare-sort var1934 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSQLExceptionHelper/1805541620 (var1883) var354)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getFactory/-1810661191 (var1883) var1627)
(declare-fun var1818_collectionInfoString/-2038540833 (var1560 var3685 var1627) String)
(declare-fun cast-from-var1883-to-var1560 (var1883) var1560)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun sqlSelectSizeString/835828228 (var1883) String)
(declare-fun convert/1666256987 (var354 var970 String String) var1255)
(declare-fun cast-from-var1255-to-var1934 (var1255) var1934)
(declare-const null-var1883 var1883)
(declare-const null-var3685 var3685)
(declare-const null-var2790 var2790)
(declare-const null-var1223 var1223)
(declare-const null-var970 var970)
(declare-const var1672 var1883) ; Statement: r1 := @this: org.hibernate.persister.collection.AbstractCollectionPersister 
(assert (not (= var1672 null-var1883)))
(declare-const var942 var3685) ; Statement: r5 := @parameter0: java.io.Serializable 
(assert (not (= var942 null-var3685)))
(declare-const var2742 var2790) ; Statement: r7 := @parameter1: java.lang.Object 
(assert (not (= var2742 null-var2790)))
(declare-const var295 var1223) ; Statement: r0 := @parameter2: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var295 null-var1223)))
(declare-const var464 var2790) ; Statement: r15 := @parameter3: java.lang.Object 
(assert (not (= var464 null-var2790)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3889 var970) ; Statement: $r20 := @caughtexception 
(assert (not (= var3889 null-var970)))
(assert true)
(define-const var165 var354 (getSQLExceptionHelper/1805541620 var1672)) ; Statement: $r28 = virtualinvoke r1.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.engine.jdbc.spi.SqlExceptionHelper getSQLExceptionHelper()>() 
(define-const var796 String String-init) ; Statement: $r36 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var796)) ; Statement: specialinvoke $r36.<java.lang.StringBuilder: void <init>()>() 
(declare-const var796!1 String)
(assert (= var796!1 ""))
(assert true)
(define-const var1112 String (append/672562846 var796!1 "could not read row: ")) ; Statement: $r24 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not read row: ") 
(declare-const var796!2 String)
(assert (= var796!2 (str.++ var796!1 "could not read row: ")))
(assert true)
(define-const var1899 var1627 (getFactory/-1810661191 var1672)) ; Statement: $r22 = virtualinvoke r1.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var3009 String (var1818_collectionInfoString/-2038540833 (cast-from-var1883-to-var1560 var1672) var942 var1899)) ; Statement: $r23 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String collectionInfoString(org.hibernate.persister.collection.CollectionPersister,java.io.Serializable,org.hibernate.engine.spi.SessionFactoryImplementor)>(r1, r5, $r22) 
(assert true)
(define-const var2830 String (append/672562846 var1112 var3009)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var1112!1 String)
(assert (= var1112!1 (str.++ var1112 var3009)))
(assert true)
(define-const var237 String (toString/-2075883882 var2830)) ; Statement: $r27 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2368 String (sqlSelectSizeString/835828228 var1672)) ; Statement: $r26 = r1.<org.hibernate.persister.collection.AbstractCollectionPersister: java.lang.String sqlSelectSizeString> 
(assert true)
(define-const var3864 var1255 (convert/1666256987 var165 var3889 var237 var2368)) ; Statement: $r29 = virtualinvoke $r28.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String,java.lang.String)>($r20, $r27, $r26) 
(define-const var2629 var1934 (cast-from-var1255-to-var1934 var3864)) ; Statement: $r37 = (java.lang.Throwable) $r29 
 ; Statement: throw $r37 
(check-sat)
(get-model)
(get-unsat-core)
; {getSQLExceptionHelper/1805541620=([org.hibernate.persister.collection.AbstractCollectionPersister], org.hibernate.engine.jdbc.spi.SqlExceptionHelper), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getFactory/-1810661191=([org.hibernate.persister.collection.AbstractCollectionPersister], org.hibernate.engine.spi.SessionFactoryImplementor), var1818_collectionInfoString/-2038540833=([org.hibernate.persister.collection.CollectionPersister, java.io.Serializable, org.hibernate.engine.spi.SessionFactoryImplementor], java.lang.String), cast-from-var1883-to-var1560=([org.hibernate.persister.collection.AbstractCollectionPersister], org.hibernate.persister.collection.CollectionPersister), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), sqlSelectSizeString/835828228=([org.hibernate.persister.collection.AbstractCollectionPersister], java.lang.String), convert/1666256987=([org.hibernate.engine.jdbc.spi.SqlExceptionHelper, java.sql.SQLException, java.lang.String, java.lang.String], org.hibernate.JDBCException), cast-from-var1255-to-var1934=([org.hibernate.JDBCException], java.lang.Throwable)}
; {var1883=org.hibernate.persister.collection.AbstractCollectionPersister, var1672=r1, var3685=java.io.Serializable, var942=r5, var2790=java.lang.Object, var2742=r7, var1223=org.hibernate.engine.spi.SharedSessionContractImplementor, var295=r0, var464=r15, var970=java.sql.SQLException, var3889=$r20, var354=org.hibernate.engine.jdbc.spi.SqlExceptionHelper, var165=$r28, var796=$r36, var1112=$r24, var1627=org.hibernate.engine.spi.SessionFactoryImplementor, var1899=$r22, var1818=org.hibernate.pretty.MessageHelper, var1560=org.hibernate.persister.collection.CollectionPersister, var3009=$r23, var2830=$r25, var237=$r27, var2368=$r26, var1255=org.hibernate.JDBCException, var3864=$r29, var1934=java.lang.Throwable, var2629=$r37}
; {org.hibernate.persister.collection.AbstractCollectionPersister=var1883, r1=var1672, java.io.Serializable=var3685, r5=var942, java.lang.Object=var2790, r7=var2742, org.hibernate.engine.spi.SharedSessionContractImplementor=var1223, r0=var295, r15=var464, java.sql.SQLException=var970, $r20=var3889, org.hibernate.engine.jdbc.spi.SqlExceptionHelper=var354, $r28=var165, $r36=var796, $r24=var1112, org.hibernate.engine.spi.SessionFactoryImplementor=var1627, $r22=var1899, org.hibernate.pretty.MessageHelper=var1818, org.hibernate.persister.collection.CollectionPersister=var1560, $r23=var3009, $r25=var2830, $r27=var237, $r26=var2368, org.hibernate.JDBCException=var1255, $r29=var3864, java.lang.Throwable=var1934, $r37=var2629}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.persister.collection.AbstractCollectionPersister;	r5 := @parameter0: java.io.Serializable;	r7 := @parameter1: java.lang.Object;	r0 := @parameter2: org.hibernate.engine.spi.SharedSessionContractImplementor;	r15 := @parameter3: java.lang.Object;	$r20 := @caughtexception;	$r28 = virtualinvoke r1.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.engine.jdbc.spi.SqlExceptionHelper getSQLExceptionHelper()>();	$r36 = new java.lang.StringBuilder;	specialinvoke $r36.<java.lang.StringBuilder: void <init>()>();	$r24 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not read row: ");	$r22 = virtualinvoke r1.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r23 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String collectionInfoString(org.hibernate.persister.collection.CollectionPersister,java.io.Serializable,org.hibernate.engine.spi.SessionFactoryImplementor)>(r1, r5, $r22);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	$r27 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	$r26 = r1.<org.hibernate.persister.collection.AbstractCollectionPersister: java.lang.String sqlSelectSizeString>;	$r29 = virtualinvoke $r28.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String,java.lang.String)>($r20, $r27, $r26);	$r37 = (java.lang.Throwable) $r29;	throw $r37
;block_num 2