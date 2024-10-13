(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var759 0)
(declare-sort var1180 0)
(declare-sort var2540 0)
(declare-sort var1457 0)
(declare-sort var3769 0)
(declare-sort var2051 0)
(declare-sort var749 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun val$constructor/1758936235 (var759) var1180)
(declare-fun arr-var2540-init () (Array Int var2540))
(declare-fun var3769-init () var3769)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2051_constructorToString/1631520055 (var1180) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getCause/20745027 (var1457) var749)
(declare-fun <init>/1642269841 (var3769 String var749) void)
(declare-const null-var759 var759)
(declare-const null-var1457 var1457)
(declare-const var1045 var759) ; Statement: r0 := @this: com.google.gson.internal.ConstructorConstructor$9 
(assert (not (= var1045 null-var759)))
(define-const var277 var1180 (val$constructor/1758936235 var1045)) ; Statement: $r2 = r0.<com.google.gson.internal.ConstructorConstructor$9: java.lang.reflect.Constructor val$constructor> 
(define-const var1249 (Array Int var2540) arr-var2540-init) ; Statement: $r1 = newarray (java.lang.Object)[0] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2944 var1457) ; Statement: $r5 := @caughtexception 
(assert (not (= var2944 null-var1457)))
(define-const var1321 var3769 var3769-init) ; Statement: $r6 = new java.lang.RuntimeException 
(define-const var3432 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3432)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3432!1 String)
(assert (= var3432!1 ""))
(assert true)
(define-const var655 String (append/672562846 var3432!1 "Failed to invoke constructor \u0027")) ; Statement: $r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to invoke constructor \'") 
(declare-const var3432!2 String)
(assert (= var3432!2 (str.++ var3432!1 "Failed to invoke constructor \u0027")))
(define-const var1192 var1180 (val$constructor/1758936235 var1045)) ; Statement: $r8 = r0.<com.google.gson.internal.ConstructorConstructor$9: java.lang.reflect.Constructor val$constructor> 
(define-const var456 String (var2051_constructorToString/1631520055 var1192)) ; Statement: $r9 = staticinvoke <com.google.gson.internal.reflect.ReflectionHelper: java.lang.String constructorToString(java.lang.reflect.Constructor)>($r8) 
(assert true)
(define-const var3720 String (append/672562846 var655 var456)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var655!1 String)
(assert (= var655!1 (str.++ var655 var456)))
(assert true)
(define-const var1242 String (append/672562846 var3720 "\u0027 with no args")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' with no args") 
(declare-const var3720!1 String)
(assert (= var3720!1 (str.++ var3720 "\u0027 with no args")))
(assert true)
(define-const var2125 String (toString/-2075883882 var1242)) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3617 var749 (getCause/20745027 var2944)) ; Statement: $r13 = virtualinvoke $r5.<java.lang.reflect.InvocationTargetException: java.lang.Throwable getCause()>() 
(assert true)
;(assert (<init>/1642269841 var1321 var2125 var3617)) ; Statement: specialinvoke $r6.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r13) 

(declare-const var1321!1 var3769)
(declare-const var2125!1 String)
(declare-const var3617!1 var749)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {val$constructor/1758936235=([com.google.gson.internal.ConstructorConstructor$9], java.lang.reflect.Constructor), arr-var2540-init=([], java.lang.Object[]), var3769-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2051_constructorToString/1631520055=([java.lang.reflect.Constructor], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getCause/20745027=([java.lang.reflect.InvocationTargetException], java.lang.Throwable), <init>/1642269841=([java.lang.RuntimeException, java.lang.String, java.lang.Throwable], void)}
; {var759=com.google.gson.internal.ConstructorConstructor$9, var1045=r0, var1180=java.lang.reflect.Constructor, var277=$r2, var2540=java.lang.Object, var1249=$r1, var1457=java.lang.reflect.InvocationTargetException, var2944=$r5, var3769=java.lang.RuntimeException, var1321=$r6, var3432=$r7, var655=$r10, var1192=$r8, var2051=com.google.gson.internal.reflect.ReflectionHelper, var456=$r9, var3720=$r11, var1242=$r12, var2125=$r14, var749=java.lang.Throwable, var3617=$r13}
; {com.google.gson.internal.ConstructorConstructor$9=var759, r0=var1045, java.lang.reflect.Constructor=var1180, $r2=var277, java.lang.Object=var2540, $r1=var1249, java.lang.reflect.InvocationTargetException=var1457, $r5=var2944, java.lang.RuntimeException=var3769, $r6=var1321, $r7=var3432, $r10=var655, $r8=var1192, com.google.gson.internal.reflect.ReflectionHelper=var2051, $r9=var456, $r11=var3720, $r12=var1242, $r14=var2125, java.lang.Throwable=var749, $r13=var3617}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.gson.internal.ConstructorConstructor$9;	$r2 = r0.<com.google.gson.internal.ConstructorConstructor$9: java.lang.reflect.Constructor val$constructor>;	$r1 = newarray (java.lang.Object)[0];	$r5 := @caughtexception;	$r6 = new java.lang.RuntimeException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to invoke constructor \'");	$r8 = r0.<com.google.gson.internal.ConstructorConstructor$9: java.lang.reflect.Constructor val$constructor>;	$r9 = staticinvoke <com.google.gson.internal.reflect.ReflectionHelper: java.lang.String constructorToString(java.lang.reflect.Constructor)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' with no args");	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = virtualinvoke $r5.<java.lang.reflect.InvocationTargetException: java.lang.Throwable getCause()>();	specialinvoke $r6.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r13);	throw $r6
;block_num 2