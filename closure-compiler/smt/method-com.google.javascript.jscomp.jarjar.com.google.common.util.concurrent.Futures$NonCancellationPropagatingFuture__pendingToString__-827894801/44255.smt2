(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var784 0)
(declare-sort var3556 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun delegate/-1745411868 (var784) var3556)
(declare-const null-var784 var784)
(declare-const null-var3556 var3556)
(declare-const var629 var784) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Futures$NonCancellationPropagatingFuture 
(assert (not (= var629 null-var784)))
(define-const var3665 var3556 (delegate/-1745411868 var629)) ; Statement: r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Futures$NonCancellationPropagatingFuture: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ListenableFuture delegate> 
 ; Statement: if r1 == null goto return null 
(assert (= var3665 null-var3556)) ; Cond: r1 == null 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {delegate/-1745411868=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Futures$NonCancellationPropagatingFuture], com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ListenableFuture)}
; {var784=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Futures$NonCancellationPropagatingFuture, var629=r0, var3556=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ListenableFuture, var3665=r1}
; {com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Futures$NonCancellationPropagatingFuture=var784, r0=var629, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ListenableFuture=var3556, r1=var3665}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Futures$NonCancellationPropagatingFuture;	r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.Futures$NonCancellationPropagatingFuture: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ListenableFuture delegate>;	if r1 == null goto return null;	return null
;block_num 2