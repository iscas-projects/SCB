(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2925 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var2115 String) ; Statement: r1 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2115 null-String)))
(declare-const var1548 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1548 null-String)))
(assert (not (and true (and (> (str.len var1548) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), length/-134980193=([java.lang.String], int)}
; {var2115=r1, var1548=r0, var2925=null_type, var2069=$c0, var298=$i13, var2162=i8, var1502=$i3}
; {r1=var2115, r0=var1548, null_type=var2925, $c0=var2069, $i13=var298, i8=var2162, $i3=var1502}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: int length()>": 1}
;stmts r1 := @parameter0: java.lang.StringBuilder;	r0 := @parameter1: java.lang.String;	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i13 = (int) $c0;	if $i13 != 40 goto i11 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(47);	i8 = 0;	$i3 = virtualinvoke r0.<java.lang.String: int length()>();	if i8 >= $i3 goto (branch);	goto [?= return];	return
;block_num 5