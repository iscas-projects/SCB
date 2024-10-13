(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2423 0)
(declare-sort var3900 0)
(declare-sort var2357 0)
(declare-sort var540 0)
(declare-sort var931 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isJsonPrimitive/-1677961582 (var3900) Bool)
(declare-fun getAsJsonPrimitive/1733940807 (var3900) var2357)
(declare-fun isNumber/-1291620235 (var2357) Bool)
(declare-fun getAsNumber/485630354 (var2357) var540)
(declare-fun String_valueOf/-333372740 (var931) String)
(declare-fun cast-from-var540-to-var931 (var540) var931)
(declare-const null-var2423 var2423)
(declare-const null-var3900 var3900)
(declare-const var3974 var2423) ; Statement: r8 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter 
(assert (not (= var3974 null-var2423)))
(declare-const var2873 var3900) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement 
(assert (not (= var2873 null-var3900)))
(assert true)
(define-const var336 Bool (isJsonPrimitive/-1677961582 var2873)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement: boolean isJsonPrimitive()>() 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement: boolean isJsonNull()>() 
(assert (not (= (ite var336 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var578 var2357 (getAsJsonPrimitive/1733940807 var2873)) ; Statement: r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement: com.google.javascript.jscomp.jarjar.com.google.gson.JsonPrimitive getAsJsonPrimitive()>() 
(assert true)
(define-const var3397 Bool (isNumber/-1291620235 var578)) ; Statement: $z2 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonPrimitive: boolean isNumber()>() 
 ; Statement: if $z2 == 0 goto $z3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonPrimitive: boolean isBoolean()>() 
(assert (not (= (ite var3397 1 0) 0))) ; Negate: Cond: $z2 == 0  
(assert true)
(define-const var3376 var540 (getAsNumber/485630354 var578)) ; Statement: $r6 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonPrimitive: java.lang.Number getAsNumber()>() 
(define-const var3346 String (String_valueOf/-333372740 (cast-from-var540-to-var931 var3376))) ; Statement: $r7 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r6) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {isJsonPrimitive/-1677961582=([com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement], boolean), getAsJsonPrimitive/1733940807=([com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement], com.google.javascript.jscomp.jarjar.com.google.gson.JsonPrimitive), isNumber/-1291620235=([com.google.javascript.jscomp.jarjar.com.google.gson.JsonPrimitive], boolean), getAsNumber/485630354=([com.google.javascript.jscomp.jarjar.com.google.gson.JsonPrimitive], java.lang.Number), String_valueOf/-333372740=([java.lang.Object], java.lang.String), cast-from-var540-to-var931=([java.lang.Number], java.lang.Object)}
; {var2423=com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter, var3974=r8, var3900=com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement, var2873=r0, var336=$z0, var2357=com.google.javascript.jscomp.jarjar.com.google.gson.JsonPrimitive, var578=r2, var3397=$z2, var540=java.lang.Number, var3376=$r6, var931=java.lang.Object, var3346=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter=var2423, r8=var3974, com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement=var3900, r0=var2873, $z0=var336, com.google.javascript.jscomp.jarjar.com.google.gson.JsonPrimitive=var2357, r2=var578, $z2=var3397, java.lang.Number=var540, $r6=var3376, java.lang.Object=var931, $r7=var3346}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r8 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement: boolean isJsonPrimitive()>();	if $z0 == 0 goto $z1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement: boolean isJsonNull()>();	r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement: com.google.javascript.jscomp.jarjar.com.google.gson.JsonPrimitive getAsJsonPrimitive()>();	$z2 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonPrimitive: boolean isNumber()>();	if $z2 == 0 goto $z3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonPrimitive: boolean isBoolean()>();	$r6 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonPrimitive: java.lang.Number getAsNumber()>();	$r7 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r6);	return $r7
;block_num 3