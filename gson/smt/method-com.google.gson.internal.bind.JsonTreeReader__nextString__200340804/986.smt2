(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var116 0)
(declare-sort var3013 0)
(declare-sort var1949 0)
(declare-sort var3709 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun peek/-1841308090 (var116) var3013)
(declare-fun popStack/-1055838337 (var116) var1949)
(declare-fun cast-from-var1949-to-var3709 (var1949) var3709)
(declare-fun getAsString/1431914449 (var3709) String)
(declare-fun stackSize/-1151902492 (var116) Int)
(declare-const null-var116 var116)
(declare-const var3013-STRING var3013)
(declare-const var2786 var116) ; Statement: r0 := @this: com.google.gson.internal.bind.JsonTreeReader 
(assert (not (= var2786 null-var116)))
(assert true)
(define-const var2245 var3013 (peek/-1841308090 var2786)) ; Statement: r1 = virtualinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: com.google.gson.stream.JsonToken peek()>() 
(define-const var2897 var3013 var3013-STRING) ; Statement: $r2 = <com.google.gson.stream.JsonToken: com.google.gson.stream.JsonToken STRING> 
 ; Statement: if r1 == $r2 goto $r3 = specialinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: java.lang.Object popStack()>() 
(assert (= var2245 var2897)) ; Cond: r1 == $r2 
(assert true)
(define-const var2108 var1949 (popStack/-1055838337 var2786)) ; Statement: $r3 = specialinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: java.lang.Object popStack()>() 
(define-const var625 var3709 (cast-from-var1949-to-var3709 var2108)) ; Statement: $r4 = (com.google.gson.JsonPrimitive) $r3 
(assert true)
(define-const var263 String (getAsString/1431914449 var625)) ; Statement: $r7 = virtualinvoke $r4.<com.google.gson.JsonPrimitive: java.lang.String getAsString()>() 
(define-const var965 Int (stackSize/-1151902492 var2786)) ; Statement: $i0 = r0.<com.google.gson.internal.bind.JsonTreeReader: int stackSize> 
 ; Statement: if $i0 <= 0 goto return $r7 
(assert (<= var965 0)) ; Cond: $i0 <= 0 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {peek/-1841308090=([com.google.gson.internal.bind.JsonTreeReader], com.google.gson.stream.JsonToken), popStack/-1055838337=([com.google.gson.internal.bind.JsonTreeReader], java.lang.Object), cast-from-var1949-to-var3709=([java.lang.Object], com.google.gson.JsonPrimitive), getAsString/1431914449=([com.google.gson.JsonPrimitive], java.lang.String), stackSize/-1151902492=([com.google.gson.internal.bind.JsonTreeReader], int)}
; {var116=com.google.gson.internal.bind.JsonTreeReader, var2786=r0, var3013=com.google.gson.stream.JsonToken, var2245=r1, var2897=$r2, var1949=java.lang.Object, var2108=$r3, var3709=com.google.gson.JsonPrimitive, var625=$r4, var263=$r7, var965=$i0}
; {com.google.gson.internal.bind.JsonTreeReader=var116, r0=var2786, com.google.gson.stream.JsonToken=var3013, r1=var2245, $r2=var2897, java.lang.Object=var1949, $r3=var2108, com.google.gson.JsonPrimitive=var3709, $r4=var625, $r7=var263, $i0=var965}
;seq 
;cnt {}
;stmts r0 := @this: com.google.gson.internal.bind.JsonTreeReader;	r1 = virtualinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: com.google.gson.stream.JsonToken peek()>();	$r2 = <com.google.gson.stream.JsonToken: com.google.gson.stream.JsonToken STRING>;	if r1 == $r2 goto $r3 = specialinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: java.lang.Object popStack()>();	$r3 = specialinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: java.lang.Object popStack()>();	$r4 = (com.google.gson.JsonPrimitive) $r3;	$r7 = virtualinvoke $r4.<com.google.gson.JsonPrimitive: java.lang.String getAsString()>();	$i0 = r0.<com.google.gson.internal.bind.JsonTreeReader: int stackSize>;	if $i0 <= 0 goto return $r7;	return $r7
;block_num 3