(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var413 0)
(declare-sort var1838 0)
(declare-sort var3444 0)
(declare-sort var205 0)
(declare-sort var1551 0)
(declare-sort var2979 0)
(declare-sort var3098 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var205) void)
(declare-fun cast-from-var413-to-var205 (var413) var205)
(declare-fun lockable/-1773196784 (var413) var1838)
(declare-fun lockMode/-1773196784 (var413) var3444)
(declare-fun lessThan/186053417 (var3444 var3444) Bool)
(declare-fun var1551-init () var1551)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var205) String)
(declare-fun cast-from-var3444-to-var205 (var3444) var205)
(declare-fun var2979_getEntityName/-1914780628 (var2979) String)
(declare-fun cast-from-var1838-to-var2979 (var1838) var2979)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var1551 String) void)
(declare-fun cast-from-var1551-to-var3098 (var1551) var3098)
(declare-const null-var413 var413)
(declare-const null-var1838 var1838)
(declare-const null-var3444 var3444)
(declare-const var3444-PESSIMISTIC_READ var3444)
(declare-const var3152 var413) ; Statement: r0 := @this: org.hibernate.dialect.lock.PessimisticForceIncrementLockingStrategy 
(assert (not (= var3152 null-var413)))
(declare-const var2912 var1838) ; Statement: r1 := @parameter0: org.hibernate.persister.entity.Lockable 
(assert (not (= var2912 null-var1838)))
(declare-const var3564 var3444) ; Statement: r2 := @parameter1: org.hibernate.LockMode 
(assert (not (= var3564 null-var3444)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var413-to-var205 var3152))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3152!1 var413)
(declare-const var3152!2 var413)
(assert (not (= var3152!2 null-var413)))
(assert (= (lockable/-1773196784 var3152!2) var2912)) ; Statement: r0.<org.hibernate.dialect.lock.PessimisticForceIncrementLockingStrategy: org.hibernate.persister.entity.Lockable lockable> = r1 
(declare-const var3152!3 var413)
(assert (not (= var3152!3 null-var413)))
(assert (= (lockMode/-1773196784 var3152!3) var3564)) ; Statement: r0.<org.hibernate.dialect.lock.PessimisticForceIncrementLockingStrategy: org.hibernate.LockMode lockMode> = r2 
(define-const var86 var3444 var3444-PESSIMISTIC_READ) ; Statement: $r3 = <org.hibernate.LockMode: org.hibernate.LockMode PESSIMISTIC_READ> 
(assert true)
(define-const var1820 Bool (lessThan/186053417 var3564 var86)) ; Statement: $z0 = virtualinvoke r2.<org.hibernate.LockMode: boolean lessThan(org.hibernate.LockMode)>($r3) 
 ; Statement: if $z0 == 0 goto return 
(assert (not (= (ite var1820 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2564 var1551 var1551-init) ; Statement: $r14 = new org.hibernate.HibernateException 
(define-const var2238 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2238)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2238!1 String)
(assert (= var2238!1 ""))
(assert true)
(define-const var1630 String (append/672562846 var2238!1 "[")) ; Statement: $r6 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var2238!2 String)
(assert (= var2238!2 (str.++ var2238!1 "[")))
(assert true)
(define-const var1121 String (append/-1031950772 var1630 (cast-from-var3444-to-var205 var3564))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var1630!1 String)
(assert (str.prefixof var1630 var1630!1))
(assert true)
(define-const var1791 String (append/672562846 var1121 "] not valid for [")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] not valid for [") 
(declare-const var1121!1 String)
(assert (= var1121!1 (str.++ var1121 "] not valid for [")))
(define-const var3792 String (var2979_getEntityName/-1914780628 (cast-from-var1838-to-var2979 var2912))) ; Statement: $r8 = interfaceinvoke r1.<org.hibernate.persister.entity.Lockable: java.lang.String getEntityName()>() 
(assert true)
(define-const var3402 String (append/672562846 var1791 var3792)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1791!1 String)
(assert (= var1791!1 (str.++ var1791 var3792)))
(assert true)
(define-const var2154 String (append/672562846 var3402 "]")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3402!1 String)
(assert (= var3402!1 (str.++ var3402 "]")))
(assert true)
(define-const var2955 String (toString/-2075883882 var2154)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var2564 var2955)) ; Statement: specialinvoke $r14.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r12) 

