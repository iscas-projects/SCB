(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var632 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun transpiled/-1525370 (var632) String)
(declare-fun original/-1525370 (var632) String)
(declare-const null-var632 var632)
(declare-const var3392 var632) ; Statement: r0 := @this: com.google.javascript.jscomp.transpile.TranspileResult 
(assert (not (= var3392 null-var632)))
(define-const var2775 String (transpiled/-1525370 var3392)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.transpile.TranspileResult: java.lang.String transpiled> 
(define-const var2269 String (original/-1525370 var3392)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.transpile.TranspileResult: java.lang.String original> 
(assert true)
(define-const var511 Bool (= var2775 var2269)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (not (= (ite var511 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2631 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= return $z1] 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {transpiled/-1525370=([com.google.javascript.jscomp.transpile.TranspileResult], java.lang.String), original/-1525370=([com.google.javascript.jscomp.transpile.TranspileResult], java.lang.String)}
; {var632=com.google.javascript.jscomp.transpile.TranspileResult, var3392=r0, var2775=$r2, var2269=$r1, var511=$z0, var2631=$z1}
; {com.google.javascript.jscomp.transpile.TranspileResult=var632, r0=var3392, $r2=var2775, $r1=var2269, $z0=var511, $z1=var2631}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.transpile.TranspileResult;	$r2 = r0.<com.google.javascript.jscomp.transpile.TranspileResult: java.lang.String transpiled>;	$r1 = r0.<com.google.javascript.jscomp.transpile.TranspileResult: java.lang.String original>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 != 0 goto $z1 = 0;	$z1 = 1;	goto [?= return $z1];	return $z1
;block_num 3