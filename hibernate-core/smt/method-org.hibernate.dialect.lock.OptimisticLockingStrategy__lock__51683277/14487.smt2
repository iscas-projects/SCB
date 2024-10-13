(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3106 0)
(declare-sort var302 0)
(declare-sort var3337 0)
(declare-sort var3531 0)
(declare-sort var3834 0)
(declare-sort var3688 0)
(declare-sort var120 0)
(declare-sort var2892 0)
(declare-sort var3670 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lockable/-1546105400 (var3106) var3834)
(declare-fun var3688_isVersioned/1384082640 (var3688) Bool)
(declare-fun cast-from-var3834-to-var3688 (var3834) var3688)
(declare-fun var120-init () var120)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun lockMode/-1546105400 (var3106) var2892)
(declare-fun append/-1031950772 (String var3337) String)
(declare-fun cast-from-var2892-to-var3337 (var2892) var3337)
(declare-fun var3688_getEntityName/-1914780628 (var3688) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-995601106 (var120 var3337 String) void)
(declare-fun cast-from-var120-to-var3670 (var120) var3670)
(declare-const null-var3106 var3106)
(declare-const null-var302 var302)
(declare-const null-var3337 var3337)
(declare-const null-Int Int)
(declare-const null-var3531 var3531)
(declare-const var2774 var3106) ; Statement: r0 := @this: org.hibernate.dialect.lock.OptimisticLockingStrategy 
(assert (not (= var2774 null-var3106)))
(declare-const var788 var302) ; Statement: r18 := @parameter0: java.io.Serializable 
(assert (not (= var788 null-var302)))
(declare-const var401 var3337) ; Statement: r19 := @parameter1: java.lang.Object 
(assert (not (= var401 null-var3337)))
(declare-const var3954 var3337) ; Statement: r5 := @parameter2: java.lang.Object 
(assert (not (= var3954 null-var3337)))
(declare-const var3972 Int) ; Statement: i0 := @parameter3: int 
(assert (not (= var3972 null-Int)))
(declare-const var99 var3531) ; Statement: r2 := @parameter4: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var99 null-var3531)))
(define-const var1878 var3834 (lockable/-1546105400 var2774)) ; Statement: $r1 = r0.<org.hibernate.dialect.lock.OptimisticLockingStrategy: org.hibernate.persister.entity.Lockable lockable> 
(define-const var2836 Bool (var3688_isVersioned/1384082640 (cast-from-var3834-to-var3688 var1878))) ; Statement: $z0 = interfaceinvoke $r1.<org.hibernate.persister.entity.Lockable: boolean isVersioned()>() 
 ; Statement: if $z0 != 0 goto $r3 = (org.hibernate.event.spi.EventSource) r2 
