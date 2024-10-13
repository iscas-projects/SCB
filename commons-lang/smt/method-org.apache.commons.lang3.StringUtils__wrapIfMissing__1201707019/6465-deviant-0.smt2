(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2321 0)
(declare-sort var901 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var901_isEmpty/1595667738 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2138 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2138 null-String)))
(declare-const var1620 Int) ; Statement: c0 := @parameter1: char 
(assert (not (= var1620 null-Int)))
(define-const var127 Bool (var901_isEmpty/1595667738 (cast-from-String-to-String var2138))) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 != 0 goto return r0 
(assert (not (not (= (ite var127 1 0) 0)))) ; Negate: Cond: $z0 != 0  
 ; Statement: if c0 != 0 goto $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(assert (not (= var1620 0))) ; Cond: c0 != 0 
(assert (not (and true (and (> (str.len var2138) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {var901_isEmpty/1595667738=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), length/-134980193=([java.lang.String], int)}
; {var2138=r0, var2321=null_type, var1620=c0, var901=org.apache.commons.lang3.StringUtils, var127=$z0, var1349=$c1, var1391=$i7, var3509=$i8, var3140=$z3, var3234=z1, var121=$i2, var2314=$i3, var2559=$c4, var500=$i9, var3648=$i10, var1532=$z6, var281=$z5, var2193=z2}
; {r0=var2138, null_type=var2321, c0=var1620, org.apache.commons.lang3.StringUtils=var901, $z0=var127, $c1=var1349, $i7=var1391, $i8=var3509, $z3=var3140, z1=var3234, $i2=var121, $i3=var2314, $c4=var2559, $i9=var500, $i10=var3648, $z6=var1532, $z5=var281, z2=var2193}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 2,"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	c0 := @parameter1: char;	$z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0);	if $z0 != 0 goto return r0;	if c0 != 0 goto $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i7 = (int) $c1;	$i8 = (int) c0;	if $i7 == $i8 goto $z3 = 0;	$z3 = 1;	goto [?= z1 = $z3];	z1 = $z3;	$i2 = virtualinvoke r0.<java.lang.String: int length()>();	$i3 = $i2 - 1;	$c4 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i3);	$i9 = (int) $c4;	$i10 = (int) c0;	if $i9 == $i10 goto $z6 = 0;	$z6 = 1;	$z5 = 1;	goto [?= z2 = $z6];	z2 = $z6;	if z1 != 0 goto $r3 = new java.lang.StringBuilder;	if $z5 != 0 goto $r3 = new java.lang.StringBuilder;	return r0
;block_num 9