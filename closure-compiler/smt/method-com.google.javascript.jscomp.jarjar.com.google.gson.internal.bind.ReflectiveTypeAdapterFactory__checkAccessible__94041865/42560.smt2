(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1030 0)
(declare-sort var1613 0)
(declare-sort var266 0)
(declare-sort var359 0)
(declare-sort var328 0)
(declare-sort var1306 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getModifiers/-1049741209 (var1613) Int)
(declare-fun var266_isStatic/379715466 (Int) Bool)
(declare-fun var359_canAccess/1273712458 (var328 var1030) Bool)
(declare-fun cast-from-var1613-to-var328 (var1613) var328)
(declare-fun var1306-init () var1306)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getDeclaringClass/1477653585 (var1613) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun getName/1618348824 (var1613) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1711549597 (var1306 String) void)
(declare-const null-var1030 var1030)
(declare-const null-var1613 var1613)
(declare-const var3517 var1030) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var3517 null-var1030)))
(declare-const var1937 var1613) ; Statement: r0 := @parameter1: java.lang.reflect.Field 
(assert (not (= var1937 null-var1613)))
(assert true)
(define-const var1188 Int (getModifiers/-1049741209 var1937)) ; Statement: $i0 = virtualinvoke r0.<java.lang.reflect.Field: int getModifiers()>() 
(define-const var376 Bool (var266_isStatic/379715466 var1188)) ; Statement: $z0 = staticinvoke <java.lang.reflect.Modifier: boolean isStatic(int)>($i0) 
 ; Statement: if $z0 == 0 goto $r13 = r1 
(assert (= (ite var376 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3875 var1030 var3517) ; Statement: $r13 = r1 
(assert true) ; Non Conditional
(define-const var1047 Bool (var359_canAccess/1273712458 (cast-from-var1613-to-var328 var1937) var3875)) ; Statement: $z1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.ReflectionAccessFilterHelper: boolean canAccess(java.lang.reflect.AccessibleObject,java.lang.Object)>(r0, $r13) 
 ; Statement: if $z1 != 0 goto return 
(assert (not (not (= (ite var1047 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var1116 var1306 var1306-init) ; Statement: $r2 = new com.google.javascript.jscomp.jarjar.com.google.gson.JsonIOException 
(define-const var3813 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3813)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3813!1 String)
(assert (= var3813!1 ""))
(assert true)
(define-const var2553 String (append/672562846 var3813!1 "Field \u0027")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Field \'") 
(declare-const var3813!2 String)
(assert (= var3813!2 (str.++ var3813!1 "Field \u0027")))
(assert true)
(define-const var3562 ClassObject (getDeclaringClass/1477653585 var1937)) ; Statement: $r4 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getDeclaringClass()>() 
(assert true)
(define-const var1738 String (getName/-1958580599 var3562)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var311 String (append/672562846 var2553 var1738)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2553!1 String)
(assert (= var2553!1 (str.++ var2553 var1738)))
(assert true)
(define-const var1055 String (append/672562846 var311 "#")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#") 
(declare-const var311!1 String)
(assert (= var311!1 (str.++ var311 "#")))
(assert true)
(define-const var2615 String (getName/1618348824 var1937)) ; Statement: $r8 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.String getName()>() 
(assert true)
(define-const var2035 String (append/672562846 var1055 var2615)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1055!1 String)
(assert (= var1055!1 (str.++ var1055 var2615)))
(assert true)
(define-const var1039 String (append/672562846 var2035 "\u0027 is not accessible and ReflectionAccessFilter does not permit making it accessible. Register a TypeAdapter for the declaring type or adjust the access filter.")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' is not accessible and ReflectionAccessFilter does not permit making it accessible. Register a TypeAdapter for the declaring type or adjust the access filter.") 
(declare-const var2035!1 String)
(assert (= var2035!1 (str.++ var2035 "\u0027 is not accessible and ReflectionAccessFilter does not permit making it accessible. Register a TypeAdapter for the declaring type or adjust the access filter.")))
(assert true)
(define-const var1328 String (toString/-2075883882 var1039)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1711549597 var1116 var1328)) ; Statement: specialinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonIOException: void <init>(java.lang.String)>($r12) 

(declare-const var1116!1 var1306)
(declare-const var1328!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {getModifiers/-1049741209=([java.lang.reflect.Field], int), var266_isStatic/379715466=([int], boolean), var359_canAccess/1273712458=([java.lang.reflect.AccessibleObject, java.lang.Object], boolean), cast-from-var1613-to-var328=([java.lang.reflect.Field], java.lang.reflect.AccessibleObject), var1306-init=([], com.google.javascript.jscomp.jarjar.com.google.gson.JsonIOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getDeclaringClass/1477653585=([java.lang.reflect.Field], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), getName/1618348824=([java.lang.reflect.Field], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1711549597=([com.google.javascript.jscomp.jarjar.com.google.gson.JsonIOException, java.lang.String], void)}
; {var1030=java.lang.Object, var3517=r1, var1613=java.lang.reflect.Field, var1937=r0, var1188=$i0, var266=java.lang.reflect.Modifier, var376=$z0, var3875=$r13, var359=com.google.javascript.jscomp.jarjar.com.google.gson.internal.ReflectionAccessFilterHelper, var328=java.lang.reflect.AccessibleObject, var1047=$z1, var1306=com.google.javascript.jscomp.jarjar.com.google.gson.JsonIOException, var1116=$r2, var3813=$r3, var2553=$r6, var3562=$r4, var1738=$r5, var311=$r7, var1055=$r9, var2615=$r8, var2035=$r10, var1039=$r11, var1328=$r12}
; {java.lang.Object=var1030, r1=var3517, java.lang.reflect.Field=var1613, r0=var1937, $i0=var1188, java.lang.reflect.Modifier=var266, $z0=var376, $r13=var3875, com.google.javascript.jscomp.jarjar.com.google.gson.internal.ReflectionAccessFilterHelper=var359, java.lang.reflect.AccessibleObject=var328, $z1=var1047, com.google.javascript.jscomp.jarjar.com.google.gson.JsonIOException=var1306, $r2=var1116, $r3=var3813, $r6=var2553, $r4=var3562, $r5=var1738, $r7=var311, $r9=var1055, $r8=var2615, $r10=var2035, $r11=var1039, $r12=var1328}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.reflect.Field;	$i0 = virtualinvoke r0.<java.lang.reflect.Field: int getModifiers()>();	$z0 = staticinvoke <java.lang.reflect.Modifier: boolean isStatic(int)>($i0);	if $z0 == 0 goto $r13 = r1;	$r13 = r1;	$z1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.ReflectionAccessFilterHelper: boolean canAccess(java.lang.reflect.AccessibleObject,java.lang.Object)>(r0, $r13);	if $z1 != 0 goto return;	$r2 = new com.google.javascript.jscomp.jarjar.com.google.gson.JsonIOException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Field \'");	$r4 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getDeclaringClass()>();	$r5 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#");	$r8 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.String getName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' is not accessible and ReflectionAccessFilter does not permit making it accessible. Register a TypeAdapter for the declaring type or adjust the access filter.");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonIOException: void <init>(java.lang.String)>($r12);	throw $r2
;block_num 4