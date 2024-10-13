(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1246 0)
(declare-sort var2219 0)
(declare-sort var1352 0)
(declare-sort var1824 0)
(declare-sort var3488 0)
(declare-sort var1865 0)
(declare-sort var2725 0)
(declare-sort var845 0)
(declare-sort var3283 0)
(declare-sort var2870 0)
(declare-sort var3280 0)
(declare-sort var3545 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getFactory/-1810661191 (var2725) var1865)
(declare-fun cast-from-var1246-to-var2725 (var1246) var2725)
(declare-fun var1865_getSQLExceptionHelper/176842062 (var1865) var845)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3283_collectionInfoString/1200247851 (var2870 var1352 var2219 var1824) String)
(declare-fun cast-from-var1246-to-var2870 (var1246) var2870)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getSQLInsertRowString/-1879967048 (var2725) String)
(declare-fun convert/1666256987 (var845 var3488 String String) var3280)
(declare-fun cast-from-var3280-to-var3545 (var3280) var3545)
(declare-const null-var1246 var1246)
(declare-const null-var2219 var2219)
(declare-const null-var1352 var1352)
(declare-const null-var1824 var1824)
(declare-const null-var3488 var3488)
(declare-const var857 var1246) ; Statement: r0 := @this: org.hibernate.persister.collection.OneToManyPersister 
(assert (not (= var857 null-var1246)))
(declare-const var925 var2219) ; Statement: r10 := @parameter0: java.io.Serializable 
(assert (not (= var925 null-var2219)))
(declare-const var3682 var1352) ; Statement: r2 := @parameter1: org.hibernate.collection.spi.PersistentCollection 
(assert (not (= var3682 null-var1352)))
(declare-const var2831 var1824) ; Statement: r3 := @parameter2: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var2831 null-var1824)))
(define-const var1727 Int 0) ; Statement: i6 = 0 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var330 var3488) ; Statement: $r50 := @caughtexception 
(assert (not (= var330 null-var3488)))
(assert true)
(define-const var3871 var1865 (getFactory/-1810661191 (cast-from-var1246-to-var2725 var857))) ; Statement: $r51 = virtualinvoke r0.<org.hibernate.persister.collection.OneToManyPersister: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var2913 var845 (var1865_getSQLExceptionHelper/176842062 var3871)) ; Statement: $r58 = interfaceinvoke $r51.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.engine.jdbc.spi.SqlExceptionHelper getSQLExceptionHelper()>() 
(define-const var3416 String String-init) ; Statement: $r87 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3416)) ; Statement: specialinvoke $r87.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3416!1 String)
(assert (= var3416!1 ""))
(assert true)
(define-const var1964 String (append/672562846 var3416!1 "could not update collection rows: ")) ; Statement: $r54 = virtualinvoke $r87.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not update collection rows: ") 
(declare-const var3416!2 String)
(assert (= var3416!2 (str.++ var3416!1 "could not update collection rows: ")))
(define-const var469 String (var3283_collectionInfoString/1200247851 (cast-from-var1246-to-var2870 var857) var3682 var925 var2831)) ; Statement: $r53 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String collectionInfoString(org.hibernate.persister.collection.CollectionPersister,org.hibernate.collection.spi.PersistentCollection,java.io.Serializable,org.hibernate.engine.spi.SharedSessionContractImplementor)>(r0, r2, r10, r3) 
(assert true)
(define-const var648 String (append/672562846 var1964 var469)) ; Statement: $r55 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r53) 
(declare-const var1964!1 String)
(assert (= var1964!1 (str.++ var1964 var469)))
(assert true)
(define-const var838 String (toString/-2075883882 var648)) ; Statement: $r57 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var28 String (getSQLInsertRowString/-1879967048 (cast-from-var1246-to-var2725 var857))) ; Statement: $r56 = virtualinvoke r0.<org.hibernate.persister.collection.OneToManyPersister: java.lang.String getSQLInsertRowString()>() 
(assert true)
(define-const var3693 var3280 (convert/1666256987 var2913 var330 var838 var28)) ; Statement: $r59 = virtualinvoke $r58.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String,java.lang.String)>($r50, $r57, $r56) 
(define-const var371 var3545 (cast-from-var3280-to-var3545 var3693)) ; Statement: $r88 = (java.lang.Throwable) $r59 
 ; Statement: throw $r88 
