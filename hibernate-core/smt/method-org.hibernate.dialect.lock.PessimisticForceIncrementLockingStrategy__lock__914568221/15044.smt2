(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var403 0)
(declare-sort var1928 0)
(declare-sort var3 0)
(declare-sort var2399 0)
(declare-sort var2787 0)
(declare-sort var2441 0)
(declare-sort var115 0)
(declare-sort var2625 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lockable/-1773196784 (var403) var2787)
(declare-fun var2441_isVersioned/1384082640 (var2441) Bool)
(declare-fun cast-from-var2787-to-var2441 (var2787) var2441)
(declare-fun var2399_getPersistenceContextInternal/1368680823 (var2399) var115)
(declare-fun var115_getEntry/-487705827 (var115 var3) var2625)
(declare-fun var2625_getPersister/512824001 (var2625) var2441)
(declare-fun var2625_getId/-1938183192 (var2625) var1928)
(declare-fun var2625_getVersion/-1594617161 (var2625) var3)
(declare-fun var2441_forceVersionIncrement/-1860840467 (var2441 var1928 var3 var2399) var3)
(declare-fun var2625_forceLocked/-1698825045 (var2625 var3 var3) void)
(declare-const null-var403 var403)
(declare-const null-var1928 var1928)
(declare-const null-var3 var3)
(declare-const null-Int Int)
(declare-const null-var2399 var2399)
(declare-const var1418 var403) ; Statement: r0 := @this: org.hibernate.dialect.lock.PessimisticForceIncrementLockingStrategy 
(assert (not (= var1418 null-var403)))
(declare-const var1885 var1928) ; Statement: r21 := @parameter0: java.io.Serializable 
(assert (not (= var1885 null-var1928)))
(declare-const var572 var3) ; Statement: r22 := @parameter1: java.lang.Object 
(assert (not (= var572 null-var3)))
(declare-const var3550 var3) ; Statement: r3 := @parameter2: java.lang.Object 
(assert (not (= var3550 null-var3)))
(declare-const var2639 Int) ; Statement: i0 := @parameter3: int 
(assert (not (= var2639 null-Int)))
(declare-const var366 var2399) ; Statement: r2 := @parameter4: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var366 null-var2399)))
(define-const var3929 var2787 (lockable/-1773196784 var1418)) ; Statement: $r1 = r0.<org.hibernate.dialect.lock.PessimisticForceIncrementLockingStrategy: org.hibernate.persister.entity.Lockable lockable> 
(define-const var46 Bool (var2441_isVersioned/1384082640 (cast-from-var2787-to-var2441 var3929))) ; Statement: $z0 = interfaceinvoke $r1.<org.hibernate.persister.entity.Lockable: boolean isVersioned()>() 
 ; Statement: if $z0 != 0 goto $r4 = interfaceinvoke r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.PersistenceContext getPersistenceContextInternal()>() 
(assert (not (= (ite var46 1 0) 0))) ; Cond: $z0 != 0 
(define-const var13 var115 (var2399_getPersistenceContextInternal/1368680823 var366)) ; Statement: $r4 = interfaceinvoke r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.PersistenceContext getPersistenceContextInternal()>() 
(define-const var2604 var2625 (var115_getEntry/-487705827 var13 var3550)) ; Statement: r5 = interfaceinvoke $r4.<org.hibernate.engine.spi.PersistenceContext: org.hibernate.engine.spi.EntityEntry getEntry(java.lang.Object)>(r3) 
(define-const var3835 var2441 (var2625_getPersister/512824001 var2604)) ; Statement: r6 = interfaceinvoke r5.<org.hibernate.engine.spi.EntityEntry: org.hibernate.persister.entity.EntityPersister getPersister()>() 
(define-const var2726 var1928 (var2625_getId/-1938183192 var2604)) ; Statement: $r8 = interfaceinvoke r5.<org.hibernate.engine.spi.EntityEntry: java.io.Serializable getId()>() 
(define-const var628 var3 (var2625_getVersion/-1594617161 var2604)) ; Statement: $r7 = interfaceinvoke r5.<org.hibernate.engine.spi.EntityEntry: java.lang.Object getVersion()>() 
(define-const var1010 var3 (var2441_forceVersionIncrement/-1860840467 var3835 var2726 var628 var366)) ; Statement: r9 = interfaceinvoke r6.<org.hibernate.persister.entity.EntityPersister: java.lang.Object forceVersionIncrement(java.io.Serializable,java.lang.Object,org.hibernate.engine.spi.SharedSessionContractImplementor)>($r8, $r7, r2) 
;(assert (var2625_forceLocked/-1698825045 var2604 var3550 var1010)) ; Statement: interfaceinvoke r5.<org.hibernate.engine.spi.EntityEntry: void forceLocked(java.lang.Object,java.lang.Object)>(r3, r9) 

