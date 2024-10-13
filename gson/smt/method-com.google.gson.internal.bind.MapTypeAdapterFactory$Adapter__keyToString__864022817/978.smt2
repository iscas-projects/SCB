(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var998 0)
(declare-sort var2875 0)
(declare-sort var258 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isJsonPrimitive/2003092387 (var2875) Bool)
(declare-fun isJsonNull/138558921 (var2875) Bool)
(declare-fun var258-init () var258)
(declare-fun <init>/-208190597 (var258) void)
(declare-const null-var998 var998)
(declare-const null-var2875 var2875)
(declare-const var3563 var998) ; Statement: r8 := @this: com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter 
(assert (not (= var3563 null-var998)))
(declare-const var2791 var2875) ; Statement: r0 := @parameter0: com.google.gson.JsonElement 
(assert (not (= var2791 null-var2875)))
(assert true)
(define-const var3528 Bool (isJsonPrimitive/2003092387 var2791)) ; Statement: $z0 = virtualinvoke r0.<com.google.gson.JsonElement: boolean isJsonPrimitive()>() 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<com.google.gson.JsonElement: boolean isJsonNull()>() 
(assert (= (ite var3528 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1667 Bool (isJsonNull/138558921 var2791)) ; Statement: $z1 = virtualinvoke r0.<com.google.gson.JsonElement: boolean isJsonNull()>() 
 ; Statement: if $z1 == 0 goto $r1 = new java.lang.AssertionError 
(assert (= (ite var1667 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2148 var258 var258-init) ; Statement: $r1 = new java.lang.AssertionError 
(assert true)
;(assert (<init>/-208190597 var2148)) ; Statement: specialinvoke $r1.<java.lang.AssertionError: void <init>()>() 

(declare-const var2148!1 var258)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {isJsonPrimitive/2003092387=([com.google.gson.JsonElement], boolean), isJsonNull/138558921=([com.google.gson.JsonElement], boolean), var258-init=([], java.lang.AssertionError), <init>/-208190597=([java.lang.AssertionError], void)}
; {var998=com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter, var3563=r8, var2875=com.google.gson.JsonElement, var2791=r0, var3528=$z0, var1667=$z1, var258=java.lang.AssertionError, var2148=$r1}
; {com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter=var998, r8=var3563, com.google.gson.JsonElement=var2875, r0=var2791, $z0=var3528, $z1=var1667, java.lang.AssertionError=var258, $r1=var2148}
;seq 
;cnt {}
;stmts r8 := @this: com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter;	r0 := @parameter0: com.google.gson.JsonElement;	$z0 = virtualinvoke r0.<com.google.gson.JsonElement: boolean isJsonPrimitive()>();	if $z0 == 0 goto $z1 = virtualinvoke r0.<com.google.gson.JsonElement: boolean isJsonNull()>();	$z1 = virtualinvoke r0.<com.google.gson.JsonElement: boolean isJsonNull()>();	if $z1 == 0 goto $r1 = new java.lang.AssertionError;	$r1 = new java.lang.AssertionError;	specialinvoke $r1.<java.lang.AssertionError: void <init>()>();	throw $r1
;block_num 3