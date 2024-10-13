(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var613 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sourceMap/-1525370 (var613) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var613 var613)
(declare-const var4 var613) ; Statement: r0 := @this: com.google.javascript.jscomp.transpile.TranspileResult 
(assert (not (= var4 null-var613)))
(define-const var3624 String (sourceMap/-1525370 var4)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.transpile.TranspileResult: java.lang.String sourceMap> 
(assert true)
(define-const var3246 Bool (isEmpty/-1285796103 var3624)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r4 = r0.<com.google.javascript.jscomp.transpile.TranspileResult: java.lang.String transpiled> 
(assert (not (= (ite var3246 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {sourceMap/-1525370=([com.google.javascript.jscomp.transpile.TranspileResult], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var613=com.google.javascript.jscomp.transpile.TranspileResult, var4=r0, var3624=$r1, var3246=$z0}
; {com.google.javascript.jscomp.transpile.TranspileResult=var613, r0=var4, $r1=var3624, $z0=var3246}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.transpile.TranspileResult;	$r1 = r0.<com.google.javascript.jscomp.transpile.TranspileResult: java.lang.String sourceMap>;	$z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r4 = r0.<com.google.javascript.jscomp.transpile.TranspileResult: java.lang.String transpiled>;	return r0
;block_num 2