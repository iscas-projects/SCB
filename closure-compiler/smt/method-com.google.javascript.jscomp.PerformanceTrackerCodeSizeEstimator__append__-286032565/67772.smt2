(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var878 0)
(declare-sort var540 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var878 var878)
(declare-const null-String String)
(declare-const var488 var878) ; Statement: r1 := @this: com.google.javascript.jscomp.PerformanceTrackerCodeSizeEstimator 
(assert (not (= var488 null-var878)))
(declare-const var210 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var210 null-String)))
(assert true)
(define-const var3703 Int (length/-134980193 var210)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i0 <= 0 goto return 
(assert (<= var3703 0)) ; Cond: i0 <= 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var878=com.google.javascript.jscomp.PerformanceTrackerCodeSizeEstimator, var488=r1, var210=r0, var540=null_type, var3703=i0}
; {com.google.javascript.jscomp.PerformanceTrackerCodeSizeEstimator=var878, r1=var488, r0=var210, null_type=var540, i0=var3703}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.PerformanceTrackerCodeSizeEstimator;	r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i0 <= 0 goto return;	return
;block_num 2