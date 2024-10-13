(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2451 0)
(declare-sort var1281 0)
(declare-sort var801 0)
(declare-sort var94 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun peek/1179433192 (var2451) var1281)
(declare-fun peekStack/1856222374 (var2451) var801)
(declare-fun cast-from-var801-to-var94 (var801) var94)
(declare-fun getAsInt/-1625496792 (var94) Int)
(declare-fun popStack/460554288 (var2451) var801)
(declare-fun stackSize/-769935531 (var2451) Int)
(declare-const null-var2451 var2451)
(declare-const var1281-NUMBER var1281)
(declare-const var1711 var2451) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader 
(assert (not (= var1711 null-var2451)))
(assert true)
(define-const var939 var1281 (peek/1179433192 var1711)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken peek()>() 
(define-const var1124 var1281 var1281-NUMBER) ; Statement: $r2 = <com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken NUMBER> 
 ; Statement: if r1 == $r2 goto $r3 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: java.lang.Object peekStack()>() 
(assert (= var939 var1124)) ; Cond: r1 == $r2 
(assert true)
(define-const var1337 var801 (peekStack/1856222374 var1711)) ; Statement: $r3 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: java.lang.Object peekStack()>() 
(define-const var3457 var94 (cast-from-var801-to-var94 var1337)) ; Statement: $r4 = (com.google.javascript.jscomp.jarjar.com.google.gson.JsonPrimitive) $r3 
(assert true)
(define-const var3852 Int (getAsInt/-1625496792 var3457)) ; Statement: $i5 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonPrimitive: int getAsInt()>() 
(assert true)
;(assert (popStack/460554288 var1711)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: java.lang.Object popStack()>() 

(declare-const var1711!1 var2451)
(define-const var2768 Int (stackSize/-769935531 var1711!1)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: int stackSize> 
 ; Statement: if $i0 <= 0 goto return $i5 
(assert (<= var2768 0)) ; Cond: $i0 <= 0 
 ; Statement: return $i5 
(check-sat)
(get-model)
(get-unsat-core)
; {peek/1179433192=([com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader], com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken), peekStack/1856222374=([com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader], java.lang.Object), cast-from-var801-to-var94=([java.lang.Object], com.google.javascript.jscomp.jarjar.com.google.gson.JsonPrimitive), getAsInt/-1625496792=([com.google.javascript.jscomp.jarjar.com.google.gson.JsonPrimitive], int), popStack/460554288=([com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader], java.lang.Object), stackSize/-769935531=([com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader], int)}
; {var2451=com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader, var1711=r0, var1281=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken, var939=r1, var1124=$r2, var801=java.lang.Object, var1337=$r3, var94=com.google.javascript.jscomp.jarjar.com.google.gson.JsonPrimitive, var3457=$r4, var3852=$i5, var2768=$i0}
; {com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader=var2451, r0=var1711, com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken=var1281, r1=var939, $r2=var1124, java.lang.Object=var801, $r3=var1337, com.google.javascript.jscomp.jarjar.com.google.gson.JsonPrimitive=var94, $r4=var3457, $i5=var3852, $i0=var2768}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken peek()>();	$r2 = <com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken NUMBER>;	if r1 == $r2 goto $r3 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: java.lang.Object peekStack()>();	$r3 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: java.lang.Object peekStack()>();	$r4 = (com.google.javascript.jscomp.jarjar.com.google.gson.JsonPrimitive) $r3;	$i5 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonPrimitive: int getAsInt()>();	specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: java.lang.Object popStack()>();	$i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: int stackSize>;	if $i0 <= 0 goto return $i5;	return $i5
;block_num 3