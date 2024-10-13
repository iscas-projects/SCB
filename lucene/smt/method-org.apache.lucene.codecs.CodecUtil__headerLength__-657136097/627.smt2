(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3835 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var1651 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1651 null-String)))
(assert true)
(define-const var2699 Int (length/-134980193 var1651)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var2237 Int (+ 9 var2699)) ; Statement: $i1 = 9 + $i0 
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var1651=r0, var3835=null_type, var2699=$i0, var2237=$i1}
; {r0=var1651, null_type=var3835, $i0=var2699, $i1=var2237}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i1 = 9 + $i0;	return $i1
;block_num 1