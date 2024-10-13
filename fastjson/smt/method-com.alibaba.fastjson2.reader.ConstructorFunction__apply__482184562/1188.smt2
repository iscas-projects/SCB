(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1760 0)
(declare-sort var569 0)
(declare-sort var3653 0)
(declare-sort var853 0)
(declare-sort var311 0)
(declare-sort var1565 0)
(declare-sort var806 0)
(declare-sort var1157 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCodes/-1715129530 (var1760) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun alternateConstructorMap/-1715129530 (var1760) var569)
(declare-fun var569_keySet/-712633290 (var569) var3653)
(declare-fun var569_get/1088891777 (var569 var853) var853)
(declare-fun cast-from-var3653-to-var853 (var3653) var853)
(declare-fun cast-from-var853-to-var311 (var853) var311)
(declare-fun alternateConstructorNameHashCodes/-1715129530 (var1760) var569)
(declare-fun cast-from-var853-to-__Array__Int__Int__ (var853) (Array Int Int))
(declare-fun alternateConstructorArgTypes/-1715129530 (var1760) var569)
(declare-fun cast-from-var853-to-__Array__Int__ClassObject__ (var853) (Array Int ClassObject))
(declare-fun arr-var853-init () (Array Int var853))
(declare-fun var806-init () var806)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var853) String)
(declare-fun cast-from-var311-to-var853 (var311) var853)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var806 String var1157) void)
(declare-fun cast-from-var1565-to-var1157 (var1565) var1157)
(declare-const null-var1760 var1760)
(declare-const null-var569 var569)
(declare-const null-var311 var311)
(declare-const null-var1565 var1565)
(declare-const var1407 var1760) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.ConstructorFunction 
(assert (not (= var1407 null-var1760)))
(declare-const var1228 var569) ; Statement: r7 := @parameter0: java.util.Map 
(assert (not (= var1228 null-var569)))
(define-const var2630 Bool (ite (= 1 1) true false)) ; Statement: z8 = 1 
(define-const var173 (Array Int Int) (hashCodes/-1715129530 var1407)) ; Statement: r49 = r0.<com.alibaba.fastjson2.reader.ConstructorFunction: long[] hashCodes> 
(define-const var2160 Int (getLength-Arr-Int-1 var173)) ; Statement: i14 = lengthof r49 
(define-const var934 Int 0) ; Statement: i15 = 0 
(assert true) ; Non Conditional
 ; Statement: if i15 >= i14 goto (branch) 
(assert (>= var934 var2160)) ; Cond: i15 >= i14 
 ; Statement: if z8 != 0 goto $r56 = r0.<com.alibaba.fastjson2.reader.ConstructorFunction: java.util.function.Function function> 
(assert (not (not (= (ite var2630 1 0) 0)))) ; Negate: Cond: z8 != 0  
(define-const var1917 var569 (alternateConstructorMap/-1715129530 var1407)) ; Statement: $r25 = r0.<com.alibaba.fastjson2.reader.ConstructorFunction: java.util.Map alternateConstructorMap> 
 ; Statement: if $r25 == null goto $r56 = r0.<com.alibaba.fastjson2.reader.ConstructorFunction: java.util.function.Function function> 
(assert (not (= var1917 null-var569))) ; Negate: Cond: $r25 == null  
(define-const var2363 var3653 (var569_keySet/-712633290 var1228)) ; Statement: r50 = interfaceinvoke r7.<java.util.Map: java.util.Set keySet()>() 
(define-const var938 var569 (alternateConstructorMap/-1715129530 var1407)) ; Statement: $r26 = r0.<com.alibaba.fastjson2.reader.ConstructorFunction: java.util.Map alternateConstructorMap> 
(define-const var152 var853 (var569_get/1088891777 var938 (cast-from-var3653-to-var853 var2363))) ; Statement: $r27 = interfaceinvoke $r26.<java.util.Map: java.lang.Object get(java.lang.Object)>(r50) 
(define-const var3593 var311 (cast-from-var853-to-var311 var152)) ; Statement: r51 = (java.lang.reflect.Constructor) $r27 
 ; Statement: if r51 == null goto $r56 = r0.<com.alibaba.fastjson2.reader.ConstructorFunction: java.util.function.Function function> 
