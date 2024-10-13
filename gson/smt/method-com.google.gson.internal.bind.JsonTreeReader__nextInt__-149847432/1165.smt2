(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3062 0)
(declare-sort var2627 0)
(declare-sort var2095 0)
(declare-sort var1297 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun peek/-1841308090 (var3062) var2627)
(declare-fun peekStack/2092691255 (var3062) var2095)
(declare-fun cast-from-var2095-to-var1297 (var2095) var1297)
(declare-fun getAsInt/1872711415 (var1297) Int)
(declare-fun popStack/-1055838337 (var3062) var2095)
(declare-fun stackSize/-1151902492 (var3062) Int)
(declare-const null-var3062 var3062)
(declare-const var2627-NUMBER var2627)
(declare-const var95 var3062) ; Statement: r0 := @this: com.google.gson.internal.bind.JsonTreeReader 
(assert (not (= var95 null-var3062)))
(assert true)
(define-const var3279 var2627 (peek/-1841308090 var95)) ; Statement: r1 = virtualinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: com.google.gson.stream.JsonToken peek()>() 
(define-const var700 var2627 var2627-NUMBER) ; Statement: $r2 = <com.google.gson.stream.JsonToken: com.google.gson.stream.JsonToken NUMBER> 
 ; Statement: if r1 == $r2 goto $r3 = specialinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: java.lang.Object peekStack()>() 
(assert (= var3279 var700)) ; Cond: r1 == $r2 
(assert true)
(define-const var930 var2095 (peekStack/2092691255 var95)) ; Statement: $r3 = specialinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: java.lang.Object peekStack()>() 
(define-const var947 var1297 (cast-from-var2095-to-var1297 var930)) ; Statement: $r4 = (com.google.gson.JsonPrimitive) $r3 
(assert true)
(define-const var3447 Int (getAsInt/1872711415 var947)) ; Statement: $i5 = virtualinvoke $r4.<com.google.gson.JsonPrimitive: int getAsInt()>() 
(assert true)
;(assert (popStack/-1055838337 var95)) ; Statement: specialinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: java.lang.Object popStack()>() 

(declare-const var95!1 var3062)
(define-const var1753 Int (stackSize/-1151902492 var95!1)) ; Statement: $i0 = r0.<com.google.gson.internal.bind.JsonTreeReader: int stackSize> 
 ; Statement: if $i0 <= 0 goto return $i5 
(assert (<= var1753 0)) ; Cond: $i0 <= 0 
 ; Statement: return $i5 
(check-sat)
(get-model)
(get-unsat-core)
; {peek/-1841308090=([com.google.gson.internal.bind.JsonTreeReader], com.google.gson.stream.JsonToken), peekStack/2092691255=([com.google.gson.internal.bind.JsonTreeReader], java.lang.Object), cast-from-var2095-to-var1297=([java.lang.Object], com.google.gson.JsonPrimitive), getAsInt/1872711415=([com.google.gson.JsonPrimitive], int), popStack/-1055838337=([com.google.gson.internal.bind.JsonTreeReader], java.lang.Object), stackSize/-1151902492=([com.google.gson.internal.bind.JsonTreeReader], int)}
; {var3062=com.google.gson.internal.bind.JsonTreeReader, var95=r0, var2627=com.google.gson.stream.JsonToken, var3279=r1, var700=$r2, var2095=java.lang.Object, var930=$r3, var1297=com.google.gson.JsonPrimitive, var947=$r4, var3447=$i5, var1753=$i0}
; {com.google.gson.internal.bind.JsonTreeReader=var3062, r0=var95, com.google.gson.stream.JsonToken=var2627, r1=var3279, $r2=var700, java.lang.Object=var2095, $r3=var930, com.google.gson.JsonPrimitive=var1297, $r4=var947, $i5=var3447, $i0=var1753}
;seq 
;cnt {}
;stmts r0 := @this: com.google.gson.internal.bind.JsonTreeReader;	r1 = virtualinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: com.google.gson.stream.JsonToken peek()>();	$r2 = <com.google.gson.stream.JsonToken: com.google.gson.stream.JsonToken NUMBER>;	if r1 == $r2 goto $r3 = specialinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: java.lang.Object peekStack()>();	$r3 = specialinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: java.lang.Object peekStack()>();	$r4 = (com.google.gson.JsonPrimitive) $r3;	$i5 = virtualinvoke $r4.<com.google.gson.JsonPrimitive: int getAsInt()>();	specialinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: java.lang.Object popStack()>();	$i0 = r0.<com.google.gson.internal.bind.JsonTreeReader: int stackSize>;	if $i0 <= 0 goto return $i5;	return $i5
;block_num 3