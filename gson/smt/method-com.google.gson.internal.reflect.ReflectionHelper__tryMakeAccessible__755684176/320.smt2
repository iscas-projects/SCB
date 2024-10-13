(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1337 0)
(declare-sort var2046 0)
(declare-sort var3494 0)
(declare-sort var1637 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3494_constructorToString/1631520055 (var1337) String)
(declare-fun getMessage/849299655 (var1637) String)
(declare-fun cast-from-var2046-to-var1637 (var2046) var1637)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1337 var1337)
(declare-const null-var2046 var2046)
(declare-const var1402 var1337) ; Statement: r0 := @parameter0: java.lang.reflect.Constructor 
(assert (not (= var1402 null-var1337)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3184 var2046) ; Statement: $r1 := @caughtexception 
(assert (not (= var3184 null-var2046)))
(define-const var58 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var58)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var58!1 String)
(assert (= var58!1 ""))
(assert true)
(define-const var1872 String (append/672562846 var58!1 "Failed making constructor \u0027")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed making constructor \'") 
(declare-const var58!2 String)
(assert (= var58!2 (str.++ var58!1 "Failed making constructor \u0027")))
(define-const var3655 String (var3494_constructorToString/1631520055 var1402)) ; Statement: $r3 = staticinvoke <com.google.gson.internal.reflect.ReflectionHelper: java.lang.String constructorToString(java.lang.reflect.Constructor)>(r0) 
(assert true)
(define-const var3289 String (append/672562846 var1872 var3655)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1872!1 String)
(assert (= var1872!1 (str.++ var1872 var3655)))
(assert true)
(define-const var3847 String (append/672562846 var3289 "\u0027 accessible; either increase its visibility or write a custom InstanceCreator or TypeAdapter for its declaring type: ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' accessible; either increase its visibility or write a custom InstanceCreator or TypeAdapter for its declaring type: ") 
(declare-const var3289!1 String)
(assert (= var3289!1 (str.++ var3289 "\u0027 accessible; either increase its visibility or write a custom InstanceCreator or TypeAdapter for its declaring type: ")))
(assert true)
(define-const var3366 String (getMessage/849299655 (cast-from-var2046-to-var1637 var3184))) ; Statement: $r6 = virtualinvoke $r1.<java.lang.Exception: java.lang.String getMessage()>() 
(assert true)
(define-const var1775 String (append/672562846 var3847 var3366)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3847!1 String)
(assert (= var3847!1 (str.++ var3847 var3366)))
(assert true)
(define-const var762 String (toString/-2075883882 var1775)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3494_constructorToString/1631520055=([java.lang.reflect.Constructor], java.lang.String), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var2046-to-var1637=([java.lang.Exception], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1337=java.lang.reflect.Constructor, var1402=r0, var2046=java.lang.Exception, var3184=$r1, var58=$r2, var1872=$r4, var3494=com.google.gson.internal.reflect.ReflectionHelper, var3655=$r3, var3289=$r5, var3847=$r7, var1637=java.lang.Throwable, var3366=$r6, var1775=$r8, var762=$r9}
; {java.lang.reflect.Constructor=var1337, r0=var1402, java.lang.Exception=var2046, $r1=var3184, $r2=var58, $r4=var1872, com.google.gson.internal.reflect.ReflectionHelper=var3494, $r3=var3655, $r5=var3289, $r7=var3847, java.lang.Throwable=var1637, $r6=var3366, $r8=var1775, $r9=var762}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.reflect.Constructor;	$r1 := @caughtexception;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed making constructor \'");	$r3 = staticinvoke <com.google.gson.internal.reflect.ReflectionHelper: java.lang.String constructorToString(java.lang.reflect.Constructor)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' accessible; either increase its visibility or write a custom InstanceCreator or TypeAdapter for its declaring type: ");	$r6 = virtualinvoke $r1.<java.lang.Exception: java.lang.String getMessage()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 2