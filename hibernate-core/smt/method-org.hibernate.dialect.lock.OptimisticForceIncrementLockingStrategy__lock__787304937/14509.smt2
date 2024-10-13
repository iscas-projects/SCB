(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2655 0)
(declare-sort var3839 0)
(declare-sort var294 0)
(declare-sort var3347 0)
(declare-sort var2920 0)
(declare-sort var192 0)
(declare-sort var2914 0)
(declare-sort var3701 0)
(declare-sort var1885 0)
(declare-sort var2266 0)
(declare-sort var415 0)
(declare-sort var2306 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lockable/-934989852 (var2655) var2920)
(declare-fun var192_isVersioned/1384082640 (var192) Bool)
(declare-fun cast-from-var2920-to-var192 (var2920) var192)
(declare-fun var3347_getPersistenceContextInternal/1368680823 (var3347) var2914)
(declare-fun var2914_getEntry/-487705827 (var2914 var294) var2306)
(declare-fun cast-from-var3347-to-var3701 (var3347) var3701)
(declare-fun var3701_getActionQueue/389410382 (var3701) var1885)
(declare-fun var2266-init () var2266)
(declare-fun <init>/938817984 (var2266 var294) void)
(declare-fun registerProcess/-1039143926 (var1885 var415) void)
(declare-fun cast-from-var2266-to-var415 (var2266) var415)
(declare-const null-var2655 var2655)
(declare-const null-var3839 var3839)
(declare-const null-var294 var294)
(declare-const null-Int Int)
(declare-const null-var3347 var3347)
(declare-const var734 var2655) ; Statement: r0 := @this: org.hibernate.dialect.lock.OptimisticForceIncrementLockingStrategy 
(assert (not (= var734 null-var2655)))
(declare-const var2165 var3839) ; Statement: r19 := @parameter0: java.io.Serializable 
(assert (not (= var2165 null-var3839)))
(declare-const var1038 var294) ; Statement: r20 := @parameter1: java.lang.Object 
(assert (not (= var1038 null-var294)))
(declare-const var258 var294) ; Statement: r3 := @parameter2: java.lang.Object 
(assert (not (= var258 null-var294)))
(declare-const var1046 Int) ; Statement: i0 := @parameter3: int 
(assert (not (= var1046 null-Int)))
(declare-const var454 var3347) ; Statement: r2 := @parameter4: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var454 null-var3347)))
(define-const var1799 var2920 (lockable/-934989852 var734)) ; Statement: $r1 = r0.<org.hibernate.dialect.lock.OptimisticForceIncrementLockingStrategy: org.hibernate.persister.entity.Lockable lockable> 
(define-const var1828 Bool (var192_isVersioned/1384082640 (cast-from-var2920-to-var192 var1799))) ; Statement: $z0 = interfaceinvoke $r1.<org.hibernate.persister.entity.Lockable: boolean isVersioned()>() 
 ; Statement: if $z0 != 0 goto $r4 = interfaceinvoke r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.PersistenceContext getPersistenceContextInternal()>() 
