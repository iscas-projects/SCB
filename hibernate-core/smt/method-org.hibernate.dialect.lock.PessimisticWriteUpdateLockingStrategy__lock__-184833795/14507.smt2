(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2245 0)
(declare-sort var3785 0)
(declare-sort var1512 0)
(declare-sort var2903 0)
(declare-sort var3950 0)
(declare-sort var606 0)
(declare-sort var1065 0)
(declare-sort var3603 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lockable/-1061921544 (var2245) var3950)
(declare-fun var606_isVersioned/1384082640 (var606) Bool)
(declare-fun cast-from-var3950-to-var606 (var3950) var606)
(declare-fun var1065-init () var1065)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var606_getEntityName/-1914780628 (var606) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var1065 String) void)
(declare-fun cast-from-var1065-to-var3603 (var1065) var3603)
(declare-const null-var2245 var2245)
(declare-const null-var3785 var3785)
(declare-const null-var1512 var1512)
(declare-const null-Int Int)
(declare-const null-var2903 var2903)
(declare-const var3542 var2245) ; Statement: r0 := @this: org.hibernate.dialect.lock.PessimisticWriteUpdateLockingStrategy 
(assert (not (= var3542 null-var2245)))
(declare-const var451 var3785) ; Statement: r11 := @parameter0: java.io.Serializable 
(assert (not (= var451 null-var3785)))
(declare-const var2266 var1512) ; Statement: r8 := @parameter1: java.lang.Object 
(assert (not (= var2266 null-var1512)))
(declare-const var2233 var1512) ; Statement: r35 := @parameter2: java.lang.Object 
(assert (not (= var2233 null-var1512)))
(declare-const var2614 Int) ; Statement: i2 := @parameter3: int 
(assert (not (= var2614 null-Int)))
(declare-const var851 var2903) ; Statement: r2 := @parameter4: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var851 null-var2903)))
(define-const var856 var3950 (lockable/-1061921544 var3542)) ; Statement: $r1 = r0.<org.hibernate.dialect.lock.PessimisticWriteUpdateLockingStrategy: org.hibernate.persister.entity.Lockable lockable> 
(define-const var1335 Bool (var606_isVersioned/1384082640 (cast-from-var3950-to-var606 var856))) ; Statement: $z0 = interfaceinvoke $r1.<org.hibernate.persister.entity.Lockable: boolean isVersioned()>() 
 ; Statement: if $z0 != 0 goto r3 = interfaceinvoke r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(assert (not (not (= (ite var1335 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1695 var1065 var1065-init) ; Statement: $r53 = new org.hibernate.HibernateException 
(define-const var2667 String String-init) ; Statement: $r52 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2667)) ; Statement: specialinvoke $r52.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2667!1 String)
(assert (= var2667!1 ""))
(assert true)
(define-const var1034 String (append/672562846 var2667!1 "write locks via update not supported for non-versioned entities [")) ; Statement: $r31 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("write locks via update not supported for non-versioned entities [") 
(declare-const var2667!2 String)
(assert (= var2667!2 (str.++ var2667!1 "write locks via update not supported for non-versioned entities [")))
(define-const var3579 var3950 (lockable/-1061921544 var3542)) ; Statement: $r29 = r0.<org.hibernate.dialect.lock.PessimisticWriteUpdateLockingStrategy: org.hibernate.persister.entity.Lockable lockable> 
(define-const var2282 String (var606_getEntityName/-1914780628 (cast-from-var3950-to-var606 var3579))) ; Statement: $r30 = interfaceinvoke $r29.<org.hibernate.persister.entity.Lockable: java.lang.String getEntityName()>() 
(assert true)
(define-const var41 String (append/672562846 var1034 var2282)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30) 
(declare-const var1034!1 String)
(assert (= var1034!1 (str.++ var1034 var2282)))
(assert true)
(define-const var1410 String (append/672562846 var41 "]")) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var41!1 String)
(assert (= var41!1 (str.++ var41 "]")))
(assert true)
(define-const var3641 String (toString/-2075883882 var1410)) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var1695 var3641)) ; Statement: specialinvoke $r53.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r34) 

