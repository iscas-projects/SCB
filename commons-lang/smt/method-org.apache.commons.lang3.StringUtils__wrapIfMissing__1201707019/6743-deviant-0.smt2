(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var323 0)
(declare-sort var217 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var217_isEmpty/1595667738 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var730 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var730 null-String)))
(declare-const var1213 Int) ; Statement: c0 := @parameter1: char 
(assert (not (= var1213 null-Int)))
(define-const var1295 Bool (var217_isEmpty/1595667738 (cast-from-String-to-String var730))) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 != 0 goto return r0 
(assert (not (not (= (ite var1295 1 0) 0)))) ; Negate: Cond: $z0 != 0  
 ; Statement: if c0 != 0 goto $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(assert (not (= var1213 0))) ; Cond: c0 != 0 
(assert (not (and true (and (> (str.len var730) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {var217_isEmpty/1595667738=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), length/-134980193=([java.lang.String], int)}
; {var730=r0, var323=null_type, var1213=c0, var217=org.apache.commons.lang3.StringUtils, var1295=$z0, var1445=$c1, var1428=$i7, var1012=$i8, var1759=$z3, var966=z1, var2328=$i2, var1920=$i3, var1008=$c4, var2368=$i9, var3239=$i10, var1619=$z6, var1293=$z5, var1845=z2}
; {r0=var730, null_type=var323, c0=var1213, org.apache.commons.lang3.StringUtils=var217, $z0=var1295, $c1=var1445, $i7=var1428, $i8=var1012, $z3=var1759, z1=var966, $i2=var2328, $i3=var1920, $c4=var1008, $i9=var2368, $i10=var3239, $z6=var1619, $z5=var1293, z2=var1845}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 2,"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	c0 := @parameter1: char;	$z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0);	if $z0 != 0 goto return r0;	if c0 != 0 goto $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i7 = (int) $c1;	$i8 = (int) c0;	if $i7 == $i8 goto $z3 = 0;	$z3 = 0;	z1 = $z3;	$i2 = virtualinvoke r0.<java.lang.String: int length()>();	$i3 = $i2 - 1;	$c4 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i3);	$i9 = (int) $c4;	$i10 = (int) c0;	if $i9 == $i10 goto $z6 = 0;	$z6 = 0;	$z5 = 0;	z2 = $z6;	if z1 != 0 goto $r3 = new java.lang.StringBuilder;	if $z5 != 0 goto $r3 = new java.lang.StringBuilder;	return r0
;block_num 9