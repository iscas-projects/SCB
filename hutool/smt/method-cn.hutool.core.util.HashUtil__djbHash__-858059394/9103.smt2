(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var668 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var3888 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3888 null-String)))
(define-const var2847 Int 5381) ; Statement: i5 = 5381 
(define-const var1762 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var852 Int (length/-134980193 var3888)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i6 >= $i0 goto $i1 = i5 & 2147483647 
(assert (>= var1762 var852)) ; Cond: i6 >= $i0 
(define-const var1795 Int (bv2nat (bvand ((_ int2bv 64) var2847) ((_ int2bv 64) 2147483647)))) ; Statement: $i1 = i5 & 2147483647 
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var3888=r0, var668=null_type, var2847=i5, var1762=i6, var852=$i0, var1795=$i1}
; {r0=var3888, null_type=var668, i5=var2847, i6=var1762, $i0=var852, $i1=var1795}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i5 = 5381;	i6 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i6 >= $i0 goto $i1 = i5 & 2147483647;	$i1 = i5 & 2147483647;	return $i1
;block_num 3