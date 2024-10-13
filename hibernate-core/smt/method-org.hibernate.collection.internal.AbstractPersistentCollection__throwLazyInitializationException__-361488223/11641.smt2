(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1936 0)
(declare-sort var2677 0)
(declare-sort var342 0)
(declare-sort var2630 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var342-init () var342)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun role/-190296674 (var1936) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1436286819 (var342 String) void)
(declare-fun cast-from-var342-to-var2630 (var342) var2630)
(declare-const null-var1936 var1936)
(declare-const null-String String)
(declare-const var359 var1936) ; Statement: r2 := @this: org.hibernate.collection.internal.AbstractPersistentCollection 
(assert (not (= var359 null-var1936)))
(declare-const var880 String) ; Statement: r10 := @parameter0: java.lang.String 
(assert (not (= var880 null-String)))
(define-const var107 var342 var342-init) ; Statement: $r17 = new org.hibernate.LazyInitializationException 
(define-const var2948 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2948)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2948!1 String)
(assert (= var2948!1 ""))
(assert true)
(define-const var1593 String (append/672562846 var2948!1 "failed to lazily initialize a collection")) ; Statement: $r8 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("failed to lazily initialize a collection") 
(declare-const var2948!2 String)
(assert (= var2948!2 (str.++ var2948!1 "failed to lazily initialize a collection")))
(define-const var2916 String (role/-190296674 var359)) ; Statement: $r3 = r2.<org.hibernate.collection.internal.AbstractPersistentCollection: java.lang.String role> 
 ; Statement: if $r3 != null goto $r16 = new java.lang.StringBuilder 
(assert (not (not (= var2916 null-String)))) ; Negate: Cond: $r3 != null  
(define-const var3190 String "") ; Statement: $r14 = "" 
 ; Statement: goto [?= $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14)] 
(assert true) ; Non Conditional
(assert true)
(define-const var942 String (append/672562846 var1593 var3190)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var1593!1 String)
(assert (= var1593!1 (str.++ var1593 var3190)))
(assert true)
(define-const var136 String (append/672562846 var942 ", ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var942!1 String)
(assert (= var942!1 (str.++ var942 ", ")))
(assert true)
(define-const var229 String (append/672562846 var136 var880)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10) 
(declare-const var136!1 String)
(assert (= var136!1 (str.++ var136 var880)))
(assert true)
(define-const var2368 String (toString/-2075883882 var229)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1436286819 var107 var2368)) ; Statement: specialinvoke $r17.<org.hibernate.LazyInitializationException: void <init>(java.lang.String)>($r13) 

(declare-const var107!1 var342)
(declare-const var2368!1 String)
(define-const var1502 var2630 (cast-from-var342-to-var2630 var107!1)) ; Statement: $r18 = (java.lang.Throwable) $r17 
 ; Statement: throw $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {var342-init=([], org.hibernate.LazyInitializationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), role/-190296674=([org.hibernate.collection.internal.AbstractPersistentCollection], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1436286819=([org.hibernate.LazyInitializationException, java.lang.String], void), cast-from-var342-to-var2630=([org.hibernate.LazyInitializationException], java.lang.Throwable)}
; {var1936=org.hibernate.collection.internal.AbstractPersistentCollection, var359=r2, var880=r10, var2677=null_type, var342=org.hibernate.LazyInitializationException, var107=$r17, var2948=$r15, var1593=$r8, var2916=$r3, var3190=$r14, var942=$r9, var136=$r11, var229=$r12, var2368=$r13, var2630=java.lang.Throwable, var1502=$r18}
; {org.hibernate.collection.internal.AbstractPersistentCollection=var1936, r2=var359, r10=var880, null_type=var2677, org.hibernate.LazyInitializationException=var342, $r17=var107, $r15=var2948, $r8=var1593, $r3=var2916, $r14=var3190, $r9=var942, $r11=var136, $r12=var229, $r13=var2368, java.lang.Throwable=var2630, $r18=var1502}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.collection.internal.AbstractPersistentCollection;	r10 := @parameter0: java.lang.String;	$r17 = new org.hibernate.LazyInitializationException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("failed to lazily initialize a collection");	$r3 = r2.<org.hibernate.collection.internal.AbstractPersistentCollection: java.lang.String role>;	if $r3 != null goto $r16 = new java.lang.StringBuilder;	$r14 = "";	goto [?= $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14)];	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r17.<org.hibernate.LazyInitializationException: void <init>(java.lang.String)>($r13);	$r18 = (java.lang.Throwable) $r17;	throw $r18
;block_num 3