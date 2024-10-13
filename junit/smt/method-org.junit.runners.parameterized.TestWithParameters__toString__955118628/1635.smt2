(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2976 0)
(declare-sort var2072 0)
(declare-sort var730 0)
(declare-sort var508 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun testClass/-1146174836 (var2976) var2072)
(declare-fun getName/1384225025 (var2072) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/-1146174836 (var2976) String)
(declare-fun parameters/-1146174836 (var2976) var730)
(declare-fun append/-1031950772 (String var508) String)
(declare-fun cast-from-var730-to-var508 (var730) var508)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2976 var2976)
(declare-const var665 var2976) ; Statement: r1 := @this: org.junit.runners.parameterized.TestWithParameters 
(assert (not (= var665 null-var2976)))
(define-const var1063 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1063)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1063!1 String)
(assert (= var1063!1 ""))
(define-const var2914 var2072 (testClass/-1146174836 var665)) ; Statement: $r2 = r1.<org.junit.runners.parameterized.TestWithParameters: org.junit.runners.model.TestClass testClass> 
(assert true)
(define-const var2027 String (getName/1384225025 var2914)) ; Statement: $r3 = virtualinvoke $r2.<org.junit.runners.model.TestClass: java.lang.String getName()>() 
(assert true)
(define-const var1942 String (append/672562846 var1063!1 var2027)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1063!2 String)
(assert (= var1063!2 (str.++ var1063!1 var2027)))
(assert true)
(define-const var3949 String (append/672562846 var1942 " \u0027")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" \'") 
(declare-const var1942!1 String)
(assert (= var1942!1 (str.++ var1942 " \u0027")))
(define-const var515 String (name/-1146174836 var665)) ; Statement: $r5 = r1.<org.junit.runners.parameterized.TestWithParameters: java.lang.String name> 
(assert true)
(define-const var2620 String (append/672562846 var3949 var515)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3949!1 String)
(assert (= var3949!1 (str.++ var3949 var515)))
(assert true)
(define-const var1481 String (append/672562846 var2620 "\u0027 with parameters ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' with parameters ") 
(declare-const var2620!1 String)
(assert (= var2620!1 (str.++ var2620 "\u0027 with parameters ")))
(define-const var3805 var730 (parameters/-1146174836 var665)) ; Statement: $r8 = r1.<org.junit.runners.parameterized.TestWithParameters: java.util.List parameters> 
(assert true)
(define-const var1889 String (append/-1031950772 var1481 (cast-from-var730-to-var508 var3805))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8) 
(declare-const var1481!1 String)
(assert (str.prefixof var1481 var1481!1))
(assert true)
(define-const var3720 String (toString/-2075883882 var1889)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), testClass/-1146174836=([org.junit.runners.parameterized.TestWithParameters], org.junit.runners.model.TestClass), getName/1384225025=([org.junit.runners.model.TestClass], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/-1146174836=([org.junit.runners.parameterized.TestWithParameters], java.lang.String), parameters/-1146174836=([org.junit.runners.parameterized.TestWithParameters], java.util.List), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var730-to-var508=([java.util.List], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2976=org.junit.runners.parameterized.TestWithParameters, var665=r1, var1063=$r0, var2072=org.junit.runners.model.TestClass, var2914=$r2, var2027=$r3, var1942=$r4, var3949=$r6, var515=$r5, var2620=$r7, var1481=$r9, var730=java.util.List, var3805=$r8, var508=java.lang.Object, var1889=$r10, var3720=$r11}
; {org.junit.runners.parameterized.TestWithParameters=var2976, r1=var665, $r0=var1063, org.junit.runners.model.TestClass=var2072, $r2=var2914, $r3=var2027, $r4=var1942, $r6=var3949, $r5=var515, $r7=var2620, $r9=var1481, java.util.List=var730, $r8=var3805, java.lang.Object=var508, $r10=var1889, $r11=var3720}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.junit.runners.parameterized.TestWithParameters;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.junit.runners.parameterized.TestWithParameters: org.junit.runners.model.TestClass testClass>;	$r3 = virtualinvoke $r2.<org.junit.runners.model.TestClass: java.lang.String getName()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" \'");	$r5 = r1.<org.junit.runners.parameterized.TestWithParameters: java.lang.String name>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' with parameters ");	$r8 = r1.<org.junit.runners.parameterized.TestWithParameters: java.util.List parameters>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 1