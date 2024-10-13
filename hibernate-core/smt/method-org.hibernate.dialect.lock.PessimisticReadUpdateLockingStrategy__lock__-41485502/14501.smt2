(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2469 0)
(declare-sort var2562 0)
(declare-sort var1922 0)
(declare-sort var1627 0)
(declare-sort var248 0)
(declare-sort var515 0)
(declare-sort var2271 0)
(declare-sort var2967 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lockable/1743389813 (var2469) var248)
(declare-fun var515_isVersioned/1384082640 (var515) Bool)
(declare-fun cast-from-var248-to-var515 (var248) var515)
(declare-fun var2271-init () var2271)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var515_getEntityName/-1914780628 (var515) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var2271 String) void)
(declare-fun cast-from-var2271-to-var2967 (var2271) var2967)
(declare-const null-var2469 var2469)
(declare-const null-var2562 var2562)
(declare-const null-var1922 var1922)
(declare-const null-Int Int)
(declare-const null-var1627 var1627)
(declare-const var673 var2469) ; Statement: r0 := @this: org.hibernate.dialect.lock.PessimisticReadUpdateLockingStrategy 
(assert (not (= var673 null-var2469)))
(declare-const var2936 var2562) ; Statement: r11 := @parameter0: java.io.Serializable 
(assert (not (= var2936 null-var2562)))
(declare-const var22 var1922) ; Statement: r8 := @parameter1: java.lang.Object 
(assert (not (= var22 null-var1922)))
(declare-const var2488 var1922) ; Statement: r35 := @parameter2: java.lang.Object 
(assert (not (= var2488 null-var1922)))
(declare-const var2293 Int) ; Statement: i2 := @parameter3: int 
(assert (not (= var2293 null-Int)))
(declare-const var351 var1627) ; Statement: r2 := @parameter4: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var351 null-var1627)))
(define-const var2922 var248 (lockable/1743389813 var673)) ; Statement: $r1 = r0.<org.hibernate.dialect.lock.PessimisticReadUpdateLockingStrategy: org.hibernate.persister.entity.Lockable lockable> 
(define-const var2690 Bool (var515_isVersioned/1384082640 (cast-from-var248-to-var515 var2922))) ; Statement: $z0 = interfaceinvoke $r1.<org.hibernate.persister.entity.Lockable: boolean isVersioned()>() 
 ; Statement: if $z0 != 0 goto r3 = interfaceinvoke r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(assert (not (not (= (ite var2690 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1574 var2271 var2271-init) ; Statement: $r53 = new org.hibernate.HibernateException 
(define-const var1235 String String-init) ; Statement: $r52 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1235)) ; Statement: specialinvoke $r52.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1235!1 String)
(assert (= var1235!1 ""))
(assert true)
(define-const var724 String (append/672562846 var1235!1 "write locks via update not supported for non-versioned entities [")) ; Statement: $r31 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("write locks via update not supported for non-versioned entities [") 
(declare-const var1235!2 String)
(assert (= var1235!2 (str.++ var1235!1 "write locks via update not supported for non-versioned entities [")))
(define-const var3243 var248 (lockable/1743389813 var673)) ; Statement: $r29 = r0.<org.hibernate.dialect.lock.PessimisticReadUpdateLockingStrategy: org.hibernate.persister.entity.Lockable lockable> 
(define-const var1946 String (var515_getEntityName/-1914780628 (cast-from-var248-to-var515 var3243))) ; Statement: $r30 = interfaceinvoke $r29.<org.hibernate.persister.entity.Lockable: java.lang.String getEntityName()>() 
(assert true)
(define-const var1132 String (append/672562846 var724 var1946)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30) 
(declare-const var724!1 String)
(assert (= var724!1 (str.++ var724 var1946)))
(assert true)
(define-const var5 String (append/672562846 var1132 "]")) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1132!1 String)
(assert (= var1132!1 (str.++ var1132 "]")))
(assert true)
(define-const var2691 String (toString/-2075883882 var5)) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var1574 var2691)) ; Statement: specialinvoke $r53.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r34) 

(declare-const var1574!1 var2271)
(declare-const var2691!1 String)
(define-const var1270 var2967 (cast-from-var2271-to-var2967 var1574!1)) ; Statement: $r56 = (java.lang.Throwable) $r53 
 ; Statement: throw $r56 
(check-sat)
(get-model)
(get-unsat-core)
; {lockable/1743389813=([org.hibernate.dialect.lock.PessimisticReadUpdateLockingStrategy], org.hibernate.persister.entity.Lockable), var515_isVersioned/1384082640=([org.hibernate.persister.entity.EntityPersister], boolean), cast-from-var248-to-var515=([org.hibernate.persister.entity.Lockable], org.hibernate.persister.entity.EntityPersister), var2271-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var515_getEntityName/-1914780628=([org.hibernate.persister.entity.EntityPersister], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var2271-to-var2967=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var2469=org.hibernate.dialect.lock.PessimisticReadUpdateLockingStrategy, var673=r0, var2562=java.io.Serializable, var2936=r11, var1922=java.lang.Object, var22=r8, var2488=r35, var2293=i2, var1627=org.hibernate.engine.spi.SharedSessionContractImplementor, var351=r2, var248=org.hibernate.persister.entity.Lockable, var2922=$r1, var515=org.hibernate.persister.entity.EntityPersister, var2690=$z0, var2271=org.hibernate.HibernateException, var1574=$r53, var1235=$r52, var724=$r31, var3243=$r29, var1946=$r30, var1132=$r32, var5=$r33, var2691=$r34, var2967=java.lang.Throwable, var1270=$r56}
; {org.hibernate.dialect.lock.PessimisticReadUpdateLockingStrategy=var2469, r0=var673, java.io.Serializable=var2562, r11=var2936, java.lang.Object=var1922, r8=var22, r35=var2488, i2=var2293, org.hibernate.engine.spi.SharedSessionContractImplementor=var1627, r2=var351, org.hibernate.persister.entity.Lockable=var248, $r1=var2922, org.hibernate.persister.entity.EntityPersister=var515, $z0=var2690, org.hibernate.HibernateException=var2271, $r53=var1574, $r52=var1235, $r31=var724, $r29=var3243, $r30=var1946, $r32=var1132, $r33=var5, $r34=var2691, java.lang.Throwable=var2967, $r56=var1270}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.dialect.lock.PessimisticReadUpdateLockingStrategy;	r11 := @parameter0: java.io.Serializable;	r8 := @parameter1: java.lang.Object;	r35 := @parameter2: java.lang.Object;	i2 := @parameter3: int;	r2 := @parameter4: org.hibernate.engine.spi.SharedSessionContractImplementor;	$r1 = r0.<org.hibernate.dialect.lock.PessimisticReadUpdateLockingStrategy: org.hibernate.persister.entity.Lockable lockable>;	$z0 = interfaceinvoke $r1.<org.hibernate.persister.entity.Lockable: boolean isVersioned()>();	if $z0 != 0 goto r3 = interfaceinvoke r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r53 = new org.hibernate.HibernateException;	$r52 = new java.lang.StringBuilder;	specialinvoke $r52.<java.lang.StringBuilder: void <init>()>();	$r31 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("write locks via update not supported for non-versioned entities [");	$r29 = r0.<org.hibernate.dialect.lock.PessimisticReadUpdateLockingStrategy: org.hibernate.persister.entity.Lockable lockable>;	$r30 = interfaceinvoke $r29.<org.hibernate.persister.entity.Lockable: java.lang.String getEntityName()>();	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30);	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r53.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r34);	$r56 = (java.lang.Throwable) $r53;	throw $r56
;block_num 2