(declare-const var2604!1 var2625)
(declare-const var3550!1 var3)
(declare-const var1010!1 var3)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {lockable/-1773196784=([org.hibernate.dialect.lock.PessimisticForceIncrementLockingStrategy], org.hibernate.persister.entity.Lockable), var2441_isVersioned/1384082640=([org.hibernate.persister.entity.EntityPersister], boolean), cast-from-var2787-to-var2441=([org.hibernate.persister.entity.Lockable], org.hibernate.persister.entity.EntityPersister), var2399_getPersistenceContextInternal/1368680823=([org.hibernate.engine.spi.SharedSessionContractImplementor], org.hibernate.engine.spi.PersistenceContext), var115_getEntry/-487705827=([org.hibernate.engine.spi.PersistenceContext, java.lang.Object], org.hibernate.engine.spi.EntityEntry), var2625_getPersister/512824001=([org.hibernate.engine.spi.EntityEntry], org.hibernate.persister.entity.EntityPersister), var2625_getId/-1938183192=([org.hibernate.engine.spi.EntityEntry], java.io.Serializable), var2625_getVersion/-1594617161=([org.hibernate.engine.spi.EntityEntry], java.lang.Object), var2441_forceVersionIncrement/-1860840467=([org.hibernate.persister.entity.EntityPersister, java.io.Serializable, java.lang.Object, org.hibernate.engine.spi.SharedSessionContractImplementor], java.lang.Object), var2625_forceLocked/-1698825045=([org.hibernate.engine.spi.EntityEntry, java.lang.Object, java.lang.Object], void)}
; {var403=org.hibernate.dialect.lock.PessimisticForceIncrementLockingStrategy, var1418=r0, var1928=java.io.Serializable, var1885=r21, var3=java.lang.Object, var572=r22, var3550=r3, var2639=i0, var2399=org.hibernate.engine.spi.SharedSessionContractImplementor, var366=r2, var2787=org.hibernate.persister.entity.Lockable, var3929=$r1, var2441=org.hibernate.persister.entity.EntityPersister, var46=$z0, var115=org.hibernate.engine.spi.PersistenceContext, var13=$r4, var2625=org.hibernate.engine.spi.EntityEntry, var2604=r5, var3835=r6, var2726=$r8, var628=$r7, var1010=r9}
; {org.hibernate.dialect.lock.PessimisticForceIncrementLockingStrategy=var403, r0=var1418, java.io.Serializable=var1928, r21=var1885, java.lang.Object=var3, r22=var572, r3=var3550, i0=var2639, org.hibernate.engine.spi.SharedSessionContractImplementor=var2399, r2=var366, org.hibernate.persister.entity.Lockable=var2787, $r1=var3929, org.hibernate.persister.entity.EntityPersister=var2441, $z0=var46, org.hibernate.engine.spi.PersistenceContext=var115, $r4=var13, org.hibernate.engine.spi.EntityEntry=var2625, r5=var2604, r6=var3835, $r8=var2726, $r7=var628, r9=var1010}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.dialect.lock.PessimisticForceIncrementLockingStrategy;	r21 := @parameter0: java.io.Serializable;	r22 := @parameter1: java.lang.Object;	r3 := @parameter2: java.lang.Object;	i0 := @parameter3: int;	r2 := @parameter4: org.hibernate.engine.spi.SharedSessionContractImplementor;	$r1 = r0.<org.hibernate.dialect.lock.PessimisticForceIncrementLockingStrategy: org.hibernate.persister.entity.Lockable lockable>;	$z0 = interfaceinvoke $r1.<org.hibernate.persister.entity.Lockable: boolean isVersioned()>();	if $z0 != 0 goto $r4 = interfaceinvoke r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.PersistenceContext getPersistenceContextInternal()>();	$r4 = interfaceinvoke r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.PersistenceContext getPersistenceContextInternal()>();	r5 = interfaceinvoke $r4.<org.hibernate.engine.spi.PersistenceContext: org.hibernate.engine.spi.EntityEntry getEntry(java.lang.Object)>(r3);	r6 = interfaceinvoke r5.<org.hibernate.engine.spi.EntityEntry: org.hibernate.persister.entity.EntityPersister getPersister()>();	$r8 = interfaceinvoke r5.<org.hibernate.engine.spi.EntityEntry: java.io.Serializable getId()>();	$r7 = interfaceinvoke r5.<org.hibernate.engine.spi.EntityEntry: java.lang.Object getVersion()>();	r9 = interfaceinvoke r6.<org.hibernate.persister.entity.EntityPersister: java.lang.Object forceVersionIncrement(java.io.Serializable,java.lang.Object,org.hibernate.engine.spi.SharedSessionContractImplementor)>($r8, $r7, r2);	interfaceinvoke r5.<org.hibernate.engine.spi.EntityEntry: void forceLocked(java.lang.Object,java.lang.Object)>(r3, r9);	return
;block_num 2