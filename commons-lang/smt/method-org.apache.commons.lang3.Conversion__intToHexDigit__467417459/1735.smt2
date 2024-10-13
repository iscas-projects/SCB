(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1141 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1141_forDigit/-2032867890 (Int Int) Int)
(declare-const null-Int Int)
(declare-const var3378 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3378 null-Int)))
(define-const var1533 Int (var1141_forDigit/-2032867890 var3378 16)) ; Statement: c1 = staticinvoke <java.lang.Character: char forDigit(int,int)>(i0, 16) 
 ; Statement: if c1 != 0 goto return c1 
(assert (not (= var1533 0))) ; Cond: c1 != 0 
 ; Statement: return c1 
(check-sat)
(get-model)
(get-unsat-core)
; {var1141_forDigit/-2032867890=([int, int], char)}
; {var3378=i0, var1141=java.lang.Character, var1533=c1}
; {i0=var3378, java.lang.Character=var1141, c1=var1533}
;seq 
;cnt {}
;stmts i0 := @parameter0: int;	c1 = staticinvoke <java.lang.Character: char forDigit(int,int)>(i0, 16);	if c1 != 0 goto return c1;	return c1
;block_num 2