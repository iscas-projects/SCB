(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3740 0)
(declare-sort var1484 0)
(declare-sort var2555 0)
(declare-sort var1321 0)
(declare-sort var541 0)
(declare-sort var1568 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getMethods/-1577411681 (var3740) var2555)
(declare-fun var2555_get/1088891777 (var2555 var1321) var1321)
(declare-fun cast-from-String-to-var1321 (String) var1321)
(declare-fun cast-from-var1321-to-var541 (var1321) var541)
(declare-fun var1568-init () var1568)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun type/-1577411681 (var3740) ClassObject)
(declare-fun append/-1031950772 (String var1321) String)
(declare-fun cast-from-ClassObject-to-var1321 (ClassObject) var1321)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-670718455 (var1568 String) void)
(declare-const null-var3740 var3740)
(declare-const null-String String)
(declare-const null-var541 var541)
(declare-const var242 var3740) ; Statement: r0 := @this: org.apache.ibatis.reflection.Reflector 
(assert (not (= var242 null-var3740)))
(declare-const var1977 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1977 null-String)))
(define-const var2170 var2555 (getMethods/-1577411681 var242)) ; Statement: $r2 = r0.<org.apache.ibatis.reflection.Reflector: java.util.Map getMethods> 
(define-const var2441 var1321 (var2555_get/1088891777 var2170 (cast-from-String-to-var1321 var1977))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var2131 var541 (cast-from-var1321-to-var541 var2441)) ; Statement: r4 = (org.apache.ibatis.reflection.invoker.Invoker) $r3 
 ; Statement: if r4 != null goto return r4 
(assert (not (not (= var2131 null-var541)))) ; Negate: Cond: r4 != null  
(define-const var2457 var1568 var1568-init) ; Statement: $r5 = new org.apache.ibatis.reflection.ReflectionException 
(define-const var207 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var207)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var207!1 String)
(assert (= var207!1 ""))
(assert true)
(define-const var2490 String (append/672562846 var207!1 "There is no getter for property named \u0027")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("There is no getter for property named \'") 
(declare-const var207!2 String)
(assert (= var207!2 (str.++ var207!1 "There is no getter for property named \u0027")))
(assert true)
(define-const var2073 String (append/672562846 var2490 var1977)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2490!1 String)
(assert (= var2490!1 (str.++ var2490 var1977)))
(assert true)
(define-const var2984 String (append/672562846 var2073 "\u0027 in \u0027")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' in \'") 
(declare-const var2073!1 String)
(assert (= var2073!1 (str.++ var2073 "\u0027 in \u0027")))
(define-const var3779 ClassObject (type/-1577411681 var242)) ; Statement: $r9 = r0.<org.apache.ibatis.reflection.Reflector: java.lang.Class type> 
(assert true)
(define-const var3920 String (append/-1031950772 var2984 (cast-from-ClassObject-to-var1321 var3779))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r9) 
(declare-const var2984!1 String)
(assert (str.prefixof var2984 var2984!1))
(assert true)
(define-const var1518 String (append/672562846 var3920 "\u0027")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var3920!1 String)
(assert (= var3920!1 (str.++ var3920 "\u0027")))
(assert true)
(define-const var135 String (toString/-2075883882 var1518)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-670718455 var2457 var135)) ; Statement: specialinvoke $r5.<org.apache.ibatis.reflection.ReflectionException: void <init>(java.lang.String)>($r13) 

(declare-const var2457!1 var1568)
(declare-const var135!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {getMethods/-1577411681=([org.apache.ibatis.reflection.Reflector], java.util.Map), var2555_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var1321=([java.lang.String], java.lang.Object), cast-from-var1321-to-var541=([java.lang.Object], org.apache.ibatis.reflection.invoker.Invoker), var1568-init=([], org.apache.ibatis.reflection.ReflectionException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), type/-1577411681=([org.apache.ibatis.reflection.Reflector], java.lang.Class), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var1321=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-670718455=([org.apache.ibatis.reflection.ReflectionException, java.lang.String], void)}
; {var3740=org.apache.ibatis.reflection.Reflector, var242=r0, var1977=r1, var1484=null_type, var2555=java.util.Map, var2170=$r2, var1321=java.lang.Object, var2441=$r3, var541=org.apache.ibatis.reflection.invoker.Invoker, var2131=r4, var1568=org.apache.ibatis.reflection.ReflectionException, var2457=$r5, var207=$r6, var2490=$r7, var2073=$r8, var2984=$r10, var3779=$r9, var3920=$r11, var1518=$r12, var135=$r13}
; {org.apache.ibatis.reflection.Reflector=var3740, r0=var242, r1=var1977, null_type=var1484, java.util.Map=var2555, $r2=var2170, java.lang.Object=var1321, $r3=var2441, org.apache.ibatis.reflection.invoker.Invoker=var541, r4=var2131, org.apache.ibatis.reflection.ReflectionException=var1568, $r5=var2457, $r6=var207, $r7=var2490, $r8=var2073, $r10=var2984, $r9=var3779, $r11=var3920, $r12=var1518, $r13=var135}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.reflection.Reflector;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.apache.ibatis.reflection.Reflector: java.util.Map getMethods>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (org.apache.ibatis.reflection.invoker.Invoker) $r3;	if r4 != null goto return r4;	$r5 = new org.apache.ibatis.reflection.ReflectionException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("There is no getter for property named \'");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' in \'");	$r9 = r0.<org.apache.ibatis.reflection.Reflector: java.lang.Class type>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<org.apache.ibatis.reflection.ReflectionException: void <init>(java.lang.String)>($r13);	throw $r5
;block_num 2