(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var810 0)
(declare-sort var2255 0)
(declare-sort var522 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun stack/-614530299 (var810) var2255)
(declare-fun var2255_isEmpty/-153543822 (var2255) Bool)
(declare-fun product/-614530299 (var810) var522)
(declare-const null-var810 var810)
(declare-const var383 var810) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeWriter 
(assert (not (= var383 null-var810)))
(define-const var2363 var2255 (stack/-614530299 var383)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeWriter: java.util.List stack> 
(define-const var2782 Bool (var2255_isEmpty/-153543822 var2363)) ; Statement: $z0 = interfaceinvoke $r1.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeWriter: com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement product> 
(assert (not (= (ite var2782 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3068 var522 (product/-614530299 var383)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeWriter: com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement product> 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {stack/-614530299=([com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeWriter], java.util.List), var2255_isEmpty/-153543822=([java.util.List], boolean), product/-614530299=([com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeWriter], com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement)}
; {var810=com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeWriter, var383=r0, var2255=java.util.List, var2363=$r1, var2782=$z0, var522=com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement, var3068=$r2}
; {com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeWriter=var810, r0=var383, java.util.List=var2255, $r1=var2363, $z0=var2782, com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement=var522, $r2=var3068}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeWriter;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeWriter: java.util.List stack>;	$z0 = interfaceinvoke $r1.<java.util.List: boolean isEmpty()>();	if $z0 != 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeWriter: com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement product>;	$r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.JsonTreeWriter: com.google.javascript.jscomp.jarjar.com.google.gson.JsonElement product>;	return $r2
;block_num 2