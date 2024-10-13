(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3268 0)
(declare-sort var1074 0)
(declare-sort var3058 0)
(declare-sort var3594 0)
(declare-sort var3956 0)
(declare-sort var1595 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getModifiers/-1049741209 (var1074) Int)
(declare-fun var3058_isStatic/379715466 (Int) Bool)
(declare-fun var3594_canAccess/1273712458 (var3956 var3268) Bool)
(declare-fun cast-from-var1074-to-var3956 (var1074) var3956)
(declare-fun var1595-init () var1595)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getDeclaringClass/1477653585 (var1074) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun getName/1618348824 (var1074) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1711549597 (var1595 String) void)
(declare-const null-var3268 var3268)
(declare-const null-var1074 var1074)
(declare-const var3958 var3268) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var3958 null-var3268)))
(declare-const var2968 var1074) ; Statement: r0 := @parameter1: java.lang.reflect.Field 
(assert (not (= var2968 null-var1074)))
(assert true)
(define-const var1846 Int (getModifiers/-1049741209 var2968)) ; Statement: $i0 = virtualinvoke r0.<java.lang.reflect.Field: int getModifiers()>() 
(define-const var2565 Bool (var3058_isStatic/379715466 var1846)) ; Statement: $z0 = staticinvoke <java.lang.reflect.Modifier: boolean isStatic(int)>($i0) 
 ; Statement: if $z0 == 0 goto $r13 = r1 
(assert (not (= (ite var2565 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var441 var3268 null-var3268) ; Statement: $r13 = null 
 ; Statement: goto [?= $z1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.ReflectionAccessFilterHelper: boolean canAccess(java.lang.reflect.AccessibleObject,java.lang.Object)>(r0, $r13)] 
(assert true) ; Non Conditional
(define-const var3727 Bool (var3594_canAccess/1273712458 (cast-from-var1074-to-var3956 var2968) var441)) ; Statement: $z1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.ReflectionAccessFilterHelper: boolean canAccess(java.lang.reflect.AccessibleObject,java.lang.Object)>(r0, $r13) 
 ; Statement: if $z1 != 0 goto return 
(assert (not (not (= (ite var3727 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var2127 var1595 var1595-init) ; Statement: $r2 = new com.google.javascript.jscomp.jarjar.com.google.gson.JsonIOException 
(define-const var3953 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3953)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3953!1 String)
(assert (= var3953!1 ""))
(assert true)
(define-const var1700 String (append/672562846 var3953!1 "Field \u0027")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Field \'") 
(declare-const var3953!2 String)
(assert (= var3953!2 (str.++ var3953!1 "Field \u0027")))
(assert true)
(define-const var1458 ClassObject (getDeclaringClass/1477653585 var2968)) ; Statement: $r4 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getDeclaringClass()>() 
(assert true)
(define-const var2380 String (getName/-1958580599 var1458)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3888 String (append/672562846 var1700 var2380)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1700!1 String)
(assert (= var1700!1 (str.++ var1700 var2380)))
(assert true)
(define-const var3733 String (append/672562846 var3888 "#")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#") 
(declare-const var3888!1 String)
(assert (= var3888!1 (str.++ var3888 "#")))
(assert true)
(define-const var1882 String (getName/1618348824 var2968)) ; Statement: $r8 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.String getName()>() 
(assert true)
(define-const var1798 String (append/672562846 var3733 var1882)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3733!1 String)
(assert (= var3733!1 (str.++ var3733 var1882)))
(assert true)
(define-const var1153 String (append/672562846 var1798 "\u0027 is not accessible and ReflectionAccessFilter does not permit making it accessible. Register a TypeAdapter for the declaring type or adjust the access filter.")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' is not accessible and ReflectionAccessFilter does not permit making it accessible. Register a TypeAdapter for the declaring type or adjust the access filter.") 
(declare-const var1798!1 String)
(assert (= var1798!1 (str.++ var1798 "\u0027 is not accessible and ReflectionAccessFilter does not permit making it accessible. Register a TypeAdapter for the declaring type or adjust the access filter.")))
(assert true)
(define-const var455 String (toString/-2075883882 var1153)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1711549597 var2127 var455)) ; Statement: specialinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonIOException: void <init>(java.lang.String)>($r12) 

(declare-const var2127!1 var1595)
(declare-const var455!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {getModifiers/-1049741209=([java.lang.reflect.Field], int), var3058_isStatic/379715466=([int], boolean), var3594_canAccess/1273712458=([java.lang.reflect.AccessibleObject, java.lang.Object], boolean), cast-from-var1074-to-var3956=([java.lang.reflect.Field], java.lang.reflect.AccessibleObject), var1595-init=([], com.google.javascript.jscomp.jarjar.com.google.gson.JsonIOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getDeclaringClass/1477653585=([java.lang.reflect.Field], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), getName/1618348824=([java.lang.reflect.Field], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1711549597=([com.google.javascript.jscomp.jarjar.com.google.gson.JsonIOException, java.lang.String], void)}
; {var3268=java.lang.Object, var3958=r1, var1074=java.lang.reflect.Field, var2968=r0, var1846=$i0, var3058=java.lang.reflect.Modifier, var2565=$z0, var441=$r13, var3594=com.google.javascript.jscomp.jarjar.com.google.gson.internal.ReflectionAccessFilterHelper, var3956=java.lang.reflect.AccessibleObject, var3727=$z1, var1595=com.google.javascript.jscomp.jarjar.com.google.gson.JsonIOException, var2127=$r2, var3953=$r3, var1700=$r6, var1458=$r4, var2380=$r5, var3888=$r7, var3733=$r9, var1882=$r8, var1798=$r10, var1153=$r11, var455=$r12}
; {java.lang.Object=var3268, r1=var3958, java.lang.reflect.Field=var1074, r0=var2968, $i0=var1846, java.lang.reflect.Modifier=var3058, $z0=var2565, $r13=var441, com.google.javascript.jscomp.jarjar.com.google.gson.internal.ReflectionAccessFilterHelper=var3594, java.lang.reflect.AccessibleObject=var3956, $z1=var3727, com.google.javascript.jscomp.jarjar.com.google.gson.JsonIOException=var1595, $r2=var2127, $r3=var3953, $r6=var1700, $r4=var1458, $r5=var2380, $r7=var3888, $r9=var3733, $r8=var1882, $r10=var1798, $r11=var1153, $r12=var455}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.reflect.Field;	$i0 = virtualinvoke r0.<java.lang.reflect.Field: int getModifiers()>();	$z0 = staticinvoke <java.lang.reflect.Modifier: boolean isStatic(int)>($i0);	if $z0 == 0 goto $r13 = r1;	$r13 = null;	goto [?= $z1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.ReflectionAccessFilterHelper: boolean canAccess(java.lang.reflect.AccessibleObject,java.lang.Object)>(r0, $r13)];	$z1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.ReflectionAccessFilterHelper: boolean canAccess(java.lang.reflect.AccessibleObject,java.lang.Object)>(r0, $r13);	if $z1 != 0 goto return;	$r2 = new com.google.javascript.jscomp.jarjar.com.google.gson.JsonIOException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Field \'");	$r4 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getDeclaringClass()>();	$r5 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#");	$r8 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.String getName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' is not accessible and ReflectionAccessFilter does not permit making it accessible. Register a TypeAdapter for the declaring type or adjust the access filter.");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonIOException: void <init>(java.lang.String)>($r12);	throw $r2
;block_num 4