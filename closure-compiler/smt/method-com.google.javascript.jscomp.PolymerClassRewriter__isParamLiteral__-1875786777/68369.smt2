(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2690 0)
(declare-sort var637 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-var637 var637)
(declare-const var2201 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2201 null-String)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2288 var637) ; Statement: $r1 := @caughtexception 
(assert (not (= var2288 null-var637)))
(assert true)
(define-const var2454 Int (length/-134980193 var2201)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 1 goto return 0 
(assert (<= var2454 1)) ; Cond: $i0 <= 1 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var2201=r0, var2690=null_type, var637=java.lang.NumberFormatException, var2288=$r1, var2454=$i0}
; {r0=var2201, null_type=var2690, java.lang.NumberFormatException=var637, $r1=var2288, $i0=var2454}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 := @caughtexception;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 <= 1 goto return 0;	return 0
;block_num 3