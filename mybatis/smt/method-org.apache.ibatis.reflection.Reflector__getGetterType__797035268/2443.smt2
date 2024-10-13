(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1971 0)
(declare-sort var2426 0)
(declare-sort var1341 0)
(declare-sort var343 0)
(declare-sort var2285 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTypes/-1577411681 (var1971) var1341)
(declare-fun var1341_get/1088891777 (var1341 var343) var343)
(declare-fun cast-from-String-to-var343 (String) var343)
(declare-fun cast-from-var343-to-ClassObject (var343) ClassObject)
(declare-fun var2285-init () var2285)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun type/-1577411681 (var1971) ClassObject)
(declare-fun append/-1031950772 (String var343) String)
(declare-fun cast-from-ClassObject-to-var343 (ClassObject) var343)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-670718455 (var2285 String) void)
(declare-const null-var1971 var1971)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const var1542 var1971) ; Statement: r0 := @this: org.apache.ibatis.reflection.Reflector 
(assert (not (= var1542 null-var1971)))
(declare-const var1399 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1399 null-String)))
(define-const var1232 var1341 (getTypes/-1577411681 var1542)) ; Statement: $r2 = r0.<org.apache.ibatis.reflection.Reflector: java.util.Map getTypes> 
(define-const var3024 var343 (var1341_get/1088891777 var1232 (cast-from-String-to-var343 var1399))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var625 ClassObject (cast-from-var343-to-ClassObject var3024)) ; Statement: r4 = (java.lang.Class) $r3 
 ; Statement: if r4 != null goto return r4 
(assert (not (not (= var625 null-ClassObject)))) ; Negate: Cond: r4 != null  
(define-const var2608 var2285 var2285-init) ; Statement: $r5 = new org.apache.ibatis.reflection.ReflectionException 
(define-const var1280 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1280)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1280!1 String)
(assert (= var1280!1 ""))
(assert true)
(define-const var322 String (append/672562846 var1280!1 "There is no getter for property named \u0027")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("There is no getter for property named \'") 
(declare-const var1280!2 String)
(assert (= var1280!2 (str.++ var1280!1 "There is no getter for property named \u0027")))
(assert true)
(define-const var437 String (append/672562846 var322 var1399)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var322!1 String)
(assert (= var322!1 (str.++ var322 var1399)))
(assert true)
(define-const var1049 String (append/672562846 var437 "\u0027 in \u0027")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' in \'") 
(declare-const var437!1 String)
(assert (= var437!1 (str.++ var437 "\u0027 in \u0027")))
(define-const var742 ClassObject (type/-1577411681 var1542)) ; Statement: $r9 = r0.<org.apache.ibatis.reflection.Reflector: java.lang.Class type> 
(assert true)
(define-const var977 String (append/-1031950772 var1049 (cast-from-ClassObject-to-var343 var742))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r9) 
(declare-const var1049!1 String)
(assert (str.prefixof var1049 var1049!1))
(assert true)
(define-const var85 String (append/672562846 var977 "\u0027")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var977!1 String)
(assert (= var977!1 (str.++ var977 "\u0027")))
(assert true)
(define-const var1911 String (toString/-2075883882 var85)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-670718455 var2608 var1911)) ; Statement: specialinvoke $r5.<org.apache.ibatis.reflection.ReflectionException: void <init>(java.lang.String)>($r13) 

(declare-const var2608!1 var2285)
(declare-const var1911!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {getTypes/-1577411681=([org.apache.ibatis.reflection.Reflector], java.util.Map), var1341_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var343=([java.lang.String], java.lang.Object), cast-from-var343-to-ClassObject=([java.lang.Object], java.lang.Class), var2285-init=([], org.apache.ibatis.reflection.ReflectionException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), type/-1577411681=([org.apache.ibatis.reflection.Reflector], java.lang.Class), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var343=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-670718455=([org.apache.ibatis.reflection.ReflectionException, java.lang.String], void)}
; {var1971=org.apache.ibatis.reflection.Reflector, var1542=r0, var1399=r1, var2426=null_type, var1341=java.util.Map, var1232=$r2, var343=java.lang.Object, var3024=$r3, var625=r4, var2285=org.apache.ibatis.reflection.ReflectionException, var2608=$r5, var1280=$r6, var322=$r7, var437=$r8, var1049=$r10, var742=$r9, var977=$r11, var85=$r12, var1911=$r13}
; {org.apache.ibatis.reflection.Reflector=var1971, r0=var1542, r1=var1399, null_type=var2426, java.util.Map=var1341, $r2=var1232, java.lang.Object=var343, $r3=var3024, r4=var625, org.apache.ibatis.reflection.ReflectionException=var2285, $r5=var2608, $r6=var1280, $r7=var322, $r8=var437, $r10=var1049, $r9=var742, $r11=var977, $r12=var85, $r13=var1911}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.reflection.Reflector;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.apache.ibatis.reflection.Reflector: java.util.Map getTypes>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (java.lang.Class) $r3;	if r4 != null goto return r4;	$r5 = new org.apache.ibatis.reflection.ReflectionException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("There is no getter for property named \'");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' in \'");	$r9 = r0.<org.apache.ibatis.reflection.Reflector: java.lang.Class type>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<org.apache.ibatis.reflection.ReflectionException: void <init>(java.lang.String)>($r13);	throw $r5
;block_num 2