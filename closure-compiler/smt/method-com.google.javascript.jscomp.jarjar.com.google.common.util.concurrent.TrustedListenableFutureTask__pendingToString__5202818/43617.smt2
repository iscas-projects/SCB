(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1589 0)
(declare-sort var735 0)
(declare-sort var219 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun task/1092818281 (var1589) var735)
(declare-fun pendingToString/1324830807 (var219) String)
(declare-fun cast-from-var1589-to-var219 (var1589) var219)
(declare-const null-var1589 var1589)
(declare-const null-var735 var735)
(declare-const var1618 var1589) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.TrustedListenableFutureTask 
(assert (not (= var1618 null-var1589)))
(define-const var3337 var735 (task/1092818281 var1618)) ; Statement: r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.TrustedListenableFutureTask: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.InterruptibleTask task> 
 ; Statement: if r1 == null goto $r2 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.FluentFuture$TrustedFuture: java.lang.String pendingToString()>() 
(assert (= var3337 null-var735)) ; Cond: r1 == null 
(assert true)
(define-const var2528 String (pendingToString/1324830807 (cast-from-var1589-to-var219 var1618))) ; Statement: $r2 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.FluentFuture$TrustedFuture: java.lang.String pendingToString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {task/1092818281=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.TrustedListenableFutureTask], com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.InterruptibleTask), pendingToString/1324830807=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture], java.lang.String), cast-from-var1589-to-var219=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.TrustedListenableFutureTask], com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture)}
; {var1589=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.TrustedListenableFutureTask, var1618=r0, var735=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.InterruptibleTask, var3337=r1, var219=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture, var2528=$r2}
; {com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.TrustedListenableFutureTask=var1589, r0=var1618, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.InterruptibleTask=var735, r1=var3337, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture=var219, $r2=var2528}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.TrustedListenableFutureTask;	r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.TrustedListenableFutureTask: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.InterruptibleTask task>;	if r1 == null goto $r2 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.FluentFuture$TrustedFuture: java.lang.String pendingToString()>();	$r2 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.FluentFuture$TrustedFuture: java.lang.String pendingToString()>();	return $r2
;block_num 2