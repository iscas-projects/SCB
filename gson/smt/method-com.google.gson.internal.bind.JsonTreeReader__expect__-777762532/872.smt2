(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2253 0)
(declare-sort var2572 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun peek/-1841308090 (var2253) var2572)
(declare-const null-var2253 var2253)
(declare-const null-var2572 var2572)
(declare-const var163 var2253) ; Statement: r0 := @this: com.google.gson.internal.bind.JsonTreeReader 
(assert (not (= var163 null-var2253)))
(declare-const var3741 var2572) ; Statement: r1 := @parameter0: com.google.gson.stream.JsonToken 
(assert (not (= var3741 null-var2572)))
(assert true)
(define-const var1614 var2572 (peek/-1841308090 var163)) ; Statement: $r2 = virtualinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: com.google.gson.stream.JsonToken peek()>() 
 ; Statement: if $r2 == r1 goto return 
(assert (= var1614 var3741)) ; Cond: $r2 == r1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {peek/-1841308090=([com.google.gson.internal.bind.JsonTreeReader], com.google.gson.stream.JsonToken)}
; {var2253=com.google.gson.internal.bind.JsonTreeReader, var163=r0, var2572=com.google.gson.stream.JsonToken, var3741=r1, var1614=$r2}
; {com.google.gson.internal.bind.JsonTreeReader=var2253, r0=var163, com.google.gson.stream.JsonToken=var2572, r1=var3741, $r2=var1614}
;seq 
;cnt {}
;stmts r0 := @this: com.google.gson.internal.bind.JsonTreeReader;	r1 := @parameter0: com.google.gson.stream.JsonToken;	$r2 = virtualinvoke r0.<com.google.gson.internal.bind.JsonTreeReader: com.google.gson.stream.JsonToken peek()>();	if $r2 == r1 goto return;	return
;block_num 2