(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3430 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var896 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var896 null-String)))
(define-const var1615 String "") ; Statement: r38 = "" 
(define-const var3666 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var3504 Int (length/-134980193 var896)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i5 >= $i0 goto return r38 
(assert (>= var3666 var3504)) ; Cond: i5 >= $i0 
 ; Statement: return r38 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var896=r0, var3430=null_type, var1615=r38, var3666=i5, var3504=$i0}
; {r0=var896, null_type=var3430, r38=var1615, i5=var3666, $i0=var3504}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r38 = "";	i5 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i5 >= $i0 goto return r38;	return r38
;block_num 3