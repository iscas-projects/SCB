(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3825 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var3992 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3992 null-String)))
(define-const var931 Int 0) ; Statement: l6 = 0L 
(define-const var675 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var1951 Int (length/-134980193 var3992)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i7 >= $i0 goto return l6 
(assert (>= var675 var1951)) ; Cond: i7 >= $i0 
 ; Statement: return l6 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var3992=r0, var3825=null_type, var931=l6, var675=i7, var1951=$i0}
; {r0=var3992, null_type=var3825, l6=var931, i7=var675, $i0=var1951}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	l6 = 0L;	i7 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i7 >= $i0 goto return l6;	return l6
;block_num 3