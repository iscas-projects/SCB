(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2307 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun fExpected/748987693 (var2307) String)
(declare-fun fActual/748987693 (var2307) String)
(declare-const null-var2307 var2307)
(declare-const var2513 var2307) ; Statement: r0 := @this: junit.framework.ComparisonCompactor 
(assert (not (= var2513 null-var2307)))
(define-const var2802 String (fExpected/748987693 var2513)) ; Statement: $r2 = r0.<junit.framework.ComparisonCompactor: java.lang.String fExpected> 
(define-const var2303 String (fActual/748987693 var2513)) ; Statement: $r1 = r0.<junit.framework.ComparisonCompactor: java.lang.String fActual> 
(assert true)
(define-const var451 Bool (= var2802 var2303)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {fExpected/748987693=([junit.framework.ComparisonCompactor], java.lang.String), fActual/748987693=([junit.framework.ComparisonCompactor], java.lang.String)}
; {var2307=junit.framework.ComparisonCompactor, var2513=r0, var2802=$r2, var2303=$r1, var451=$z0}
; {junit.framework.ComparisonCompactor=var2307, r0=var2513, $r2=var2802, $r1=var2303, $z0=var451}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: junit.framework.ComparisonCompactor;	$r2 = r0.<junit.framework.ComparisonCompactor: java.lang.String fExpected>;	$r1 = r0.<junit.framework.ComparisonCompactor: java.lang.String fActual>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	return $z0
;block_num 1