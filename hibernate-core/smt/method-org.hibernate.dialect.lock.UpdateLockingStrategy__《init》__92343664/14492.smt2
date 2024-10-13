(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var24 0)
(declare-sort var3077 0)
(declare-sort var1405 0)
(declare-sort var1552 0)
(declare-sort var2221 0)
(declare-sort var792 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1552) void)
(declare-fun cast-from-var24-to-var1552 (var24) var1552)
(declare-fun lockable/-80693908 (var24) var3077)
(declare-fun lockMode/-80693908 (var24) var1405)
(declare-fun lessThan/186053417 (var1405 var1405) Bool)
(declare-fun var2221-init () var2221)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1552) String)
(declare-fun cast-from-var1405-to-var1552 (var1405) var1552)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var2221 String) void)
(declare-fun cast-from-var2221-to-var792 (var2221) var792)
(declare-const null-var24 var24)
(declare-const null-var3077 var3077)
(declare-const null-var1405 var1405)
(declare-const var1405-UPGRADE var1405)
(declare-const var2561 var24) ; Statement: r0 := @this: org.hibernate.dialect.lock.UpdateLockingStrategy 
(assert (not (= var2561 null-var24)))
(declare-const var3958 var3077) ; Statement: r1 := @parameter0: org.hibernate.persister.entity.Lockable 
(assert (not (= var3958 null-var3077)))
(declare-const var602 var1405) ; Statement: r2 := @parameter1: org.hibernate.LockMode 
(assert (not (= var602 null-var1405)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var24-to-var1552 var2561))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2561!1 var24)
(declare-const var2561!2 var24)
(assert (not (= var2561!2 null-var24)))
(assert (= (lockable/-80693908 var2561!2) var3958)) ; Statement: r0.<org.hibernate.dialect.lock.UpdateLockingStrategy: org.hibernate.persister.entity.Lockable lockable> = r1 
(declare-const var2561!3 var24)
(assert (not (= var2561!3 null-var24)))
(assert (= (lockMode/-80693908 var2561!3) var602)) ; Statement: r0.<org.hibernate.dialect.lock.UpdateLockingStrategy: org.hibernate.LockMode lockMode> = r2 
(define-const var1013 var1405 var1405-UPGRADE) ; Statement: $r3 = <org.hibernate.LockMode: org.hibernate.LockMode UPGRADE> 
(assert true)
(define-const var3521 Bool (lessThan/186053417 var602 var1013)) ; Statement: $z0 = virtualinvoke r2.<org.hibernate.LockMode: boolean lessThan(org.hibernate.LockMode)>($r3) 
 ; Statement: if $z0 == 0 goto $z1 = interfaceinvoke r1.<org.hibernate.persister.entity.Lockable: boolean isVersioned()>() 
(assert (not (= (ite var3521 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2408 var2221 var2221-init) ; Statement: $r14 = new org.hibernate.HibernateException 
(define-const var293 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var293)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var293!1 String)
(assert (= var293!1 ""))
(assert true)
(define-const var1290 String (append/672562846 var293!1 "[")) ; Statement: $r9 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var293!2 String)
(assert (= var293!2 (str.++ var293!1 "[")))
(assert true)
(define-const var3931 String (append/-1031950772 var1290 (cast-from-var1405-to-var1552 var602))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var1290!1 String)
(assert (str.prefixof var1290 var1290!1))
(assert true)
(define-const var3983 String (append/672562846 var3931 "] not valid for update statement")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] not valid for update statement") 
(declare-const var3931!1 String)
(assert (= var3931!1 (str.++ var3931 "] not valid for update statement")))
(assert true)
(define-const var2463 String (toString/-2075883882 var3983)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var2408 var2463)) ; Statement: specialinvoke $r14.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r12) 

(declare-const var2408!1 var2221)
(declare-const var2463!1 String)
(define-const var3829 var792 (cast-from-var2221-to-var792 var2408!1)) ; Statement: $r15 = (java.lang.Throwable) $r14 
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var24-to-var1552=([org.hibernate.dialect.lock.UpdateLockingStrategy], java.lang.Object), lockable/-80693908=([org.hibernate.dialect.lock.UpdateLockingStrategy], org.hibernate.persister.entity.Lockable), lockMode/-80693908=([org.hibernate.dialect.lock.UpdateLockingStrategy], org.hibernate.LockMode), lessThan/186053417=([org.hibernate.LockMode, org.hibernate.LockMode], boolean), var2221-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1405-to-var1552=([org.hibernate.LockMode], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var2221-to-var792=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var24=org.hibernate.dialect.lock.UpdateLockingStrategy, var2561=r0, var3077=org.hibernate.persister.entity.Lockable, var3958=r1, var1405=org.hibernate.LockMode, var602=r2, var1552=java.lang.Object, var1013=$r3, var3521=$z0, var2221=org.hibernate.HibernateException, var2408=$r14, var293=$r13, var1290=$r9, var3931=$r10, var3983=$r11, var2463=$r12, var792=java.lang.Throwable, var3829=$r15}
; {org.hibernate.dialect.lock.UpdateLockingStrategy=var24, r0=var2561, org.hibernate.persister.entity.Lockable=var3077, r1=var3958, org.hibernate.LockMode=var1405, r2=var602, java.lang.Object=var1552, $r3=var1013, $z0=var3521, org.hibernate.HibernateException=var2221, $r14=var2408, $r13=var293, $r9=var1290, $r10=var3931, $r11=var3983, $r12=var2463, java.lang.Throwable=var792, $r15=var3829}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.dialect.lock.UpdateLockingStrategy;	r1 := @parameter0: org.hibernate.persister.entity.Lockable;	r2 := @parameter1: org.hibernate.LockMode;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.hibernate.dialect.lock.UpdateLockingStrategy: org.hibernate.persister.entity.Lockable lockable> = r1;	r0.<org.hibernate.dialect.lock.UpdateLockingStrategy: org.hibernate.LockMode lockMode> = r2;	$r3 = <org.hibernate.LockMode: org.hibernate.LockMode UPGRADE>;	$z0 = virtualinvoke r2.<org.hibernate.LockMode: boolean lessThan(org.hibernate.LockMode)>($r3);	if $z0 == 0 goto $z1 = interfaceinvoke r1.<org.hibernate.persister.entity.Lockable: boolean isVersioned()>();	$r14 = new org.hibernate.HibernateException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] not valid for update statement");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r12);	$r15 = (java.lang.Throwable) $r14;	throw $r15
;block_num 2