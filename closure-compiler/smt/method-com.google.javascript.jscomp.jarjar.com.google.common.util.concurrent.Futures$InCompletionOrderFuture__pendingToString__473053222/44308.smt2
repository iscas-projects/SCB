(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2137 0)
(declare-sort var100 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun state/-459367355 (var2137) var100)
(declare-const null-var2137 var2137)
(declare-const null-var100 var100)
(declare-const var925 var2137) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Futures$InCompletionOrderFuture 
(assert (not (= var925 null-var2137)))
(define-const var893 var100 (state/-459367355 var925)) ; Statement: r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Futures$InCompletionOrderFuture: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Futures$InCompletionOrderState state> 
 ; Statement: if r1 == null goto return null 
(assert (= var893 null-var100)) ; Cond: r1 == null 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {state/-459367355=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Futures$InCompletionOrderFuture], com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Futures$InCompletionOrderState)}
; {var2137=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Futures$InCompletionOrderFuture, var925=r0, var100=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Futures$InCompletionOrderState, var893=r1}
; {com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Futures$InCompletionOrderFuture=var2137, r0=var925, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Futures$InCompletionOrderState=var100, r1=var893}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Futures$InCompletionOrderFuture;	r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Futures$InCompletionOrderFuture: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Futures$InCompletionOrderState state>;	if r1 == null goto return null;	return null
;block_num 2