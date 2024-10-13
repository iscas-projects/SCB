(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1152 0)
(declare-sort var2551 0)
(declare-sort var3178 0)
(declare-sort var813 0)
(declare-sort var3075 0)
(declare-sort var3012 0)
(declare-sort var1765 0)
(declare-sort var1471 0)
(declare-sort var844 0)
(declare-sort var713 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lockable/-1546105400 (var1152) var3075)
(declare-fun var3012_isVersioned/1384082640 (var3012) Bool)
(declare-fun cast-from-var3075-to-var3012 (var3075) var3012)
(declare-fun cast-from-var813-to-var1765 (var813) var1765)
(declare-fun var1765_getActionQueue/389410382 (var1765) var1471)
(declare-fun var844-init () var844)
(declare-fun <init>/1533790150 (var844 var3178) void)
(declare-fun registerProcess/-1039143926 (var1471 var713) void)
(declare-fun cast-from-var844-to-var713 (var844) var713)
(declare-const null-var1152 var1152)
(declare-const null-var2551 var2551)
(declare-const null-var3178 var3178)
(declare-const null-Int Int)
(declare-const null-var813 var813)
(declare-const var3115 var1152) ; Statement: r0 := @this: org.hibernate.dialect.lock.OptimisticLockingStrategy 
(assert (not (= var3115 null-var1152)))
(declare-const var2321 var2551) ; Statement: r18 := @parameter0: java.io.Serializable 
(assert (not (= var2321 null-var2551)))
(declare-const var1327 var3178) ; Statement: r19 := @parameter1: java.lang.Object 
(assert (not (= var1327 null-var3178)))
(declare-const var2095 var3178) ; Statement: r5 := @parameter2: java.lang.Object 
(assert (not (= var2095 null-var3178)))
(declare-const var1061 Int) ; Statement: i0 := @parameter3: int 
(assert (not (= var1061 null-Int)))
(declare-const var3834 var813) ; Statement: r2 := @parameter4: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var3834 null-var813)))
(define-const var726 var3075 (lockable/-1546105400 var3115)) ; Statement: $r1 = r0.<org.hibernate.dialect.lock.OptimisticLockingStrategy: org.hibernate.persister.entity.Lockable lockable> 
(define-const var1077 Bool (var3012_isVersioned/1384082640 (cast-from-var3075-to-var3012 var726))) ; Statement: $z0 = interfaceinvoke $r1.<org.hibernate.persister.entity.Lockable: boolean isVersioned()>() 
 ; Statement: if $z0 != 0 goto $r3 = (org.hibernate.event.spi.EventSource) r2 
(assert (not (= (ite var1077 1 0) 0))) ; Cond: $z0 != 0 
(define-const var233 var1765 (cast-from-var813-to-var1765 var3834)) ; Statement: $r3 = (org.hibernate.event.spi.EventSource) r2 
(define-const var1465 var1471 (var1765_getActionQueue/389410382 var233)) ; Statement: $r6 = interfaceinvoke $r3.<org.hibernate.event.spi.EventSource: org.hibernate.engine.spi.ActionQueue getActionQueue()>() 
(define-const var3769 var844 var844-init) ; Statement: $r22 = new org.hibernate.action.internal.EntityVerifyVersionProcess 
(assert true)
;(assert (<init>/1533790150 var3769 var2095)) ; Statement: specialinvoke $r22.<org.hibernate.action.internal.EntityVerifyVersionProcess: void <init>(java.lang.Object)>(r5) 

(declare-const var3769!1 var844)
(declare-const var2095!1 var3178)
(assert true)
;(assert (registerProcess/-1039143926 var1465 (cast-from-var844-to-var713 var3769!1))) ; Statement: virtualinvoke $r6.<org.hibernate.engine.spi.ActionQueue: void registerProcess(org.hibernate.action.spi.BeforeTransactionCompletionProcess)>($r22) 

