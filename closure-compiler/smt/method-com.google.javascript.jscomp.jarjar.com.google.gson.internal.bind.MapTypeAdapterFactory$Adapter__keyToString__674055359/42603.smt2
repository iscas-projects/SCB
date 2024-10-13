(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1964 0)
(declare-sort var3630 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isJsonPrimitive/-1677961582 (var3630) Bool)
(declare-fun isJsonNull/1502105978 (var3630) Bool)
(declare-const null-var1964 var1964)
(declare-const null-var3630 var3630)
(declare-const var2710 var1964) ; Statement: r8 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter 
(assert (not (= var2710 null-var1964)))
(declare-const var509 var3630) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement 
(assert (not (= var509 null-var3630)))
(assert true)
(define-const var3073 Bool (isJsonPrimitive/-1677961582 var509)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement: boolean isJsonPrimitive()>() 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement: boolean isJsonNull()>() 
(assert (= (ite var3073 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var308 Bool (isJsonNull/1502105978 var509)) ; Statement: $z1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement: boolean isJsonNull()>() 
 ; Statement: if $z1 == 0 goto $r1 = new java.lang.AssertionError 
(assert (not (= (ite var308 1 0) 0))) ; Negate: Cond: $z1 == 0  
 ; Statement: return "null" 
(check-sat)
(get-model)
(get-unsat-core)
; {isJsonPrimitive/-1677961582=([com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement], boolean), isJsonNull/1502105978=([com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement], boolean)}
; {var1964=com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter, var2710=r8, var3630=com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement, var509=r0, var3073=$z0, var308=$z1}
; {com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter=var1964, r8=var2710, com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement=var3630, r0=var509, $z0=var3073, $z1=var308}
;seq 
;cnt {}
;stmts r8 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement: boolean isJsonPrimitive()>();	if $z0 == 0 goto $z1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement: boolean isJsonNull()>();	$z1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement: boolean isJsonNull()>();	if $z1 == 0 goto $r1 = new java.lang.AssertionError;	return "null"
;block_num 3