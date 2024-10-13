(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3256 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sawReturn/1145894928 (var3256) Bool)
(declare-fun finishLine/-1451290354 (var3256 Bool) Bool)
(declare-const null-var3256 var3256)
(declare-const var534 var3256) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer 
(assert (not (= var534 null-var3256)))
(define-const var3392 Bool (sawReturn/1145894928 var534)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: boolean sawReturn> 
 ; Statement: if $z0 != 0 goto specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: boolean finishLine(boolean)>(0) 
(assert (not (= (ite var3392 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
;(assert (finishLine/-1451290354 var534 (ite (= 1 0) true false))) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: boolean finishLine(boolean)>(0) 

(declare-const var534!1 var3256)
(declare-const var2763 Int)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {sawReturn/1145894928=([com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer], boolean), finishLine/-1451290354=([com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer, boolean], boolean)}
; {var3256=com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer, var534=r0, var3392=$z0, var2763=0}
; {com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer=var3256, r0=var534, $z0=var3392, 0=var2763}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer;	$z0 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: boolean sawReturn>;	if $z0 != 0 goto specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: boolean finishLine(boolean)>(0);	specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.LineBuffer: boolean finishLine(boolean)>(0);	return
;block_num 3