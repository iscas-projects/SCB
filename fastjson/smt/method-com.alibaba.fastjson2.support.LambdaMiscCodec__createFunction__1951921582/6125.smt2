(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1081 0)
(declare-sort var346 0)
(declare-sort var3535 0)
(declare-sort var3118 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDeclaringClass/501867354 (var1081) ClassObject)
(declare-fun getModifiers/890868286 (var1081) Int)
(declare-fun getParameterTypes/827748249 (var1081) (Array Int ClassObject))
(declare-fun var346_isStatic/379715466 (Int) Bool)
(declare-fun getReturnType/-1494237887 (var1081) ClassObject)
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(declare-fun var3535-init () var3535)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3118) String)
(declare-fun cast-from-var1081-to-var3118 (var1081) var3118)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var3535 String) void)
(declare-const null-var1081 var1081)
(declare-const var2229 var1081) ; Statement: r0 := @parameter0: java.lang.reflect.Method 
(assert (not (= var2229 null-var1081)))
(assert true)
(define-const var3433 ClassObject (getDeclaringClass/501867354 var2229)) ; Statement: r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class getDeclaringClass()>() 
(assert true)
(define-const var437 Int (getModifiers/890868286 var2229)) ; Statement: i0 = virtualinvoke r0.<java.lang.reflect.Method: int getModifiers()>() 
(assert true)
(define-const var2303 (Array Int ClassObject) (getParameterTypes/827748249 var2229)) ; Statement: r2 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>() 
(define-const var2892 Bool (var346_isStatic/379715466 var437)) ; Statement: z0 = staticinvoke <java.lang.reflect.Modifier: boolean isStatic(int)>(i0) 
(assert true)
(define-const var490 ClassObject (getReturnType/-1494237887 var2229)) ; Statement: r3 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class getReturnType()>() 
(define-const var1437 Int (getLength-Arr-ClassObject-1 var2303)) ; Statement: $i1 = lengthof r2 
 ; Statement: if $i1 != 1 goto $i2 = lengthof r2 
(assert (not (= var1437 1))) ; Cond: $i1 != 1 
(define-const var3611 Int (getLength-Arr-ClassObject-1 var2303)) ; Statement: $i2 = lengthof r2 
 ; Statement: if $i2 != 0 goto $r4 = new com.alibaba.fastjson2.JSONException 
(assert (not (= var3611 0))) ; Cond: $i2 != 0 
(define-const var1530 var3535 var3535-init) ; Statement: $r4 = new com.alibaba.fastjson2.JSONException 
(define-const var2559 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2559)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2559!1 String)
(assert (= var2559!1 ""))
(assert true)
(define-const var644 String (append/672562846 var2559!1 "not support parameters ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not support parameters ") 
(declare-const var2559!2 String)
(assert (= var2559!2 (str.++ var2559!1 "not support parameters ")))
(assert true)
(define-const var2743 String (append/-1031950772 var644 (cast-from-var1081-to-var3118 var2229))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var644!1 String)
(assert (str.prefixof var644 var644!1))
(assert true)
(define-const var578 String (toString/-2075883882 var2743)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var1530 var578)) ; Statement: specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r8) 

(declare-const var1530!1 var3535)
(declare-const var578!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getDeclaringClass/501867354=([java.lang.reflect.Method], java.lang.Class), getModifiers/890868286=([java.lang.reflect.Method], int), getParameterTypes/827748249=([java.lang.reflect.Method], java.lang.Class[]), var346_isStatic/379715466=([int], boolean), getReturnType/-1494237887=([java.lang.reflect.Method], java.lang.Class), getLength-Arr-ClassObject-1=([java.lang.Class[]], int), var3535-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1081-to-var3118=([java.lang.reflect.Method], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var1081=java.lang.reflect.Method, var2229=r0, var3433=r1, var437=i0, var2303=r2, var346=java.lang.reflect.Modifier, var2892=z0, var490=r3, var1437=$i1, var3611=$i2, var3535=com.alibaba.fastjson2.JSONException, var1530=$r4, var2559=$r5, var644=$r6, var3118=java.lang.Object, var2743=$r7, var578=$r8}
; {java.lang.reflect.Method=var1081, r0=var2229, r1=var3433, i0=var437, r2=var2303, java.lang.reflect.Modifier=var346, z0=var2892, r3=var490, $i1=var1437, $i2=var3611, com.alibaba.fastjson2.JSONException=var3535, $r4=var1530, $r5=var2559, $r6=var644, java.lang.Object=var3118, $r7=var2743, $r8=var578}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.reflect.Method;	r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class getDeclaringClass()>();	i0 = virtualinvoke r0.<java.lang.reflect.Method: int getModifiers()>();	r2 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>();	z0 = staticinvoke <java.lang.reflect.Modifier: boolean isStatic(int)>(i0);	r3 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class getReturnType()>();	$i1 = lengthof r2;	if $i1 != 1 goto $i2 = lengthof r2;	$i2 = lengthof r2;	if $i2 != 0 goto $r4 = new com.alibaba.fastjson2.JSONException;	$r4 = new com.alibaba.fastjson2.JSONException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not support parameters ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r8);	throw $r4
;block_num 3