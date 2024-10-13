(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1075 0)
(declare-sort var2568 0)
(declare-sort var441 0)
(declare-sort var2277 0)
(declare-sort var1957 0)
(declare-sort var1143 0)
(declare-sort var2311 0)
(declare-sort var691 0)
(declare-sort var3847 0)
(declare-sort var1851 0)
(declare-sort var3598 0)
(declare-sort var1063 0)
(declare-sort var3233 0)
(declare-sort var2436 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun determineSql/-1796700167 (var1957 Int) String)
(declare-fun cast-from-var1075-to-var1957 (var1075) var1957)
(declare-fun var2277_getFactory/1122061256 (var2277) var1143)
(declare-fun getLockable/-467819906 (var1957) var2311)
(declare-fun var2277_getJdbcServices/-1615476239 (var2277) var3847)
(declare-fun var3847_getSqlExceptionHelper/1800321680 (var3847) var1851)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3598_infoString/-1303038331 (var1063 var441 var1143) String)
(declare-fun cast-from-var2311-to-var1063 (var2311) var1063)
(declare-fun cast-from-var2568-to-var441 (var2568) var441)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun convert/1666256987 (var1851 var691 String String) var3233)
(declare-fun cast-from-var3233-to-var2436 (var3233) var2436)
(declare-const null-var1075 var1075)
(declare-const null-var2568 var2568)
(declare-const null-var441 var441)
(declare-const null-Int Int)
(declare-const null-var2277 var2277)
(declare-const null-var691 var691)
(declare-const var1229 var1075) ; Statement: r0 := @this: org.hibernate.dialect.lock.PessimisticWriteSelectLockingStrategy 
(assert (not (= var1229 null-var1075)))
(declare-const var109 var2568) ; Statement: r7 := @parameter0: java.io.Serializable 
(assert (not (= var109 null-var2568)))
(declare-const var2099 var441) ; Statement: r18 := @parameter1: java.lang.Object 
(assert (not (= var2099 null-var441)))
(declare-const var425 var441) ; Statement: r22 := @parameter2: java.lang.Object 
(assert (not (= var425 null-var441)))
(declare-const var3801 Int) ; Statement: i0 := @parameter3: int 
(assert (not (= var3801 null-Int)))
(declare-const var3306 var2277) ; Statement: r2 := @parameter4: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var3306 null-var2277)))
(assert true)
(define-const var2328 String (determineSql/-1796700167 (cast-from-var1075-to-var1957 var1229) var3801)) ; Statement: r1 = virtualinvoke r0.<org.hibernate.dialect.lock.PessimisticWriteSelectLockingStrategy: java.lang.String determineSql(int)>(i0) 
(define-const var2166 var1143 (var2277_getFactory/1122061256 var3306)) ; Statement: r3 = interfaceinvoke r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(assert true)
(define-const var3678 var2311 (getLockable/-467819906 (cast-from-var1075-to-var1957 var1229))) ; Statement: r4 = virtualinvoke r0.<org.hibernate.dialect.lock.PessimisticWriteSelectLockingStrategy: org.hibernate.persister.entity.Lockable getLockable()>() 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1541 var691) ; Statement: $r23 := @caughtexception 
(assert (not (= var1541 null-var691)))
(define-const var1124 var3847 (var2277_getJdbcServices/-1615476239 var3306)) ; Statement: $r24 = interfaceinvoke r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.jdbc.spi.JdbcServices getJdbcServices()>() 
(define-const var3996 var1851 (var3847_getSqlExceptionHelper/1800321680 var1124)) ; Statement: $r31 = interfaceinvoke $r24.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.engine.jdbc.spi.SqlExceptionHelper getSqlExceptionHelper()>() 
(define-const var1460 String String-init) ; Statement: $r41 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1460)) ; Statement: specialinvoke $r41.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1460!1 String)
(assert (= var1460!1 ""))
(assert true)
(define-const var3269 String (append/672562846 var1460!1 "could not lock: ")) ; Statement: $r28 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not lock: ") 
(declare-const var1460!2 String)
(assert (= var1460!2 (str.++ var1460!1 "could not lock: ")))
(define-const var923 var1143 (var2277_getFactory/1122061256 var3306)) ; Statement: $r26 = interfaceinvoke r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var3317 String (var3598_infoString/-1303038331 (cast-from-var2311-to-var1063 var3678) (cast-from-var2568-to-var441 var109) var923)) ; Statement: $r27 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String infoString(org.hibernate.persister.entity.EntityPersister,java.lang.Object,org.hibernate.engine.spi.SessionFactoryImplementor)>(r4, r7, $r26) 
(assert true)
(define-const var3384 String (append/672562846 var3269 var3317)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27) 
(declare-const var3269!1 String)
(assert (= var3269!1 (str.++ var3269 var3317)))
(assert true)
(define-const var2981 String (toString/-2075883882 var3384)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1927 var3233 (convert/1666256987 var3996 var1541 var2981 var2328)) ; Statement: $r32 = virtualinvoke $r31.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String,java.lang.String)>($r23, $r30, r1) 
(define-const var3936 var2436 (cast-from-var3233-to-var2436 var1927)) ; Statement: $r43 = (java.lang.Throwable) $r32 
 ; Statement: throw $r43 
