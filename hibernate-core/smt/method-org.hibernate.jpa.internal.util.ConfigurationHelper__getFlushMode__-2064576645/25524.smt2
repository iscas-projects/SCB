(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var491 0)
(declare-sort var1885 0)
(declare-sort var462 0)
(declare-sort var3380 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var491-to-var1885 (var491) var1885)
(declare-fun var462-init () var462)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var491) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1483537917 (var462 String) void)
(declare-fun cast-from-var462-to-var3380 (var462) var3380)
(declare-const null-var491 var491)
(declare-const null-var1885 var1885)
(declare-const var3836 var491) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var3836 null-var491)))
(declare-const var558 var1885) ; Statement: r1 := @parameter1: org.hibernate.FlushMode 
(assert (not (= var558 null-var1885)))
(define-const var2524 Bool false) ; Statement: $z0 = r0 instanceof org.hibernate.FlushMode 
 ; Statement: if $z0 == 0 goto $z1 = r0 instanceof javax.persistence.FlushModeType 
(assert (not (= (ite var2524 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3486 var1885 (cast-from-var491-to-var1885 var3836)) ; Statement: r9 = (org.hibernate.FlushMode) r0 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r9 != null goto return r9 
(assert (not (not (= var3486 null-var1885)))) ; Negate: Cond: r9 != null  
(define-const var1025 var462 var462-init) ; Statement: $r11 = new javax.persistence.PersistenceException 
(define-const var1193 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1193)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1193!1 String)
(assert (= var1193!1 ""))
(assert true)
(define-const var3718 String (append/672562846 var1193!1 "Unable to parse org.hibernate.flushMode: ")) ; Statement: $r4 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to parse org.hibernate.flushMode: ") 
(declare-const var1193!2 String)
(assert (= var1193!2 (str.++ var1193!1 "Unable to parse org.hibernate.flushMode: ")))
(assert true)
(define-const var3979 String (append/-1031950772 var3718 var3836)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var3718!1 String)
(assert (str.prefixof var3718 var3718!1))
(assert true)
(define-const var1473 String (toString/-2075883882 var3979)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1483537917 var1025 var1473)) ; Statement: specialinvoke $r11.<javax.persistence.PersistenceException: void <init>(java.lang.String)>($r6) 

(declare-const var1025!1 var462)
(declare-const var1473!1 String)
(define-const var1026 var3380 (cast-from-var462-to-var3380 var1025!1)) ; Statement: $r12 = (java.lang.Throwable) $r11 
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var491-to-var1885=([java.lang.Object], org.hibernate.FlushMode), var462-init=([], javax.persistence.PersistenceException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1483537917=([javax.persistence.PersistenceException, java.lang.String], void), cast-from-var462-to-var3380=([javax.persistence.PersistenceException], java.lang.Throwable)}
; {var491=java.lang.Object, var3836=r0, var1885=org.hibernate.FlushMode, var558=r1, var2524=$z0, var3486=r9, var462=javax.persistence.PersistenceException, var1025=$r11, var1193=$r10, var3718=$r4, var3979=$r5, var1473=$r6, var3380=java.lang.Throwable, var1026=$r12}
; {java.lang.Object=var491, r0=var3836, org.hibernate.FlushMode=var1885, r1=var558, $z0=var2524, r9=var3486, javax.persistence.PersistenceException=var462, $r11=var1025, $r10=var1193, $r4=var3718, $r5=var3979, $r6=var1473, java.lang.Throwable=var3380, $r12=var1026}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Object;	r1 := @parameter1: org.hibernate.FlushMode;	$z0 = r0 instanceof org.hibernate.FlushMode;	if $z0 == 0 goto $z1 = r0 instanceof javax.persistence.FlushModeType;	r9 = (org.hibernate.FlushMode) r0;	goto [?= (branch)];	if r9 != null goto return r9;	$r11 = new javax.persistence.PersistenceException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to parse org.hibernate.flushMode: ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<javax.persistence.PersistenceException: void <init>(java.lang.String)>($r6);	$r12 = (java.lang.Throwable) $r11;	throw $r12
;block_num 4