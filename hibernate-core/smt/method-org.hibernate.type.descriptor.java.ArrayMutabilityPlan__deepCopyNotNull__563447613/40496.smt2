(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var122 0)
(declare-sort var2076 0)
(declare-sort var2022 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getClass/1258963082 (var2076) ClassObject)
(declare-fun isArray/1369458484 (ClassObject) Bool)
(declare-fun var2022-init () var2022)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2022 String) void)
(declare-const null-var122 var122)
(declare-const null-var2076 var2076)
(declare-const var1647 var122) ; Statement: r13 := @this: org.hibernate.type.descriptor.java.ArrayMutabilityPlan 
(assert (not (= var1647 null-var122)))
(declare-const var2064 var2076) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var2064 null-var2076)))
(assert true)
(define-const var3286 ClassObject (getClass/1258963082 var2064)) ; Statement: $r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1398 Bool (isArray/1369458484 var3286)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.Class: boolean isArray()>() 
 ; Statement: if $z0 != 0 goto i0 = staticinvoke <java.lang.reflect.Array: int getLength(java.lang.Object)>(r0) 
(assert (not (not (= (ite var1398 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2317 var2022 var2022-init) ; Statement: $r5 = new java.lang.IllegalArgumentException 
(define-const var3294 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3294)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3294!1 String)
(assert (= var3294!1 ""))
(assert true)
(define-const var1073 String (append/672562846 var3294!1 "Value was not an array [")) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Value was not an array [") 
(declare-const var3294!2 String)
(assert (= var3294!2 (str.++ var3294!1 "Value was not an array [")))
(assert true)
(define-const var3372 ClassObject (getClass/1258963082 var2064)) ; Statement: $r7 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3432 String (getName/-1958580599 var3372)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3731 String (append/672562846 var1073 var3432)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1073!1 String)
(assert (= var1073!1 (str.++ var1073 var3432)))
(assert true)
(define-const var3803 String (append/672562846 var3731 "]")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3731!1 String)
(assert (= var3731!1 (str.++ var3731 "]")))
(assert true)
(define-const var1707 String (toString/-2075883882 var3803)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2317 var1707)) ; Statement: specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r12) 

(declare-const var2317!1 var2022)
(declare-const var1707!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {getClass/1258963082=([java.lang.Object], java.lang.Class), isArray/1369458484=([java.lang.Class], boolean), var2022-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var122=org.hibernate.type.descriptor.java.ArrayMutabilityPlan, var1647=r13, var2076=java.lang.Object, var2064=r0, var3286=$r1, var1398=$z0, var2022=java.lang.IllegalArgumentException, var2317=$r5, var3294=$r6, var1073=$r9, var3372=$r7, var3432=$r8, var3731=$r10, var3803=$r11, var1707=$r12}
; {org.hibernate.type.descriptor.java.ArrayMutabilityPlan=var122, r13=var1647, java.lang.Object=var2076, r0=var2064, $r1=var3286, $z0=var1398, java.lang.IllegalArgumentException=var2022, $r5=var2317, $r6=var3294, $r9=var1073, $r7=var3372, $r8=var3432, $r10=var3731, $r11=var3803, $r12=var1707}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r13 := @this: org.hibernate.type.descriptor.java.ArrayMutabilityPlan;	r0 := @parameter0: java.lang.Object;	$r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$z0 = virtualinvoke $r1.<java.lang.Class: boolean isArray()>();	if $z0 != 0 goto i0 = staticinvoke <java.lang.reflect.Array: int getLength(java.lang.Object)>(r0);	$r5 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Value was not an array [");	$r7 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r8 = virtualinvoke $r7.<java.lang.Class: java.lang.String getName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r12);	throw $r5
;block_num 2