(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2550 0)
(declare-sort var531 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sourceMap/-1525370 (var2550) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var2550 var2550)
(declare-const null-String String)
(declare-const var1220 var2550) ; Statement: r0 := @this: com.google.javascript.jscomp.transpile.TranspileResult 
(assert (not (= var1220 null-var2550)))
(declare-const var3996 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3996 null-String)))
(define-const var3976 String (sourceMap/-1525370 var1220)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.transpile.TranspileResult: java.lang.String sourceMap> 
(assert true)
(define-const var2263 Bool (isEmpty/-1285796103 var3976)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r3 = r0.<com.google.javascript.jscomp.transpile.TranspileResult: java.lang.String transpiled> 
(assert (not (= (ite var2263 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {sourceMap/-1525370=([com.google.javascript.jscomp.transpile.TranspileResult], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var2550=com.google.javascript.jscomp.transpile.TranspileResult, var1220=r0, var3996=r2, var531=null_type, var3976=$r1, var2263=$z0}
; {com.google.javascript.jscomp.transpile.TranspileResult=var2550, r0=var1220, r2=var3996, null_type=var531, $r1=var3976, $z0=var2263}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.transpile.TranspileResult;	r2 := @parameter0: java.lang.String;	$r1 = r0.<com.google.javascript.jscomp.transpile.TranspileResult: java.lang.String sourceMap>;	$z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r3 = r0.<com.google.javascript.jscomp.transpile.TranspileResult: java.lang.String transpiled>;	return r0
;block_num 2