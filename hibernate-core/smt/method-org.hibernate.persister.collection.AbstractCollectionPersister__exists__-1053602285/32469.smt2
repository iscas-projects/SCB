(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1829 0)
(declare-sort var1341 0)
(declare-sort var2238 0)
(declare-sort var3424 0)
(declare-sort var1286 0)
(declare-sort var1945 0)
(declare-sort var779 0)
(declare-sort var2314 0)
(declare-sort var1834 0)
(declare-sort var2510 0)
(declare-sort var2817 0)
(declare-sort var2057 0)
(declare-sort var2267 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSQLExceptionHelper/1805541620 (var1829) var2314)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getFactory/-1810661191 (var1829) var1834)
(declare-fun var2510_collectionInfoString/-2038540833 (var2817 var1341 var1834) String)
(declare-fun cast-from-var1829-to-var2817 (var1829) var2817)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun sqlSelectSizeString/835828228 (var1829) String)
(declare-fun convert/1666256987 (var2314 var779 String String) var2057)
(declare-fun cast-from-var2057-to-var2267 (var2057) var2267)
(declare-const null-var1829 var1829)
(declare-const null-var1341 var1341)
(declare-const null-var2238 var2238)
(declare-const null-var3424 var3424)
(declare-const null-String String)
(declare-const null-var1945 var1945)
(declare-const null-var779 var779)
(declare-const var467 var1829) ; Statement: r4 := @this: org.hibernate.persister.collection.AbstractCollectionPersister 
(assert (not (= var467 null-var1829)))
(declare-const var1525 var1341) ; Statement: r5 := @parameter0: java.io.Serializable 
(assert (not (= var1525 null-var1341)))
(declare-const var606 var2238) ; Statement: r8 := @parameter1: java.lang.Object 
(assert (not (= var606 null-var2238)))
(declare-const var1123 var3424) ; Statement: r7 := @parameter2: org.hibernate.type.Type 
(assert (not (= var1123 null-var3424)))
(declare-const var3285 String) ; Statement: r1 := @parameter3: java.lang.String 
(assert (not (= var3285 null-String)))
(declare-const var3038 var1945) ; Statement: r0 := @parameter4: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var3038 null-var1945)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var300 var779) ; Statement: $r14 := @caughtexception 
(assert (not (= var300 null-var779)))
(assert true)
(define-const var3610 var2314 (getSQLExceptionHelper/1805541620 var467)) ; Statement: $r22 = virtualinvoke r4.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.engine.jdbc.spi.SqlExceptionHelper getSQLExceptionHelper()>() 
(define-const var3459 String String-init) ; Statement: $r29 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3459)) ; Statement: specialinvoke $r29.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3459!1 String)
(assert (= var3459!1 ""))
(assert true)
(define-const var2842 String (append/672562846 var3459!1 "could not check row existence: ")) ; Statement: $r18 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not check row existence: ") 
(declare-const var3459!2 String)
(assert (= var3459!2 (str.++ var3459!1 "could not check row existence: ")))
(assert true)
(define-const var2748 var1834 (getFactory/-1810661191 var467)) ; Statement: $r16 = virtualinvoke r4.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var100 String (var2510_collectionInfoString/-2038540833 (cast-from-var1829-to-var2817 var467) var1525 var2748)) ; Statement: $r17 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String collectionInfoString(org.hibernate.persister.collection.CollectionPersister,java.io.Serializable,org.hibernate.engine.spi.SessionFactoryImplementor)>(r4, r5, $r16) 
(assert true)
(define-const var3037 String (append/672562846 var2842 var100)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var2842!1 String)
(assert (= var2842!1 (str.++ var2842 var100)))
(assert true)
(define-const var2797 String (toString/-2075883882 var3037)) ; Statement: $r21 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1078 String (sqlSelectSizeString/835828228 var467)) ; Statement: $r20 = r4.<org.hibernate.persister.collection.AbstractCollectionPersister: java.lang.String sqlSelectSizeString> 
(assert true)
(define-const var831 var2057 (convert/1666256987 var3610 var300 var2797 var1078)) ; Statement: $r23 = virtualinvoke $r22.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String,java.lang.String)>($r14, $r21, $r20) 
(define-const var2827 var2267 (cast-from-var2057-to-var2267 var831)) ; Statement: $r30 = (java.lang.Throwable) $r23 
 ; Statement: throw $r30 
