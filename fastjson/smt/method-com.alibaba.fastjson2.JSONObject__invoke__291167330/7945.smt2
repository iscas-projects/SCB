(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3099 0)
(declare-sort var3386 0)
(declare-sort var3465 0)
(declare-sort var2504 0)
(declare-sort var3788 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var3465) String)
(declare-fun getParameterCount/184216570 (var3465) Int)
(declare-fun getReturnType/-1494237887 (var3465) ClassObject)
(declare-fun equals/-773757035 (var2504 var3386) Bool)
(declare-fun cast-from-var3099-to-var2504 (var3099) var2504)
(declare-fun var3788_valueOf/1602327315 (Bool) var3788)
(declare-const null-var3099 var3099)
(declare-const null-var3386 var3386)
(declare-const null-var3465 var3465)
(declare-const null-__Array__Int__var3386__ (Array Int var3386))
(declare-const var2541 var3099) ; Statement: r6 := @this: com.alibaba.fastjson2.JSONObject 
(assert (not (= var2541 null-var3099)))
(declare-const var867 var3386) ; Statement: r16 := @parameter0: java.lang.Object 
(assert (not (= var867 null-var3386)))
(declare-const var1195 var3465) ; Statement: r0 := @parameter1: java.lang.reflect.Method 
(assert (not (= var1195 null-var3465)))
(declare-const var441 (Array Int var3386)) ; Statement: r50 := @parameter2: java.lang.Object[] 
(assert (not (= var441 null-__Array__Int__var3386__)))
(assert true)
(define-const var629 String (getName/1227988463 var1195)) ; Statement: r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var3394 Int (getParameterCount/184216570 var1195)) ; Statement: i0 = virtualinvoke r0.<java.lang.reflect.Method: int getParameterCount()>() 
(assert true)
(define-const var3341 ClassObject (getReturnType/-1494237887 var1195)) ; Statement: r2 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class getReturnType()>() 
 ; Statement: if i0 != 1 goto (branch) 
(assert (not (not (= var3394 1)))) ; Negate: Cond: i0 != 1  
(define-const var503 String "equals") ; Statement: $r47 = "equals" 
(assert true)
(define-const var2676 Bool (= var503 var629)) ; Statement: $z15 = virtualinvoke $r47.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z15 == 0 goto r78 = null 
(assert (not (= (ite var2676 1 0) 0))) ; Negate: Cond: $z15 == 0  
(define-const var901 var3386 (select var441 0)) ; Statement: $r76 = r50[0] 
(assert true)
(define-const var1048 Bool (equals/-773757035 (cast-from-var3099-to-var2504 var2541) var901)) ; Statement: $z17 = virtualinvoke r6.<com.alibaba.fastjson2.JSONObject: boolean equals(java.lang.Object)>($r76) 
(define-const var3420 var3788 (var3788_valueOf/1602327315 var1048)) ; Statement: $r77 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>($z17) 
 ; Statement: return $r77 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String), getParameterCount/184216570=([java.lang.reflect.Method], int), getReturnType/-1494237887=([java.lang.reflect.Method], java.lang.Class), equals/-773757035=([java.util.AbstractMap, java.lang.Object], boolean), cast-from-var3099-to-var2504=([com.alibaba.fastjson2.JSONObject], java.util.AbstractMap), var3788_valueOf/1602327315=([boolean], java.lang.Boolean)}
; {var3099=com.alibaba.fastjson2.JSONObject, var2541=r6, var3386=java.lang.Object, var867=r16, var3465=java.lang.reflect.Method, var1195=r0, var441=r50, var629=r1, var3394=i0, var3341=r2, var503=$r47, var2676=$z15, var901=$r76, var2504=java.util.AbstractMap, var1048=$z17, var3788=java.lang.Boolean, var3420=$r77}
; {com.alibaba.fastjson2.JSONObject=var3099, r6=var2541, java.lang.Object=var3386, r16=var867, java.lang.reflect.Method=var3465, r0=var1195, r50=var441, r1=var629, i0=var3394, r2=var3341, $r47=var503, $z15=var2676, $r76=var901, java.util.AbstractMap=var2504, $z17=var1048, java.lang.Boolean=var3788, $r77=var3420}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r6 := @this: com.alibaba.fastjson2.JSONObject;	r16 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.reflect.Method;	r50 := @parameter2: java.lang.Object[];	r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	i0 = virtualinvoke r0.<java.lang.reflect.Method: int getParameterCount()>();	r2 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class getReturnType()>();	if i0 != 1 goto (branch);	$r47 = "equals";	$z15 = virtualinvoke $r47.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z15 == 0 goto r78 = null;	$r76 = r50[0];	$z17 = virtualinvoke r6.<com.alibaba.fastjson2.JSONObject: boolean equals(java.lang.Object)>($r76);	$r77 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>($z17);	return $r77
;block_num 3