(assert (not (= (ite var1828 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2851 var2914 (var3347_getPersistenceContextInternal/1368680823 var454)) ; Statement: $r4 = interfaceinvoke r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.PersistenceContext getPersistenceContextInternal()>() 
;(assert (var2914_getEntry/-487705827 var2851 var258)) ; Statement: interfaceinvoke $r4.<org.hibernate.engine.spi.PersistenceContext: org.hibernate.engine.spi.EntityEntry getEntry(java.lang.Object)>(r3) 

(declare-const var2851!1 var2914)
(declare-const var258!1 var294)
(define-const var3275 var3701 (cast-from-var3347-to-var3701 var454)) ; Statement: $r5 = (org.hibernate.event.spi.EventSource) r2 
(define-const var3456 var1885 (var3701_getActionQueue/389410382 var3275)) ; Statement: $r7 = interfaceinvoke $r5.<org.hibernate.event.spi.EventSource: org.hibernate.engine.spi.ActionQueue getActionQueue()>() 
(define-const var3354 var2266 var2266-init) ; Statement: $r23 = new org.hibernate.action.internal.EntityIncrementVersionProcess 
(assert true)
;(assert (<init>/938817984 var3354 var258!1)) ; Statement: specialinvoke $r23.<org.hibernate.action.internal.EntityIncrementVersionProcess: void <init>(java.lang.Object)>(r3) 

(declare-const var3354!1 var2266)
(declare-const var258!2 var294)
(assert true)
;(assert (registerProcess/-1039143926 var3456 (cast-from-var2266-to-var415 var3354!1))) ; Statement: virtualinvoke $r7.<org.hibernate.engine.spi.ActionQueue: void registerProcess(org.hibernate.action.spi.BeforeTransactionCompletionProcess)>($r23) 

(declare-const var3456!1 var1885)
(declare-const var3354!2 var2266)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {lockable/-934989852=([org.hibernate.dialect.lock.OptimisticForceIncrementLockingStrategy], org.hibernate.persister.entity.Lockable), var192_isVersioned/1384082640=([org.hibernate.persister.entity.EntityPersister], boolean), cast-from-var2920-to-var192=([org.hibernate.persister.entity.Lockable], org.hibernate.persister.entity.EntityPersister), var3347_getPersistenceContextInternal/1368680823=([org.hibernate.engine.spi.SharedSessionContractImplementor], org.hibernate.engine.spi.PersistenceContext), var2914_getEntry/-487705827=([org.hibernate.engine.spi.PersistenceContext, java.lang.Object], org.hibernate.engine.spi.EntityEntry), cast-from-var3347-to-var3701=([org.hibernate.engine.spi.SharedSessionContractImplementor], org.hibernate.event.spi.EventSource), var3701_getActionQueue/389410382=([org.hibernate.event.spi.EventSource], org.hibernate.engine.spi.ActionQueue), var2266-init=([], org.hibernate.action.internal.EntityIncrementVersionProcess), <init>/938817984=([org.hibernate.action.internal.EntityIncrementVersionProcess, java.lang.Object], void), registerProcess/-1039143926=([org.hibernate.engine.spi.ActionQueue, org.hibernate.action.spi.BeforeTransactionCompletionProcess], void), cast-from-var2266-to-var415=([org.hibernate.action.internal.EntityIncrementVersionProcess], org.hibernate.action.spi.BeforeTransactionCompletionProcess)}
; {var2655=org.hibernate.dialect.lock.OptimisticForceIncrementLockingStrategy, var734=r0, var3839=java.io.Serializable, var2165=r19, var294=java.lang.Object, var1038=r20, var258=r3, var1046=i0, var3347=org.hibernate.engine.spi.SharedSessionContractImplementor, var454=r2, var2920=org.hibernate.persister.entity.Lockable, var1799=$r1, var192=org.hibernate.persister.entity.EntityPersister, var1828=$z0, var2914=org.hibernate.engine.spi.PersistenceContext, var2851=$r4, var3701=org.hibernate.event.spi.EventSource, var3275=$r5, var1885=org.hibernate.engine.spi.ActionQueue, var3456=$r7, var2266=org.hibernate.action.internal.EntityIncrementVersionProcess, var3354=$r23, var415=org.hibernate.action.spi.BeforeTransactionCompletionProcess, var2306=org.hibernate.engine.spi.EntityEntry}
; {org.hibernate.dialect.lock.OptimisticForceIncrementLockingStrategy=var2655, r0=var734, java.io.Serializable=var3839, r19=var2165, java.lang.Object=var294, r20=var1038, r3=var258, i0=var1046, org.hibernate.engine.spi.SharedSessionContractImplementor=var3347, r2=var454, org.hibernate.persister.entity.Lockable=var2920, $r1=var1799, org.hibernate.persister.entity.EntityPersister=var192, $z0=var1828, org.hibernate.engine.spi.PersistenceContext=var2914, $r4=var2851, org.hibernate.event.spi.EventSource=var3701, $r5=var3275, org.hibernate.engine.spi.ActionQueue=var1885, $r7=var3456, org.hibernate.action.internal.EntityIncrementVersionProcess=var2266, $r23=var3354, org.hibernate.action.spi.BeforeTransactionCompletionProcess=var415, org.hibernate.engine.spi.EntityEntry=var2306}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.dialect.lock.OptimisticForceIncrementLockingStrategy;	r19 := @parameter0: java.io.Serializable;	r20 := @parameter1: java.lang.Object;	r3 := @parameter2: java.lang.Object;	i0 := @parameter3: int;	r2 := @parameter4: org.hibernate.engine.spi.SharedSessionContractImplementor;	$r1 = r0.<org.hibernate.dialect.lock.OptimisticForceIncrementLockingStrategy: org.hibernate.persister.entity.Lockable lockable>;	$z0 = interfaceinvoke $r1.<org.hibernate.persister.entity.Lockable: boolean isVersioned()>();	if $z0 != 0 goto $r4 = interfaceinvoke r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.PersistenceContext getPersistenceContextInternal()>();	$r4 = interfaceinvoke r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.PersistenceContext getPersistenceContextInternal()>();	interfaceinvoke $r4.<org.hibernate.engine.spi.PersistenceContext: org.hibernate.engine.spi.EntityEntry getEntry(java.lang.Object)>(r3);	$r5 = (org.hibernate.event.spi.EventSource) r2;	$r7 = interfaceinvoke $r5.<org.hibernate.event.spi.EventSource: org.hibernate.engine.spi.ActionQueue getActionQueue()>();	$r23 = new org.hibernate.action.internal.EntityIncrementVersionProcess;	specialinvoke $r23.<org.hibernate.action.internal.EntityIncrementVersionProcess: void <init>(java.lang.Object)>(r3);	virtualinvoke $r7.<org.hibernate.engine.spi.ActionQueue: void registerProcess(org.hibernate.action.spi.BeforeTransactionCompletionProcess)>($r23);	return
;block_num 2