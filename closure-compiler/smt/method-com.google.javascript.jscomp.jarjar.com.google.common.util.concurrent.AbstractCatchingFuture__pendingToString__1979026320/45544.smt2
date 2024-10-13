(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var65 0)
(declare-sort var629 0)
(declare-sort var525 0)
(declare-sort var1938 0)
(declare-sort var2525 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun inputFuture/-1445917277 (var65) var629)
(declare-fun exceptionType/-1445917277 (var65) ClassObject)
(declare-fun fallback/-1445917277 (var65) var525)
(declare-fun pendingToString/1324830807 (var1938) String)
(declare-fun cast-from-var65-to-var1938 (var65) var1938)
(declare-const null-var65 var65)
(declare-const null-var629 var629)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const var2195 var65) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractCatchingFuture 
(assert (not (= var2195 null-var65)))
(define-const var1177 var629 (inputFuture/-1445917277 var2195)) ; Statement: r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractCatchingFuture: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ListenableFuture inputFuture> 
(define-const var3736 ClassObject (exceptionType/-1445917277 var2195)) ; Statement: r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractCatchingFuture: java.lang.Class exceptionType> 
(define-const var1127 var525 (fallback/-1445917277 var2195)) ; Statement: r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractCatchingFuture: java.lang.Object fallback> 
(assert true)
(define-const var3895 String (pendingToString/1324830807 (cast-from-var65-to-var1938 var2195))) ; Statement: r4 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.FluentFuture$TrustedFuture: java.lang.String pendingToString()>() 
(define-const var3300 String "") ; Statement: r21 = "" 
 ; Statement: if r1 == null goto (branch) 
(assert (= var1177 null-var629)) ; Cond: r1 == null 
 ; Statement: if r2 == null goto (branch) 
(assert (= var3736 null-ClassObject)) ; Cond: r2 == null 
 ; Statement: if r4 == null goto return null 
(assert (= var3895 null-String)) ; Cond: r4 == null 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {inputFuture/-1445917277=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractCatchingFuture], com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ListenableFuture), exceptionType/-1445917277=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractCatchingFuture], java.lang.Class), fallback/-1445917277=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractCatchingFuture], java.lang.Object), pendingToString/1324830807=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture], java.lang.String), cast-from-var65-to-var1938=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractCatchingFuture], com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture)}
; {var65=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractCatchingFuture, var2195=r0, var629=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ListenableFuture, var1177=r1, var3736=r2, var525=java.lang.Object, var1127=r3, var1938=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture, var3895=r4, var3300=r21, var2525=null_type}
; {com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractCatchingFuture=var65, r0=var2195, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ListenableFuture=var629, r1=var1177, r2=var3736, java.lang.Object=var525, r3=var1127, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture=var1938, r4=var3895, r21=var3300, null_type=var2525}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractCatchingFuture;	r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractCatchingFuture: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.ListenableFuture inputFuture>;	r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractCatchingFuture: java.lang.Class exceptionType>;	r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractCatchingFuture: java.lang.Object fallback>;	r4 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.FluentFuture$TrustedFuture: java.lang.String pendingToString()>();	r21 = "";	if r1 == null goto (branch);	if r2 == null goto (branch);	if r4 == null goto return null;	return null
;block_num 4