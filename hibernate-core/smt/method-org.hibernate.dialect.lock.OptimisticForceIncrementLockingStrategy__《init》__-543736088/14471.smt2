(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1811 0)
(declare-sort var3086 0)
(declare-sort var1923 0)
(declare-sort var2296 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var2296) void)
(declare-fun cast-from-var1811-to-var2296 (var1811) var2296)
(declare-fun lockable/-934989852 (var1811) var3086)
(declare-fun lockMode/-934989852 (var1811) var1923)
(declare-fun lessThan/186053417 (var1923 var1923) Bool)
(declare-const null-var1811 var1811)
(declare-const null-var3086 var3086)
(declare-const null-var1923 var1923)
(declare-const var1923-OPTIMISTIC_FORCE_INCREMENT var1923)
(declare-const var978 var1811) ; Statement: r0 := @this: org.hibernate.dialect.lock.OptimisticForceIncrementLockingStrategy 
(assert (not (= var978 null-var1811)))
(declare-const var1244 var3086) ; Statement: r1 := @parameter0: org.hibernate.persister.entity.Lockable 
(assert (not (= var1244 null-var3086)))
(declare-const var3513 var1923) ; Statement: r2 := @parameter1: org.hibernate.LockMode 
(assert (not (= var3513 null-var1923)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1811-to-var2296 var978))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var978!1 var1811)
(declare-const var978!2 var1811)
(assert (not (= var978!2 null-var1811)))
(assert (= (lockable/-934989852 var978!2) var1244)) ; Statement: r0.<org.hibernate.dialect.lock.OptimisticForceIncrementLockingStrategy: org.hibernate.persister.entity.Lockable lockable> = r1 
(declare-const var978!3 var1811)
(assert (not (= var978!3 null-var1811)))
(assert (= (lockMode/-934989852 var978!3) var3513)) ; Statement: r0.<org.hibernate.dialect.lock.OptimisticForceIncrementLockingStrategy: org.hibernate.LockMode lockMode> = r2 
(define-const var3740 var1923 var1923-OPTIMISTIC_FORCE_INCREMENT) ; Statement: $r3 = <org.hibernate.LockMode: org.hibernate.LockMode OPTIMISTIC_FORCE_INCREMENT> 
(assert true)
(define-const var2050 Bool (lessThan/186053417 var3513 var3740)) ; Statement: $z0 = virtualinvoke r2.<org.hibernate.LockMode: boolean lessThan(org.hibernate.LockMode)>($r3) 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var2050 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1811-to-var2296=([org.hibernate.dialect.lock.OptimisticForceIncrementLockingStrategy], java.lang.Object), lockable/-934989852=([org.hibernate.dialect.lock.OptimisticForceIncrementLockingStrategy], org.hibernate.persister.entity.Lockable), lockMode/-934989852=([org.hibernate.dialect.lock.OptimisticForceIncrementLockingStrategy], org.hibernate.LockMode), lessThan/186053417=([org.hibernate.LockMode, org.hibernate.LockMode], boolean)}
; {var1811=org.hibernate.dialect.lock.OptimisticForceIncrementLockingStrategy, var978=r0, var3086=org.hibernate.persister.entity.Lockable, var1244=r1, var1923=org.hibernate.LockMode, var3513=r2, var2296=java.lang.Object, var3740=$r3, var2050=$z0}
; {org.hibernate.dialect.lock.OptimisticForceIncrementLockingStrategy=var1811, r0=var978, org.hibernate.persister.entity.Lockable=var3086, r1=var1244, org.hibernate.LockMode=var1923, r2=var3513, java.lang.Object=var2296, $r3=var3740, $z0=var2050}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.dialect.lock.OptimisticForceIncrementLockingStrategy;	r1 := @parameter0: org.hibernate.persister.entity.Lockable;	r2 := @parameter1: org.hibernate.LockMode;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.hibernate.dialect.lock.OptimisticForceIncrementLockingStrategy: org.hibernate.persister.entity.Lockable lockable> = r1;	r0.<org.hibernate.dialect.lock.OptimisticForceIncrementLockingStrategy: org.hibernate.LockMode lockMode> = r2;	$r3 = <org.hibernate.LockMode: org.hibernate.LockMode OPTIMISTIC_FORCE_INCREMENT>;	$z0 = virtualinvoke r2.<org.hibernate.LockMode: boolean lessThan(org.hibernate.LockMode)>($r3);	if $z0 == 0 goto return;	return
;block_num 2