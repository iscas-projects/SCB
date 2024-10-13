(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1281 0)
(declare-sort var1974 0)
(declare-sort var3121 0)
(declare-sort var2926 0)
(declare-sort var3290 0)
(declare-sort var805 0)
(declare-sort var1375 0)
(declare-sort var1978 0)
(declare-sort var1257 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lockable/-1773196784 (var1281) var3290)
(declare-fun var805_isVersioned/1384082640 (var805) Bool)
(declare-fun cast-from-var3290-to-var805 (var3290) var805)
(declare-fun var1375-init () var1375)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun lockMode/-1773196784 (var1281) var1978)
(declare-fun append/-1031950772 (String var3121) String)
(declare-fun cast-from-var1978-to-var3121 (var1978) var3121)
(declare-fun var805_getEntityName/-1914780628 (var805) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var1375 String) void)
(declare-fun cast-from-var1375-to-var1257 (var1375) var1257)
(declare-const null-var1281 var1281)
(declare-const null-var1974 var1974)
(declare-const null-var3121 var3121)
(declare-const null-Int Int)
(declare-const null-var2926 var2926)
(declare-const var2613 var1281) ; Statement: r0 := @this: org.hibernate.dialect.lock.PessimisticForceIncrementLockingStrategy 
(assert (not (= var2613 null-var1281)))
(declare-const var3226 var1974) ; Statement: r21 := @parameter0: java.io.Serializable 
(assert (not (= var3226 null-var1974)))
(declare-const var1090 var3121) ; Statement: r22 := @parameter1: java.lang.Object 
(assert (not (= var1090 null-var3121)))
(declare-const var3775 var3121) ; Statement: r3 := @parameter2: java.lang.Object 
(assert (not (= var3775 null-var3121)))
(declare-const var2030 Int) ; Statement: i0 := @parameter3: int 
(assert (not (= var2030 null-Int)))
(declare-const var3061 var2926) ; Statement: r2 := @parameter4: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var3061 null-var2926)))
(define-const var3983 var3290 (lockable/-1773196784 var2613)) ; Statement: $r1 = r0.<org.hibernate.dialect.lock.PessimisticForceIncrementLockingStrategy: org.hibernate.persister.entity.Lockable lockable> 
(define-const var924 Bool (var805_isVersioned/1384082640 (cast-from-var3290-to-var805 var3983))) ; Statement: $z0 = interfaceinvoke $r1.<org.hibernate.persister.entity.Lockable: boolean isVersioned()>() 
 ; Statement: if $z0 != 0 goto $r4 = interfaceinvoke r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.PersistenceContext getPersistenceContextInternal()>() 
(assert (not (not (= (ite var924 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2077 var1375 var1375-init) ; Statement: $r24 = new org.hibernate.HibernateException 
(define-const var327 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var327)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var327!1 String)
(assert (= var327!1 ""))
(assert true)
(define-const var1370 String (append/672562846 var327!1 "[")) ; Statement: $r13 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var327!2 String)
(assert (= var327!2 (str.++ var327!1 "[")))
(define-const var2280 var1978 (lockMode/-1773196784 var2613)) ; Statement: $r12 = r0.<org.hibernate.dialect.lock.PessimisticForceIncrementLockingStrategy: org.hibernate.LockMode lockMode> 
(assert true)
(define-const var1152 String (append/-1031950772 var1370 (cast-from-var1978-to-var3121 var2280))) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r12) 
(declare-const var1370!1 String)
(assert (str.prefixof var1370 var1370!1))
(assert true)
(define-const var224 String (append/672562846 var1152 "] not supported for non-versioned entities [")) ; Statement: $r17 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] not supported for non-versioned entities [") 
(declare-const var1152!1 String)
(assert (= var1152!1 (str.++ var1152 "] not supported for non-versioned entities [")))
(define-const var1436 var3290 (lockable/-1773196784 var2613)) ; Statement: $r15 = r0.<org.hibernate.dialect.lock.PessimisticForceIncrementLockingStrategy: org.hibernate.persister.entity.Lockable lockable> 
(define-const var481 String (var805_getEntityName/-1914780628 (cast-from-var3290-to-var805 var1436))) ; Statement: $r16 = interfaceinvoke $r15.<org.hibernate.persister.entity.Lockable: java.lang.String getEntityName()>() 
(assert true)
(define-const var1059 String (append/672562846 var224 var481)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var224!1 String)
(assert (= var224!1 (str.++ var224 var481)))
(assert true)
(define-const var1748 String (append/672562846 var1059 "]")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1059!1 String)
(assert (= var1059!1 (str.++ var1059 "]")))
(assert true)
(define-const var2650 String (toString/-2075883882 var1748)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var2077 var2650)) ; Statement: specialinvoke $r24.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r20) 

