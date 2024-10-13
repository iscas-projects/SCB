(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1995 0)
(declare-sort var383 0)
(declare-sort var371 0)
(declare-sort var2881 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var371_constructorToString/369598502 (var1995) String)
(declare-fun getMessage/849299655 (var2881) String)
(declare-fun cast-from-var383-to-var2881 (var383) var2881)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1995 var1995)
(declare-const null-var383 var383)
(declare-const var438 var1995) ; Statement: r0 := @parameter0: java.lang.reflect.Constructor 
(assert (not (= var438 null-var1995)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2859 var383) ; Statement: $r1 := @caughtexception 
(assert (not (= var2859 null-var383)))
(define-const var197 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var197)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var197!1 String)
(assert (= var197!1 ""))
(assert true)
(define-const var176 String (append/672562846 var197!1 "Failed making constructor \u0027")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed making constructor \'") 
(declare-const var197!2 String)
(assert (= var197!2 (str.++ var197!1 "Failed making constructor \u0027")))
(define-const var3582 String (var371_constructorToString/369598502 var438)) ; Statement: $r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.reflect.ReflectionHelper: java.lang.String constructorToString(java.lang.reflect.Constructor)>(r0) 
(assert true)
(define-const var2063 String (append/672562846 var176 var3582)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var176!1 String)
(assert (= var176!1 (str.++ var176 var3582)))
(assert true)
(define-const var2878 String (append/672562846 var2063 "\u0027 accessible; either change its visibility or write a custom InstanceCreator or TypeAdapter for its declaring type: ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' accessible; either change its visibility or write a custom InstanceCreator or TypeAdapter for its declaring type: ") 
(declare-const var2063!1 String)
(assert (= var2063!1 (str.++ var2063 "\u0027 accessible; either change its visibility or write a custom InstanceCreator or TypeAdapter for its declaring type: ")))
(assert true)
(define-const var2170 String (getMessage/849299655 (cast-from-var383-to-var2881 var2859))) ; Statement: $r6 = virtualinvoke $r1.<java.lang.Exception: java.lang.String getMessage()>() 
(assert true)
(define-const var131 String (append/672562846 var2878 var2170)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2878!1 String)
(assert (= var2878!1 (str.++ var2878 var2170)))
(assert true)
(define-const var3533 String (toString/-2075883882 var131)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var371_constructorToString/369598502=([java.lang.reflect.Constructor], java.lang.String), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var383-to-var2881=([java.lang.Exception], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1995=java.lang.reflect.Constructor, var438=r0, var383=java.lang.Exception, var2859=$r1, var197=$r2, var176=$r4, var371=com.google.javascript.jscomp.jarjar.com.google.gson.internal.reflect.ReflectionHelper, var3582=$r3, var2063=$r5, var2878=$r7, var2881=java.lang.Throwable, var2170=$r6, var131=$r8, var3533=$r9}
; {java.lang.reflect.Constructor=var1995, r0=var438, java.lang.Exception=var383, $r1=var2859, $r2=var197, $r4=var176, com.google.javascript.jscomp.jarjar.com.google.gson.internal.reflect.ReflectionHelper=var371, $r3=var3582, $r5=var2063, $r7=var2878, java.lang.Throwable=var2881, $r6=var2170, $r8=var131, $r9=var3533}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.reflect.Constructor;	$r1 := @caughtexception;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed making constructor \'");	$r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.reflect.ReflectionHelper: java.lang.String constructorToString(java.lang.reflect.Constructor)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' accessible; either change its visibility or write a custom InstanceCreator or TypeAdapter for its declaring type: ");	$r6 = virtualinvoke $r1.<java.lang.Exception: java.lang.String getMessage()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 2