(check-sat)
(get-model)
(get-unsat-core)
; {determineSql/-1796700167=([org.hibernate.dialect.lock.AbstractSelectLockingStrategy, int], java.lang.String), cast-from-var1075-to-var1957=([org.hibernate.dialect.lock.PessimisticWriteSelectLockingStrategy], org.hibernate.dialect.lock.AbstractSelectLockingStrategy), var2277_getFactory/1122061256=([org.hibernate.engine.spi.SharedSessionContractImplementor], org.hibernate.engine.spi.SessionFactoryImplementor), getLockable/-467819906=([org.hibernate.dialect.lock.AbstractSelectLockingStrategy], org.hibernate.persister.entity.Lockable), var2277_getJdbcServices/-1615476239=([org.hibernate.engine.spi.SharedSessionContractImplementor], org.hibernate.engine.jdbc.spi.JdbcServices), var3847_getSqlExceptionHelper/1800321680=([org.hibernate.engine.jdbc.spi.JdbcServices], org.hibernate.engine.jdbc.spi.SqlExceptionHelper), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3598_infoString/-1303038331=([org.hibernate.persister.entity.EntityPersister, java.lang.Object, org.hibernate.engine.spi.SessionFactoryImplementor], java.lang.String), cast-from-var2311-to-var1063=([org.hibernate.persister.entity.Lockable], org.hibernate.persister.entity.EntityPersister), cast-from-var2568-to-var441=([java.io.Serializable], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), convert/1666256987=([org.hibernate.engine.jdbc.spi.SqlExceptionHelper, java.sql.SQLException, java.lang.String, java.lang.String], org.hibernate.JDBCException), cast-from-var3233-to-var2436=([org.hibernate.JDBCException], java.lang.Throwable)}
; {var1075=org.hibernate.dialect.lock.PessimisticWriteSelectLockingStrategy, var1229=r0, var2568=java.io.Serializable, var109=r7, var441=java.lang.Object, var2099=r18, var425=r22, var3801=i0, var2277=org.hibernate.engine.spi.SharedSessionContractImplementor, var3306=r2, var1957=org.hibernate.dialect.lock.AbstractSelectLockingStrategy, var2328=r1, var1143=org.hibernate.engine.spi.SessionFactoryImplementor, var2166=r3, var2311=org.hibernate.persister.entity.Lockable, var3678=r4, var691=java.sql.SQLException, var1541=$r23, var3847=org.hibernate.engine.jdbc.spi.JdbcServices, var1124=$r24, var1851=org.hibernate.engine.jdbc.spi.SqlExceptionHelper, var3996=$r31, var1460=$r41, var3269=$r28, var923=$r26, var3598=org.hibernate.pretty.MessageHelper, var1063=org.hibernate.persister.entity.EntityPersister, var3317=$r27, var3384=$r29, var2981=$r30, var3233=org.hibernate.JDBCException, var1927=$r32, var2436=java.lang.Throwable, var3936=$r43}
; {org.hibernate.dialect.lock.PessimisticWriteSelectLockingStrategy=var1075, r0=var1229, java.io.Serializable=var2568, r7=var109, java.lang.Object=var441, r18=var2099, r22=var425, i0=var3801, org.hibernate.engine.spi.SharedSessionContractImplementor=var2277, r2=var3306, org.hibernate.dialect.lock.AbstractSelectLockingStrategy=var1957, r1=var2328, org.hibernate.engine.spi.SessionFactoryImplementor=var1143, r3=var2166, org.hibernate.persister.entity.Lockable=var2311, r4=var3678, java.sql.SQLException=var691, $r23=var1541, org.hibernate.engine.jdbc.spi.JdbcServices=var3847, $r24=var1124, org.hibernate.engine.jdbc.spi.SqlExceptionHelper=var1851, $r31=var3996, $r41=var1460, $r28=var3269, $r26=var923, org.hibernate.pretty.MessageHelper=var3598, org.hibernate.persister.entity.EntityPersister=var1063, $r27=var3317, $r29=var3384, $r30=var2981, org.hibernate.JDBCException=var3233, $r32=var1927, java.lang.Throwable=var2436, $r43=var3936}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.dialect.lock.PessimisticWriteSelectLockingStrategy;	r7 := @parameter0: java.io.Serializable;	r18 := @parameter1: java.lang.Object;	r22 := @parameter2: java.lang.Object;	i0 := @parameter3: int;	r2 := @parameter4: org.hibernate.engine.spi.SharedSessionContractImplementor;	r1 = virtualinvoke r0.<org.hibernate.dialect.lock.PessimisticWriteSelectLockingStrategy: java.lang.String determineSql(int)>(i0);	r3 = interfaceinvoke r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	r4 = virtualinvoke r0.<org.hibernate.dialect.lock.PessimisticWriteSelectLockingStrategy: org.hibernate.persister.entity.Lockable getLockable()>();	$r23 := @caughtexception;	$r24 = interfaceinvoke r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.jdbc.spi.JdbcServices getJdbcServices()>();	$r31 = interfaceinvoke $r24.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.engine.jdbc.spi.SqlExceptionHelper getSqlExceptionHelper()>();	$r41 = new java.lang.StringBuilder;	specialinvoke $r41.<java.lang.StringBuilder: void <init>()>();	$r28 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("could not lock: ");	$r26 = interfaceinvoke r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r27 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String infoString(org.hibernate.persister.entity.EntityPersister,java.lang.Object,org.hibernate.engine.spi.SessionFactoryImplementor)>(r4, r7, $r26);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27);	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	$r32 = virtualinvoke $r31.<org.hibernate.engine.jdbc.spi.SqlExceptionHelper: org.hibernate.JDBCException convert(java.sql.SQLException,java.lang.String,java.lang.String)>($r23, $r30, r1);	$r43 = (java.lang.Throwable) $r32;	throw $r43
;block_num 2