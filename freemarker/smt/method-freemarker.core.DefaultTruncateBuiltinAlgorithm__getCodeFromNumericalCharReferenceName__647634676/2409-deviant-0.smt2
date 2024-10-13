(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var985 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var2344 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2344 null-String)))
(assert (not (and true (and (> (str.len var2344) 1) (<= 0 1)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), length/-134980193=([java.lang.String], int)}
; {var2344=r0, var985=null_type, var3543=c7, var60=$i14, var3857=$z3, var1254=$z2, var2734=z0, var2506=i8, var983=$b9, var491=i10, var924=$i11}
; {r0=var2344, null_type=var985, c7=var3543, $i14=var60, $z3=var3857, $z2=var1254, z0=var2734, i8=var2506, $b9=var983, i10=var491, $i11=var924}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	c7 = virtualinvoke r0.<java.lang.String: char charAt(int)>(1);	$i14 = (int) c7;	if $i14 == 120 goto $z3 = 1;	$z3 = 1;	$z2 = 1;	goto [?= z0 = $z2];	z0 = $z2;	i8 = 0;	if $z3 == 0 goto $b9 = 1;	$b9 = 2;	goto [?= i10 = $b9];	i10 = $b9;	$i11 = virtualinvoke r0.<java.lang.String: int length()>();	if i10 >= $i11 goto return i8;	return i8
;block_num 7