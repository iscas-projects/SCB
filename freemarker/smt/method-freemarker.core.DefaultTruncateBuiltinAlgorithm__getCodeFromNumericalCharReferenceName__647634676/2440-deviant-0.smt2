(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1171 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var763 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var763 null-String)))
(assert (not (and true (and (> (str.len var763) 1) (<= 0 1)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), length/-134980193=([java.lang.String], int)}
; {var763=r0, var1171=null_type, var2928=c7, var2213=$i14, var3018=$z3, var2930=$z2, var2228=z0, var1292=i8, var2328=$b9, var367=i10, var1168=$i11}
; {r0=var763, null_type=var1171, c7=var2928, $i14=var2213, $z3=var3018, $z2=var2930, z0=var2228, i8=var1292, $b9=var2328, i10=var367, $i11=var1168}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	c7 = virtualinvoke r0.<java.lang.String: char charAt(int)>(1);	$i14 = (int) c7;	if $i14 == 120 goto $z3 = 1;	$z3 = 1;	$z2 = 1;	goto [?= z0 = $z2];	z0 = $z2;	i8 = 0;	if $z3 == 0 goto $b9 = 1;	$b9 = 1;	i10 = $b9;	$i11 = virtualinvoke r0.<java.lang.String: int length()>();	if i10 >= $i11 goto return i8;	return i8
;block_num 7