(declare-const var1465!1 var1471)
(declare-const var3769!2 var844)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {lockable/-1546105400=([org.hibernate.dialect.lock.OptimisticLockingStrategy], org.hibernate.persister.entity.Lockable), var3012_isVersioned/1384082640=([org.hibernate.persister.entity.EntityPersister], boolean), cast-from-var3075-to-var3012=([org.hibernate.persister.entity.Lockable], org.hibernate.persister.entity.EntityPersister), cast-from-var813-to-var1765=([org.hibernate.engine.spi.SharedSessionContractImplementor], org.hibernate.event.spi.EventSource), var1765_getActionQueue/389410382=([org.hibernate.event.spi.EventSource], org.hibernate.engine.spi.ActionQueue), var844-init=([], org.hibernate.action.internal.EntityVerifyVersionProcess), <init>/1533790150=([org.hibernate.action.internal.EntityVerifyVersionProcess, java.lang.Object], void), registerProcess/-1039143926=([org.hibernate.engine.spi.ActionQueue, org.hibernate.action.spi.BeforeTransactionCompletionProcess], void), cast-from-var844-to-var713=([org.hibernate.action.internal.EntityVerifyVersionProcess], org.hibernate.action.spi.BeforeTransactionCompletionProcess)}
; {var1152=org.hibernate.dialect.lock.OptimisticLockingStrategy, var3115=r0, var2551=java.io.Serializable, var2321=r18, var3178=java.lang.Object, var1327=r19, var2095=r5, var1061=i0, var813=org.hibernate.engine.spi.SharedSessionContractImplementor, var3834=r2, var3075=org.hibernate.persister.entity.Lockable, var726=$r1, var3012=org.hibernate.persister.entity.EntityPersister, var1077=$z0, var1765=org.hibernate.event.spi.EventSource, var233=$r3, var1471=org.hibernate.engine.spi.ActionQueue, var1465=$r6, var844=org.hibernate.action.internal.EntityVerifyVersionProcess, var3769=$r22, var713=org.hibernate.action.spi.BeforeTransactionCompletionProcess}
; {org.hibernate.dialect.lock.OptimisticLockingStrategy=var1152, r0=var3115, java.io.Serializable=var2551, r18=var2321, java.lang.Object=var3178, r19=var1327, r5=var2095, i0=var1061, org.hibernate.engine.spi.SharedSessionContractImplementor=var813, r2=var3834, org.hibernate.persister.entity.Lockable=var3075, $r1=var726, org.hibernate.persister.entity.EntityPersister=var3012, $z0=var1077, org.hibernate.event.spi.EventSource=var1765, $r3=var233, org.hibernate.engine.spi.ActionQueue=var1471, $r6=var1465, org.hibernate.action.internal.EntityVerifyVersionProcess=var844, $r22=var3769, org.hibernate.action.spi.BeforeTransactionCompletionProcess=var713}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.dialect.lock.OptimisticLockingStrategy;	r18 := @parameter0: java.io.Serializable;	r19 := @parameter1: java.lang.Object;	r5 := @parameter2: java.lang.Object;	i0 := @parameter3: int;	r2 := @parameter4: org.hibernate.engine.spi.SharedSessionContractImplementor;	$r1 = r0.<org.hibernate.dialect.lock.OptimisticLockingStrategy: org.hibernate.persister.entity.Lockable lockable>;	$z0 = interfaceinvoke $r1.<org.hibernate.persister.entity.Lockable: boolean isVersioned()>();	if $z0 != 0 goto $r3 = (org.hibernate.event.spi.EventSource) r2;	$r3 = (org.hibernate.event.spi.EventSource) r2;	$r6 = interfaceinvoke $r3.<org.hibernate.event.spi.EventSource: org.hibernate.engine.spi.ActionQueue getActionQueue()>();	$r22 = new org.hibernate.action.internal.EntityVerifyVersionProcess;	specialinvoke $r22.<org.hibernate.action.internal.EntityVerifyVersionProcess: void <init>(java.lang.Object)>(r5);	virtualinvoke $r6.<org.hibernate.engine.spi.ActionQueue: void registerProcess(org.hibernate.action.spi.BeforeTransactionCompletionProcess)>($r22);	return
;block_num 2