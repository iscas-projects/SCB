(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2926 0)
(declare-sort var3132 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3132_isEmpty/1595667738 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3559 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3559 null-String)))
(declare-const var1850 Int) ; Statement: c0 := @parameter1: char 
(assert (not (= var1850 null-Int)))
(define-const var3662 Bool (var3132_isEmpty/1595667738 (cast-from-String-to-String var3559))) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 != 0 goto return r0 
(assert (not (not (= (ite var3662 1 0) 0)))) ; Negate: Cond: $z0 != 0  
 ; Statement: if c0 != 0 goto $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(assert (not (= var1850 0))) ; Cond: c0 != 0 
(assert (and true (and (> (str.len var3559) 0) (<= 0 0))))
(define-const var3226 Int (charAt/698050440 var3559 0)) ; Statement: $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(define-const var2017 Int (cast-from-Int-to-Int var3226)) ; Statement: $i7 = (int) $c1 
(define-const var3 Int (cast-from-Int-to-Int var1850)) ; Statement: $i8 = (int) c0 
 ; Statement: if $i7 == $i8 goto $z3 = 0 
(assert (= var2017 var3)) ; Cond: $i7 == $i8 
(define-const var2627 Bool (ite (= 1 0) true false)) ; Statement: $z3 = 0 
(assert true) ; Non Conditional
(define-const var2867 Bool var2627) ; Statement: z1 = $z3 
(assert true)
(define-const var1880 Int (length/-134980193 var3559)) ; Statement: $i2 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var893 Int (- var1880 1)) ; Statement: $i3 = $i2 - 1 
(assert (not (and true (and (> (str.len var3559) var893) (<= 0 var893)))))
(check-sat)
(get-model)
(get-unsat-core)
; {var3132_isEmpty/1595667738=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), length/-134980193=([java.lang.String], int)}
; {var3559=r0, var2926=null_type, var1850=c0, var3132=org.apache.commons.lang3.StringUtils, var3662=$z0, var3226=$c1, var2017=$i7, var3=$i8, var2627=$z3, var2867=z1, var1880=$i2, var893=$i3, var3224=$c4, var1075=$i9, var1147=$i10, var1990=$z6, var1452=$z5, var1210=z2}
; {r0=var3559, null_type=var2926, c0=var1850, org.apache.commons.lang3.StringUtils=var3132, $z0=var3662, $c1=var3226, $i7=var2017, $i8=var3, $z3=var2627, z1=var2867, $i2=var1880, $i3=var893, $c4=var3224, $i9=var1075, $i10=var1147, $z6=var1990, $z5=var1452, z2=var1210}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 2,"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	c0 := @parameter1: char;	$z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0);	if $z0 != 0 goto return r0;	if c0 != 0 goto $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i7 = (int) $c1;	$i8 = (int) c0;	if $i7 == $i8 goto $z3 = 0;	$z3 = 0;	z1 = $z3;	$i2 = virtualinvoke r0.<java.lang.String: int length()>();	$i3 = $i2 - 1;	$c4 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i3);	$i9 = (int) $c4;	$i10 = (int) c0;	if $i9 == $i10 goto $z6 = 0;	$z6 = 1;	$z5 = 1;	goto [?= z2 = $z6];	z2 = $z6;	if z1 != 0 goto $r3 = new java.lang.StringBuilder;	if $z5 != 0 goto $r3 = new java.lang.StringBuilder;	return r0
;block_num 9