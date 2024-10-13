(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1645 0)
(declare-sort var627 0)
(declare-sort var3511 0)
(declare-sort var621 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var621) void)
(declare-fun cast-from-var1645-to-var621 (var1645) var621)
(declare-fun lockable/-1773196784 (var1645) var627)
(declare-fun lockMode/-1773196784 (var1645) var3511)
(declare-fun lessThan/186053417 (var3511 var3511) Bool)
(declare-const null-var1645 var1645)
(declare-const null-var627 var627)
(declare-const null-var3511 var3511)
(declare-const var3511-PESSIMISTIC_READ var3511)
(declare-const var61 var1645) ; Statement: r0 := @this: org.hibernate.dialect.lock.PessimisticForceIncrementLockingStrategy 
(assert (not (= var61 null-var1645)))
(declare-const var256 var627) ; Statement: r1 := @parameter0: org.hibernate.persister.entity.Lockable 
(assert (not (= var256 null-var627)))
(declare-const var2078 var3511) ; Statement: r2 := @parameter1: org.hibernate.LockMode 
(assert (not (= var2078 null-var3511)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1645-to-var621 var61))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var61!1 var1645)
(declare-const var61!2 var1645)
(assert (not (= var61!2 null-var1645)))
(assert (= (lockable/-1773196784 var61!2) var256)) ; Statement: r0.<org.hibernate.dialect.lock.PessimisticForceIncrementLockingStrategy: org.hibernate.persister.entity.Lockable lockable> = r1 
(declare-const var61!3 var1645)
(assert (not (= var61!3 null-var1645)))
(assert (= (lockMode/-1773196784 var61!3) var2078)) ; Statement: r0.<org.hibernate.dialect.lock.PessimisticForceIncrementLockingStrategy: org.hibernate.LockMode lockMode> = r2 
(define-const var3035 var3511 var3511-PESSIMISTIC_READ) ; Statement: $r3 = <org.hibernate.LockMode: org.hibernate.LockMode PESSIMISTIC_READ> 
(assert true)
(define-const var3788 Bool (lessThan/186053417 var2078 var3035)) ; Statement: $z0 = virtualinvoke r2.<org.hibernate.LockMode: boolean lessThan(org.hibernate.LockMode)>($r3) 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var3788 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1645-to-var621=([org.hibernate.dialect.lock.PessimisticForceIncrementLockingStrategy], java.lang.Object), lockable/-1773196784=([org.hibernate.dialect.lock.PessimisticForceIncrementLockingStrategy], org.hibernate.persister.entity.Lockable), lockMode/-1773196784=([org.hibernate.dialect.lock.PessimisticForceIncrementLockingStrategy], org.hibernate.LockMode), lessThan/186053417=([org.hibernate.LockMode, org.hibernate.LockMode], boolean)}
; {var1645=org.hibernate.dialect.lock.PessimisticForceIncrementLockingStrategy, var61=r0, var627=org.hibernate.persister.entity.Lockable, var256=r1, var3511=org.hibernate.LockMode, var2078=r2, var621=java.lang.Object, var3035=$r3, var3788=$z0}
; {org.hibernate.dialect.lock.PessimisticForceIncrementLockingStrategy=var1645, r0=var61, org.hibernate.persister.entity.Lockable=var627, r1=var256, org.hibernate.LockMode=var3511, r2=var2078, java.lang.Object=var621, $r3=var3035, $z0=var3788}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.dialect.lock.PessimisticForceIncrementLockingStrategy;	r1 := @parameter0: org.hibernate.persister.entity.Lockable;	r2 := @parameter1: org.hibernate.LockMode;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.hibernate.dialect.lock.PessimisticForceIncrementLockingStrategy: org.hibernate.persister.entity.Lockable lockable> = r1;	r0.<org.hibernate.dialect.lock.PessimisticForceIncrementLockingStrategy: org.hibernate.LockMode lockMode> = r2;	$r3 = <org.hibernate.LockMode: org.hibernate.LockMode PESSIMISTIC_READ>;	$z0 = virtualinvoke r2.<org.hibernate.LockMode: boolean lessThan(org.hibernate.LockMode)>($r3);	if $z0 == 0 goto return;	return
;block_num 2