(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1545 0)
(declare-sort var1546 0)
(declare-sort var539 0)
(declare-sort var1958 0)
(declare-sort var1243 0)
(declare-sort var234 0)
(declare-sort var2971 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var1546-to-var539 (var1546) var539)
(declare-fun var539_getModifiers/622745125 (var539) Int)
(declare-fun var1958_isStatic/379715466 (Int) Bool)
(declare-fun var1243_canAccess/24921369 (var1546 var1545) Bool)
(declare-fun var234_getAccessibleObjectDescription/-550785423 (var1546 Bool) String)
(declare-fun var2971-init () var2971)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1993171084 (var2971 String) void)
(declare-const null-var1545 var1545)
(declare-const null-var1546 var1546)
(declare-const var3612 var1545) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var3612 null-var1545)))
(declare-const var1032 var1546) ; Statement: r0 := @parameter1: java.lang.reflect.AccessibleObject 
(assert (not (= var1032 null-var1546)))
(define-const var2322 var539 (cast-from-var1546-to-var539 var1032)) ; Statement: $r1 = (java.lang.reflect.Member) r0 
(define-const var1566 Int (var539_getModifiers/622745125 var2322)) ; Statement: $i0 = interfaceinvoke $r1.<java.lang.reflect.Member: int getModifiers()>() 
(define-const var2456 Bool (var1958_isStatic/379715466 var1566)) ; Statement: $z0 = staticinvoke <java.lang.reflect.Modifier: boolean isStatic(int)>($i0) 
 ; Statement: if $z0 == 0 goto $r9 = r2 
(assert (not (= (ite var2456 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1231 var1545 null-var1545) ; Statement: $r9 = null 
 ; Statement: goto [?= $z1 = staticinvoke <com.google.gson.internal.ReflectionAccessFilterHelper: boolean canAccess(java.lang.reflect.AccessibleObject,java.lang.Object)>(r0, $r9)] 
(assert true) ; Non Conditional
(define-const var3567 Bool (var1243_canAccess/24921369 var1032 var1231)) ; Statement: $z1 = staticinvoke <com.google.gson.internal.ReflectionAccessFilterHelper: boolean canAccess(java.lang.reflect.AccessibleObject,java.lang.Object)>(r0, $r9) 
 ; Statement: if $z1 != 0 goto return 
(assert (not (not (= (ite var3567 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var3817 String (var234_getAccessibleObjectDescription/-550785423 var1032 (ite (= 1 1) true false))) ; Statement: r3 = staticinvoke <com.google.gson.internal.reflect.ReflectionHelper: java.lang.String getAccessibleObjectDescription(java.lang.reflect.AccessibleObject,boolean)>(r0, 1) 
(define-const var1019 var2971 var2971-init) ; Statement: $r4 = new com.google.gson.JsonIOException 
(define-const var905 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var905)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var905!1 String)
(assert (= var905!1 ""))
(assert true)
(define-const var1734 String (append/672562846 var905!1 var3817)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var905!2 String)
(assert (= var905!2 (str.++ var905!1 var3817)))
(assert true)
(define-const var108 String (append/672562846 var1734 " is not accessible and ReflectionAccessFilter does not permit making it accessible. Register a TypeAdapter for the declaring type, adjust the access filter or increase the visibility of the element and its declaring type.")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not accessible and ReflectionAccessFilter does not permit making it accessible. Register a TypeAdapter for the declaring type, adjust the access filter or increase the visibility of the element and its declaring type.") 
(declare-const var1734!1 String)
(assert (= var1734!1 (str.++ var1734 " is not accessible and ReflectionAccessFilter does not permit making it accessible. Register a TypeAdapter for the declaring type, adjust the access filter or increase the visibility of the element and its declaring type.")))
(assert true)
(define-const var2305 String (toString/-2075883882 var108)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1993171084 var1019 var2305)) ; Statement: specialinvoke $r4.<com.google.gson.JsonIOException: void <init>(java.lang.String)>($r8) 

(declare-const var1019!1 var2971)
(declare-const var2305!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var1546-to-var539=([java.lang.reflect.AccessibleObject], java.lang.reflect.Member), var539_getModifiers/622745125=([java.lang.reflect.Member], int), var1958_isStatic/379715466=([int], boolean), var1243_canAccess/24921369=([java.lang.reflect.AccessibleObject, java.lang.Object], boolean), var234_getAccessibleObjectDescription/-550785423=([java.lang.reflect.AccessibleObject, boolean], java.lang.String), var2971-init=([], com.google.gson.JsonIOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1993171084=([com.google.gson.JsonIOException, java.lang.String], void)}
; {var1545=java.lang.Object, var3612=r2, var1546=java.lang.reflect.AccessibleObject, var1032=r0, var539=java.lang.reflect.Member, var2322=$r1, var1566=$i0, var1958=java.lang.reflect.Modifier, var2456=$z0, var1231=$r9, var1243=com.google.gson.internal.ReflectionAccessFilterHelper, var3567=$z1, var234=com.google.gson.internal.reflect.ReflectionHelper, var3817=r3, var2971=com.google.gson.JsonIOException, var1019=$r4, var905=$r5, var1734=$r6, var108=$r7, var2305=$r8}
; {java.lang.Object=var1545, r2=var3612, java.lang.reflect.AccessibleObject=var1546, r0=var1032, java.lang.reflect.Member=var539, $r1=var2322, $i0=var1566, java.lang.reflect.Modifier=var1958, $z0=var2456, $r9=var1231, com.google.gson.internal.ReflectionAccessFilterHelper=var1243, $z1=var3567, com.google.gson.internal.reflect.ReflectionHelper=var234, r3=var3817, com.google.gson.JsonIOException=var2971, $r4=var1019, $r5=var905, $r6=var1734, $r7=var108, $r8=var2305}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.reflect.AccessibleObject;	$r1 = (java.lang.reflect.Member) r0;	$i0 = interfaceinvoke $r1.<java.lang.reflect.Member: int getModifiers()>();	$z0 = staticinvoke <java.lang.reflect.Modifier: boolean isStatic(int)>($i0);	if $z0 == 0 goto $r9 = r2;	$r9 = null;	goto [?= $z1 = staticinvoke <com.google.gson.internal.ReflectionAccessFilterHelper: boolean canAccess(java.lang.reflect.AccessibleObject,java.lang.Object)>(r0, $r9)];	$z1 = staticinvoke <com.google.gson.internal.ReflectionAccessFilterHelper: boolean canAccess(java.lang.reflect.AccessibleObject,java.lang.Object)>(r0, $r9);	if $z1 != 0 goto return;	r3 = staticinvoke <com.google.gson.internal.reflect.ReflectionHelper: java.lang.String getAccessibleObjectDescription(java.lang.reflect.AccessibleObject,boolean)>(r0, 1);	$r4 = new com.google.gson.JsonIOException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not accessible and ReflectionAccessFilter does not permit making it accessible. Register a TypeAdapter for the declaring type, adjust the access filter or increase the visibility of the element and its declaring type.");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<com.google.gson.JsonIOException: void <init>(java.lang.String)>($r8);	throw $r4
;block_num 4