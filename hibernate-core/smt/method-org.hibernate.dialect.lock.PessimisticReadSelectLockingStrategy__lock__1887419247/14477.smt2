(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1342 0)
(declare-sort var2409 0)
(declare-sort var1214 0)
(declare-sort var304 0)
(declare-sort var2165 0)
(declare-sort var3797 0)
(declare-sort var1652 0)
(declare-sort var3107 0)
(declare-sort var1201 0)
(declare-sort var1775 0)
(declare-sort var3719 0)
(declare-sort var3609 0)
(declare-sort var2224 0)
(declare-sort var1246 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun determineSql/-1796700167 (var2165 Int) String)
(declare-fun cast-from-var1342-to-var2165 (var1342) var2165)
(declare-fun var304_getFactory/1122061256 (var304) var3797)
(declare-fun getLockable/-467819906 (var2165) var1652)
(declare-fun var304_getJdbcServices/-1615476239 (var304) var1201)
(declare-fun var1201_getSqlExceptionHelper/1800321680 (var1201) var1775)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3719_infoString/-1303038331 (var3609 var1214 var3797) String)
(declare-fun cast-from-var1652-to-var3609 (var1652) var3609)
(declare-fun cast-from-var2409-to-var1214 (var2409) var1214)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun convert/1666256987 (var1775 var3107 String String) var2224)
(declare-fun cast-from-var2224-to-var1246 (var2224) var1246)
(declare-const null-var1342 var1342)
(declare-const null-var2409 var2409)
(declare-const null-var1214 var1214)
(declare-const null-Int Int)
(declare-const null-var304 var304)
(declare-const null-var3107 var3107)
(declare-const var1417 var1342) ; Statement: r0 := @this: org.hibernate.dialect.lock.PessimisticReadSelectLockingStrategy 
(assert (not (= var1417 null-var1342)))
(declare-const var716 var2409) ; Statement: r7 := @parameter0: java.io.Serializable 
(assert (not (= var716 null-var2409)))
(declare-const var1506 var1214) ; Statement: r16 := @parameter1: java.lang.Object 
(assert (not (= var1506 null-var1214)))
(declare-const var752 var1214) ; Statement: r20 := @parameter2: java.lang.Object 
(assert (not (= var752 null-var1214)))
(declare-const var3554 Int) ; Statement: i0 := @parameter3: int 
(assert (not (= var3554 null-Int)))
(declare-const var3885 var304) ; Statement: r2 := @parameter4: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var3885 null-var304)))
(assert true)
(define-const var3001 String (determineSql/-1796700167 (cast-from-var1342-to-var2165 var1417) var3554)) ; Statement: r1 = virtualinvoke r0.<org.hibernate.dialect.lock.PessimisticReadSelectLockingStrategy: java.lang.String determineSql(int)>(i0) 
(define-const var2620 var3797 (var304_getFactory/1122061256 var3885)) ; Statement: r3 = interfaceinvoke r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(assert true)
(define-const var965 var1652 (getLockable/-467819906 (cast-from-var1342-to-var2165 var1417))) ; Statement: r4 = virtualinvoke r0.<org.hibernate.dialect.lock.PessimisticReadSelectLockingStrategy: org.hibernate.persister.entity.Lockable getLockable()>() 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3373 var3107) ; Statement: $r21 := @caughtexception 
(assert (not (= var3373 null-var3107)))
(define-const var3083 var1201 (var304_getJdbcServices/-1615476239 var3885)) ; Statement: $r22 = interfaceinvoke r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.jdbc.spi.JdbcServices getJdbcServices()>() 
(define-const var2808 var1775 (var1201_getSqlExceptionHelper/1800321680 var3083)) ; Statement: $r29 = interfaceinvoke $r22.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.engine.jdbc.spi.SqlExceptionHelper getSqlExceptionHelper()>() 
(define-const var146 String String-init) ; Statement: $r36 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var146)) ; Statement: specialinvoke $r36.<java.lang.StringBuilder: void <init>()>() 
(declare-const var146!1 String)
(assert (= var146!1 ""))
(assert true)
(define-const var669 String (append/672562846 var146!1 "could not lock: ")) ; Statement: $r26 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not lock: ") 
(declare-const var146!2 String)
(assert (= var146!2 (str.++ var146!1 "could not lock: ")))
(define-const var389 var3797 (var304_getFactory/1122061256 var3885)) ; Statement: $r24 = interfaceinvoke r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var3255 String (var3719_infoString/-1303038331 (cast-from-var1652-to-var3609 var965) (cast-from-var2409-to-var1214 var716) var389)) ; Statement: $r25 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String infoString(org.hibernate.persister.entity.EntityPersister,java.lang.Object,org.hibernate.engine.spi.SessionFactoryImplementor)>(r4, r7, $r24) 
(assert true)
(define-const var1327 String (append/672562846 var669 var3255)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25) 
(declare-const var669!1 String)
(assert (= var669!1 (str.++ var669 var3255)))
(assert true)
(define-const var2069 String (toString/-2075883882 var1327)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3425 var2224 (convert/1666256987 var2808 var3373 var2069 var3001)) ; Statement: $r30 = virtualinvoke $r29.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String,java.lang.String)>($r21, $r28, r1) 
(define-const var653 var1246 (cast-from-var2224-to-var1246 var3425)) ; Statement: $r38 = (java.lang.Throwable) $r30 
 ; Statement: throw $r38 
