(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var859 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun image/-1758362606 (var859) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var859 var859)
(declare-const null-Int Int)
(declare-const var1108 var859) ; Statement: r0 := @parameter0: freemarker.core.Token 
(assert (not (= var1108 null-var859)))
(declare-const var3780 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3780 null-Int)))
(define-const var711 String (image/-1758362606 var1108)) ; Statement: r1 = r0.<freemarker.core.Token: java.lang.String image> 
(define-const var1802 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
(assert (not (and true (and (> (str.len var711) var1802) (<= 0 var1802)))))
(check-sat)
(get-model)
(get-unsat-core)
; {image/-1758362606=([freemarker.core.Token], java.lang.String), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var859=freemarker.core.Token, var1108=r0, var3780=i1, var711=r1, var1802=i4, var1391=$c0, var1855=$i5, var3650=$i6, var19=$i7, var1019=$i8, var2141=$i2, var946=$c3}
; {freemarker.core.Token=var859, r0=var1108, i1=var3780, r1=var711, i4=var1802, $c0=var1391, $i5=var1855, $i6=var3650, $i7=var19, $i8=var1019, $i2=var2141, $c3=var946}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 2}
;stmts r0 := @parameter0: freemarker.core.Token;	i1 := @parameter1: int;	r1 = r0.<freemarker.core.Token: java.lang.String image>;	i4 = 0;	$c0 = virtualinvoke r1.<java.lang.String: char charAt(int)>(i4);	$i5 = (int) $c0;	if $i5 == 60 goto i4 = i4 + 1;	$i6 = (int) $c0;	if $i6 == 91 goto i4 = i4 + 1;	$i7 = (int) $c0;	if $i7 == 47 goto i4 = i4 + 1;	$i8 = (int) $c0;	if $i8 == 35 goto i4 = i4 + 1;	goto [?= $i2 = i4 + i1];	$i2 = i4 + i1;	$c3 = virtualinvoke r1.<java.lang.String: char charAt(int)>($i2);	return $c3
;block_num 7