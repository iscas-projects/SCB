(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1543 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var737 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var737 null-String)))
(declare-const var810 Int) ; Statement: c1 := @parameter1: char 
(assert (not (= var810 null-Int)))
(define-const var2952 Int 0) ; Statement: i3 = 0 
(define-const var3882 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var649 Int (length/-134980193 var737)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i4 >= $i0 goto return i3 
(assert (not (>= var3882 var649))) ; Negate: Cond: i4 >= $i0  
(assert (not (and true (and (> (str.len var737) var3882) (<= 0 var3882)))))
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var737=r0, var1543=null_type, var810=c1, var2952=i3, var3882=i4, var649=$i0, var2446=$c2, var304=$i5, var1927=$i6}
; {r0=var737, null_type=var1543, c1=var810, i3=var2952, i4=var3882, $i0=var649, $c2=var2446, $i5=var304, $i6=var1927}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	c1 := @parameter1: char;	i3 = 0;	i4 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i4 >= $i0 goto return i3;	$c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i4);	$i5 = (int) $c2;	$i6 = (int) c1;	if $i5 != $i6 goto i4 = i4 + 1;	i4 = i4 + 1;	goto [?= $i0 = virtualinvoke r0.<java.lang.String: int length()>()];	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i4 >= $i0 goto return i3;	return i3
;block_num 6