(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var318 0)
(declare-sort var3098 0)
(declare-sort var1009 0)
(declare-sort var439 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getConstructors/-1160885883 (ClassObject) (Array Int var3098))
(declare-fun getLength-Arr-var3098-1 ((Array Int var3098)) Int)
(declare-fun var1009-init () var1009)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/928068787 (var1009 String) void)
(declare-fun cast-from-var1009-to-var439 (var1009) var439)
(declare-const null-ClassObject ClassObject)
(declare-const null-__Array__Int__var318__ (Array Int var318))
(declare-const null-var3098 var3098)
(declare-const var1036 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var1036 null-ClassObject)))
(declare-const var289 (Array Int var318)) ; Statement: r10 := @parameter1: org.hibernate.type.Type[] 
(assert (not (= var289 null-__Array__Int__var318__)))
(assert true)
(define-const var3305 (Array Int var3098) (getConstructors/-1160885883 var1036)) ; Statement: r1 = virtualinvoke r0.<java.lang.Class: java.lang.reflect.Constructor[] getConstructors()>() 
(define-const var1269 var3098 null-var3098) ; Statement: r20 = null 
(define-const var1770 Int 0) ; Statement: i4 = 0 
(define-const var3779 Int (getLength-Arr-var3098-1 var3305)) ; Statement: i0 = lengthof r1 
(define-const var3924 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
 ; Statement: if i5 >= i0 goto (branch) 
(assert (>= var3924 var3779)) ; Cond: i5 >= i0 
 ; Statement: if i4 != 1 goto $r22 = new org.hibernate.PropertyNotFoundException 
(assert (not (= var1770 1))) ; Cond: i4 != 1 
(define-const var1906 var1009 var1009-init) ; Statement: $r22 = new org.hibernate.PropertyNotFoundException 
(define-const var3044 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3044)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3044!1 String)
(assert (= var3044!1 ""))
(assert true)
(define-const var2760 String (append/672562846 var3044!1 "no appropriate constructor in class: ")) ; Statement: $r5 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("no appropriate constructor in class: ") 
(declare-const var3044!2 String)
(assert (= var3044!2 (str.++ var3044!1 "no appropriate constructor in class: ")))
(assert true)
(define-const var882 String (getName/-1958580599 var1036)) ; Statement: $r4 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1943 String (append/672562846 var2760 var882)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2760!1 String)
(assert (= var2760!1 (str.++ var2760 var882)))
(assert true)
(define-const var3681 String (toString/-2075883882 var1943)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/928068787 var1906 var3681)) ; Statement: specialinvoke $r22.<org.hibernate.PropertyNotFoundException: void <init>(java.lang.String)>($r7) 

(declare-const var1906!1 var1009)
(declare-const var3681!1 String)
(define-const var2993 var439 (cast-from-var1009-to-var439 var1906!1)) ; Statement: $r23 = (java.lang.Throwable) $r22 
 ; Statement: throw $r23 
(check-sat)
(get-model)
(get-unsat-core)
; {getConstructors/-1160885883=([java.lang.Class], java.lang.reflect.Constructor[]), getLength-Arr-var3098-1=([java.lang.reflect.Constructor[]], int), var1009-init=([], org.hibernate.PropertyNotFoundException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/928068787=([org.hibernate.PropertyNotFoundException, java.lang.String], void), cast-from-var1009-to-var439=([org.hibernate.PropertyNotFoundException], java.lang.Throwable)}
; {var1036=r0, var318=org.hibernate.type.Type, var289=r10, var3098=java.lang.reflect.Constructor, var3305=r1, var1269=r20, var1770=i4, var3779=i0, var3924=i5, var1009=org.hibernate.PropertyNotFoundException, var1906=$r22, var3044=$r21, var2760=$r5, var882=$r4, var1943=$r6, var3681=$r7, var439=java.lang.Throwable, var2993=$r23}
; {r0=var1036, org.hibernate.type.Type=var318, r10=var289, java.lang.reflect.Constructor=var3098, r1=var3305, r20=var1269, i4=var1770, i0=var3779, i5=var3924, org.hibernate.PropertyNotFoundException=var1009, $r22=var1906, $r21=var3044, $r5=var2760, $r4=var882, $r6=var1943, $r7=var3681, java.lang.Throwable=var439, $r23=var2993}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	r10 := @parameter1: org.hibernate.type.Type[];	r1 = virtualinvoke r0.<java.lang.Class: java.lang.reflect.Constructor[] getConstructors()>();	r20 = null;	i4 = 0;	i0 = lengthof r1;	i5 = 0;	if i5 >= i0 goto (branch);	if i4 != 1 goto $r22 = new org.hibernate.PropertyNotFoundException;	$r22 = new org.hibernate.PropertyNotFoundException;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("no appropriate constructor in class: ");	$r4 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r22.<org.hibernate.PropertyNotFoundException: void <init>(java.lang.String)>($r7);	$r23 = (java.lang.Throwable) $r22;	throw $r23
;block_num 4