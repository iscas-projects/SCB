(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var573 0)
(declare-sort var1487 0)
(declare-sort var1032 0)
(declare-sort var224 0)
(declare-sort var587 0)
(declare-sort var2786 0)
(declare-sort var3905 0)
(declare-sort var1425 0)
(declare-sort var1912 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lockable/-934989852 (var573) var587)
(declare-fun var2786_isVersioned/1384082640 (var2786) Bool)
(declare-fun cast-from-var587-to-var2786 (var587) var2786)
(declare-fun var3905-init () var3905)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun lockMode/-934989852 (var573) var1425)
(declare-fun append/-1031950772 (String var1032) String)
(declare-fun cast-from-var1425-to-var1032 (var1425) var1032)
(declare-fun var2786_getEntityName/-1914780628 (var2786) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var3905 String) void)
(declare-fun cast-from-var3905-to-var1912 (var3905) var1912)
(declare-const null-var573 var573)
(declare-const null-var1487 var1487)
(declare-const null-var1032 var1032)
(declare-const null-Int Int)
(declare-const null-var224 var224)
(declare-const var1724 var573) ; Statement: r0 := @this: org.hibernate.dialect.lock.OptimisticForceIncrementLockingStrategy 
(assert (not (= var1724 null-var573)))
(declare-const var2792 var1487) ; Statement: r19 := @parameter0: java.io.Serializable 
(assert (not (= var2792 null-var1487)))
(declare-const var3665 var1032) ; Statement: r20 := @parameter1: java.lang.Object 
(assert (not (= var3665 null-var1032)))
(declare-const var3965 var1032) ; Statement: r3 := @parameter2: java.lang.Object 
(assert (not (= var3965 null-var1032)))
(declare-const var2200 Int) ; Statement: i0 := @parameter3: int 
(assert (not (= var2200 null-Int)))
(declare-const var3178 var224) ; Statement: r2 := @parameter4: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var3178 null-var224)))
(define-const var133 var587 (lockable/-934989852 var1724)) ; Statement: $r1 = r0.<org.hibernate.dialect.lock.OptimisticForceIncrementLockingStrategy: org.hibernate.persister.entity.Lockable lockable> 
(define-const var3347 Bool (var2786_isVersioned/1384082640 (cast-from-var587-to-var2786 var133))) ; Statement: $z0 = interfaceinvoke $r1.<org.hibernate.persister.entity.Lockable: boolean isVersioned()>() 
 ; Statement: if $z0 != 0 goto $r4 = interfaceinvoke r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.PersistenceContext getPersistenceContextInternal()>() 
(assert (not (not (= (ite var3347 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3912 var3905 var3905-init) ; Statement: $r22 = new org.hibernate.HibernateException 
(define-const var1894 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1894)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1894!1 String)
(assert (= var1894!1 ""))
(assert true)
(define-const var3853 String (append/672562846 var1894!1 "[")) ; Statement: $r11 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var1894!2 String)
(assert (= var1894!2 (str.++ var1894!1 "[")))
(define-const var108 var1425 (lockMode/-934989852 var1724)) ; Statement: $r10 = r0.<org.hibernate.dialect.lock.OptimisticForceIncrementLockingStrategy: org.hibernate.LockMode lockMode> 
(assert true)
(define-const var1290 String (append/-1031950772 var3853 (cast-from-var1425-to-var1032 var108))) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10) 
(declare-const var3853!1 String)
(assert (str.prefixof var3853 var3853!1))
(assert true)
(define-const var2947 String (append/672562846 var1290 "] not supported for non-versioned entities [")) ; Statement: $r15 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] not supported for non-versioned entities [") 
(declare-const var1290!1 String)
(assert (= var1290!1 (str.++ var1290 "] not supported for non-versioned entities [")))
(define-const var3028 var587 (lockable/-934989852 var1724)) ; Statement: $r13 = r0.<org.hibernate.dialect.lock.OptimisticForceIncrementLockingStrategy: org.hibernate.persister.entity.Lockable lockable> 
(define-const var1679 String (var2786_getEntityName/-1914780628 (cast-from-var587-to-var2786 var3028))) ; Statement: $r14 = interfaceinvoke $r13.<org.hibernate.persister.entity.Lockable: java.lang.String getEntityName()>() 
(assert true)
(define-const var3920 String (append/672562846 var2947 var1679)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var2947!1 String)
(assert (= var2947!1 (str.++ var2947 var1679)))
(assert true)
(define-const var1366 String (append/672562846 var3920 "]")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3920!1 String)
(assert (= var3920!1 (str.++ var3920 "]")))
(assert true)
(define-const var2812 String (toString/-2075883882 var1366)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var3912 var2812)) ; Statement: specialinvoke $r22.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r18) 

