(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var945 0)
(declare-sort var3935 0)
(declare-sort var3576 0)
(declare-sort var1748 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun peek/1179433192 (var945) var3935)
(declare-fun peekStack/1856222374 (var945) var3576)
(declare-fun cast-from-var3576-to-var1748 (var3576) var1748)
(declare-fun getAsLong/-1928065280 (var1748) Int)
(declare-fun popStack/460554288 (var945) var3576)
(declare-fun stackSize/-769935531 (var945) Int)
(declare-const null-var945 var945)
(declare-const var3935-NUMBER var3935)
(declare-const var2261 var945) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader 
(assert (not (= var2261 null-var945)))
(assert true)
(define-const var3513 var3935 (peek/1179433192 var2261)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken peek()>() 
(define-const var1798 var3935 var3935-NUMBER) ; Statement: $r2 = <com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken NUMBER> 
 ; Statement: if r1 == $r2 goto $r3 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: java.lang.Object peekStack()>() 
(assert (= var3513 var1798)) ; Cond: r1 == $r2 
(assert true)
(define-const var3618 var3576 (peekStack/1856222374 var2261)) ; Statement: $r3 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: java.lang.Object peekStack()>() 
(define-const var1539 var1748 (cast-from-var3576-to-var1748 var3618)) ; Statement: $r4 = (com.google.javascript.jscomp.jarjar.com.google.gson.JsonPrimitive) $r3 
(assert true)
(define-const var3076 Int (getAsLong/-1928065280 var1539)) ; Statement: $l5 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonPrimitive: long getAsLong()>() 
(assert true)
;(assert (popStack/460554288 var2261)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: java.lang.Object popStack()>() 

(declare-const var2261!1 var945)
(define-const var2766 Int (stackSize/-769935531 var2261!1)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: int stackSize> 
 ; Statement: if $i0 <= 0 goto return $l5 
(assert (<= var2766 0)) ; Cond: $i0 <= 0 
 ; Statement: return $l5 
(check-sat)
(get-model)
(get-unsat-core)
; {peek/1179433192=([com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader], com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken), peekStack/1856222374=([com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader], java.lang.Object), cast-from-var3576-to-var1748=([java.lang.Object], com.google.javascript.jscomp.jarjar.com.google.gson.JsonPrimitive), getAsLong/-1928065280=([com.google.javascript.jscomp.jarjar.com.google.gson.JsonPrimitive], long), popStack/460554288=([com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader], java.lang.Object), stackSize/-769935531=([com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader], int)}
; {var945=com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader, var2261=r0, var3935=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken, var3513=r1, var1798=$r2, var3576=java.lang.Object, var3618=$r3, var1748=com.google.javascript.jscomp.jarjar.com.google.gson.JsonPrimitive, var1539=$r4, var3076=$l5, var2766=$i0}
; {com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader=var945, r0=var2261, com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken=var3935, r1=var3513, $r2=var1798, java.lang.Object=var3576, $r3=var3618, com.google.javascript.jscomp.jarjar.com.google.gson.JsonPrimitive=var1748, $r4=var1539, $l5=var3076, $i0=var2766}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken peek()>();	$r2 = <com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken NUMBER>;	if r1 == $r2 goto $r3 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: java.lang.Object peekStack()>();	$r3 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: java.lang.Object peekStack()>();	$r4 = (com.google.javascript.jscomp.jarjar.com.google.gson.JsonPrimitive) $r3;	$l5 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonPrimitive: long getAsLong()>();	specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: java.lang.Object popStack()>();	$i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: int stackSize>;	if $i0 <= 0 goto return $l5;	return $l5
;block_num 3