(check-sat)
(get-model)
(get-unsat-core)
; {determineSql/-1796700167=([org.hibernate.dialect.lock.AbstractSelectLockingStrategy, int], java.lang.String), cast-from-var1342-to-var2165=([org.hibernate.dialect.lock.PessimisticReadSelectLockingStrategy], org.hibernate.dialect.lock.AbstractSelectLockingStrategy), var304_getFactory/1122061256=([org.hibernate.engine.spi.SharedSessionContractImplementor], org.hibernate.engine.spi.SessionFactoryImplementor), getLockable/-467819906=([org.hibernate.dialect.lock.AbstractSelectLockingStrategy], org.hibernate.persister.entity.Lockable), var304_getJdbcServices/-1615476239=([org.hibernate.engine.spi.SharedSessionContractImplementor], org.hibernate.engine.jdbc.spi.JdbcServices), var1201_getSqlExceptionHelper/1800321680=([org.hibernate.engine.jdbc.spi.JdbcServices], org.hibernate.engine.jdbc.spi.SqlExceptionHelper), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3719_infoString/-1303038331=([org.hibernate.persister.entity.EntityPersister, java.lang.Object, org.hibernate.engine.spi.SessionFactoryImplementor], java.lang.String), cast-from-var1652-to-var3609=([org.hibernate.persister.entity.Lockable], org.hibernate.persister.entity.EntityPersister), cast-from-var2409-to-var1214=([java.io.Serializable], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), convert/1666256987=([org.hibernate.engine.jdbc.spi.SqlExceptionHelper, java.sql.SQLException, java.lang.String, java.lang.String], org.hibernate.JDBCException), cast-from-var2224-to-var1246=([org.hibernate.JDBCException], java.lang.Throwable)}
; {var1342=org.hibernate.dialect.lock.PessimisticReadSelectLockingStrategy, var1417=r0, var2409=java.io.Serializable, var716=r7, var1214=java.lang.Object, var1506=r16, var752=r20, var3554=i0, var304=org.hibernate.engine.spi.SharedSessionContractImplementor, var3885=r2, var2165=org.hibernate.dialect.lock.AbstractSelectLockingStrategy, var3001=r1, var3797=org.hibernate.engine.spi.SessionFactoryImplementor, var2620=r3, var1652=org.hibernate.persister.entity.Lockable, var965=r4, var3107=java.sql.SQLException, var3373=$r21, var1201=org.hibernate.engine.jdbc.spi.JdbcServices, var3083=$r22, var1775=org.hibernate.engine.jdbc.spi.SqlExceptionHelper, var2808=$r29, var146=$r36, var669=$r26, var389=$r24, var3719=org.hibernate.pretty.MessageHelper, var3609=org.hibernate.persister.entity.EntityPersister, var3255=$r25, var1327=$r27, var2069=$r28, var2224=org.hibernate.JDBCException, var3425=$r30, var1246=java.lang.Throwable, var653=$r38}
; {org.hibernate.dialect.lock.PessimisticReadSelectLockingStrategy=var1342, r0=var1417, java.io.Serializable=var2409, r7=var716, java.lang.Object=var1214, r16=var1506, r20=var752, i0=var3554, org.hibernate.engine.spi.SharedSessionContractImplementor=var304, r2=var3885, org.hibernate.dialect.lock.AbstractSelectLockingStrategy=var2165, r1=var3001, org.hibernate.engine.spi.SessionFactoryImplementor=var3797, r3=var2620, org.hibernate.persister.entity.Lockable=var1652, r4=var965, java.sql.SQLException=var3107, $r21=var3373, org.hibernate.engine.jdbc.spi.JdbcServices=var1201, $r22=var3083, org.hibernate.engine.jdbc.spi.SqlExceptionHelper=var1775, $r29=var2808, $r36=var146, $r26=var669, $r24=var389, org.hibernate.pretty.MessageHelper=var3719, org.hibernate.persister.entity.EntityPersister=var3609, $r25=var3255, $r27=var1327, $r28=var2069, org.hibernate.JDBCException=var2224, $r30=var3425, java.lang.Throwable=var1246, $r38=var653}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.dialect.lock.PessimisticReadSelectLockingStrategy;	r7 := @parameter0: java.io.Serializable;	r16 := @parameter1: java.lang.Object;	r20 := @parameter2: java.lang.Object;	i0 := @parameter3: int;	r2 := @parameter4: org.hibernate.engine.spi.SharedSessionContractImplementor;	r1 = virtualinvoke r0.<org.hibernate.dialect.lock.PessimisticReadSelectLockingStrategy: java.lang.String determineSql(int)>(i0);	r3 = interfaceinvoke r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	r4 = virtualinvoke r0.<org.hibernate.dialect.lock.PessimisticReadSelectLockingStrategy: org.hibernate.persister.entity.Lockable getLockable()>();	$r21 := @caughtexception;	$r22 = interfaceinvoke r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.jdbc.spi.JdbcServices getJdbcServices()>();	$r29 = interfaceinvoke $r22.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.engine.jdbc.spi.SqlExceptionHelper getSqlExceptionHelper()>();	$r36 = new java.lang.StringBuilder;	specialinvoke $r36.<java.lang.StringBuilder: void <init>()>();	$r26 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not lock: ");	$r24 = interfaceinvoke r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r25 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String infoString(org.hibernate.persister.entity.EntityPersister,java.lang.Object,org.hibernate.engine.spi.SessionFactoryImplementor)>(r4, r7, $r24);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>();	$r30 = virtualinvoke $r29.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String,java.lang.String)>($r21, $r28, r1);	$r38 = (java.lang.Throwable) $r30;	throw $r38
;block_num 2