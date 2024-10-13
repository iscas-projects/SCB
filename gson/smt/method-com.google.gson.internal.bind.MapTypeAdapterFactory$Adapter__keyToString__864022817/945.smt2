(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2492 0)
(declare-sort var3636 0)
(declare-sort var3290 0)
(declare-sort var1047 0)
(declare-sort var511 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isJsonPrimitive/2003092387 (var3636) Bool)
(declare-fun getAsJsonPrimitive/-449722137 (var3636) var3290)
(declare-fun isNumber/1639800004 (var3290) Bool)
(declare-fun getAsNumber/-493285535 (var3290) var1047)
(declare-fun String_valueOf/-333372740 (var511) String)
(declare-fun cast-from-var1047-to-var511 (var1047) var511)
(declare-const null-var2492 var2492)
(declare-const null-var3636 var3636)
(declare-const var1225 var2492) ; Statement: r8 := @this: com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter 
(assert (not (= var1225 null-var2492)))
(declare-const var2561 var3636) ; Statement: r0 := @parameter0: com.google.gson.JsonElement 
(assert (not (= var2561 null-var3636)))
(assert true)
(define-const var924 Bool (isJsonPrimitive/2003092387 var2561)) ; Statement: $z0 = virtualinvoke r0.<com.google.gson.JsonElement: boolean isJsonPrimitive()>() 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<com.google.gson.JsonElement: boolean isJsonNull()>() 
(assert (not (= (ite var924 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var1311 var3290 (getAsJsonPrimitive/-449722137 var2561)) ; Statement: r2 = virtualinvoke r0.<com.google.gson.JsonElement: com.google.gson.JsonPrimitive getAsJsonPrimitive()>() 
(assert true)
(define-const var122 Bool (isNumber/1639800004 var1311)) ; Statement: $z2 = virtualinvoke r2.<com.google.gson.JsonPrimitive: boolean isNumber()>() 
 ; Statement: if $z2 == 0 goto $z3 = virtualinvoke r2.<com.google.gson.JsonPrimitive: boolean isBoolean()>() 
(assert (not (= (ite var122 1 0) 0))) ; Negate: Cond: $z2 == 0  
(assert true)
(define-const var1350 var1047 (getAsNumber/-493285535 var1311)) ; Statement: $r6 = virtualinvoke r2.<com.google.gson.JsonPrimitive: java.lang.Number getAsNumber()>() 
(define-const var304 String (String_valueOf/-333372740 (cast-from-var1047-to-var511 var1350))) ; Statement: $r7 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r6) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {isJsonPrimitive/2003092387=([com.google.gson.JsonElement], boolean), getAsJsonPrimitive/-449722137=([com.google.gson.JsonElement], com.google.gson.JsonPrimitive), isNumber/1639800004=([com.google.gson.JsonPrimitive], boolean), getAsNumber/-493285535=([com.google.gson.JsonPrimitive], java.lang.Number), String_valueOf/-333372740=([java.lang.Object], java.lang.String), cast-from-var1047-to-var511=([java.lang.Number], java.lang.Object)}
; {var2492=com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter, var1225=r8, var3636=com.google.gson.JsonElement, var2561=r0, var924=$z0, var3290=com.google.gson.JsonPrimitive, var1311=r2, var122=$z2, var1047=java.lang.Number, var1350=$r6, var511=java.lang.Object, var304=$r7}
; {com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter=var2492, r8=var1225, com.google.gson.JsonElement=var3636, r0=var2561, $z0=var924, com.google.gson.JsonPrimitive=var3290, r2=var1311, $z2=var122, java.lang.Number=var1047, $r6=var1350, java.lang.Object=var511, $r7=var304}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r8 := @this: com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter;	r0 := @parameter0: com.google.gson.JsonElement;	$z0 = virtualinvoke r0.<com.google.gson.JsonElement: boolean isJsonPrimitive()>();	if $z0 == 0 goto $z1 = virtualinvoke r0.<com.google.gson.JsonElement: boolean isJsonNull()>();	r2 = virtualinvoke r0.<com.google.gson.JsonElement: com.google.gson.JsonPrimitive getAsJsonPrimitive()>();	$z2 = virtualinvoke r2.<com.google.gson.JsonPrimitive: boolean isNumber()>();	if $z2 == 0 goto $z3 = virtualinvoke r2.<com.google.gson.JsonPrimitive: boolean isBoolean()>();	$r6 = virtualinvoke r2.<com.google.gson.JsonPrimitive: java.lang.Number getAsNumber()>();	$r7 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r6);	return $r7
;block_num 3