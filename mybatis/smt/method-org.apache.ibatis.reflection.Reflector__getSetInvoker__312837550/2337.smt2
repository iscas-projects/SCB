(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1109 0)
(declare-sort var1120 0)
(declare-sort var1359 0)
(declare-sort var146 0)
(declare-sort var3501 0)
(declare-sort var833 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun setMethods/-1577411681 (var1109) var1359)
(declare-fun var1359_get/1088891777 (var1359 var146) var146)
(declare-fun cast-from-String-to-var146 (String) var146)
(declare-fun cast-from-var146-to-var3501 (var146) var3501)
(declare-fun var833-init () var833)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun type/-1577411681 (var1109) ClassObject)
(declare-fun append/-1031950772 (String var146) String)
(declare-fun cast-from-ClassObject-to-var146 (ClassObject) var146)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-670718455 (var833 String) void)
(declare-const null-var1109 var1109)
(declare-const null-String String)
(declare-const null-var3501 var3501)
(declare-const var2106 var1109) ; Statement: r0 := @this: org.apache.ibatis.reflection.Reflector 
(assert (not (= var2106 null-var1109)))
(declare-const var1427 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1427 null-String)))
(define-const var247 var1359 (setMethods/-1577411681 var2106)) ; Statement: $r2 = r0.<org.apache.ibatis.reflection.Reflector: java.util.Map setMethods> 
(define-const var2900 var146 (var1359_get/1088891777 var247 (cast-from-String-to-var146 var1427))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var246 var3501 (cast-from-var146-to-var3501 var2900)) ; Statement: r4 = (org.apache.ibatis.reflection.invoker.Invoker) $r3 
 ; Statement: if r4 != null goto return r4 
(assert (not (not (= var246 null-var3501)))) ; Negate: Cond: r4 != null  
(define-const var2285 var833 var833-init) ; Statement: $r5 = new org.apache.ibatis.reflection.ReflectionException 
(define-const var2595 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2595)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2595!1 String)
(assert (= var2595!1 ""))
(assert true)
(define-const var2360 String (append/672562846 var2595!1 "There is no setter for property named \u0027")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("There is no setter for property named \'") 
(declare-const var2595!2 String)
(assert (= var2595!2 (str.++ var2595!1 "There is no setter for property named \u0027")))
(assert true)
(define-const var2626 String (append/672562846 var2360 var1427)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2360!1 String)
(assert (= var2360!1 (str.++ var2360 var1427)))
(assert true)
(define-const var1176 String (append/672562846 var2626 "\u0027 in \u0027")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' in \'") 
(declare-const var2626!1 String)
(assert (= var2626!1 (str.++ var2626 "\u0027 in \u0027")))
(define-const var1654 ClassObject (type/-1577411681 var2106)) ; Statement: $r9 = r0.<org.apache.ibatis.reflection.Reflector: java.lang.Class type> 
(assert true)
(define-const var2768 String (append/-1031950772 var1176 (cast-from-ClassObject-to-var146 var1654))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r9) 
(declare-const var1176!1 String)
(assert (str.prefixof var1176 var1176!1))
(assert true)
(define-const var2394 String (append/672562846 var2768 "\u0027")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var2768!1 String)
(assert (= var2768!1 (str.++ var2768 "\u0027")))
(assert true)
(define-const var174 String (toString/-2075883882 var2394)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-670718455 var2285 var174)) ; Statement: specialinvoke $r5.<org.apache.ibatis.reflection.ReflectionException: void <init>(java.lang.String)>($r13) 

(declare-const var2285!1 var833)
(declare-const var174!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {setMethods/-1577411681=([org.apache.ibatis.reflection.Reflector], java.util.Map), var1359_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var146=([java.lang.String], java.lang.Object), cast-from-var146-to-var3501=([java.lang.Object], org.apache.ibatis.reflection.invoker.Invoker), var833-init=([], org.apache.ibatis.reflection.ReflectionException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), type/-1577411681=([org.apache.ibatis.reflection.Reflector], java.lang.Class), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var146=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-670718455=([org.apache.ibatis.reflection.ReflectionException, java.lang.String], void)}
; {var1109=org.apache.ibatis.reflection.Reflector, var2106=r0, var1427=r1, var1120=null_type, var1359=java.util.Map, var247=$r2, var146=java.lang.Object, var2900=$r3, var3501=org.apache.ibatis.reflection.invoker.Invoker, var246=r4, var833=org.apache.ibatis.reflection.ReflectionException, var2285=$r5, var2595=$r6, var2360=$r7, var2626=$r8, var1176=$r10, var1654=$r9, var2768=$r11, var2394=$r12, var174=$r13}
; {org.apache.ibatis.reflection.Reflector=var1109, r0=var2106, r1=var1427, null_type=var1120, java.util.Map=var1359, $r2=var247, java.lang.Object=var146, $r3=var2900, org.apache.ibatis.reflection.invoker.Invoker=var3501, r4=var246, org.apache.ibatis.reflection.ReflectionException=var833, $r5=var2285, $r6=var2595, $r7=var2360, $r8=var2626, $r10=var1176, $r9=var1654, $r11=var2768, $r12=var2394, $r13=var174}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.reflection.Reflector;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.apache.ibatis.reflection.Reflector: java.util.Map setMethods>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (org.apache.ibatis.reflection.invoker.Invoker) $r3;	if r4 != null goto return r4;	$r5 = new org.apache.ibatis.reflection.ReflectionException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("There is no setter for property named \'");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' in \'");	$r9 = r0.<org.apache.ibatis.reflection.Reflector: java.lang.Class type>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<org.apache.ibatis.reflection.ReflectionException: void <init>(java.lang.String)>($r13);	throw $r5
;block_num 2