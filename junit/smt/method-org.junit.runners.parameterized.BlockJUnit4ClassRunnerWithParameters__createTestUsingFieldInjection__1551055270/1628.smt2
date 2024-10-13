(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2298 0)
(declare-sort var594 0)
(declare-sort var2254 0)
(declare-sort var3921 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAnnotatedFieldsByParameter/851773623 (var2298) var594)
(declare-fun var594_size/-959786421 (var594) Int)
(declare-fun parameters/445451055 (var2298) (Array Int var2254))
(declare-fun getLength-Arr-var2254-1 ((Array Int var2254)) Int)
(declare-fun var3921-init () var3921)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-8765015 (var3921 String) void)
(declare-const null-var2298 var2298)
(declare-const var2836 var2298) ; Statement: r0 := @this: org.junit.runners.parameterized.BlockJUnit4ClassRunnerWithParameters 
(assert (not (= var2836 null-var2298)))
(assert true)
(define-const var1644 var594 (getAnnotatedFieldsByParameter/851773623 var2836)) ; Statement: r1 = specialinvoke r0.<org.junit.runners.parameterized.BlockJUnit4ClassRunnerWithParameters: java.util.List getAnnotatedFieldsByParameter()>() 
(define-const var3011 Int (var594_size/-959786421 var1644)) ; Statement: $i1 = interfaceinvoke r1.<java.util.List: int size()>() 
(define-const var3216 (Array Int var2254) (parameters/445451055 var2836)) ; Statement: $r2 = r0.<org.junit.runners.parameterized.BlockJUnit4ClassRunnerWithParameters: java.lang.Object[] parameters> 
(define-const var2148 Int (getLength-Arr-var2254-1 var3216)) ; Statement: $i0 = lengthof $r2 
 ; Statement: if $i1 == $i0 goto $r3 = virtualinvoke r0.<org.junit.runners.parameterized.BlockJUnit4ClassRunnerWithParameters: org.junit.runners.model.TestClass getTestClass()>() 
(assert (not (= var3011 var2148))) ; Negate: Cond: $i1 == $i0  
(define-const var1881 var3921 var3921-init) ; Statement: $r14 = new java.lang.Exception 
(define-const var3530 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3530)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3530!1 String)
(assert (= var3530!1 ""))
(assert true)
(define-const var573 String (append/672562846 var3530!1 "Wrong number of parameters and @Parameter fields. @Parameter fields counted: ")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Wrong number of parameters and @Parameter fields. @Parameter fields counted: ") 
(declare-const var3530!2 String)
(assert (= var3530!2 (str.++ var3530!1 "Wrong number of parameters and @Parameter fields. @Parameter fields counted: ")))
(define-const var1199 Int (var594_size/-959786421 var1644)) ; Statement: $i3 = interfaceinvoke r1.<java.util.List: int size()>() 
(assert true)
(define-const var1395 String (append/-1001720160 var573 var1199)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3) 
(declare-const var573!1 String)
(assert (str.prefixof var573 var573!1))
(assert true)
(define-const var2414 String (append/672562846 var1395 ", available parameters: ")) ; Statement: $r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", available parameters: ") 
(declare-const var1395!1 String)
(assert (= var1395!1 (str.++ var1395 ", available parameters: ")))
(define-const var3084 (Array Int var2254) (parameters/445451055 var2836)) ; Statement: $r18 = r0.<org.junit.runners.parameterized.BlockJUnit4ClassRunnerWithParameters: java.lang.Object[] parameters> 
(define-const var2470 Int (getLength-Arr-var2254-1 var3084)) ; Statement: $i4 = lengthof $r18 
(assert true)
(define-const var2287 String (append/-1001720160 var2414 var2470)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4) 
(declare-const var2414!1 String)
(assert (str.prefixof var2414 var2414!1))
(assert true)
(define-const var3507 String (append/672562846 var2287 ".")) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var2287!1 String)
(assert (= var2287!1 (str.++ var2287 ".")))
(assert true)
(define-const var1905 String (toString/-2075883882 var3507)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-8765015 var1881 var1905)) ; Statement: specialinvoke $r14.<java.lang.Exception: void <init>(java.lang.String)>($r22) 

(declare-const var1881!1 var3921)
(declare-const var1905!1 String)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {getAnnotatedFieldsByParameter/851773623=([org.junit.runners.parameterized.BlockJUnit4ClassRunnerWithParameters], java.util.List), var594_size/-959786421=([java.util.List], int), parameters/445451055=([org.junit.runners.parameterized.BlockJUnit4ClassRunnerWithParameters], java.lang.Object[]), getLength-Arr-var2254-1=([java.lang.Object[]], int), var3921-init=([], java.lang.Exception), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-8765015=([java.lang.Exception, java.lang.String], void)}
; {var2298=org.junit.runners.parameterized.BlockJUnit4ClassRunnerWithParameters, var2836=r0, var594=java.util.List, var1644=r1, var3011=$i1, var2254=java.lang.Object, var3216=$r2, var2148=$i0, var3921=java.lang.Exception, var1881=$r14, var3530=$r15, var573=$r16, var1199=$i3, var1395=$r17, var2414=$r19, var3084=$r18, var2470=$i4, var2287=$r20, var3507=$r21, var1905=$r22}
; {org.junit.runners.parameterized.BlockJUnit4ClassRunnerWithParameters=var2298, r0=var2836, java.util.List=var594, r1=var1644, $i1=var3011, java.lang.Object=var2254, $r2=var3216, $i0=var2148, java.lang.Exception=var3921, $r14=var1881, $r15=var3530, $r16=var573, $i3=var1199, $r17=var1395, $r19=var2414, $r18=var3084, $i4=var2470, $r20=var2287, $r21=var3507, $r22=var1905}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.junit.runners.parameterized.BlockJUnit4ClassRunnerWithParameters;	r1 = specialinvoke r0.<org.junit.runners.parameterized.BlockJUnit4ClassRunnerWithParameters: java.util.List getAnnotatedFieldsByParameter()>();	$i1 = interfaceinvoke r1.<java.util.List: int size()>();	$r2 = r0.<org.junit.runners.parameterized.BlockJUnit4ClassRunnerWithParameters: java.lang.Object[] parameters>;	$i0 = lengthof $r2;	if $i1 == $i0 goto $r3 = virtualinvoke r0.<org.junit.runners.parameterized.BlockJUnit4ClassRunnerWithParameters: org.junit.runners.model.TestClass getTestClass()>();	$r14 = new java.lang.Exception;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Wrong number of parameters and @Parameter fields. @Parameter fields counted: ");	$i3 = interfaceinvoke r1.<java.util.List: int size()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	$r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", available parameters: ");	$r18 = r0.<org.junit.runners.parameterized.BlockJUnit4ClassRunnerWithParameters: java.lang.Object[] parameters>;	$i4 = lengthof $r18;	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<java.lang.Exception: void <init>(java.lang.String)>($r22);	throw $r14
;block_num 2