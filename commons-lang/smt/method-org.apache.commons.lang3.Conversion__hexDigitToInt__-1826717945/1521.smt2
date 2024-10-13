(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2948 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2948_digit/-929202055 (Int Int) Int)
(declare-const null-Int Int)
(declare-const var3453 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var3453 null-Int)))
(define-const var1075 Int (var2948_digit/-929202055 var3453 16)) ; Statement: i1 = staticinvoke <java.lang.Character: int digit(char,int)>(c0, 16) 
 ; Statement: if i1 >= 0 goto return i1 
(assert (>= var1075 0)) ; Cond: i1 >= 0 
 ; Statement: return i1 
(check-sat)
(get-model)
(get-unsat-core)
; {var2948_digit/-929202055=([char, int], int)}
; {var3453=c0, var2948=java.lang.Character, var1075=i1}
; {c0=var3453, java.lang.Character=var2948, i1=var1075}
;seq 
;cnt {}
;stmts c0 := @parameter0: char;	i1 = staticinvoke <java.lang.Character: int digit(char,int)>(c0, 16);	if i1 >= 0 goto return i1;	return i1
;block_num 2