(check-sat)
(get-model)
(get-unsat-core)
; {getSQLExceptionHelper/1805541620=([org.hibernate.persister.collection.AbstractCollectionPersister], org.hibernate.engine.jdbc.spi.SqlExceptionHelper), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getFactory/-1810661191=([org.hibernate.persister.collection.AbstractCollectionPersister], org.hibernate.engine.spi.SessionFactoryImplementor), var2510_collectionInfoString/-2038540833=([org.hibernate.persister.collection.CollectionPersister, java.io.Serializable, org.hibernate.engine.spi.SessionFactoryImplementor], java.lang.String), cast-from-var1829-to-var2817=([org.hibernate.persister.collection.AbstractCollectionPersister], org.hibernate.persister.collection.CollectionPersister), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), sqlSelectSizeString/835828228=([org.hibernate.persister.collection.AbstractCollectionPersister], java.lang.String), convert/1666256987=([org.hibernate.engine.jdbc.spi.SqlExceptionHelper, java.sql.SQLException, java.lang.String, java.lang.String], org.hibernate.JDBCException), cast-from-var2057-to-var2267=([org.hibernate.JDBCException], java.lang.Throwable)}
; {var1829=org.hibernate.persister.collection.AbstractCollectionPersister, var467=r4, var1341=java.io.Serializable, var1525=r5, var2238=java.lang.Object, var606=r8, var3424=org.hibernate.type.Type, var1123=r7, var3285=r1, var1286=null_type, var1945=org.hibernate.engine.spi.SharedSessionContractImplementor, var3038=r0, var779=java.sql.SQLException, var300=$r14, var2314=org.hibernate.engine.jdbc.spi.SqlExceptionHelper, var3610=$r22, var3459=$r29, var2842=$r18, var1834=org.hibernate.engine.spi.SessionFactoryImplementor, var2748=$r16, var2510=org.hibernate.pretty.MessageHelper, var2817=org.hibernate.persister.collection.CollectionPersister, var100=$r17, var3037=$r19, var2797=$r21, var1078=$r20, var2057=org.hibernate.JDBCException, var831=$r23, var2267=java.lang.Throwable, var2827=$r30}
; {org.hibernate.persister.collection.AbstractCollectionPersister=var1829, r4=var467, java.io.Serializable=var1341, r5=var1525, java.lang.Object=var2238, r8=var606, org.hibernate.type.Type=var3424, r7=var1123, r1=var3285, null_type=var1286, org.hibernate.engine.spi.SharedSessionContractImplementor=var1945, r0=var3038, java.sql.SQLException=var779, $r14=var300, org.hibernate.engine.jdbc.spi.SqlExceptionHelper=var2314, $r22=var3610, $r29=var3459, $r18=var2842, org.hibernate.engine.spi.SessionFactoryImplementor=var1834, $r16=var2748, org.hibernate.pretty.MessageHelper=var2510, org.hibernate.persister.collection.CollectionPersister=var2817, $r17=var100, $r19=var3037, $r21=var2797, $r20=var1078, org.hibernate.JDBCException=var2057, $r23=var831, java.lang.Throwable=var2267, $r30=var2827}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: org.hibernate.persister.collection.AbstractCollectionPersister;	r5 := @parameter0: java.io.Serializable;	r8 := @parameter1: java.lang.Object;	r7 := @parameter2: org.hibernate.type.Type;	r1 := @parameter3: java.lang.String;	r0 := @parameter4: org.hibernate.engine.spi.SharedSessionContractImplementor;	$r14 := @caughtexception;	$r22 = virtualinvoke r4.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.engine.jdbc.spi.SqlExceptionHelper getSQLExceptionHelper()>();	$r29 = new java.lang.StringBuilder;	specialinvoke $r29.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not check row existence: ");	$r16 = virtualinvoke r4.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r17 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String collectionInfoString(org.hibernate.persister.collection.CollectionPersister,java.io.Serializable,org.hibernate.engine.spi.SessionFactoryImplementor)>(r4, r5, $r16);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r21 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	$r20 = r4.<org.hibernate.persister.collection.AbstractCollectionPersister: java.lang.String sqlSelectSizeString>;	$r23 = virtualinvoke $r22.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String,java.lang.String)>($r14, $r21, $r20);	$r30 = (java.lang.Throwable) $r23;	throw $r30
;block_num 2