(declare-const var2077!1 var1375)
(declare-const var2650!1 String)
(define-const var1791 var1257 (cast-from-var1375-to-var1257 var2077!1)) ; Statement: $r25 = (java.lang.Throwable) $r24 
 ; Statement: throw $r25 
(check-sat)
(get-model)
(get-unsat-core)
; {lockable/-1773196784=([org.hibernate.dialect.lock.PessimisticForceIncrementLockingStrategy], org.hibernate.persister.entity.Lockable), var805_isVersioned/1384082640=([org.hibernate.persister.entity.EntityPersister], boolean), cast-from-var3290-to-var805=([org.hibernate.persister.entity.Lockable], org.hibernate.persister.entity.EntityPersister), var1375-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), lockMode/-1773196784=([org.hibernate.dialect.lock.PessimisticForceIncrementLockingStrategy], org.hibernate.LockMode), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1978-to-var3121=([org.hibernate.LockMode], java.lang.Object), var805_getEntityName/-1914780628=([org.hibernate.persister.entity.EntityPersister], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var1375-to-var1257=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var1281=org.hibernate.dialect.lock.PessimisticForceIncrementLockingStrategy, var2613=r0, var1974=java.io.Serializable, var3226=r21, var3121=java.lang.Object, var1090=r22, var3775=r3, var2030=i0, var2926=org.hibernate.engine.spi.SharedSessionContractImplementor, var3061=r2, var3290=org.hibernate.persister.entity.Lockable, var3983=$r1, var805=org.hibernate.persister.entity.EntityPersister, var924=$z0, var1375=org.hibernate.HibernateException, var2077=$r24, var327=$r23, var1370=$r13, var1978=org.hibernate.LockMode, var2280=$r12, var1152=$r14, var224=$r17, var1436=$r15, var481=$r16, var1059=$r18, var1748=$r19, var2650=$r20, var1257=java.lang.Throwable, var1791=$r25}
; {org.hibernate.dialect.lock.PessimisticForceIncrementLockingStrategy=var1281, r0=var2613, java.io.Serializable=var1974, r21=var3226, java.lang.Object=var3121, r22=var1090, r3=var3775, i0=var2030, org.hibernate.engine.spi.SharedSessionContractImplementor=var2926, r2=var3061, org.hibernate.persister.entity.Lockable=var3290, $r1=var3983, org.hibernate.persister.entity.EntityPersister=var805, $z0=var924, org.hibernate.HibernateException=var1375, $r24=var2077, $r23=var327, $r13=var1370, org.hibernate.LockMode=var1978, $r12=var2280, $r14=var1152, $r17=var224, $r15=var1436, $r16=var481, $r18=var1059, $r19=var1748, $r20=var2650, java.lang.Throwable=var1257, $r25=var1791}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.dialect.lock.PessimisticForceIncrementLockingStrategy;	r21 := @parameter0: java.io.Serializable;	r22 := @parameter1: java.lang.Object;	r3 := @parameter2: java.lang.Object;	i0 := @parameter3: int;	r2 := @parameter4: org.hibernate.engine.spi.SharedSessionContractImplementor;	$r1 = r0.<org.hibernate.dialect.lock.PessimisticForceIncrementLockingStrategy: org.hibernate.persister.entity.Lockable lockable>;	$z0 = interfaceinvoke $r1.<org.hibernate.persister.entity.Lockable: boolean isVersioned()>();	if $z0 != 0 goto $r4 = interfaceinvoke r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.PersistenceContext getPersistenceContextInternal()>();	$r24 = new org.hibernate.HibernateException;	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r12 = r0.<org.hibernate.dialect.lock.PessimisticForceIncrementLockingStrategy: org.hibernate.LockMode lockMode>;	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r12);	$r17 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] not supported for non-versioned entities [");	$r15 = r0.<org.hibernate.dialect.lock.PessimisticForceIncrementLockingStrategy: org.hibernate.persister.entity.Lockable lockable>;	$r16 = interfaceinvoke $r15.<org.hibernate.persister.entity.Lockable: java.lang.String getEntityName()>();	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r24.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r20);	$r25 = (java.lang.Throwable) $r24;	throw $r25
;block_num 2