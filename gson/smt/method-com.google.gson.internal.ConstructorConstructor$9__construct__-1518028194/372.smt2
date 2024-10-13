(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var39 0)
(declare-sort var1774 0)
(declare-sort var610 0)
(declare-sort var1785 0)
(declare-sort var3128 0)
(declare-sort var403 0)
(declare-sort var1650 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun val$constructor/1758936235 (var39) var1774)
(declare-fun arr-var610-init () (Array Int var610))
(declare-fun var3128-init () var3128)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var403_constructorToString/1631520055 (var1774) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1642269841 (var3128 String var1650) void)
(declare-fun cast-from-var1785-to-var1650 (var1785) var1650)
(declare-const null-var39 var39)
(declare-const null-var1785 var1785)
(declare-const var538 var39) ; Statement: r0 := @this: com.google.gson.internal.ConstructorConstructor$9 
(assert (not (= var538 null-var39)))
(define-const var2430 var1774 (val$constructor/1758936235 var538)) ; Statement: $r2 = r0.<com.google.gson.internal.ConstructorConstructor$9: java.lang.reflect.Constructor val$constructor> 
(define-const var1336 (Array Int var610) arr-var610-init) ; Statement: $r1 = newarray (java.lang.Object)[0] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2815 var1785) ; Statement: $r15 := @caughtexception 
(assert (not (= var2815 null-var1785)))
(define-const var2505 var3128 var3128-init) ; Statement: $r16 = new java.lang.RuntimeException 
(define-const var2777 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2777)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2777!1 String)
(assert (= var2777!1 ""))
(assert true)
(define-const var3922 String (append/672562846 var2777!1 "Failed to invoke constructor \u0027")) ; Statement: $r20 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to invoke constructor \'") 
(declare-const var2777!2 String)
(assert (= var2777!2 (str.++ var2777!1 "Failed to invoke constructor \u0027")))
(define-const var2973 var1774 (val$constructor/1758936235 var538)) ; Statement: $r18 = r0.<com.google.gson.internal.ConstructorConstructor$9: java.lang.reflect.Constructor val$constructor> 
(define-const var1695 String (var403_constructorToString/1631520055 var2973)) ; Statement: $r19 = staticinvoke <com.google.gson.internal.reflect.ReflectionHelper: java.lang.String constructorToString(java.lang.reflect.Constructor)>($r18) 
(assert true)
(define-const var2755 String (append/672562846 var3922 var1695)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var3922!1 String)
(assert (= var3922!1 (str.++ var3922 var1695)))
(assert true)
(define-const var3614 String (append/672562846 var2755 "\u0027 with no args")) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' with no args") 
(declare-const var2755!1 String)
(assert (= var2755!1 (str.++ var2755 "\u0027 with no args")))
(assert true)
(define-const var886 String (toString/-2075883882 var3614)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1642269841 var2505 var886 (cast-from-var1785-to-var1650 var2815))) ; Statement: specialinvoke $r16.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r23, $r15) 

(declare-const var2505!1 var3128)
(declare-const var886!1 String)
(declare-const var2815!1 var1785)
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {val$constructor/1758936235=([com.google.gson.internal.ConstructorConstructor$9], java.lang.reflect.Constructor), arr-var610-init=([], java.lang.Object[]), var3128-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var403_constructorToString/1631520055=([java.lang.reflect.Constructor], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1642269841=([java.lang.RuntimeException, java.lang.String, java.lang.Throwable], void), cast-from-var1785-to-var1650=([java.lang.InstantiationException], java.lang.Throwable)}
; {var39=com.google.gson.internal.ConstructorConstructor$9, var538=r0, var1774=java.lang.reflect.Constructor, var2430=$r2, var610=java.lang.Object, var1336=$r1, var1785=java.lang.InstantiationException, var2815=$r15, var3128=java.lang.RuntimeException, var2505=$r16, var2777=$r17, var3922=$r20, var2973=$r18, var403=com.google.gson.internal.reflect.ReflectionHelper, var1695=$r19, var2755=$r21, var3614=$r22, var886=$r23, var1650=java.lang.Throwable}
; {com.google.gson.internal.ConstructorConstructor$9=var39, r0=var538, java.lang.reflect.Constructor=var1774, $r2=var2430, java.lang.Object=var610, $r1=var1336, java.lang.InstantiationException=var1785, $r15=var2815, java.lang.RuntimeException=var3128, $r16=var2505, $r17=var2777, $r20=var3922, $r18=var2973, com.google.gson.internal.reflect.ReflectionHelper=var403, $r19=var1695, $r21=var2755, $r22=var3614, $r23=var886, java.lang.Throwable=var1650}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.gson.internal.ConstructorConstructor$9;	$r2 = r0.<com.google.gson.internal.ConstructorConstructor$9: java.lang.reflect.Constructor val$constructor>;	$r1 = newarray (java.lang.Object)[0];	$r15 := @caughtexception;	$r16 = new java.lang.RuntimeException;	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r20 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to invoke constructor \'");	$r18 = r0.<com.google.gson.internal.ConstructorConstructor$9: java.lang.reflect.Constructor val$constructor>;	$r19 = staticinvoke <com.google.gson.internal.reflect.ReflectionHelper: java.lang.String constructorToString(java.lang.reflect.Constructor)>($r18);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' with no args");	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r16.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r23, $r15);	throw $r16
;block_num 2