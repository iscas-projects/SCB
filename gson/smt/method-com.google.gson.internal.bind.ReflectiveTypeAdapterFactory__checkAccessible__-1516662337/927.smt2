(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2196 0)
(declare-sort var2473 0)
(declare-sort var743 0)
(declare-sort var3888 0)
(declare-sort var290 0)
(declare-sort var2166 0)
(declare-sort var3125 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var2473-to-var743 (var2473) var743)
(declare-fun var743_getModifiers/622745125 (var743) Int)
(declare-fun var3888_isStatic/379715466 (Int) Bool)
(declare-fun var290_canAccess/24921369 (var2473 var2196) Bool)
(declare-fun var2166_getAccessibleObjectDescription/-550785423 (var2473 Bool) String)
(declare-fun var3125-init () var3125)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1993171084 (var3125 String) void)
(declare-const null-var2196 var2196)
(declare-const null-var2473 var2473)
(declare-const var2953 var2196) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var2953 null-var2196)))
(declare-const var3013 var2473) ; Statement: r0 := @parameter1: java.lang.reflect.AccessibleObject 
(assert (not (= var3013 null-var2473)))
(define-const var3999 var743 (cast-from-var2473-to-var743 var3013)) ; Statement: $r1 = (java.lang.reflect.Member) r0 
(define-const var3536 Int (var743_getModifiers/622745125 var3999)) ; Statement: $i0 = interfaceinvoke $r1.<java.lang.reflect.Member: int getModifiers()>() 
(define-const var1449 Bool (var3888_isStatic/379715466 var3536)) ; Statement: $z0 = staticinvoke <java.lang.reflect.Modifier: boolean isStatic(int)>($i0) 
 ; Statement: if $z0 == 0 goto $r9 = r2 
(assert (= (ite var1449 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2622 var2196 var2953) ; Statement: $r9 = r2 
(assert true) ; Non Conditional
(define-const var2012 Bool (var290_canAccess/24921369 var3013 var2622)) ; Statement: $z1 = staticinvoke <com.google.gson.internal.ReflectionAccessFilterHelper: boolean canAccess(java.lang.reflect.AccessibleObject,java.lang.Object)>(r0, $r9) 
 ; Statement: if $z1 != 0 goto return 
(assert (not (not (= (ite var2012 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var3016 String (var2166_getAccessibleObjectDescription/-550785423 var3013 (ite (= 1 1) true false))) ; Statement: r3 = staticinvoke <com.google.gson.internal.reflect.ReflectionHelper: java.lang.String getAccessibleObjectDescription(java.lang.reflect.AccessibleObject,boolean)>(r0, 1) 
(define-const var611 var3125 var3125-init) ; Statement: $r4 = new com.google.gson.JsonIOException 
(define-const var3205 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3205)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3205!1 String)
(assert (= var3205!1 ""))
(assert true)
(define-const var1382 String (append/672562846 var3205!1 var3016)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3205!2 String)
(assert (= var3205!2 (str.++ var3205!1 var3016)))
(assert true)
(define-const var3344 String (append/672562846 var1382 " is not accessible and ReflectionAccessFilter does not permit making it accessible. Register a TypeAdapter for the declaring type, adjust the access filter or increase the visibility of the element and its declaring type.")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not accessible and ReflectionAccessFilter does not permit making it accessible. Register a TypeAdapter for the declaring type, adjust the access filter or increase the visibility of the element and its declaring type.") 
(declare-const var1382!1 String)
(assert (= var1382!1 (str.++ var1382 " is not accessible and ReflectionAccessFilter does not permit making it accessible. Register a TypeAdapter for the declaring type, adjust the access filter or increase the visibility of the element and its declaring type.")))
(assert true)
(define-const var1970 String (toString/-2075883882 var3344)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1993171084 var611 var1970)) ; Statement: specialinvoke $r4.<com.google.gson.JsonIOException: void <init>(java.lang.String)>($r8) 

(declare-const var611!1 var3125)
(declare-const var1970!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var2473-to-var743=([java.lang.reflect.AccessibleObject], java.lang.reflect.Member), var743_getModifiers/622745125=([java.lang.reflect.Member], int), var3888_isStatic/379715466=([int], boolean), var290_canAccess/24921369=([java.lang.reflect.AccessibleObject, java.lang.Object], boolean), var2166_getAccessibleObjectDescription/-550785423=([java.lang.reflect.AccessibleObject, boolean], java.lang.String), var3125-init=([], com.google.gson.JsonIOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1993171084=([com.google.gson.JsonIOException, java.lang.String], void)}
; {var2196=java.lang.Object, var2953=r2, var2473=java.lang.reflect.AccessibleObject, var3013=r0, var743=java.lang.reflect.Member, var3999=$r1, var3536=$i0, var3888=java.lang.reflect.Modifier, var1449=$z0, var2622=$r9, var290=com.google.gson.internal.ReflectionAccessFilterHelper, var2012=$z1, var2166=com.google.gson.internal.reflect.ReflectionHelper, var3016=r3, var3125=com.google.gson.JsonIOException, var611=$r4, var3205=$r5, var1382=$r6, var3344=$r7, var1970=$r8}
; {java.lang.Object=var2196, r2=var2953, java.lang.reflect.AccessibleObject=var2473, r0=var3013, java.lang.reflect.Member=var743, $r1=var3999, $i0=var3536, java.lang.reflect.Modifier=var3888, $z0=var1449, $r9=var2622, com.google.gson.internal.ReflectionAccessFilterHelper=var290, $z1=var2012, com.google.gson.internal.reflect.ReflectionHelper=var2166, r3=var3016, com.google.gson.JsonIOException=var3125, $r4=var611, $r5=var3205, $r6=var1382, $r7=var3344, $r8=var1970}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.reflect.AccessibleObject;	$r1 = (java.lang.reflect.Member) r0;	$i0 = interfaceinvoke $r1.<java.lang.reflect.Member: int getModifiers()>();	$z0 = staticinvoke <java.lang.reflect.Modifier: boolean isStatic(int)>($i0);	if $z0 == 0 goto $r9 = r2;	$r9 = r2;	$z1 = staticinvoke <com.google.gson.internal.ReflectionAccessFilterHelper: boolean canAccess(java.lang.reflect.AccessibleObject,java.lang.Object)>(r0, $r9);	if $z1 != 0 goto return;	r3 = staticinvoke <com.google.gson.internal.reflect.ReflectionHelper: java.lang.String getAccessibleObjectDescription(java.lang.reflect.AccessibleObject,boolean)>(r0, 1);	$r4 = new com.google.gson.JsonIOException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not accessible and ReflectionAccessFilter does not permit making it accessible. Register a TypeAdapter for the declaring type, adjust the access filter or increase the visibility of the element and its declaring type.");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<com.google.gson.JsonIOException: void <init>(java.lang.String)>($r8);	throw $r4
;block_num 4