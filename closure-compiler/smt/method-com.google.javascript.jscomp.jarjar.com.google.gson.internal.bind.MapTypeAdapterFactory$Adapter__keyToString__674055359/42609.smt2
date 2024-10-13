(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var445 0)
(declare-sort var1988 0)
(declare-sort var2762 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isJsonPrimitive/-1677961582 (var1988) Bool)
(declare-fun isJsonNull/1502105978 (var1988) Bool)
(declare-fun var2762-init () var2762)
(declare-fun <init>/-208190597 (var2762) void)
(declare-const null-var445 var445)
(declare-const null-var1988 var1988)
(declare-const var916 var445) ; Statement: r8 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter 
(assert (not (= var916 null-var445)))
(declare-const var2769 var1988) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement 
(assert (not (= var2769 null-var1988)))
(assert true)
(define-const var2580 Bool (isJsonPrimitive/-1677961582 var2769)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement: boolean isJsonPrimitive()>() 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement: boolean isJsonNull()>() 
(assert (= (ite var2580 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3329 Bool (isJsonNull/1502105978 var2769)) ; Statement: $z1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement: boolean isJsonNull()>() 
 ; Statement: if $z1 == 0 goto $r1 = new java.lang.AssertionError 
(assert (= (ite var3329 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1506 var2762 var2762-init) ; Statement: $r1 = new java.lang.AssertionError 
(assert true)
;(assert (<init>/-208190597 var1506)) ; Statement: specialinvoke $r1.<java.lang.AssertionError: void <init>()>() 

(declare-const var1506!1 var2762)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {isJsonPrimitive/-1677961582=([com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement], boolean), isJsonNull/1502105978=([com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement], boolean), var2762-init=([], java.lang.AssertionError), <init>/-208190597=([java.lang.AssertionError], void)}
; {var445=com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter, var916=r8, var1988=com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement, var2769=r0, var2580=$z0, var3329=$z1, var2762=java.lang.AssertionError, var1506=$r1}
; {com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter=var445, r8=var916, com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement=var1988, r0=var2769, $z0=var2580, $z1=var3329, java.lang.AssertionError=var2762, $r1=var1506}
;seq 
;cnt {}
;stmts r8 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.MapTypeAdapterFactory$Adapter;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement: boolean isJsonPrimitive()>();	if $z0 == 0 goto $z1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement: boolean isJsonNull()>();	$z1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement: boolean isJsonNull()>();	if $z1 == 0 goto $r1 = new java.lang.AssertionError;	$r1 = new java.lang.AssertionError;	specialinvoke $r1.<java.lang.AssertionError: void <init>()>();	throw $r1
;block_num 3