(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3975 0)
(declare-sort var1190 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isJsonPrimitive/2003092387 (var1190) Bool)
(declare-fun isJsonNull/138558921 (var1190) Bool)
(declare-const null-var3975 var3975)
(declare-const null-var1190 var1190)
(declare-const var1990 var3975) ; Statement: r8 := @this: com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter 
(assert (not (= var1990 null-var3975)))
(declare-const var3904 var1190) ; Statement: r0 := @parameter0: com.google.gson.JsonElement 
(assert (not (= var3904 null-var1190)))
(assert true)
(define-const var447 Bool (isJsonPrimitive/2003092387 var3904)) ; Statement: $z0 = virtualinvoke r0.<com.google.gson.JsonElement: boolean isJsonPrimitive()>() 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<com.google.gson.JsonElement: boolean isJsonNull()>() 
(assert (= (ite var447 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3655 Bool (isJsonNull/138558921 var3904)) ; Statement: $z1 = virtualinvoke r0.<com.google.gson.JsonElement: boolean isJsonNull()>() 
 ; Statement: if $z1 == 0 goto $r1 = new java.lang.AssertionError 
(assert (not (= (ite var3655 1 0) 0))) ; Negate: Cond: $z1 == 0  
 ; Statement: return "null" 
(check-sat)
(get-model)
(get-unsat-core)
; {isJsonPrimitive/2003092387=([com.google.gson.JsonElement], boolean), isJsonNull/138558921=([com.google.gson.JsonElement], boolean)}
; {var3975=com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter, var1990=r8, var1190=com.google.gson.JsonElement, var3904=r0, var447=$z0, var3655=$z1}
; {com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter=var3975, r8=var1990, com.google.gson.JsonElement=var1190, r0=var3904, $z0=var447, $z1=var3655}
;seq 
;cnt {}
;stmts r8 := @this: com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter;	r0 := @parameter0: com.google.gson.JsonElement;	$z0 = virtualinvoke r0.<com.google.gson.JsonElement: boolean isJsonPrimitive()>();	if $z0 == 0 goto $z1 = virtualinvoke r0.<com.google.gson.JsonElement: boolean isJsonNull()>();	$z1 = virtualinvoke r0.<com.google.gson.JsonElement: boolean isJsonNull()>();	if $z1 == 0 goto $r1 = new java.lang.AssertionError;	return "null"
;block_num 3