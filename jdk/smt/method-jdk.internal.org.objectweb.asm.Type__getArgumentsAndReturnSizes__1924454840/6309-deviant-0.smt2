(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1436 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const var636 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var636 null-String)))
(define-const var1762 Int 1) ; Statement: i5 = 1 
(define-const var3341 Int 1) ; Statement: i6 = 1 
(assert true) ; Non Conditional
(define-const var695 Int var3341) ; Statement: $i0 = i6 
(define-const var3341!1 Int (+ var3341 1)) ; Statement: i6 = i6 + 1 
(assert (not (and true (and (> (str.len var636) var695) (<= 0 var695)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var636=r0, var1436=null_type, var1762=i5, var3341=i6, var695=$i0, var2657=$c1, var627=$i11, var2459=c7, var3019=$i8, var1963=$i12, var354=$b9, var2887=$i10}
; {r0=var636, null_type=var1436, i5=var1762, i6=var3341, $i0=var695, $c1=var2657, $i11=var627, c7=var2459, $i8=var3019, $i12=var1963, $b9=var354, $i10=var2887}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 2}
;stmts r0 := @parameter0: java.lang.String;	i5 = 1;	i6 = 1;	$i0 = i6;	i6 = i6 + 1;	$c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i0);	$i11 = (int) $c1;	if $i11 != 41 goto $i15 = (int) $c1;	c7 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i6);	$i8 = i5 << 2;	$i12 = (int) c7;	if $i12 != 86 goto $i13 = (int) c7;	$b9 = 0;	goto [?= $i10 = $i8 | $b9];	$i10 = $i8 | $b9;	return $i10
;block_num 5