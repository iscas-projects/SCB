(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2071 0)
(declare-sort var2302 0)
(declare-sort var2727 0)
(declare-sort var2418 0)
(declare-sort var2520 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun setTypes/-1577411681 (var2071) var2727)
(declare-fun var2727_get/1088891777 (var2727 var2418) var2418)
(declare-fun cast-from-String-to-var2418 (String) var2418)
(declare-fun cast-from-var2418-to-ClassObject (var2418) ClassObject)
(declare-fun var2520-init () var2520)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun type/-1577411681 (var2071) ClassObject)
(declare-fun append/-1031950772 (String var2418) String)
(declare-fun cast-from-ClassObject-to-var2418 (ClassObject) var2418)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-670718455 (var2520 String) void)
(declare-const null-var2071 var2071)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const var3820 var2071) ; Statement: r0 := @this: org.apache.ibatis.reflection.Reflector 
(assert (not (= var3820 null-var2071)))
(declare-const var800 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var800 null-String)))
(define-const var348 var2727 (setTypes/-1577411681 var3820)) ; Statement: $r2 = r0.<org.apache.ibatis.reflection.Reflector: java.util.Map setTypes> 
(define-const var319 var2418 (var2727_get/1088891777 var348 (cast-from-String-to-var2418 var800))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var1392 ClassObject (cast-from-var2418-to-ClassObject var319)) ; Statement: r4 = (java.lang.Class) $r3 
 ; Statement: if r4 != null goto return r4 
(assert (not (not (= var1392 null-ClassObject)))) ; Negate: Cond: r4 != null  
(define-const var1426 var2520 var2520-init) ; Statement: $r5 = new org.apache.ibatis.reflection.ReflectionException 
(define-const var2106 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2106)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2106!1 String)
(assert (= var2106!1 ""))
(assert true)
(define-const var2319 String (append/672562846 var2106!1 "There is no setter for property named \u0027")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("There is no setter for property named \'") 
(declare-const var2106!2 String)
(assert (= var2106!2 (str.++ var2106!1 "There is no setter for property named \u0027")))
(assert true)
(define-const var1921 String (append/672562846 var2319 var800)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2319!1 String)
(assert (= var2319!1 (str.++ var2319 var800)))
(assert true)
(define-const var2000 String (append/672562846 var1921 "\u0027 in \u0027")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' in \'") 
(declare-const var1921!1 String)
(assert (= var1921!1 (str.++ var1921 "\u0027 in \u0027")))
(define-const var3472 ClassObject (type/-1577411681 var3820)) ; Statement: $r9 = r0.<org.apache.ibatis.reflection.Reflector: java.lang.Class type> 
(assert true)
(define-const var304 String (append/-1031950772 var2000 (cast-from-ClassObject-to-var2418 var3472))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r9) 
(declare-const var2000!1 String)
(assert (str.prefixof var2000 var2000!1))
(assert true)
(define-const var677 String (append/672562846 var304 "\u0027")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var304!1 String)
(assert (= var304!1 (str.++ var304 "\u0027")))
(assert true)
(define-const var3171 String (toString/-2075883882 var677)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-670718455 var1426 var3171)) ; Statement: specialinvoke $r5.<org.apache.ibatis.reflection.ReflectionException: void <init>(java.lang.String)>($r13) 

(declare-const var1426!1 var2520)
(declare-const var3171!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {setTypes/-1577411681=([org.apache.ibatis.reflection.Reflector], java.util.Map), var2727_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var2418=([java.lang.String], java.lang.Object), cast-from-var2418-to-ClassObject=([java.lang.Object], java.lang.Class), var2520-init=([], org.apache.ibatis.reflection.ReflectionException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), type/-1577411681=([org.apache.ibatis.reflection.Reflector], java.lang.Class), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var2418=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-670718455=([org.apache.ibatis.reflection.ReflectionException, java.lang.String], void)}
; {var2071=org.apache.ibatis.reflection.Reflector, var3820=r0, var800=r1, var2302=null_type, var2727=java.util.Map, var348=$r2, var2418=java.lang.Object, var319=$r3, var1392=r4, var2520=org.apache.ibatis.reflection.ReflectionException, var1426=$r5, var2106=$r6, var2319=$r7, var1921=$r8, var2000=$r10, var3472=$r9, var304=$r11, var677=$r12, var3171=$r13}
; {org.apache.ibatis.reflection.Reflector=var2071, r0=var3820, r1=var800, null_type=var2302, java.util.Map=var2727, $r2=var348, java.lang.Object=var2418, $r3=var319, r4=var1392, org.apache.ibatis.reflection.ReflectionException=var2520, $r5=var1426, $r6=var2106, $r7=var2319, $r8=var1921, $r10=var2000, $r9=var3472, $r11=var304, $r12=var677, $r13=var3171}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.reflection.Reflector;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.apache.ibatis.reflection.Reflector: java.util.Map setTypes>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (java.lang.Class) $r3;	if r4 != null goto return r4;	$r5 = new org.apache.ibatis.reflection.ReflectionException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("There is no setter for property named \'");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' in \'");	$r9 = r0.<org.apache.ibatis.reflection.Reflector: java.lang.Class type>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<org.apache.ibatis.reflection.ReflectionException: void <init>(java.lang.String)>($r13);	throw $r5
;block_num 2