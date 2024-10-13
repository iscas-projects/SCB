(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var825 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun transpiled/-1525370 (var825) String)
(declare-fun original/-1525370 (var825) String)
(declare-const null-var825 var825)
(declare-const var3407 var825) ; Statement: r0 := @this: com.google.javascript.jscomp.transpile.TranspileResult 
(assert (not (= var3407 null-var825)))
(define-const var2110 String (transpiled/-1525370 var3407)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.transpile.TranspileResult: java.lang.String transpiled> 
(define-const var2975 String (original/-1525370 var3407)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.transpile.TranspileResult: java.lang.String original> 
(assert true)
(define-const var3974 Bool (= var2110 var2975)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (= (ite var3974 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2005 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {transpiled/-1525370=([com.google.javascript.jscomp.transpile.TranspileResult], java.lang.String), original/-1525370=([com.google.javascript.jscomp.transpile.TranspileResult], java.lang.String)}
; {var825=com.google.javascript.jscomp.transpile.TranspileResult, var3407=r0, var2110=$r2, var2975=$r1, var3974=$z0, var2005=$z1}
; {com.google.javascript.jscomp.transpile.TranspileResult=var825, r0=var3407, $r2=var2110, $r1=var2975, $z0=var3974, $z1=var2005}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.transpile.TranspileResult;	$r2 = r0.<com.google.javascript.jscomp.transpile.TranspileResult: java.lang.String transpiled>;	$r1 = r0.<com.google.javascript.jscomp.transpile.TranspileResult: java.lang.String original>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 != 0 goto $z1 = 0;	$z1 = 0;	return $z1
;block_num 3