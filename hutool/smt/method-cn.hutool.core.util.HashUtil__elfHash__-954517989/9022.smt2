(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var113 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var1107 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1107 null-String)))
(define-const var3573 Int 0) ; Statement: i9 = 0 
(define-const var1584 Int 0) ; Statement: i10 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var3020 Int (length/-134980193 var1107)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i10 >= $i0 goto $i1 = i9 & 2147483647 
(assert (>= var1584 var3020)) ; Cond: i10 >= $i0 
(define-const var2948 Int (bv2nat (bvand ((_ int2bv 64) var3573) ((_ int2bv 64) 2147483647)))) ; Statement: $i1 = i9 & 2147483647 
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var1107=r0, var113=null_type, var3573=i9, var1584=i10, var3020=$i0, var2948=$i1}
; {r0=var1107, null_type=var113, i9=var3573, i10=var1584, $i0=var3020, $i1=var2948}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i9 = 0;	i10 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i10 >= $i0 goto $i1 = i9 & 2147483647;	$i1 = i9 & 2147483647;	return $i1
;block_num 3