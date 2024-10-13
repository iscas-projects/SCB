(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2405 0)
(declare-sort var1602 0)
(declare-sort var1866 0)
(declare-sort var3978 0)
(declare-sort var1247 0)
(declare-sort var664 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3978) void)
(declare-fun cast-from-var2405-to-var3978 (var2405) var3978)
(declare-fun lockable/-1061921544 (var2405) var1602)
(declare-fun lockMode/-1061921544 (var2405) var1866)
(declare-fun lessThan/186053417 (var1866 var1866) Bool)
(declare-fun var1247-init () var1247)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3978) String)
(declare-fun cast-from-var1866-to-var3978 (var1866) var3978)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var1247 String) void)
(declare-fun cast-from-var1247-to-var664 (var1247) var664)
(declare-const null-var2405 var2405)
(declare-const null-var1602 var1602)
(declare-const null-var1866 var1866)
(declare-const var1866-PESSIMISTIC_READ var1866)
(declare-const var792 var2405) ; Statement: r0 := @this: org.hibernate.dialect.lock.PessimisticWriteUpdateLockingStrategy 
(assert (not (= var792 null-var2405)))
(declare-const var3236 var1602) ; Statement: r1 := @parameter0: org.hibernate.persister.entity.Lockable 
(assert (not (= var3236 null-var1602)))
(declare-const var3399 var1866) ; Statement: r2 := @parameter1: org.hibernate.LockMode 
(assert (not (= var3399 null-var1866)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2405-to-var3978 var792))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var792!1 var2405)
(declare-const var792!2 var2405)
(assert (not (= var792!2 null-var2405)))
(assert (= (lockable/-1061921544 var792!2) var3236)) ; Statement: r0.<org.hibernate.dialect.lock.PessimisticWriteUpdateLockingStrategy: org.hibernate.persister.entity.Lockable lockable> = r1 
(declare-const var792!3 var2405)
(assert (not (= var792!3 null-var2405)))
(assert (= (lockMode/-1061921544 var792!3) var3399)) ; Statement: r0.<org.hibernate.dialect.lock.PessimisticWriteUpdateLockingStrategy: org.hibernate.LockMode lockMode> = r2 
(define-const var1018 var1866 var1866-PESSIMISTIC_READ) ; Statement: $r3 = <org.hibernate.LockMode: org.hibernate.LockMode PESSIMISTIC_READ> 
(assert true)
(define-const var3660 Bool (lessThan/186053417 var3399 var1018)) ; Statement: $z0 = virtualinvoke r2.<org.hibernate.LockMode: boolean lessThan(org.hibernate.LockMode)>($r3) 
 ; Statement: if $z0 == 0 goto $z1 = interfaceinvoke r1.<org.hibernate.persister.entity.Lockable: boolean isVersioned()>() 
(assert (not (= (ite var3660 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2052 var1247 var1247-init) ; Statement: $r14 = new org.hibernate.HibernateException 
(define-const var3427 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3427)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3427!1 String)
(assert (= var3427!1 ""))
(assert true)
(define-const var2844 String (append/672562846 var3427!1 "[")) ; Statement: $r9 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var3427!2 String)
(assert (= var3427!2 (str.++ var3427!1 "[")))
(assert true)
(define-const var2497 String (append/-1031950772 var2844 (cast-from-var1866-to-var3978 var3399))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var2844!1 String)
(assert (str.prefixof var2844 var2844!1))
(assert true)
(define-const var2077 String (append/672562846 var2497 "] not valid for update statement")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] not valid for update statement") 
(declare-const var2497!1 String)
(assert (= var2497!1 (str.++ var2497 "] not valid for update statement")))
(assert true)
(define-const var3673 String (toString/-2075883882 var2077)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var2052 var3673)) ; Statement: specialinvoke $r14.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r12) 

(declare-const var2052!1 var1247)
(declare-const var3673!1 String)
(define-const var3243 var664 (cast-from-var1247-to-var664 var2052!1)) ; Statement: $r15 = (java.lang.Throwable) $r14 
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2405-to-var3978=([org.hibernate.dialect.lock.PessimisticWriteUpdateLockingStrategy], java.lang.Object), lockable/-1061921544=([org.hibernate.dialect.lock.PessimisticWriteUpdateLockingStrategy], org.hibernate.persister.entity.Lockable), lockMode/-1061921544=([org.hibernate.dialect.lock.PessimisticWriteUpdateLockingStrategy], org.hibernate.LockMode), lessThan/186053417=([org.hibernate.LockMode, org.hibernate.LockMode], boolean), var1247-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1866-to-var3978=([org.hibernate.LockMode], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var1247-to-var664=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var2405=org.hibernate.dialect.lock.PessimisticWriteUpdateLockingStrategy, var792=r0, var1602=org.hibernate.persister.entity.Lockable, var3236=r1, var1866=org.hibernate.LockMode, var3399=r2, var3978=java.lang.Object, var1018=$r3, var3660=$z0, var1247=org.hibernate.HibernateException, var2052=$r14, var3427=$r13, var2844=$r9, var2497=$r10, var2077=$r11, var3673=$r12, var664=java.lang.Throwable, var3243=$r15}
; {org.hibernate.dialect.lock.PessimisticWriteUpdateLockingStrategy=var2405, r0=var792, org.hibernate.persister.entity.Lockable=var1602, r1=var3236, org.hibernate.LockMode=var1866, r2=var3399, java.lang.Object=var3978, $r3=var1018, $z0=var3660, org.hibernate.HibernateException=var1247, $r14=var2052, $r13=var3427, $r9=var2844, $r10=var2497, $r11=var2077, $r12=var3673, java.lang.Throwable=var664, $r15=var3243}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.dialect.lock.PessimisticWriteUpdateLockingStrategy;	r1 := @parameter0: org.hibernate.persister.entity.Lockable;	r2 := @parameter1: org.hibernate.LockMode;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.hibernate.dialect.lock.PessimisticWriteUpdateLockingStrategy: org.hibernate.persister.entity.Lockable lockable> = r1;	r0.<org.hibernate.dialect.lock.PessimisticWriteUpdateLockingStrategy: org.hibernate.LockMode lockMode> = r2;	$r3 = <org.hibernate.LockMode: org.hibernate.LockMode PESSIMISTIC_READ>;	$z0 = virtualinvoke r2.<org.hibernate.LockMode: boolean lessThan(org.hibernate.LockMode)>($r3);	if $z0 == 0 goto $z1 = interfaceinvoke r1.<org.hibernate.persister.entity.Lockable: boolean isVersioned()>();	$r14 = new org.hibernate.HibernateException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] not valid for update statement");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r12);	$r15 = (java.lang.Throwable) $r14;	throw $r15
;block_num 2