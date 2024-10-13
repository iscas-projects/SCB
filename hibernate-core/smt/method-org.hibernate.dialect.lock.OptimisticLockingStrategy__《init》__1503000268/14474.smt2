(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2365 0)
(declare-sort var2370 0)
(declare-sort var2007 0)
(declare-sort var1632 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1632) void)
(declare-fun cast-from-var2365-to-var1632 (var2365) var1632)
(declare-fun lockable/-1546105400 (var2365) var2370)
(declare-fun lockMode/-1546105400 (var2365) var2007)
(declare-fun lessThan/186053417 (var2007 var2007) Bool)
(declare-const null-var2365 var2365)
(declare-const null-var2370 var2370)
(declare-const null-var2007 var2007)
(declare-const var2007-OPTIMISTIC var2007)
(declare-const var1368 var2365) ; Statement: r0 := @this: org.hibernate.dialect.lock.OptimisticLockingStrategy 
(assert (not (= var1368 null-var2365)))
(declare-const var2731 var2370) ; Statement: r1 := @parameter0: org.hibernate.persister.entity.Lockable 
(assert (not (= var2731 null-var2370)))
(declare-const var2115 var2007) ; Statement: r2 := @parameter1: org.hibernate.LockMode 
(assert (not (= var2115 null-var2007)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2365-to-var1632 var1368))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1368!1 var2365)
(declare-const var1368!2 var2365)
(assert (not (= var1368!2 null-var2365)))
(assert (= (lockable/-1546105400 var1368!2) var2731)) ; Statement: r0.<org.hibernate.dialect.lock.OptimisticLockingStrategy: org.hibernate.persister.entity.Lockable lockable> = r1 
(declare-const var1368!3 var2365)
(assert (not (= var1368!3 null-var2365)))
(assert (= (lockMode/-1546105400 var1368!3) var2115)) ; Statement: r0.<org.hibernate.dialect.lock.OptimisticLockingStrategy: org.hibernate.LockMode lockMode> = r2 
(define-const var1237 var2007 var2007-OPTIMISTIC) ; Statement: $r3 = <org.hibernate.LockMode: org.hibernate.LockMode OPTIMISTIC> 
(assert true)
(define-const var2171 Bool (lessThan/186053417 var2115 var1237)) ; Statement: $z0 = virtualinvoke r2.<org.hibernate.LockMode: boolean lessThan(org.hibernate.LockMode)>($r3) 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var2171 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2365-to-var1632=([org.hibernate.dialect.lock.OptimisticLockingStrategy], java.lang.Object), lockable/-1546105400=([org.hibernate.dialect.lock.OptimisticLockingStrategy], org.hibernate.persister.entity.Lockable), lockMode/-1546105400=([org.hibernate.dialect.lock.OptimisticLockingStrategy], org.hibernate.LockMode), lessThan/186053417=([org.hibernate.LockMode, org.hibernate.LockMode], boolean)}
; {var2365=org.hibernate.dialect.lock.OptimisticLockingStrategy, var1368=r0, var2370=org.hibernate.persister.entity.Lockable, var2731=r1, var2007=org.hibernate.LockMode, var2115=r2, var1632=java.lang.Object, var1237=$r3, var2171=$z0}
; {org.hibernate.dialect.lock.OptimisticLockingStrategy=var2365, r0=var1368, org.hibernate.persister.entity.Lockable=var2370, r1=var2731, org.hibernate.LockMode=var2007, r2=var2115, java.lang.Object=var1632, $r3=var1237, $z0=var2171}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.dialect.lock.OptimisticLockingStrategy;	r1 := @parameter0: org.hibernate.persister.entity.Lockable;	r2 := @parameter1: org.hibernate.LockMode;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.hibernate.dialect.lock.OptimisticLockingStrategy: org.hibernate.persister.entity.Lockable lockable> = r1;	r0.<org.hibernate.dialect.lock.OptimisticLockingStrategy: org.hibernate.LockMode lockMode> = r2;	$r3 = <org.hibernate.LockMode: org.hibernate.LockMode OPTIMISTIC>;	$z0 = virtualinvoke r2.<org.hibernate.LockMode: boolean lessThan(org.hibernate.LockMode)>($r3);	if $z0 == 0 goto return;	return
;block_num 2