(declare-const var3912!1 var3905)
(declare-const var2812!1 String)
(define-const var2007 var1912 (cast-from-var3905-to-var1912 var3912!1)) ; Statement: $r24 = (java.lang.Throwable) $r22 
 ; Statement: throw $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {lockable/-934989852=([org.hibernate.dialect.lock.OptimisticForceIncrementLockingStrategy], org.hibernate.persister.entity.Lockable), var2786_isVersioned/1384082640=([org.hibernate.persister.entity.EntityPersister], boolean), cast-from-var587-to-var2786=([org.hibernate.persister.entity.Lockable], org.hibernate.persister.entity.EntityPersister), var3905-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), lockMode/-934989852=([org.hibernate.dialect.lock.OptimisticForceIncrementLockingStrategy], org.hibernate.LockMode), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1425-to-var1032=([org.hibernate.LockMode], java.lang.Object), var2786_getEntityName/-1914780628=([org.hibernate.persister.entity.EntityPersister], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var3905-to-var1912=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var573=org.hibernate.dialect.lock.OptimisticForceIncrementLockingStrategy, var1724=r0, var1487=java.io.Serializable, var2792=r19, var1032=java.lang.Object, var3665=r20, var3965=r3, var2200=i0, var224=org.hibernate.engine.spi.SharedSessionContractImplementor, var3178=r2, var587=org.hibernate.persister.entity.Lockable, var133=$r1, var2786=org.hibernate.persister.entity.EntityPersister, var3347=$z0, var3905=org.hibernate.HibernateException, var3912=$r22, var1894=$r21, var3853=$r11, var1425=org.hibernate.LockMode, var108=$r10, var1290=$r12, var2947=$r15, var3028=$r13, var1679=$r14, var3920=$r16, var1366=$r17, var2812=$r18, var1912=java.lang.Throwable, var2007=$r24}
; {org.hibernate.dialect.lock.OptimisticForceIncrementLockingStrategy=var573, r0=var1724, java.io.Serializable=var1487, r19=var2792, java.lang.Object=var1032, r20=var3665, r3=var3965, i0=var2200, org.hibernate.engine.spi.SharedSessionContractImplementor=var224, r2=var3178, org.hibernate.persister.entity.Lockable=var587, $r1=var133, org.hibernate.persister.entity.EntityPersister=var2786, $z0=var3347, org.hibernate.HibernateException=var3905, $r22=var3912, $r21=var1894, $r11=var3853, org.hibernate.LockMode=var1425, $r10=var108, $r12=var1290, $r15=var2947, $r13=var3028, $r14=var1679, $r16=var3920, $r17=var1366, $r18=var2812, java.lang.Throwable=var1912, $r24=var2007}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.dialect.lock.OptimisticForceIncrementLockingStrategy;	r19 := @parameter0: java.io.Serializable;	r20 := @parameter1: java.lang.Object;	r3 := @parameter2: java.lang.Object;	i0 := @parameter3: int;	r2 := @parameter4: org.hibernate.engine.spi.SharedSessionContractImplementor;	$r1 = r0.<org.hibernate.dialect.lock.OptimisticForceIncrementLockingStrategy: org.hibernate.persister.entity.Lockable lockable>;	$z0 = interfaceinvoke $r1.<org.hibernate.persister.entity.Lockable: boolean isVersioned()>();	if $z0 != 0 goto $r4 = interfaceinvoke r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.PersistenceContext getPersistenceContextInternal()>();	$r22 = new org.hibernate.HibernateException;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r10 = r0.<org.hibernate.dialect.lock.OptimisticForceIncrementLockingStrategy: org.hibernate.LockMode lockMode>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10);	$r15 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] not supported for non-versioned entities [");	$r13 = r0.<org.hibernate.dialect.lock.OptimisticForceIncrementLockingStrategy: org.hibernate.persister.entity.Lockable lockable>;	$r14 = interfaceinvoke $r13.<org.hibernate.persister.entity.Lockable: java.lang.String getEntityName()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r22.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r18);	$r24 = (java.lang.Throwable) $r22;	throw $r24
;block_num 2