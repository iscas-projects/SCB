(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-const var1420 String "ab") ; Statement: $r0 = "ab" 
(assert true)
(define-const var1508 Int (length/-134980193 var1420)) ; Statement: $i0 = virtualinvoke $r0.<java.lang.String: int length()>() 
(define-const var3868 Int var1508) ; Statement: <com.google.javascript.jscomp.InlineCostEstimator: int ESTIMATED_IDENTIFIER_COST> = $i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var1420=$r0, var1508=$i0, var3868=<com.google.javascript.jscomp.InlineCostEstimator: int ESTIMATED_IDENTIFIER_COST>}
; {$r0=var1420, $i0=var1508, <com.google.javascript.jscomp.InlineCostEstimator: int ESTIMATED_IDENTIFIER_COST>=var3868}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts $r0 = "ab";	$i0 = virtualinvoke $r0.<java.lang.String: int length()>();	<com.google.javascript.jscomp.InlineCostEstimator: int ESTIMATED_IDENTIFIER_COST> = $i0;	return
;block_num 1