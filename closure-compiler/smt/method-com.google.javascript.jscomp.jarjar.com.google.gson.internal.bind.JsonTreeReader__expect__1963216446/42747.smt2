(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3766 0)
(declare-sort var3966 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun peek/1179433192 (var3766) var3966)
(declare-const null-var3766 var3766)
(declare-const null-var3966 var3966)
(declare-const var2017 var3766) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader 
(assert (not (= var2017 null-var3766)))
(declare-const var3662 var3966) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken 
(assert (not (= var3662 null-var3966)))
(assert true)
(define-const var3709 var3966 (peek/1179433192 var2017)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken peek()>() 
 ; Statement: if $r2 == r1 goto return 
(assert (= var3709 var3662)) ; Cond: $r2 == r1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {peek/1179433192=([com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader], com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken)}
; {var3766=com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader, var2017=r0, var3966=com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken, var3662=r1, var3709=$r2}
; {com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader=var3766, r0=var2017, com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken=var3966, r1=var3662, $r2=var3709}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken;	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeReader: com.google.javascript.jscomp.jarjar.com.google.gson.stream.JsonToken peek()>();	if $r2 == r1 goto return;	return
;block_num 2