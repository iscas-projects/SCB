(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var266 0)
(declare-sort var919 0)
(declare-sort var3686 0)
(declare-sort var1467 0)
(declare-sort var1766 0)
(declare-sort var1311 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1467) void)
(declare-fun cast-from-var266-to-var1467 (var266) var1467)
(declare-fun lockable/1743389813 (var266) var919)
(declare-fun lockMode/1743389813 (var266) var3686)
(declare-fun lessThan/186053417 (var3686 var3686) Bool)
(declare-fun var1766-init () var1766)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1467) String)
(declare-fun cast-from-var3686-to-var1467 (var3686) var1467)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var1766 String) void)
(declare-fun cast-from-var1766-to-var1311 (var1766) var1311)
(declare-const null-var266 var266)
(declare-const null-var919 var919)
(declare-const null-var3686 var3686)
(declare-const var3686-PESSIMISTIC_READ var3686)
(declare-const var196 var266) ; Statement: r0 := @this: org.hibernate.dialect.lock.PessimisticReadUpdateLockingStrategy 
(assert (not (= var196 null-var266)))
(declare-const var8 var919) ; Statement: r1 := @parameter0: org.hibernate.persister.entity.Lockable 
(assert (not (= var8 null-var919)))
(declare-const var1076 var3686) ; Statement: r2 := @parameter1: org.hibernate.LockMode 
(assert (not (= var1076 null-var3686)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var266-to-var1467 var196))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var196!1 var266)
(declare-const var196!2 var266)
(assert (not (= var196!2 null-var266)))
(assert (= (lockable/1743389813 var196!2) var8)) ; Statement: r0.<org.hibernate.dialect.lock.PessimisticReadUpdateLockingStrategy: org.hibernate.persister.entity.Lockable lockable> = r1 
(declare-const var196!3 var266)
(assert (not (= var196!3 null-var266)))
(assert (= (lockMode/1743389813 var196!3) var1076)) ; Statement: r0.<org.hibernate.dialect.lock.PessimisticReadUpdateLockingStrategy: org.hibernate.LockMode lockMode> = r2 
(define-const var1666 var3686 var3686-PESSIMISTIC_READ) ; Statement: $r3 = <org.hibernate.LockMode: org.hibernate.LockMode PESSIMISTIC_READ> 
(assert true)
(define-const var2657 Bool (lessThan/186053417 var1076 var1666)) ; Statement: $z0 = virtualinvoke r2.<org.hibernate.LockMode: boolean lessThan(org.hibernate.LockMode)>($r3) 
 ; Statement: if $z0 == 0 goto $z1 = interfaceinvoke r1.<org.hibernate.persister.entity.Lockable: boolean isVersioned()>() 
(assert (not (= (ite var2657 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3582 var1766 var1766-init) ; Statement: $r14 = new org.hibernate.HibernateException 
(define-const var1729 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1729)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1729!1 String)
(assert (= var1729!1 ""))
(assert true)
(define-const var3292 String (append/672562846 var1729!1 "[")) ; Statement: $r9 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var1729!2 String)
(assert (= var1729!2 (str.++ var1729!1 "[")))
(assert true)
(define-const var505 String (append/-1031950772 var3292 (cast-from-var3686-to-var1467 var1076))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var3292!1 String)
(assert (str.prefixof var3292 var3292!1))
(assert true)
(define-const var222 String (append/672562846 var505 "] not valid for update statement")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] not valid for update statement") 
(declare-const var505!1 String)
(assert (= var505!1 (str.++ var505 "] not valid for update statement")))
(assert true)
(define-const var3434 String (toString/-2075883882 var222)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var3582 var3434)) ; Statement: specialinvoke $r14.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r12) 

(declare-const var3582!1 var1766)
(declare-const var3434!1 String)
(define-const var1161 var1311 (cast-from-var1766-to-var1311 var3582!1)) ; Statement: $r15 = (java.lang.Throwable) $r14 
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var266-to-var1467=([org.hibernate.dialect.lock.PessimisticReadUpdateLockingStrategy], java.lang.Object), lockable/1743389813=([org.hibernate.dialect.lock.PessimisticReadUpdateLockingStrategy], org.hibernate.persister.entity.Lockable), lockMode/1743389813=([org.hibernate.dialect.lock.PessimisticReadUpdateLockingStrategy], org.hibernate.LockMode), lessThan/186053417=([org.hibernate.LockMode, org.hibernate.LockMode], boolean), var1766-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3686-to-var1467=([org.hibernate.LockMode], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var1766-to-var1311=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var266=org.hibernate.dialect.lock.PessimisticReadUpdateLockingStrategy, var196=r0, var919=org.hibernate.persister.entity.Lockable, var8=r1, var3686=org.hibernate.LockMode, var1076=r2, var1467=java.lang.Object, var1666=$r3, var2657=$z0, var1766=org.hibernate.HibernateException, var3582=$r14, var1729=$r13, var3292=$r9, var505=$r10, var222=$r11, var3434=$r12, var1311=java.lang.Throwable, var1161=$r15}
; {org.hibernate.dialect.lock.PessimisticReadUpdateLockingStrategy=var266, r0=var196, org.hibernate.persister.entity.Lockable=var919, r1=var8, org.hibernate.LockMode=var3686, r2=var1076, java.lang.Object=var1467, $r3=var1666, $z0=var2657, org.hibernate.HibernateException=var1766, $r14=var3582, $r13=var1729, $r9=var3292, $r10=var505, $r11=var222, $r12=var3434, java.lang.Throwable=var1311, $r15=var1161}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.dialect.lock.PessimisticReadUpdateLockingStrategy;	r1 := @parameter0: org.hibernate.persister.entity.Lockable;	r2 := @parameter1: org.hibernate.LockMode;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.hibernate.dialect.lock.PessimisticReadUpdateLockingStrategy: org.hibernate.persister.entity.Lockable lockable> = r1;	r0.<org.hibernate.dialect.lock.PessimisticReadUpdateLockingStrategy: org.hibernate.LockMode lockMode> = r2;	$r3 = <org.hibernate.LockMode: org.hibernate.LockMode PESSIMISTIC_READ>;	$z0 = virtualinvoke r2.<org.hibernate.LockMode: boolean lessThan(org.hibernate.LockMode)>($r3);	if $z0 == 0 goto $z1 = interfaceinvoke r1.<org.hibernate.persister.entity.Lockable: boolean isVersioned()>();	$r14 = new org.hibernate.HibernateException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] not valid for update statement");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r12);	$r15 = (java.lang.Throwable) $r14;	throw $r15
;block_num 2