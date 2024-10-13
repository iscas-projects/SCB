(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var816 0)
(declare-sort var1244 0)
(declare-sort var611 0)
(declare-sort var869 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun peek/-1841308090 (var816) var1244)
(declare-fun peekStack/2092691255 (var816) var611)
(declare-fun cast-from-var611-to-var869 (var611) var869)
(declare-fun getAsLong/1185596175 (var869) Int)
(declare-fun popStack/-1055838337 (var816) var611)
(declare-fun stackSize/-1151902492 (var816) Int)
(declare-const null-var816 var816)
(declare-const var1244-NUMBER var1244)
(declare-const var2429 var816) ; Statement: r0 := @this: com.google.gson.internal.bind.JsonTreeReader 
(assert (not (= var2429 null-var816)))
(assert true)
(define-const var182 var1244 (peek/-1841308090 var2429)) ; Statement: r1 = virtualinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: com.google.gson.stream.JsonToken peek()>() 
(define-const var3674 var1244 var1244-NUMBER) ; Statement: $r2 = <com.google.gson.stream.JsonToken: com.google.gson.stream.JsonToken NUMBER> 
 ; Statement: if r1 == $r2 goto $r3 = specialinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: java.lang.Object peekStack()>() 
(assert (= var182 var3674)) ; Cond: r1 == $r2 
(assert true)
(define-const var892 var611 (peekStack/2092691255 var2429)) ; Statement: $r3 = specialinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: java.lang.Object peekStack()>() 
(define-const var1347 var869 (cast-from-var611-to-var869 var892)) ; Statement: $r4 = (com.google.gson.JsonPrimitive) $r3 
(assert true)
(define-const var1464 Int (getAsLong/1185596175 var1347)) ; Statement: $l5 = virtualinvoke $r4.<com.google.gson.JsonPrimitive: long getAsLong()>() 
(assert true)
;(assert (popStack/-1055838337 var2429)) ; Statement: specialinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: java.lang.Object popStack()>() 

(declare-const var2429!1 var816)
(define-const var3832 Int (stackSize/-1151902492 var2429!1)) ; Statement: $i0 = r0.<com.google.gson.internal.bind.JsonTreeReader: int stackSize> 
 ; Statement: if $i0 <= 0 goto return $l5 
(assert (<= var3832 0)) ; Cond: $i0 <= 0 
 ; Statement: return $l5 
(check-sat)
(get-model)
(get-unsat-core)
; {peek/-1841308090=([com.google.gson.internal.bind.JsonTreeReader], com.google.gson.stream.JsonToken), peekStack/2092691255=([com.google.gson.internal.bind.JsonTreeReader], java.lang.Object), cast-from-var611-to-var869=([java.lang.Object], com.google.gson.JsonPrimitive), getAsLong/1185596175=([com.google.gson.JsonPrimitive], long), popStack/-1055838337=([com.google.gson.internal.bind.JsonTreeReader], java.lang.Object), stackSize/-1151902492=([com.google.gson.internal.bind.JsonTreeReader], int)}
; {var816=com.google.gson.internal.bind.JsonTreeReader, var2429=r0, var1244=com.google.gson.stream.JsonToken, var182=r1, var3674=$r2, var611=java.lang.Object, var892=$r3, var869=com.google.gson.JsonPrimitive, var1347=$r4, var1464=$l5, var3832=$i0}
; {com.google.gson.internal.bind.JsonTreeReader=var816, r0=var2429, com.google.gson.stream.JsonToken=var1244, r1=var182, $r2=var3674, java.lang.Object=var611, $r3=var892, com.google.gson.JsonPrimitive=var869, $r4=var1347, $l5=var1464, $i0=var3832}
;seq 
;cnt {}
;stmts r0 := @this: com.google.gson.internal.bind.JsonTreeReader;	r1 = virtualinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: com.google.gson.stream.JsonToken peek()>();	$r2 = <com.google.gson.stream.JsonToken: com.google.gson.stream.JsonToken NUMBER>;	if r1 == $r2 goto $r3 = specialinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: java.lang.Object peekStack()>();	$r3 = specialinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: java.lang.Object peekStack()>();	$r4 = (com.google.gson.JsonPrimitive) $r3;	$l5 = virtualinvoke $r4.<com.google.gson.JsonPrimitive: long getAsLong()>();	specialinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: java.lang.Object popStack()>();	$i0 = r0.<com.google.gson.internal.bind.JsonTreeReader: int stackSize>;	if $i0 <= 0 goto return $l5;	return $l5
;block_num 3