(assert (not (not (= (ite var2836 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2538 var120 var120-init) ; Statement: $r21 = new org.hibernate.OptimisticLockException 
(define-const var1257 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1257)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1257!1 String)
(assert (= var1257!1 ""))
(assert true)
(define-const var3810 String (append/672562846 var1257!1 "[")) ; Statement: $r10 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var1257!2 String)
(assert (= var1257!2 (str.++ var1257!1 "[")))
(define-const var239 var2892 (lockMode/-1546105400 var2774)) ; Statement: $r9 = r0.<org.hibernate.dialect.lock.OptimisticLockingStrategy: org.hibernate.LockMode lockMode> 
(assert true)
(define-const var2218 String (append/-1031950772 var3810 (cast-from-var2892-to-var3337 var239))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r9) 
(declare-const var3810!1 String)
(assert (str.prefixof var3810 var3810!1))
(assert true)
(define-const var3140 String (append/672562846 var2218 "] not supported for non-versioned entities [")) ; Statement: $r14 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] not supported for non-versioned entities [") 
(declare-const var2218!1 String)
(assert (= var2218!1 (str.++ var2218 "] not supported for non-versioned entities [")))
(define-const var457 var3834 (lockable/-1546105400 var2774)) ; Statement: $r12 = r0.<org.hibernate.dialect.lock.OptimisticLockingStrategy: org.hibernate.persister.entity.Lockable lockable> 
(define-const var2772 String (var3688_getEntityName/-1914780628 (cast-from-var3834-to-var3688 var457))) ; Statement: $r13 = interfaceinvoke $r12.<org.hibernate.persister.entity.Lockable: java.lang.String getEntityName()>() 
(assert true)
(define-const var3983 String (append/672562846 var3140 var2772)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var3140!1 String)
(assert (= var3140!1 (str.++ var3140 var2772)))
(assert true)
(define-const var3769 String (append/672562846 var3983 "]")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3983!1 String)
(assert (= var3983!1 (str.++ var3983 "]")))
(assert true)
(define-const var1140 String (toString/-2075883882 var3769)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-995601106 var2538 var3954 var1140)) ; Statement: specialinvoke $r21.<org.hibernate.OptimisticLockException: void <init>(java.lang.Object,java.lang.String)>(r5, $r17) 

(declare-const var2538!1 var120)
(declare-const var3954!1 var3337)
(declare-const var1140!1 String)
(define-const var1452 var3670 (cast-from-var120-to-var3670 var2538!1)) ; Statement: $r23 = (java.lang.Throwable) $r21 
 ; Statement: throw $r23 
(check-sat)
(get-model)
(get-unsat-core)
; {lockable/-1546105400=([org.hibernate.dialect.lock.OptimisticLockingStrategy], org.hibernate.persister.entity.Lockable), var3688_isVersioned/1384082640=([org.hibernate.persister.entity.EntityPersister], boolean), cast-from-var3834-to-var3688=([org.hibernate.persister.entity.Lockable], org.hibernate.persister.entity.EntityPersister), var120-init=([], org.hibernate.OptimisticLockException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), lockMode/-1546105400=([org.hibernate.dialect.lock.OptimisticLockingStrategy], org.hibernate.LockMode), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2892-to-var3337=([org.hibernate.LockMode], java.lang.Object), var3688_getEntityName/-1914780628=([org.hibernate.persister.entity.EntityPersister], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-995601106=([org.hibernate.OptimisticLockException, java.lang.Object, java.lang.String], void), cast-from-var120-to-var3670=([org.hibernate.OptimisticLockException], java.lang.Throwable)}
; {var3106=org.hibernate.dialect.lock.OptimisticLockingStrategy, var2774=r0, var302=java.io.Serializable, var788=r18, var3337=java.lang.Object, var401=r19, var3954=r5, var3972=i0, var3531=org.hibernate.engine.spi.SharedSessionContractImplementor, var99=r2, var3834=org.hibernate.persister.entity.Lockable, var1878=$r1, var3688=org.hibernate.persister.entity.EntityPersister, var2836=$z0, var120=org.hibernate.OptimisticLockException, var2538=$r21, var1257=$r20, var3810=$r10, var2892=org.hibernate.LockMode, var239=$r9, var2218=$r11, var3140=$r14, var457=$r12, var2772=$r13, var3983=$r15, var3769=$r16, var1140=$r17, var3670=java.lang.Throwable, var1452=$r23}
; {org.hibernate.dialect.lock.OptimisticLockingStrategy=var3106, r0=var2774, java.io.Serializable=var302, r18=var788, java.lang.Object=var3337, r19=var401, r5=var3954, i0=var3972, org.hibernate.engine.spi.SharedSessionContractImplementor=var3531, r2=var99, org.hibernate.persister.entity.Lockable=var3834, $r1=var1878, org.hibernate.persister.entity.EntityPersister=var3688, $z0=var2836, org.hibernate.OptimisticLockException=var120, $r21=var2538, $r20=var1257, $r10=var3810, org.hibernate.LockMode=var2892, $r9=var239, $r11=var2218, $r14=var3140, $r12=var457, $r13=var2772, $r15=var3983, $r16=var3769, $r17=var1140, java.lang.Throwable=var3670, $r23=var1452}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.dialect.lock.OptimisticLockingStrategy;	r18 := @parameter0: java.io.Serializable;	r19 := @parameter1: java.lang.Object;	r5 := @parameter2: java.lang.Object;	i0 := @parameter3: int;	r2 := @parameter4: org.hibernate.engine.spi.SharedSessionContractImplementor;	$r1 = r0.<org.hibernate.dialect.lock.OptimisticLockingStrategy: org.hibernate.persister.entity.Lockable lockable>;	$z0 = interfaceinvoke $r1.<org.hibernate.persister.entity.Lockable: boolean isVersioned()>();	if $z0 != 0 goto $r3 = (org.hibernate.event.spi.EventSource) r2;	$r21 = new org.hibernate.OptimisticLockException;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r9 = r0.<org.hibernate.dialect.lock.OptimisticLockingStrategy: org.hibernate.LockMode lockMode>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r9);	$r14 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] not supported for non-versioned entities [");	$r12 = r0.<org.hibernate.dialect.lock.OptimisticLockingStrategy: org.hibernate.persister.entity.Lockable lockable>;	$r13 = interfaceinvoke $r12.<org.hibernate.persister.entity.Lockable: java.lang.String getEntityName()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r21.<org.hibernate.OptimisticLockException: void <init>(java.lang.Object,java.lang.String)>(r5, $r17);	$r23 = (java.lang.Throwable) $r21;	throw $r23
;block_num 2