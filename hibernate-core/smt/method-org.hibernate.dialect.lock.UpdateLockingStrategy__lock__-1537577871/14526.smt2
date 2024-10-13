(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2133 0)
(declare-sort var928 0)
(declare-sort var2154 0)
(declare-sort var2521 0)
(declare-sort var1726 0)
(declare-sort var2713 0)
(declare-sort var1993 0)
(declare-sort var3281 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lockable/-80693908 (var2133) var1726)
(declare-fun var2713_getEntityName/-1914780628 (var2713) String)
(declare-fun cast-from-var1726-to-var2713 (var1726) var2713)
(declare-fun var2713_isVersioned/1384082640 (var2713) Bool)
(declare-fun var1993-init () var1993)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var1993 String) void)
(declare-fun cast-from-var1993-to-var3281 (var1993) var3281)
(declare-const null-var2133 var2133)
(declare-const null-var928 var928)
(declare-const null-var2154 var2154)
(declare-const null-Int Int)
(declare-const null-var2521 var2521)
(declare-const var1111 var2133) ; Statement: r0 := @this: org.hibernate.dialect.lock.UpdateLockingStrategy 
(assert (not (= var1111 null-var2133)))
(declare-const var3634 var928) ; Statement: r14 := @parameter0: java.io.Serializable 
(assert (not (= var3634 null-var928)))
(declare-const var303 var2154) ; Statement: r11 := @parameter1: java.lang.Object 
(assert (not (= var303 null-var2154)))
(declare-const var3116 var2154) ; Statement: r42 := @parameter2: java.lang.Object 
(assert (not (= var3116 null-var2154)))
(declare-const var836 Int) ; Statement: i2 := @parameter3: int 
(assert (not (= var836 null-Int)))
(declare-const var619 var2521) ; Statement: r4 := @parameter4: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var619 null-var2521)))
(define-const var2428 var1726 (lockable/-80693908 var1111)) ; Statement: $r1 = r0.<org.hibernate.dialect.lock.UpdateLockingStrategy: org.hibernate.persister.entity.Lockable lockable> 
(define-const var55 String (var2713_getEntityName/-1914780628 (cast-from-var1726-to-var2713 var2428))) ; Statement: r2 = interfaceinvoke $r1.<org.hibernate.persister.entity.Lockable: java.lang.String getEntityName()>() 
(define-const var2647 var1726 (lockable/-80693908 var1111)) ; Statement: $r3 = r0.<org.hibernate.dialect.lock.UpdateLockingStrategy: org.hibernate.persister.entity.Lockable lockable> 
(define-const var3586 Bool (var2713_isVersioned/1384082640 (cast-from-var1726-to-var2713 var2647))) ; Statement: $z0 = interfaceinvoke $r3.<org.hibernate.persister.entity.Lockable: boolean isVersioned()>() 
 ; Statement: if $z0 != 0 goto r5 = interfaceinvoke r4.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(assert (not (not (= (ite var3586 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var257 var1993 var1993-init) ; Statement: $r45 = new org.hibernate.HibernateException 
(define-const var827 String String-init) ; Statement: $r44 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var827)) ; Statement: specialinvoke $r44.<java.lang.StringBuilder: void <init>()>() 
(declare-const var827!1 String)
(assert (= var827!1 ""))
(assert true)
(define-const var464 String (append/672562846 var827!1 "write locks via update not supported for non-versioned entities [")) ; Statement: $r23 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("write locks via update not supported for non-versioned entities [") 
(declare-const var827!2 String)
(assert (= var827!2 (str.++ var827!1 "write locks via update not supported for non-versioned entities [")))
(assert true)
(define-const var2121 String (append/672562846 var464 var55)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var464!1 String)
(assert (= var464!1 (str.++ var464 var55)))
(assert true)
(define-const var298 String (append/672562846 var2121 "]")) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2121!1 String)
(assert (= var2121!1 (str.++ var2121 "]")))
(assert true)
(define-const var1205 String (toString/-2075883882 var298)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var257 var1205)) ; Statement: specialinvoke $r45.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r26) 

(declare-const var257!1 var1993)
(declare-const var1205!1 String)
(define-const var323 var3281 (cast-from-var1993-to-var3281 var257!1)) ; Statement: $r48 = (java.lang.Throwable) $r45 
 ; Statement: throw $r48 
(check-sat)
(get-model)
(get-unsat-core)
; {lockable/-80693908=([org.hibernate.dialect.lock.UpdateLockingStrategy], org.hibernate.persister.entity.Lockable), var2713_getEntityName/-1914780628=([org.hibernate.persister.entity.EntityPersister], java.lang.String), cast-from-var1726-to-var2713=([org.hibernate.persister.entity.Lockable], org.hibernate.persister.entity.EntityPersister), var2713_isVersioned/1384082640=([org.hibernate.persister.entity.EntityPersister], boolean), var1993-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var1993-to-var3281=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var2133=org.hibernate.dialect.lock.UpdateLockingStrategy, var1111=r0, var928=java.io.Serializable, var3634=r14, var2154=java.lang.Object, var303=r11, var3116=r42, var836=i2, var2521=org.hibernate.engine.spi.SharedSessionContractImplementor, var619=r4, var1726=org.hibernate.persister.entity.Lockable, var2428=$r1, var2713=org.hibernate.persister.entity.EntityPersister, var55=r2, var2647=$r3, var3586=$z0, var1993=org.hibernate.HibernateException, var257=$r45, var827=$r44, var464=$r23, var2121=$r24, var298=$r25, var1205=$r26, var3281=java.lang.Throwable, var323=$r48}
; {org.hibernate.dialect.lock.UpdateLockingStrategy=var2133, r0=var1111, java.io.Serializable=var928, r14=var3634, java.lang.Object=var2154, r11=var303, r42=var3116, i2=var836, org.hibernate.engine.spi.SharedSessionContractImplementor=var2521, r4=var619, org.hibernate.persister.entity.Lockable=var1726, $r1=var2428, org.hibernate.persister.entity.EntityPersister=var2713, r2=var55, $r3=var2647, $z0=var3586, org.hibernate.HibernateException=var1993, $r45=var257, $r44=var827, $r23=var464, $r24=var2121, $r25=var298, $r26=var1205, java.lang.Throwable=var3281, $r48=var323}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.dialect.lock.UpdateLockingStrategy;	r14 := @parameter0: java.io.Serializable;	r11 := @parameter1: java.lang.Object;	r42 := @parameter2: java.lang.Object;	i2 := @parameter3: int;	r4 := @parameter4: org.hibernate.engine.spi.SharedSessionContractImplementor;	$r1 = r0.<org.hibernate.dialect.lock.UpdateLockingStrategy: org.hibernate.persister.entity.Lockable lockable>;	r2 = interfaceinvoke $r1.<org.hibernate.persister.entity.Lockable: java.lang.String getEntityName()>();	$r3 = r0.<org.hibernate.dialect.lock.UpdateLockingStrategy: org.hibernate.persister.entity.Lockable lockable>;	$z0 = interfaceinvoke $r3.<org.hibernate.persister.entity.Lockable: boolean isVersioned()>();	if $z0 != 0 goto r5 = interfaceinvoke r4.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r45 = new org.hibernate.HibernateException;	$r44 = new java.lang.StringBuilder;	specialinvoke $r44.<java.lang.StringBuilder: void <init>()>();	$r23 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("write locks via update not supported for non-versioned entities [");	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r45.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r26);	$r48 = (java.lang.Throwable) $r45;	throw $r48
;block_num 2