(declare-const var2564!1 var1551)
(declare-const var2955!1 String)
(define-const var2702 var3098 (cast-from-var1551-to-var3098 var2564!1)) ; Statement: $r15 = (java.lang.Throwable) $r14 
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var413-to-var205=([org.hibernate.dialect.lock.PessimisticForceIncrementLockingStrategy], java.lang.Object), lockable/-1773196784=([org.hibernate.dialect.lock.PessimisticForceIncrementLockingStrategy], org.hibernate.persister.entity.Lockable), lockMode/-1773196784=([org.hibernate.dialect.lock.PessimisticForceIncrementLockingStrategy], org.hibernate.LockMode), lessThan/186053417=([org.hibernate.LockMode, org.hibernate.LockMode], boolean), var1551-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3444-to-var205=([org.hibernate.LockMode], java.lang.Object), var2979_getEntityName/-1914780628=([org.hibernate.persister.entity.EntityPersister], java.lang.String), cast-from-var1838-to-var2979=([org.hibernate.persister.entity.Lockable], org.hibernate.persister.entity.EntityPersister), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var1551-to-var3098=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var413=org.hibernate.dialect.lock.PessimisticForceIncrementLockingStrategy, var3152=r0, var1838=org.hibernate.persister.entity.Lockable, var2912=r1, var3444=org.hibernate.LockMode, var3564=r2, var205=java.lang.Object, var86=$r3, var1820=$z0, var1551=org.hibernate.HibernateException, var2564=$r14, var2238=$r13, var1630=$r6, var1121=$r7, var1791=$r9, var2979=org.hibernate.persister.entity.EntityPersister, var3792=$r8, var3402=$r10, var2154=$r11, var2955=$r12, var3098=java.lang.Throwable, var2702=$r15}
; {org.hibernate.dialect.lock.PessimisticForceIncrementLockingStrategy=var413, r0=var3152, org.hibernate.persister.entity.Lockable=var1838, r1=var2912, org.hibernate.LockMode=var3444, r2=var3564, java.lang.Object=var205, $r3=var86, $z0=var1820, org.hibernate.HibernateException=var1551, $r14=var2564, $r13=var2238, $r6=var1630, $r7=var1121, $r9=var1791, org.hibernate.persister.entity.EntityPersister=var2979, $r8=var3792, $r10=var3402, $r11=var2154, $r12=var2955, java.lang.Throwable=var3098, $r15=var2702}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.dialect.lock.PessimisticForceIncrementLockingStrategy;	r1 := @parameter0: org.hibernate.persister.entity.Lockable;	r2 := @parameter1: org.hibernate.LockMode;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.hibernate.dialect.lock.PessimisticForceIncrementLockingStrategy: org.hibernate.persister.entity.Lockable lockable> = r1;	r0.<org.hibernate.dialect.lock.PessimisticForceIncrementLockingStrategy: org.hibernate.LockMode lockMode> = r2;	$r3 = <org.hibernate.LockMode: org.hibernate.LockMode PESSIMISTIC_READ>;	$z0 = virtualinvoke r2.<org.hibernate.LockMode: boolean lessThan(org.hibernate.LockMode)>($r3);	if $z0 == 0 goto return;	$r14 = new org.hibernate.HibernateException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] not valid for [");	$r8 = interfaceinvoke r1.<org.hibernate.persister.entity.Lockable: java.lang.String getEntityName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r12);	$r15 = (java.lang.Throwable) $r14;	throw $r15
;block_num 2