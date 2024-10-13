(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1891 0)
(declare-sort var1549 0)
(declare-sort var89 0)
(declare-sort var29 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun peek/1179433192 (var1891) var1549)
(declare-fun popStack/460554288 (var1891) var89)
(declare-fun cast-from-var89-to-var29 (var89) var29)
(declare-fun getAsString/-1884136958 (var29) String)
(declare-fun stackSize/-769935531 (var1891) Int)
(declare-const null-var1891 var1891)
(declare-const var1549-STRING var1549)
(declare-const var2536 var1891) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader 
(assert (not (= var2536 null-var1891)))
(assert true)
(define-const var421 var1549 (peek/1179433192 var2536)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken peek()>() 
(define-const var2131 var1549 var1549-STRING) ; Statement: $r2 = <com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken STRING> 
 ; Statement: if r1 == $r2 goto $r3 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: java.lang.Object popStack()>() 
(assert (= var421 var2131)) ; Cond: r1 == $r2 
(assert true)
(define-const var1982 var89 (popStack/460554288 var2536)) ; Statement: $r3 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: java.lang.Object popStack()>() 
(define-const var677 var29 (cast-from-var89-to-var29 var1982)) ; Statement: $r4 = (com.google.javascript.jscomp.jarjar.com.google.gson.JsonPrimitive) $r3 
(assert true)
(define-const var3782 String (getAsString/-1884136958 var677)) ; Statement: $r7 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonPrimitive: java.lang.String getAsString()>() 
(define-const var1292 Int (stackSize/-769935531 var2536)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: int stackSize> 
 ; Statement: if $i0 <= 0 goto return $r7 
(assert (<= var1292 0)) ; Cond: $i0 <= 0 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {peek/1179433192=([com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader], com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken), popStack/460554288=([com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader], java.lang.Object), cast-from-var89-to-var29=([java.lang.Object], com.google.javascript.jscomp.jarjar.com.google.gson.JsonPrimitive), getAsString/-1884136958=([com.google.javascript.jscomp.jarjar.com.google.gson.JsonPrimitive], java.lang.String), stackSize/-769935531=([com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader], int)}
; {var1891=com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader, var2536=r0, var1549=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken, var421=r1, var2131=$r2, var89=java.lang.Object, var1982=$r3, var29=com.google.javascript.jscomp.jarjar.com.google.gson.JsonPrimitive, var677=$r4, var3782=$r7, var1292=$i0}
; {com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader=var1891, r0=var2536, com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken=var1549, r1=var421, $r2=var2131, java.lang.Object=var89, $r3=var1982, com.google.javascript.jscomp.jarjar.com.google.gson.JsonPrimitive=var29, $r4=var677, $r7=var3782, $i0=var1292}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken peek()>();	$r2 = <com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken STRING>;	if r1 == $r2 goto $r3 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: java.lang.Object popStack()>();	$r3 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: java.lang.Object popStack()>();	$r4 = (com.google.javascript.jscomp.jarjar.com.google.gson.JsonPrimitive) $r3;	$r7 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonPrimitive: java.lang.String getAsString()>();	$i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: int stackSize>;	if $i0 <= 0 goto return $r7;	return $r7
;block_num 3