(assert (not (= var3593 null-var311))) ; Negate: Cond: r51 == null  
(define-const var2597 var569 (alternateConstructorNameHashCodes/-1715129530 var1407)) ; Statement: $r28 = r0.<com.alibaba.fastjson2.reader.ConstructorFunction: java.util.Map alternateConstructorNameHashCodes> 
(define-const var3088 var853 (var569_get/1088891777 var2597 (cast-from-var3653-to-var853 var2363))) ; Statement: $r29 = interfaceinvoke $r28.<java.util.Map: java.lang.Object get(java.lang.Object)>(r50) 
(define-const var1270 (Array Int Int) (cast-from-var853-to-__Array__Int__Int__ var3088)) ; Statement: r52 = (long[]) $r29 
(define-const var3777 var569 (alternateConstructorArgTypes/-1715129530 var1407)) ; Statement: $r30 = r0.<com.alibaba.fastjson2.reader.ConstructorFunction: java.util.Map alternateConstructorArgTypes> 
(define-const var2555 var853 (var569_get/1088891777 var3777 (cast-from-var3653-to-var853 var2363))) ; Statement: $r31 = interfaceinvoke $r30.<java.util.Map: java.lang.Object get(java.lang.Object)>(r50) 
(define-const var414 (Array Int ClassObject) (cast-from-var853-to-__Array__Int__ClassObject__ var2555)) ; Statement: r53 = (java.lang.reflect.Type[]) $r31 
(define-const var353 Int (getLength-Arr-Int-1 var1270)) ; Statement: $i11 = lengthof r52 
(define-const var3790 (Array Int var853) arr-var853-init) ; Statement: r54 = newarray (java.lang.Object)[$i11] 
(define-const var3137 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var2134 Int (getLength-Arr-Int-1 var1270)) ; Statement: $i12 = lengthof r52 
 ; Statement: if i17 >= $i12 goto $r32 = virtualinvoke r51.<java.lang.reflect.Constructor: java.lang.Object newInstance(java.lang.Object[])>(r54) 
(assert (not (>= var3137 var2134))) ; Negate: Cond: i17 >= $i12  
(declare-const var3859 var1565) ; Statement: $r43 := @caughtexception 
(assert (not (= var3859 null-var1565)))
(define-const var840 var806 var806-init) ; Statement: $r44 = new com.alibaba.fastjson2.JSONException 
(define-const var1431 String String-init) ; Statement: $r45 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1431)) ; Statement: specialinvoke $r45.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1431!1 String)
(assert (= var1431!1 ""))
(assert true)
(define-const var1354 String (append/672562846 var1431!1 "invoke constructor error, ")) ; Statement: $r46 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invoke constructor error, ") 
(declare-const var1431!2 String)
(assert (= var1431!2 (str.++ var1431!1 "invoke constructor error, ")))
(assert true)
(define-const var3922 String (append/-1031950772 var1354 (cast-from-var311-to-var853 var3593))) ; Statement: $r47 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r51) 
(declare-const var1354!1 String)
(assert (str.prefixof var1354 var1354!1))
(assert true)
(define-const var2591 String (toString/-2075883882 var3922)) ; Statement: $r48 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var840 var2591 (cast-from-var1565-to-var1157 var3859))) ; Statement: specialinvoke $r44.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r48, $r43) 

(declare-const var840!1 var806)
(declare-const var2591!1 String)
(declare-const var3859!1 var1565)
 ; Statement: throw $r44 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCodes/-1715129530=([com.alibaba.fastjson2.reader.ConstructorFunction], long[]), getLength-Arr-Int-1=([long[]], int), alternateConstructorMap/-1715129530=([com.alibaba.fastjson2.reader.ConstructorFunction], java.util.Map), var569_keySet/-712633290=([java.util.Map], java.util.Set), var569_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-var3653-to-var853=([java.util.Set], java.lang.Object), cast-from-var853-to-var311=([java.lang.Object], java.lang.reflect.Constructor), alternateConstructorNameHashCodes/-1715129530=([com.alibaba.fastjson2.reader.ConstructorFunction], java.util.Map), cast-from-var853-to-__Array__Int__Int__=([java.lang.Object], long[]), alternateConstructorArgTypes/-1715129530=([com.alibaba.fastjson2.reader.ConstructorFunction], java.util.Map), cast-from-var853-to-__Array__Int__ClassObject__=([java.lang.Object], java.lang.reflect.Type[]), arr-var853-init=([], java.lang.Object[]), var806-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var311-to-var853=([java.lang.reflect.Constructor], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var1565-to-var1157=([java.lang.Exception], java.lang.Throwable)}