(declare-const var1695!1 var1065)
(declare-const var3641!1 String)
(define-const var3898 var3603 (cast-from-var1065-to-var3603 var1695!1)) ; Statement: $r56 = (java.lang.Throwable) $r53 
 ; Statement: throw $r56 
(check-sat)
(get-model)
(get-unsat-core)
; {lockable/-1061921544=([org.hibernate.dialect.lock.PessimisticWriteUpdateLockingStrategy], org.hibernate.persister.entity.Lockable), var606_isVersioned/1384082640=([org.hibernate.persister.entity.EntityPersister], boolean), cast-from-var3950-to-var606=([org.hibernate.persister.entity.Lockable], org.hibernate.persister.entity.EntityPersister), var1065-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var606_getEntityName/-1914780628=([org.hibernate.persister.entity.EntityPersister], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var1065-to-var3603=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var2245=org.hibernate.dialect.lock.PessimisticWriteUpdateLockingStrategy, var3542=r0, var3785=java.io.Serializable, var451=r11, var1512=java.lang.Object, var2266=r8, var2233=r35, var2614=i2, var2903=org.hibernate.engine.spi.SharedSessionContractImplementor, var851=r2, var3950=org.hibernate.persister.entity.Lockable, var856=$r1, var606=org.hibernate.persister.entity.EntityPersister, var1335=$z0, var1065=org.hibernate.HibernateException, var1695=$r53, var2667=$r52, var1034=$r31, var3579=$r29, var2282=$r30, var41=$r32, var1410=$r33, var3641=$r34, var3603=java.lang.Throwable, var3898=$r56}
; {org.hibernate.dialect.lock.PessimisticWriteUpdateLockingStrategy=var2245, r0=var3542, java.io.Serializable=var3785, r11=var451, java.lang.Object=var1512, r8=var2266, r35=var2233, i2=var2614, org.hibernate.engine.spi.SharedSessionContractImplementor=var2903, r2=var851, org.hibernate.persister.entity.Lockable=var3950, $r1=var856, org.hibernate.persister.entity.EntityPersister=var606, $z0=var1335, org.hibernate.HibernateException=var1065, $r53=var1695, $r52=var2667, $r31=var1034, $r29=var3579, $r30=var2282, $r32=var41, $r33=var1410, $r34=var3641, java.lang.Throwable=var3603, $r56=var3898}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.dialect.lock.PessimisticWriteUpdateLockingStrategy;	r11 := @parameter0: java.io.Serializable;	r8 := @parameter1: java.lang.Object;	r35 := @parameter2: java.lang.Object;	i2 := @parameter3: int;	r2 := @parameter4: org.hibernate.engine.spi.SharedSessionContractImplementor;	$r1 = r0.<org.hibernate.dialect.lock.PessimisticWriteUpdateLockingStrategy: org.hibernate.persister.entity.Lockable lockable>;	$z0 = interfaceinvoke $r1.<org.hibernate.persister.entity.Lockable: boolean isVersioned()>();	if $z0 != 0 goto r3 = interfaceinvoke r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r53 = new org.hibernate.HibernateException;	$r52 = new java.lang.StringBuilder;	specialinvoke $r52.<java.lang.StringBuilder: void <init>()>();	$r31 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("write locks via update not supported for non-versioned entities [");	$r29 = r0.<org.hibernate.dialect.lock.PessimisticWriteUpdateLockingStrategy: org.hibernate.persister.entity.Lockable lockable>;	$r30 = interfaceinvoke $r29.<org.hibernate.persister.entity.Lockable: java.lang.String getEntityName()>();	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30);	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r53.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r34);	$r56 = (java.lang.Throwable) $r53;	throw $r56
;block_num 2