(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1125 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var1753 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1753 null-String)))
(define-const var3367 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var3327 Int (length/-134980193 var1753)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i5 >= $i0 goto $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (>= var3367 var3327)) ; Cond: i5 >= $i0 
(assert true)
(define-const var2742 Int (length/-134980193 var1753)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var154 Int (- var2742 1)) ; Statement: $i2 = $i1 - 1 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var1753=r0, var1125=null_type, var3367=i5, var3327=$i0, var2742=$i1, var154=$i2}
; {r0=var1753, null_type=var1125, i5=var3367, $i0=var3327, $i1=var2742, $i2=var154}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r0 := @parameter0: java.lang.String;	i5 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i5 >= $i0 goto $i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i2 = $i1 - 1;	return $i2
;block_num 3