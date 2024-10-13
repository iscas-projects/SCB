(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var574 0)
(declare-sort var321 0)
(declare-sort var3186 0)
(declare-sort var2376 0)
(declare-sort var3975 0)
(declare-sort var677 0)
(declare-sort var988 0)
(declare-sort var991 0)
(declare-sort var2464 0)
(declare-sort var114 0)
(declare-sort var265 0)
(declare-sort var2641 0)
(declare-sort var3141 0)
(declare-sort var2242 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun determineSql/-1796700167 (var3975 Int) String)
(declare-fun cast-from-var574-to-var3975 (var574) var3975)
(declare-fun var2376_getFactory/1122061256 (var2376) var677)
(declare-fun getLockable/-467819906 (var3975) var988)
(declare-fun var2376_getJdbcServices/-1615476239 (var2376) var2464)
(declare-fun var2464_getSqlExceptionHelper/1800321680 (var2464) var114)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var265_infoString/-1303038331 (var2641 var3186 var677) String)
(declare-fun cast-from-var988-to-var2641 (var988) var2641)
(declare-fun cast-from-var321-to-var3186 (var321) var3186)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun convert/1666256987 (var114 var991 String String) var3141)
(declare-fun cast-from-var3141-to-var2242 (var3141) var2242)
(declare-const null-var574 var574)
(declare-const null-var321 var321)
(declare-const null-var3186 var3186)
(declare-const null-Int Int)
(declare-const null-var2376 var2376)
(declare-const null-var991 var991)
(declare-const var2947 var574) ; Statement: r0 := @this: org.hibernate.dialect.lock.SelectLockingStrategy 
(assert (not (= var2947 null-var574)))
(declare-const var2391 var321) ; Statement: r7 := @parameter0: java.io.Serializable 
(assert (not (= var2391 null-var321)))
(declare-const var2842 var3186) ; Statement: r18 := @parameter1: java.lang.Object 
(assert (not (= var2842 null-var3186)))
(declare-const var971 var3186) ; Statement: r38 := @parameter2: java.lang.Object 
(assert (not (= var971 null-var3186)))
(declare-const var3864 Int) ; Statement: i0 := @parameter3: int 
(assert (not (= var3864 null-Int)))
(declare-const var2617 var2376) ; Statement: r2 := @parameter4: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var2617 null-var2376)))
(assert true)
(define-const var1408 String (determineSql/-1796700167 (cast-from-var574-to-var3975 var2947) var3864)) ; Statement: r1 = virtualinvoke r0.<org.hibernate.dialect.lock.SelectLockingStrategy: java.lang.String determineSql(int)>(i0) 
(define-const var195 var677 (var2376_getFactory/1122061256 var2617)) ; Statement: r3 = interfaceinvoke r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(assert true)
(define-const var3751 var988 (getLockable/-467819906 (cast-from-var574-to-var3975 var2947))) ; Statement: r4 = virtualinvoke r0.<org.hibernate.dialect.lock.SelectLockingStrategy: org.hibernate.persister.entity.Lockable getLockable()>() 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var475 var991) ; Statement: $r22 := @caughtexception 
(assert (not (= var475 null-var991)))
(define-const var619 var2464 (var2376_getJdbcServices/-1615476239 var2617)) ; Statement: $r23 = interfaceinvoke r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.jdbc.spi.JdbcServices getJdbcServices()>() 
(define-const var748 var114 (var2464_getSqlExceptionHelper/1800321680 var619)) ; Statement: $r30 = interfaceinvoke $r23.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.engine.jdbc.spi.SqlExceptionHelper getSqlExceptionHelper()>() 
(define-const var3181 String String-init) ; Statement: $r41 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3181)) ; Statement: specialinvoke $r41.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3181!1 String)
(assert (= var3181!1 ""))
(assert true)
(define-const var1734 String (append/672562846 var3181!1 "could not lock: ")) ; Statement: $r27 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not lock: ") 
(declare-const var3181!2 String)
(assert (= var3181!2 (str.++ var3181!1 "could not lock: ")))
(define-const var497 var677 (var2376_getFactory/1122061256 var2617)) ; Statement: $r25 = interfaceinvoke r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var3176 String (var265_infoString/-1303038331 (cast-from-var988-to-var2641 var3751) (cast-from-var321-to-var3186 var2391) var497)) ; Statement: $r26 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String infoString(org.hibernate.persister.entity.EntityPersister,java.lang.Object,org.hibernate.engine.spi.SessionFactoryImplementor)>(r4, r7, $r25) 
(assert true)
(define-const var1791 String (append/672562846 var1734 var3176)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26) 
(declare-const var1734!1 String)
(assert (= var1734!1 (str.++ var1734 var3176)))
(assert true)
(define-const var870 String (toString/-2075883882 var1791)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2564 var3141 (convert/1666256987 var748 var475 var870 var1408)) ; Statement: $r31 = virtualinvoke $r30.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String,java.lang.String)>($r22, $r29, r1) 
(define-const var604 var2242 (cast-from-var3141-to-var2242 var2564)) ; Statement: $r43 = (java.lang.Throwable) $r31 
 ; Statement: throw $r43 