; {var1760=com.alibaba.fastjson2.reader.ConstructorFunction, var1407=r0, var569=java.util.Map, var1228=r7, var2630=z8, var173=r49, var2160=i14, var934=i15, var1917=$r25, var3653=java.util.Set, var2363=r50, var938=$r26, var853=java.lang.Object, var152=$r27, var311=java.lang.reflect.Constructor, var3593=r51, var2597=$r28, var3088=$r29, var1270=r52, var3777=$r30, var2555=$r31, var414=r53, var353=$i11, var3790=r54, var3137=i17, var2134=$i12, var1565=java.lang.Exception, var3859=$r43, var806=com.alibaba.fastjson2.JSONException, var840=$r44, var1431=$r45, var1354=$r46, var3922=$r47, var2591=$r48, var1157=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.ConstructorFunction=var1760, r0=var1407, java.util.Map=var569, r7=var1228, z8=var2630, r49=var173, i14=var2160, i15=var934, $r25=var1917, java.util.Set=var3653, r50=var2363, $r26=var938, java.lang.Object=var853, $r27=var152, java.lang.reflect.Constructor=var311, r51=var3593, $r28=var2597, $r29=var3088, r52=var1270, $r30=var3777, $r31=var2555, r53=var414, $i11=var353, r54=var3790, i17=var3137, $i12=var2134, java.lang.Exception=var1565, $r43=var3859, com.alibaba.fastjson2.JSONException=var806, $r44=var840, $r45=var1431, $r46=var1354, $r47=var3922, $r48=var2591, java.lang.Throwable=var1157}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.ConstructorFunction;	r7 := @parameter0: java.util.Map;	z8 = 1;	r49 = r0.<com.alibaba.fastjson2.reader.ConstructorFunction: long[] hashCodes>;	i14 = lengthof r49;	i15 = 0;	if i15 >= i14 goto (branch);	if z8 != 0 goto $r56 = r0.<com.alibaba.fastjson2.reader.ConstructorFunction: java.util.function.Function function>;	$r25 = r0.<com.alibaba.fastjson2.reader.ConstructorFunction: java.util.Map alternateConstructorMap>;	if $r25 == null goto $r56 = r0.<com.alibaba.fastjson2.reader.ConstructorFunction: java.util.function.Function function>;	r50 = interfaceinvoke r7.<java.util.Map: java.util.Set keySet()>();	$r26 = r0.<com.alibaba.fastjson2.reader.ConstructorFunction: java.util.Map alternateConstructorMap>;	$r27 = interfaceinvoke $r26.<java.util.Map: java.lang.Object get(java.lang.Object)>(r50);	r51 = (java.lang.reflect.Constructor) $r27;	if r51 == null goto $r56 = r0.<com.alibaba.fastjson2.reader.ConstructorFunction: java.util.function.Function function>;	$r28 = r0.<com.alibaba.fastjson2.reader.ConstructorFunction: java.util.Map alternateConstructorNameHashCodes>;	$r29 = interfaceinvoke $r28.<java.util.Map: java.lang.Object get(java.lang.Object)>(r50);	r52 = (long[]) $r29;	$r30 = r0.<com.alibaba.fastjson2.reader.ConstructorFunction: java.util.Map alternateConstructorArgTypes>;	$r31 = interfaceinvoke $r30.<java.util.Map: java.lang.Object get(java.lang.Object)>(r50);	r53 = (java.lang.reflect.Type[]) $r31;	$i11 = lengthof r52;	r54 = newarray (java.lang.Object)[$i11];	i17 = 0;	$i12 = lengthof r52;	if i17 >= $i12 goto $r32 = virtualinvoke r51.<java.lang.reflect.Constructor: java.lang.Object newInstance(java.lang.Object[])>(r54);	$r43 := @caughtexception;	$r44 = new com.alibaba.fastjson2.JSONException;	$r45 = new java.lang.StringBuilder;	specialinvoke $r45.<java.lang.StringBuilder: void <init>()>();	$r46 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invoke constructor error, ");	$r47 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r51);	$r48 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r44.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r48, $r43);	throw $r44
;block_num 8