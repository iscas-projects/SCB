(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var772 0)
(declare-sort var360 0)
(declare-sort var2087 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun futures/-654286005 (var772) var360)
(declare-fun pendingToString/1324830807 (var2087) String)
(declare-fun cast-from-var772-to-var2087 (var772) var2087)
(declare-const null-var772 var772)
(declare-const null-var360 var360)
(declare-const var830 var772) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AggregateFuture 
(assert (not (= var830 null-var772)))
(define-const var1651 var360 (futures/-654286005 var830)) ; Statement: r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AggregateFuture: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableCollection futures> 
 ; Statement: if r1 == null goto $r2 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AggregateFutureState: java.lang.String pendingToString()>() 
(assert (= var1651 null-var360)) ; Cond: r1 == null 
(assert true)
(define-const var3900 String (pendingToString/1324830807 (cast-from-var772-to-var2087 var830))) ; Statement: $r2 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AggregateFutureState: java.lang.String pendingToString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {futures/-654286005=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AggregateFuture], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableCollection), pendingToString/1324830807=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture], java.lang.String), cast-from-var772-to-var2087=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AggregateFuture], com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture)}
; {var772=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AggregateFuture, var830=r0, var360=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableCollection, var1651=r1, var2087=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture, var3900=$r2}
; {com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AggregateFuture=var772, r0=var830, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableCollection=var360, r1=var1651, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture=var2087, $r2=var3900}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AggregateFuture;	r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AggregateFuture: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableCollection futures>;	if r1 == null goto $r2 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AggregateFutureState: java.lang.String pendingToString()>();	$r2 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AggregateFutureState: java.lang.String pendingToString()>();	return $r2
;block_num 2