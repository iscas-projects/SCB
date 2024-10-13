(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2322 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var1545 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1545 null-String)))
(define-const var3393 Int 0) ; Statement: i7 = 0 
(define-const var696 Int 0) ; Statement: i8 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var776 Int (length/-134980193 var1545)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i8 >= $i0 goto $i1 = i7 & 2147483647 
(assert (>= var696 var776)) ; Cond: i8 >= $i0 
(define-const var661 Int (bv2nat (bvand ((_ int2bv 64) var3393) ((_ int2bv 64) 2147483647)))) ; Statement: $i1 = i7 & 2147483647 
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var1545=r0, var2322=null_type, var3393=i7, var696=i8, var776=$i0, var661=$i1}
; {r0=var1545, null_type=var2322, i7=var3393, i8=var696, $i0=var776, $i1=var661}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i7 = 0;	i8 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i8 >= $i0 goto $i1 = i7 & 2147483647;	$i1 = i7 & 2147483647;	return $i1
;block_num 3