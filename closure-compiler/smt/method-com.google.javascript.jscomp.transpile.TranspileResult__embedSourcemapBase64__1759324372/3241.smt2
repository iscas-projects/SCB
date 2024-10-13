(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2258 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sourceMap/-1525370 (var2258) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var2258 var2258)
(declare-const var1388 var2258) ; Statement: r0 := @this: com.google.javascript.jscomp.transpile.TranspileResult 
(assert (not (= var1388 null-var2258)))
(define-const var3461 String (sourceMap/-1525370 var1388)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.transpile.TranspileResult: java.lang.String sourceMap> 
(assert true)
(define-const var1991 Bool (isEmpty/-1285796103 var3461)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r2 = r0.<com.google.javascript.jscomp.transpile.TranspileResult: java.lang.String transpiled> 
(assert (not (= (ite var1991 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {sourceMap/-1525370=([com.google.javascript.jscomp.transpile.TranspileResult], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var2258=com.google.javascript.jscomp.transpile.TranspileResult, var1388=r0, var3461=$r1, var1991=$z0}
; {com.google.javascript.jscomp.transpile.TranspileResult=var2258, r0=var1388, $r1=var3461, $z0=var1991}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.transpile.TranspileResult;	$r1 = r0.<com.google.javascript.jscomp.transpile.TranspileResult: java.lang.String sourceMap>;	$z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r2 = r0.<com.google.javascript.jscomp.transpile.TranspileResult: java.lang.String transpiled>;	return r0
;block_num 2