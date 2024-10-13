(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var438 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var1957 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1957 null-String)))
(assert true)
(define-const var1626 Int (length/-134980193 var1957)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 10 goto $z0 = 0 
(assert (not (= var1626 10))) ; Cond: $i0 != 10 
(define-const var3024 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var1957=r0, var438=null_type, var1626=$i0, var3024=$z0}
; {r0=var1957, null_type=var438, $i0=var1626, $z0=var3024}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 != 10 goto $z0 = 0;	$z0 = 0;	return $z0
;block_num 3