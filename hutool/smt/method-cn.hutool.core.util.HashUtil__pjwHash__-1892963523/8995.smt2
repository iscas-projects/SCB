(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1301 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var3517 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3517 null-String)))
(define-const var1814 Int 0) ; Statement: i7 = 0 
(define-const var3473 Int 0) ; Statement: i8 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var243 Int (length/-134980193 var3517)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i8 >= $i0 goto $i1 = i7 & 2147483647 
(assert (>= var3473 var243)) ; Cond: i8 >= $i0 
(define-const var3853 Int (bv2nat (bvand ((_ int2bv 64) var1814) ((_ int2bv 64) 2147483647)))) ; Statement: $i1 = i7 & 2147483647 
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var3517=r0, var1301=null_type, var1814=i7, var3473=i8, var243=$i0, var3853=$i1}
; {r0=var3517, null_type=var1301, i7=var1814, i8=var3473, $i0=var243, $i1=var3853}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i7 = 0;	i8 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i8 >= $i0 goto $i1 = i7 & 2147483647;	$i1 = i7 & 2147483647;	return $i1
;block_num 3