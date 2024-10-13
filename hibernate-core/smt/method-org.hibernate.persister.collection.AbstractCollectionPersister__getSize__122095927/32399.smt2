(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2696 0)
(declare-sort var3489 0)
(declare-sort var2433 0)
(declare-sort var3890 0)
(declare-sort var300 0)
(declare-sort var1194 0)
(declare-sort var1959 0)
(declare-sort var2807 0)
(declare-sort var1049 0)
(declare-sort var657 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSQLExceptionHelper/1805541620 (var2696) var300)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getFactory/-1810661191 (var2696) var1194)
(declare-fun var1959_collectionInfoString/-2038540833 (var2807 var3489 var1194) String)
(declare-fun cast-from-var2696-to-var2807 (var2696) var2807)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun sqlSelectSizeString/835828228 (var2696) String)
(declare-fun convert/1666256987 (var300 var3890 String String) var1049)
(declare-fun cast-from-var1049-to-var657 (var1049) var657)
(declare-const null-var2696 var2696)
(declare-const null-var3489 var3489)
(declare-const null-var2433 var2433)
(declare-const null-var3890 var3890)
(declare-const var1743 var2696) ; Statement: r1 := @this: org.hibernate.persister.collection.AbstractCollectionPersister 
(assert (not (= var1743 null-var2696)))
(declare-const var1496 var3489) ; Statement: r5 := @parameter0: java.io.Serializable 
(assert (not (= var1496 null-var3489)))
(declare-const var2850 var2433) ; Statement: r0 := @parameter1: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var2850 null-var2433)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3161 var3890) ; Statement: $r11 := @caughtexception 
(assert (not (= var3161 null-var3890)))
(assert true)
(define-const var28 var300 (getSQLExceptionHelper/1805541620 var1743)) ; Statement: $r19 = virtualinvoke r1.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.engine.jdbc.spi.SqlExceptionHelper getSQLExceptionHelper()>() 
(define-const var155 String String-init) ; Statement: $r26 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var155)) ; Statement: specialinvoke $r26.<java.lang.StringBuilder: void <init>()>() 
(declare-const var155!1 String)
(assert (= var155!1 ""))
(assert true)
(define-const var221 String (append/672562846 var155!1 "could not retrieve collection size: ")) ; Statement: $r15 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not retrieve collection size: ") 
(declare-const var155!2 String)
(assert (= var155!2 (str.++ var155!1 "could not retrieve collection size: ")))
(assert true)
(define-const var291 var1194 (getFactory/-1810661191 var1743)) ; Statement: $r13 = virtualinvoke r1.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var798 String (var1959_collectionInfoString/-2038540833 (cast-from-var2696-to-var2807 var1743) var1496 var291)) ; Statement: $r14 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String collectionInfoString(org.hibernate.persister.collection.CollectionPersister,java.io.Serializable,org.hibernate.engine.spi.SessionFactoryImplementor)>(r1, r5, $r13) 
(assert true)
(define-const var1405 String (append/672562846 var221 var798)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var221!1 String)
(assert (= var221!1 (str.++ var221 var798)))
(assert true)
(define-const var1089 String (toString/-2075883882 var1405)) ; Statement: $r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2875 String (sqlSelectSizeString/835828228 var1743)) ; Statement: $r17 = r1.<org.hibernate.persister.collection.AbstractCollectionPersister: java.lang.String sqlSelectSizeString> 
(assert true)
(define-const var3469 var1049 (convert/1666256987 var28 var3161 var1089 var2875)) ; Statement: $r20 = virtualinvoke $r19.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String,java.lang.String)>($r11, $r18, $r17) 
(define-const var2826 var657 (cast-from-var1049-to-var657 var3469)) ; Statement: $r27 = (java.lang.Throwable) $r20 
 ; Statement: throw $r27 
(check-sat)
(get-model)
(get-unsat-core)
; {getSQLExceptionHelper/1805541620=([org.hibernate.persister.collection.AbstractCollectionPersister], org.hibernate.engine.jdbc.spi.SqlExceptionHelper), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getFactory/-1810661191=([org.hibernate.persister.collection.AbstractCollectionPersister], org.hibernate.engine.spi.SessionFactoryImplementor), var1959_collectionInfoString/-2038540833=([org.hibernate.persister.collection.CollectionPersister, java.io.Serializable, org.hibernate.engine.spi.SessionFactoryImplementor], java.lang.String), cast-from-var2696-to-var2807=([org.hibernate.persister.collection.AbstractCollectionPersister], org.hibernate.persister.collection.CollectionPersister), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), sqlSelectSizeString/835828228=([org.hibernate.persister.collection.AbstractCollectionPersister], java.lang.String), convert/1666256987=([org.hibernate.engine.jdbc.spi.SqlExceptionHelper, java.sql.SQLException, java.lang.String, java.lang.String], org.hibernate.JDBCException), cast-from-var1049-to-var657=([org.hibernate.JDBCException], java.lang.Throwable)}
; {var2696=org.hibernate.persister.collection.AbstractCollectionPersister, var1743=r1, var3489=java.io.Serializable, var1496=r5, var2433=org.hibernate.engine.spi.SharedSessionContractImplementor, var2850=r0, var3890=java.sql.SQLException, var3161=$r11, var300=org.hibernate.engine.jdbc.spi.SqlExceptionHelper, var28=$r19, var155=$r26, var221=$r15, var1194=org.hibernate.engine.spi.SessionFactoryImplementor, var291=$r13, var1959=org.hibernate.pretty.MessageHelper, var2807=org.hibernate.persister.collection.CollectionPersister, var798=$r14, var1405=$r16, var1089=$r18, var2875=$r17, var1049=org.hibernate.JDBCException, var3469=$r20, var657=java.lang.Throwable, var2826=$r27}
; {org.hibernate.persister.collection.AbstractCollectionPersister=var2696, r1=var1743, java.io.Serializable=var3489, r5=var1496, org.hibernate.engine.spi.SharedSessionContractImplementor=var2433, r0=var2850, java.sql.SQLException=var3890, $r11=var3161, org.hibernate.engine.jdbc.spi.SqlExceptionHelper=var300, $r19=var28, $r26=var155, $r15=var221, org.hibernate.engine.spi.SessionFactoryImplementor=var1194, $r13=var291, org.hibernate.pretty.MessageHelper=var1959, org.hibernate.persister.collection.CollectionPersister=var2807, $r14=var798, $r16=var1405, $r18=var1089, $r17=var2875, org.hibernate.JDBCException=var1049, $r20=var3469, java.lang.Throwable=var657, $r27=var2826}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.persister.collection.AbstractCollectionPersister;	r5 := @parameter0: java.io.Serializable;	r0 := @parameter1: org.hibernate.engine.spi.SharedSessionContractImplementor;	$r11 := @caughtexception;	$r19 = virtualinvoke r1.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.engine.jdbc.spi.SqlExceptionHelper getSQLExceptionHelper()>();	$r26 = new java.lang.StringBuilder;	specialinvoke $r26.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not retrieve collection size: ");	$r13 = virtualinvoke r1.<org.hibernate.persister.collection.AbstractCollectionPersister: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r14 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String collectionInfoString(org.hibernate.persister.collection.CollectionPersister,java.io.Serializable,org.hibernate.engine.spi.SessionFactoryImplementor)>(r1, r5, $r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	$r17 = r1.<org.hibernate.persister.collection.AbstractCollectionPersister: java.lang.String sqlSelectSizeString>;	$r20 = virtualinvoke $r19.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String,java.lang.String)>($r11, $r18, $r17);	$r27 = (java.lang.Throwable) $r20;	throw $r27
;block_num 2