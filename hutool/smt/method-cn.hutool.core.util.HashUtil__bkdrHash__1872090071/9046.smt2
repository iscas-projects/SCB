(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1412 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var1277 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1277 null-String)))
(define-const var1022 Int 0) ; Statement: i4 = 0 
(define-const var2771 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var1865 Int (length/-134980193 var1277)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i5 >= $i0 goto $i1 = i4 & 2147483647 
(assert (>= var2771 var1865)) ; Cond: i5 >= $i0 
(define-const var1441 Int (bv2nat (bvand ((_ int2bv 64) var1022) ((_ int2bv 64) 2147483647)))) ; Statement: $i1 = i4 & 2147483647 
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var1277=r0, var1412=null_type, var1022=i4, var2771=i5, var1865=$i0, var1441=$i1}
; {r0=var1277, null_type=var1412, i4=var1022, i5=var2771, $i0=var1865, $i1=var1441}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i4 = 0;	i5 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i5 >= $i0 goto $i1 = i4 & 2147483647;	$i1 = i4 & 2147483647;	return $i1
;block_num 3