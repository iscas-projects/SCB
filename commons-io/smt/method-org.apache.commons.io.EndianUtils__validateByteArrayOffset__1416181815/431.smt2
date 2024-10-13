(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var695 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var695 null-__Array__Int__Int__)))
(declare-const var2081 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2081 null-Int)))
(declare-const var3724 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var3724 null-Int)))
(define-const var3216 Int (getLength-Arr-Int-1 var695)) ; Statement: $i3 = lengthof r0 
(define-const var457 Int (+ var2081 var3724)) ; Statement: $i2 = i0 + i1 
 ; Statement: if $i3 >= $i2 goto return 
(assert (>= var3216 var457)) ; Cond: $i3 >= $i2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-Int-1=([byte[]], int)}
; {var695=r0, var2081=i0, var3724=i1, var3216=$i3, var457=$i2}
; {r0=var695, i0=var2081, i1=var3724, $i3=var3216, $i2=var457}
;seq 
;cnt {}
;stmts r0 := @parameter0: byte[];	i0 := @parameter1: int;	i1 := @parameter2: int;	$i3 = lengthof r0;	$i2 = i0 + i1;	if $i3 >= $i2 goto return;	return
;block_num 2