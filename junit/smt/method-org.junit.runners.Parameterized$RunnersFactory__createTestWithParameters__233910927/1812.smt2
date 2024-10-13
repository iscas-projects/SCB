(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3103 0)
(declare-sort var488 0)
(declare-sort var2139 0)
(declare-sort var185 0)
(declare-sort var3409 0)
(declare-sort var2176 0)
(declare-sort var363 0)
(declare-sort var2063 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun replaceAll/1692887130 (String String String) String)
(declare-fun var3409_format/590284840 (String (Array Int var185)) String)
(declare-fun var2176-init () var2176)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2063_asList/1779083644 ((Array Int var185)) var363)
(declare-fun <init>/135499746 (var2176 String var488 var363) void)
(declare-const null-var3103 var3103)
(declare-const null-var488 var488)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var185__ (Array Int var185))
(declare-const var2331 var3103) ; Statement: r13 := @this: org.junit.runners.Parameterized$RunnersFactory 
(assert (not (= var2331 null-var3103)))
(declare-const var1455 var488) ; Statement: r10 := @parameter0: org.junit.runners.model.TestClass 
(assert (not (= var1455 null-var488)))
(declare-const var1706 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1706 null-String)))
(declare-const var3343 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3343 null-Int)))
(declare-const var3404 (Array Int var185)) ; Statement: r3 := @parameter3: java.lang.Object[] 
(assert (not (= var3404 null-__Array__Int__var185__)))
(define-const var1915 String (Int_toString/1350422511 var3343)) ; Statement: $r1 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>(i0) 
(assert true)
(define-const var2320 String (replaceAll/1692887130 var1706 "\u005c{index\u005c}" var1915)) ; Statement: r2 = virtualinvoke r0.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("\\{index\\}", $r1) 
(assert (= (replaceAll/1692887130 var1706 "\u005c{index\u005c}" var1915) (str.replace_re_all var1706 (str.to_re "{index}") var1915)))
(define-const var1025 String (var3409_format/590284840 var2320 var3404)) ; Statement: r4 = staticinvoke <java.text.MessageFormat: java.lang.String format(java.lang.String,java.lang.Object[])>(r2, r3) 
(define-const var2455 var2176 var2176-init) ; Statement: $r5 = new org.junit.runners.parameterized.TestWithParameters 
(define-const var1610 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1610)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1610!1 String)
(assert (= var1610!1 ""))
(assert true)
(define-const var2742 String (append/672562846 var1610!1 "[")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var1610!2 String)
(assert (= var1610!2 (str.++ var1610!1 "[")))
(assert true)
(define-const var33 String (append/672562846 var2742 var1025)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2742!1 String)
(assert (= var2742!1 (str.++ var2742 var1025)))
(assert true)
(define-const var1164 String (append/672562846 var33 "]")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var33!1 String)
(assert (= var33!1 (str.++ var33 "]")))
(assert true)
(define-const var2943 String (toString/-2075883882 var1164)) ; Statement: $r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1150 var363 (var2063_asList/1779083644 var3404)) ; Statement: $r11 = staticinvoke <java.util.Arrays: java.util.List asList(java.lang.Object[])>(r3) 
(assert true)
;(assert (<init>/135499746 var2455 var2943 var1455 var1150)) ; Statement: specialinvoke $r5.<org.junit.runners.parameterized.TestWithParameters: void <init>(java.lang.String,org.junit.runners.model.TestClass,java.util.List)>($r12, r10, $r11) 

(declare-const var2455!1 var2176)
(declare-const var2943!1 String)
(declare-const var1455!1 var488)
(declare-const var1150!1 var363)
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {Int_toString/1350422511=([int], java.lang.String), replaceAll/1692887130=([java.lang.String, java.lang.String, java.lang.String], java.lang.String), var3409_format/590284840=([java.lang.String, java.lang.Object[]], java.lang.String), var2176-init=([], org.junit.runners.parameterized.TestWithParameters), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2063_asList/1779083644=([java.lang.Object[]], java.util.List), <init>/135499746=([org.junit.runners.parameterized.TestWithParameters, java.lang.String, org.junit.runners.model.TestClass, java.util.List], void)}
; {var3103=org.junit.runners.Parameterized$RunnersFactory, var2331=r13, var488=org.junit.runners.model.TestClass, var1455=r10, var1706=r0, var2139=null_type, var3343=i0, var185=java.lang.Object, var3404=r3, var1915=$r1, var2320=r2, var3409=java.text.MessageFormat, var1025=r4, var2176=org.junit.runners.parameterized.TestWithParameters, var2455=$r5, var1610=$r6, var2742=$r7, var33=$r8, var1164=$r9, var2943=$r12, var363=java.util.List, var2063=java.util.Arrays, var1150=$r11}
; {org.junit.runners.Parameterized$RunnersFactory=var3103, r13=var2331, org.junit.runners.model.TestClass=var488, r10=var1455, r0=var1706, null_type=var2139, i0=var3343, java.lang.Object=var185, r3=var3404, $r1=var1915, r2=var2320, java.text.MessageFormat=var3409, r4=var1025, org.junit.runners.parameterized.TestWithParameters=var2176, $r5=var2455, $r6=var1610, $r7=var2742, $r8=var33, $r9=var1164, $r12=var2943, java.util.List=var363, java.util.Arrays=var2063, $r11=var1150}
;seq <java.lang.Integer: java.lang.String toString(int)>;	<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r13 := @this: org.junit.runners.Parameterized$RunnersFactory;	r10 := @parameter0: org.junit.runners.model.TestClass;	r0 := @parameter1: java.lang.String;	i0 := @parameter2: int;	r3 := @parameter3: java.lang.Object[];	$r1 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>(i0);	r2 = virtualinvoke r0.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("\\{index\\}", $r1);	r4 = staticinvoke <java.text.MessageFormat: java.lang.String format(java.lang.String,java.lang.Object[])>(r2, r3);	$r5 = new org.junit.runners.parameterized.TestWithParameters;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = staticinvoke <java.util.Arrays: java.util.List asList(java.lang.Object[])>(r3);	specialinvoke $r5.<org.junit.runners.parameterized.TestWithParameters: void <init>(java.lang.String,org.junit.runners.model.TestClass,java.util.List)>($r12, r10, $r11);	return $r5
;block_num 1