(check-sat)
(get-model)
(get-unsat-core)
; {getFactory/-1810661191=([org.hibernate.persister.collection.AbstractCollectionPersister], org.hibernate.engine.spi.SessionFactoryImplementor), cast-from-var1246-to-var2725=([org.hibernate.persister.collection.OneToManyPersister], org.hibernate.persister.collection.AbstractCollectionPersister), var1865_getSQLExceptionHelper/176842062=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.engine.jdbc.spi.SqlExceptionHelper), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3283_collectionInfoString/1200247851=([org.hibernate.persister.collection.CollectionPersister, org.hibernate.collection.spi.PersistentCollection, java.io.Serializable, org.hibernate.engine.spi.SharedSessionContractImplementor], java.lang.String), cast-from-var1246-to-var2870=([org.hibernate.persister.collection.OneToManyPersister], org.hibernate.persister.collection.CollectionPersister), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getSQLInsertRowString/-1879967048=([org.hibernate.persister.collection.AbstractCollectionPersister], java.lang.String), convert/1666256987=([org.hibernate.engine.jdbc.spi.SqlExceptionHelper, java.sql.SQLException, java.lang.String, java.lang.String], org.hibernate.JDBCException), cast-from-var3280-to-var3545=([org.hibernate.JDBCException], java.lang.Throwable)}
; {var1246=org.hibernate.persister.collection.OneToManyPersister, var857=r0, var2219=java.io.Serializable, var925=r10, var1352=org.hibernate.collection.spi.PersistentCollection, var3682=r2, var1824=org.hibernate.engine.spi.SharedSessionContractImplementor, var2831=r3, var1727=i6, var3488=java.sql.SQLException, var330=$r50, var1865=org.hibernate.engine.spi.SessionFactoryImplementor, var2725=org.hibernate.persister.collection.AbstractCollectionPersister, var3871=$r51, var845=org.hibernate.engine.jdbc.spi.SqlExceptionHelper, var2913=$r58, var3416=$r87, var1964=$r54, var3283=org.hibernate.pretty.MessageHelper, var2870=org.hibernate.persister.collection.CollectionPersister, var469=$r53, var648=$r55, var838=$r57, var28=$r56, var3280=org.hibernate.JDBCException, var3693=$r59, var3545=java.lang.Throwable, var371=$r88}
; {org.hibernate.persister.collection.OneToManyPersister=var1246, r0=var857, java.io.Serializable=var2219, r10=var925, org.hibernate.collection.spi.PersistentCollection=var1352, r2=var3682, org.hibernate.engine.spi.SharedSessionContractImplementor=var1824, r3=var2831, i6=var1727, java.sql.SQLException=var3488, $r50=var330, org.hibernate.engine.spi.SessionFactoryImplementor=var1865, org.hibernate.persister.collection.AbstractCollectionPersister=var2725, $r51=var3871, org.hibernate.engine.jdbc.spi.SqlExceptionHelper=var845, $r58=var2913, $r87=var3416, $r54=var1964, org.hibernate.pretty.MessageHelper=var3283, org.hibernate.persister.collection.CollectionPersister=var2870, $r53=var469, $r55=var648, $r57=var838, $r56=var28, org.hibernate.JDBCException=var3280, $r59=var3693, java.lang.Throwable=var3545, $r88=var371}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.persister.collection.OneToManyPersister;	r10 := @parameter0: java.io.Serializable;	r2 := @parameter1: org.hibernate.collection.spi.PersistentCollection;	r3 := @parameter2: org.hibernate.engine.spi.SharedSessionContractImplementor;	i6 = 0;	$r50 := @caughtexception;	$r51 = virtualinvoke r0.<org.hibernate.persister.collection.OneToManyPersister: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r58 = interfaceinvoke $r51.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.engine.jdbc.spi.SqlExceptionHelper getSQLExceptionHelper()>();	$r87 = new java.lang.StringBuilder;	specialinvoke $r87.<java.lang.StringBuilder: void <init>()>();	$r54 = virtualinvoke $r87.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not update collection rows: ");	$r53 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String collectionInfoString(org.hibernate.persister.collection.CollectionPersister,org.hibernate.collection.spi.PersistentCollection,java.io.Serializable,org.hibernate.engine.spi.SharedSessionContractImplementor)>(r0, r2, r10, r3);	$r55 = virtualinvoke $r54.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r53);	$r57 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.String toString()>();	$r56 = virtualinvoke r0.<org.hibernate.persister.collection.OneToManyPersister: java.lang.String getSQLInsertRowString()>();	$r59 = virtualinvoke $r58.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String,java.lang.String)>($r50, $r57, $r56);	$r88 = (java.lang.Throwable) $r59;	throw $r88
;block_num 2