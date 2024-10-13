(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var650 0)
(declare-sort var2596 0)
(declare-sort var860 0)
(declare-sort var490 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getPropertyNames/259401778 (var650) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var860-init () var860)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getReturnedClass/1189296611 (var650) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/928068787 (var860 String) void)
(declare-fun cast-from-var860-to-var490 (var860) var490)
(declare-const null-var650 var650)
(declare-const null-String String)
(declare-const var2976 var650) ; Statement: r0 := @this: org.hibernate.type.ComponentType 
(assert (not (= var2976 null-var650)))
(declare-const var818 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var818 null-String)))
(assert true)
(define-const var3904 (Array Int String) (getPropertyNames/259401778 var2976)) ; Statement: r1 = virtualinvoke r0.<org.hibernate.type.ComponentType: java.lang.String[] getPropertyNames()>() 
(define-const var3113 Int 0) ; Statement: i1 = 0 
(define-const var786 Int (getLength-Arr-String-1 var3904)) ; Statement: i0 = lengthof r1 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto $r14 = new org.hibernate.PropertyNotFoundException 
(assert (>= var3113 var786)) ; Cond: i1 >= i0 
(define-const var2041 var860 var860-init) ; Statement: $r14 = new org.hibernate.PropertyNotFoundException 
(define-const var3971 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3971)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3971!1 String)
(assert (= var3971!1 ""))
(assert true)
(define-const var1267 String (append/672562846 var3971!1 "Unable to locate property named ")) ; Statement: $r5 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate property named ") 
(declare-const var3971!2 String)
(assert (= var3971!2 (str.++ var3971!1 "Unable to locate property named ")))
(assert true)
(define-const var2759 String (append/672562846 var1267 var818)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var1267!1 String)
(assert (= var1267!1 (str.++ var1267 var818)))
(assert true)
(define-const var2387 String (append/672562846 var2759 " on ")) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" on ") 
(declare-const var2759!1 String)
(assert (= var2759!1 (str.++ var2759 " on ")))
(assert true)
(define-const var1054 ClassObject (getReturnedClass/1189296611 var2976)) ; Statement: $r7 = virtualinvoke r0.<org.hibernate.type.ComponentType: java.lang.Class getReturnedClass()>() 
(assert true)
(define-const var2921 String (getName/-1958580599 var1054)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var879 String (append/672562846 var2387 var2921)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var2387!1 String)
(assert (= var2387!1 (str.++ var2387 var2921)))
(assert true)
(define-const var1811 String (toString/-2075883882 var879)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/928068787 var2041 var1811)) ; Statement: specialinvoke $r14.<org.hibernate.PropertyNotFoundException: void <init>(java.lang.String)>($r11) 

(declare-const var2041!1 var860)
(declare-const var1811!1 String)
(define-const var401 var490 (cast-from-var860-to-var490 var2041!1)) ; Statement: $r15 = (java.lang.Throwable) $r14 
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {getPropertyNames/259401778=([org.hibernate.type.ComponentType], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), var860-init=([], org.hibernate.PropertyNotFoundException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getReturnedClass/1189296611=([org.hibernate.type.ComponentType], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/928068787=([org.hibernate.PropertyNotFoundException, java.lang.String], void), cast-from-var860-to-var490=([org.hibernate.PropertyNotFoundException], java.lang.Throwable)}
; {var650=org.hibernate.type.ComponentType, var2976=r0, var818=r4, var2596=null_type, var3904=r1, var3113=i1, var786=i0, var860=org.hibernate.PropertyNotFoundException, var2041=$r14, var3971=$r13, var1267=$r5, var2759=$r6, var2387=$r9, var1054=$r7, var2921=$r8, var879=$r10, var1811=$r11, var490=java.lang.Throwable, var401=$r15}
; {org.hibernate.type.ComponentType=var650, r0=var2976, r4=var818, null_type=var2596, r1=var3904, i1=var3113, i0=var786, org.hibernate.PropertyNotFoundException=var860, $r14=var2041, $r13=var3971, $r5=var1267, $r6=var2759, $r9=var2387, $r7=var1054, $r8=var2921, $r10=var879, $r11=var1811, java.lang.Throwable=var490, $r15=var401}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.type.ComponentType;	r4 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<org.hibernate.type.ComponentType: java.lang.String[] getPropertyNames()>();	i1 = 0;	i0 = lengthof r1;	if i1 >= i0 goto $r14 = new org.hibernate.PropertyNotFoundException;	$r14 = new org.hibernate.PropertyNotFoundException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to locate property named ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" on ");	$r7 = virtualinvoke r0.<org.hibernate.type.ComponentType: java.lang.Class getReturnedClass()>();	$r8 = virtualinvoke $r7.<java.lang.Class: java.lang.String getName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<org.hibernate.PropertyNotFoundException: void <init>(java.lang.String)>($r11);	$r15 = (java.lang.Throwable) $r14;	throw $r15
;block_num 3