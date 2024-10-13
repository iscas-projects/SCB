(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var847 0)
(declare-sort var259 0)
(declare-sort var1685 0)
(declare-sort var1175 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getPropertyNames/302556429 (var847) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var1685-init () var1685)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getReturnedClass/639001320 (var847) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/928068787 (var1685 String) void)
(declare-fun cast-from-var1685-to-var1175 (var1685) var1175)
(declare-const null-var847 var847)
(declare-const null-String String)
(declare-const var2930 var847) ; Statement: r0 := @this: org.hibernate.type.CompositeCustomType 
(assert (not (= var2930 null-var847)))
(declare-const var2211 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var2211 null-String)))
(assert true)
(define-const var787 (Array Int String) (getPropertyNames/302556429 var2930)) ; Statement: r1 = virtualinvoke r0.<org.hibernate.type.CompositeCustomType: java.lang.String[] getPropertyNames()>() 
(define-const var3779 Int 0) ; Statement: i1 = 0 
(define-const var3166 Int (getLength-Arr-String-1 var787)) ; Statement: i0 = lengthof r1 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto $r14 = new org.hibernate.PropertyNotFoundException 
(assert (>= var3779 var3166)) ; Cond: i1 >= i0 
(define-const var3153 var1685 var1685-init) ; Statement: $r14 = new org.hibernate.PropertyNotFoundException 
(define-const var1653 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1653)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1653!1 String)
(assert (= var1653!1 ""))
(assert true)
(define-const var245 String (append/672562846 var1653!1 "Unable to locate property named ")) ; Statement: $r5 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate property named ") 
(declare-const var1653!2 String)
(assert (= var1653!2 (str.++ var1653!1 "Unable to locate property named ")))
(assert true)
(define-const var594 String (append/672562846 var245 var2211)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var245!1 String)
(assert (= var245!1 (str.++ var245 var2211)))
(assert true)
(define-const var2390 String (append/672562846 var594 " on ")) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" on ") 
(declare-const var594!1 String)
(assert (= var594!1 (str.++ var594 " on ")))
(assert true)
(define-const var2868 ClassObject (getReturnedClass/639001320 var2930)) ; Statement: $r7 = virtualinvoke r0.<org.hibernate.type.CompositeCustomType: java.lang.Class getReturnedClass()>() 
(assert true)
(define-const var215 String (getName/-1958580599 var2868)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3722 String (append/672562846 var2390 var215)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var2390!1 String)
(assert (= var2390!1 (str.++ var2390 var215)))
(assert true)
(define-const var912 String (toString/-2075883882 var3722)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/928068787 var3153 var912)) ; Statement: specialinvoke $r14.<org.hibernate.PropertyNotFoundException: void <init>(java.lang.String)>($r11) 

(declare-const var3153!1 var1685)
(declare-const var912!1 String)
(define-const var2209 var1175 (cast-from-var1685-to-var1175 var3153!1)) ; Statement: $r15 = (java.lang.Throwable) $r14 
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {getPropertyNames/302556429=([org.hibernate.type.CompositeCustomType], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), var1685-init=([], org.hibernate.PropertyNotFoundException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getReturnedClass/639001320=([org.hibernate.type.CompositeCustomType], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/928068787=([org.hibernate.PropertyNotFoundException, java.lang.String], void), cast-from-var1685-to-var1175=([org.hibernate.PropertyNotFoundException], java.lang.Throwable)}
; {var847=org.hibernate.type.CompositeCustomType, var2930=r0, var2211=r4, var259=null_type, var787=r1, var3779=i1, var3166=i0, var1685=org.hibernate.PropertyNotFoundException, var3153=$r14, var1653=$r13, var245=$r5, var594=$r6, var2390=$r9, var2868=$r7, var215=$r8, var3722=$r10, var912=$r11, var1175=java.lang.Throwable, var2209=$r15}
; {org.hibernate.type.CompositeCustomType=var847, r0=var2930, r4=var2211, null_type=var259, r1=var787, i1=var3779, i0=var3166, org.hibernate.PropertyNotFoundException=var1685, $r14=var3153, $r13=var1653, $r5=var245, $r6=var594, $r9=var2390, $r7=var2868, $r8=var215, $r10=var3722, $r11=var912, java.lang.Throwable=var1175, $r15=var2209}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.type.CompositeCustomType;	r4 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<org.hibernate.type.CompositeCustomType: java.lang.String[] getPropertyNames()>();	i1 = 0;	i0 = lengthof r1;	if i1 >= i0 goto $r14 = new org.hibernate.PropertyNotFoundException;	$r14 = new org.hibernate.PropertyNotFoundException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate property named ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" on ");	$r7 = virtualinvoke r0.<org.hibernate.type.CompositeCustomType: java.lang.Class getReturnedClass()>();	$r8 = virtualinvoke $r7.<java.lang.Class: java.lang.String getName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<org.hibernate.PropertyNotFoundException: void <init>(java.lang.String)>($r11);	$r15 = (java.lang.Throwable) $r14;	throw $r15
;block_num 3