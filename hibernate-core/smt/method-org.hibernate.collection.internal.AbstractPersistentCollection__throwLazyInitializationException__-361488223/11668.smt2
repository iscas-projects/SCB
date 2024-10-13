(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2508 0)
(declare-sort var3227 0)
(declare-sort var492 0)
(declare-sort var1491 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var492-init () var492)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun role/-190296674 (var2508) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1436286819 (var492 String) void)
(declare-fun cast-from-var492-to-var1491 (var492) var1491)
(declare-const null-var2508 var2508)
(declare-const null-String String)
(declare-const var2303 var2508) ; Statement: r2 := @this: org.hibernate.collection.internal.AbstractPersistentCollection 
(assert (not (= var2303 null-var2508)))
(declare-const var1309 String) ; Statement: r10 := @parameter0: java.lang.String 
(assert (not (= var1309 null-String)))
(define-const var2018 var492 var492-init) ; Statement: $r17 = new org.hibernate.LazyInitializationException 
(define-const var3840 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3840)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3840!1 String)
(assert (= var3840!1 ""))
(assert true)
(define-const var1017 String (append/672562846 var3840!1 "failed to lazily initialize a collection")) ; Statement: $r8 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("failed to lazily initialize a collection") 
(declare-const var3840!2 String)
(assert (= var3840!2 (str.++ var3840!1 "failed to lazily initialize a collection")))
(define-const var671 String (role/-190296674 var2303)) ; Statement: $r3 = r2.<org.hibernate.collection.internal.AbstractPersistentCollection: java.lang.String role> 
 ; Statement: if $r3 != null goto $r16 = new java.lang.StringBuilder 
(assert (not (= var671 null-String))) ; Cond: $r3 != null 
(define-const var2136 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2136)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2136!1 String)
(assert (= var2136!1 ""))
(assert true)
(define-const var3729 String (append/672562846 var2136!1 " of role: ")) ; Statement: $r6 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" of role: ") 
(declare-const var2136!2 String)
(assert (= var2136!2 (str.++ var2136!1 " of role: ")))
(define-const var3348 String (role/-190296674 var2303)) ; Statement: $r5 = r2.<org.hibernate.collection.internal.AbstractPersistentCollection: java.lang.String role> 
(assert true)
(define-const var3187 String (append/672562846 var3729 var3348)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3729!1 String)
(assert (= var3729!1 (str.++ var3729 var3348)))
(assert true)
(define-const var3381 String (toString/-2075883882 var3187)) ; Statement: $r14 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var2891 String (append/672562846 var1017 var3381)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var1017!1 String)
(assert (= var1017!1 (str.++ var1017 var3381)))
(assert true)
(define-const var3055 String (append/672562846 var2891 ", ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var2891!1 String)
(assert (= var2891!1 (str.++ var2891 ", ")))
(assert true)
(define-const var3319 String (append/672562846 var3055 var1309)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10) 
(declare-const var3055!1 String)
(assert (= var3055!1 (str.++ var3055 var1309)))
(assert true)
(define-const var94 String (toString/-2075883882 var3319)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1436286819 var2018 var94)) ; Statement: specialinvoke $r17.<org.hibernate.LazyInitializationException: void <init>(java.lang.String)>($r13) 

(declare-const var2018!1 var492)
(declare-const var94!1 String)
(define-const var505 var1491 (cast-from-var492-to-var1491 var2018!1)) ; Statement: $r18 = (java.lang.Throwable) $r17 
 ; Statement: throw $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {var492-init=([], org.hibernate.LazyInitializationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), role/-190296674=([org.hibernate.collection.internal.AbstractPersistentCollection], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1436286819=([org.hibernate.LazyInitializationException, java.lang.String], void), cast-from-var492-to-var1491=([org.hibernate.LazyInitializationException], java.lang.Throwable)}
; {var2508=org.hibernate.collection.internal.AbstractPersistentCollection, var2303=r2, var1309=r10, var3227=null_type, var492=org.hibernate.LazyInitializationException, var2018=$r17, var3840=$r15, var1017=$r8, var671=$r3, var2136=$r16, var3729=$r6, var3348=$r5, var3187=$r7, var3381=$r14, var2891=$r9, var3055=$r11, var3319=$r12, var94=$r13, var1491=java.lang.Throwable, var505=$r18}
; {org.hibernate.collection.internal.AbstractPersistentCollection=var2508, r2=var2303, r10=var1309, null_type=var3227, org.hibernate.LazyInitializationException=var492, $r17=var2018, $r15=var3840, $r8=var1017, $r3=var671, $r16=var2136, $r6=var3729, $r5=var3348, $r7=var3187, $r14=var3381, $r9=var2891, $r11=var3055, $r12=var3319, $r13=var94, java.lang.Throwable=var1491, $r18=var505}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r2 := @this: org.hibernate.collection.internal.AbstractPersistentCollection;	r10 := @parameter0: java.lang.String;	$r17 = new org.hibernate.LazyInitializationException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("failed to lazily initialize a collection");	$r3 = r2.<org.hibernate.collection.internal.AbstractPersistentCollection: java.lang.String role>;	if $r3 != null goto $r16 = new java.lang.StringBuilder;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" of role: ");	$r5 = r2.<org.hibernate.collection.internal.AbstractPersistentCollection: java.lang.String role>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r14 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r17.<org.hibernate.LazyInitializationException: void <init>(java.lang.String)>($r13);	$r18 = (java.lang.Throwable) $r17;	throw $r18
;block_num 3