(check-sat)
(get-model)
(get-unsat-core)
; {determineSql/-1796700167=([org.hibernate.dialect.lock.AbstractSelectLockingStrategy, int], java.lang.String), cast-from-var574-to-var3975=([org.hibernate.dialect.lock.SelectLockingStrategy], org.hibernate.dialect.lock.AbstractSelectLockingStrategy), var2376_getFactory/1122061256=([org.hibernate.engine.spi.SharedSessionContractImplementor], org.hibernate.engine.spi.SessionFactoryImplementor), getLockable/-467819906=([org.hibernate.dialect.lock.AbstractSelectLockingStrategy], org.hibernate.persister.entity.Lockable), var2376_getJdbcServices/-1615476239=([org.hibernate.engine.spi.SharedSessionContractImplementor], org.hibernate.engine.jdbc.spi.JdbcServices), var2464_getSqlExceptionHelper/1800321680=([org.hibernate.engine.jdbc.spi.JdbcServices], org.hibernate.engine.jdbc.spi.SqlExceptionHelper), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var265_infoString/-1303038331=([org.hibernate.persister.entity.EntityPersister, java.lang.Object, org.hibernate.engine.spi.SessionFactoryImplementor], java.lang.String), cast-from-var988-to-var2641=([org.hibernate.persister.entity.Lockable], org.hibernate.persister.entity.EntityPersister), cast-from-var321-to-var3186=([java.io.Serializable], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), convert/1666256987=([org.hibernate.engine.jdbc.spi.SqlExceptionHelper, java.sql.SQLException, java.lang.String, java.lang.String], org.hibernate.JDBCException), cast-from-var3141-to-var2242=([org.hibernate.JDBCException], java.lang.Throwable)}
; {var574=org.hibernate.dialect.lock.SelectLockingStrategy, var2947=r0, var321=java.io.Serializable, var2391=r7, var3186=java.lang.Object, var2842=r18, var971=r38, var3864=i0, var2376=org.hibernate.engine.spi.SharedSessionContractImplementor, var2617=r2, var3975=org.hibernate.dialect.lock.AbstractSelectLockingStrategy, var1408=r1, var677=org.hibernate.engine.spi.SessionFactoryImplementor, var195=r3, var988=org.hibernate.persister.entity.Lockable, var3751=r4, var991=java.sql.SQLException, var475=$r22, var2464=org.hibernate.engine.jdbc.spi.JdbcServices, var619=$r23, var114=org.hibernate.engine.jdbc.spi.SqlExceptionHelper, var748=$r30, var3181=$r41, var1734=$r27, var497=$r25, var265=org.hibernate.pretty.MessageHelper, var2641=org.hibernate.persister.entity.EntityPersister, var3176=$r26, var1791=$r28, var870=$r29, var3141=org.hibernate.JDBCException, var2564=$r31, var2242=java.lang.Throwable, var604=$r43}
; {org.hibernate.dialect.lock.SelectLockingStrategy=var574, r0=var2947, java.io.Serializable=var321, r7=var2391, java.lang.Object=var3186, r18=var2842, r38=var971, i0=var3864, org.hibernate.engine.spi.SharedSessionContractImplementor=var2376, r2=var2617, org.hibernate.dialect.lock.AbstractSelectLockingStrategy=var3975, r1=var1408, org.hibernate.engine.spi.SessionFactoryImplementor=var677, r3=var195, org.hibernate.persister.entity.Lockable=var988, r4=var3751, java.sql.SQLException=var991, $r22=var475, org.hibernate.engine.jdbc.spi.JdbcServices=var2464, $r23=var619, org.hibernate.engine.jdbc.spi.SqlExceptionHelper=var114, $r30=var748, $r41=var3181, $r27=var1734, $r25=var497, org.hibernate.pretty.MessageHelper=var265, org.hibernate.persister.entity.EntityPersister=var2641, $r26=var3176, $r28=var1791, $r29=var870, org.hibernate.JDBCException=var3141, $r31=var2564, java.lang.Throwable=var2242, $r43=var604}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.dialect.lock.SelectLockingStrategy;	r7 := @parameter0: java.io.Serializable;	r18 := @parameter1: java.lang.Object;	r38 := @parameter2: java.lang.Object;	i0 := @parameter3: int;	r2 := @parameter4: org.hibernate.engine.spi.SharedSessionContractImplementor;	r1 = virtualinvoke r0.<org.hibernate.dialect.lock.SelectLockingStrategy: java.lang.String determineSql(int)>(i0);	r3 = interfaceinvoke r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	r4 = virtualinvoke r0.<org.hibernate.dialect.lock.SelectLockingStrategy: org.hibernate.persister.entity.Lockable getLockable()>();	$r22 := @caughtexception;	$r23 = interfaceinvoke r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.jdbc.spi.JdbcServices getJdbcServices()>();	$r30 = interfaceinvoke $r23.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.engine.jdbc.spi.SqlExceptionHelper getSqlExceptionHelper()>();	$r41 = new java.lang.StringBuilder;	specialinvoke $r41.<java.lang.StringBuilder: void <init>()>();	$r27 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not lock: ");	$r25 = interfaceinvoke r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r26 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String infoString(org.hibernate.persister.entity.EntityPersister,java.lang.Object,org.hibernate.engine.spi.SessionFactoryImplementor)>(r4, r7, $r25);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>();	$r31 = virtualinvoke $r30.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String,java.lang.String)>($r22, $r29, r1);	$r43 = (java.lang.Throwable) $r31;	throw $r43
;block_num 2