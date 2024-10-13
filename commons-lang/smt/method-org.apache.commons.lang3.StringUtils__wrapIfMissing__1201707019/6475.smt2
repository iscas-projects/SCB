(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3638 0)
(declare-sort var1389 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1389_isEmpty/1595667738 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var730 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var730 null-String)))
(declare-const var385 Int) ; Statement: c0 := @parameter1: char 
(assert (not (= var385 null-Int)))
(define-const var768 Bool (var1389_isEmpty/1595667738 (cast-from-String-to-String var730))) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 != 0 goto return r0 
(assert (not (not (= (ite var768 1 0) 0)))) ; Negate: Cond: $z0 != 0  
 ; Statement: if c0 != 0 goto $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(assert (not (= var385 0))) ; Cond: c0 != 0 
(assert (and true (and (> (str.len var730) 0) (<= 0 0))))
(define-const var375 Int (charAt/698050440 var730 0)) ; Statement: $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(define-const var3096 Int (cast-from-Int-to-Int var375)) ; Statement: $i7 = (int) $c1 
(define-const var3100 Int (cast-from-Int-to-Int var385)) ; Statement: $i8 = (int) c0 
 ; Statement: if $i7 == $i8 goto $z3 = 0 
(assert (not (= var3096 var3100))) ; Negate: Cond: $i7 == $i8  
(define-const var542 Bool (ite (= 1 1) true false)) ; Statement: $z3 = 1 
 ; Statement: goto [?= z1 = $z3] 
(assert true) ; Non Conditional
(define-const var1515 Bool var542) ; Statement: z1 = $z3 
(assert true)
(define-const var2427 Int (length/-134980193 var730)) ; Statement: $i2 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var2481 Int (- var2427 1)) ; Statement: $i3 = $i2 - 1 
(assert (and true (and (> (str.len var730) var2481) (<= 0 var2481))))
(define-const var1868 Int (charAt/698050440 var730 var2481)) ; Statement: $c4 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i3) 
(define-const var949 Int (cast-from-Int-to-Int var1868)) ; Statement: $i9 = (int) $c4 
(define-const var1424 Int (cast-from-Int-to-Int var385)) ; Statement: $i10 = (int) c0 
 ; Statement: if $i9 == $i10 goto $z6 = 0 
(assert (= var949 var1424)) ; Cond: $i9 == $i10 
(define-const var1416 Bool (ite (= 1 0) true false)) ; Statement: $z6 = 0 
(define-const var2121 Bool (ite (= 1 0) true false)) ; Statement: $z5 = 0 
(assert true) ; Non Conditional
(define-const var3989 Bool var1416) ; Statement: z2 = $z6 
 ; Statement: if z1 != 0 goto $r3 = new java.lang.StringBuilder 
(assert (not (not (= (ite var1515 1 0) 0)))) ; Negate: Cond: z1 != 0  
 ; Statement: if $z5 != 0 goto $r3 = new java.lang.StringBuilder 
(assert (not (not (= (ite var2121 1 0) 0)))) ; Negate: Cond: $z5 != 0  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1389_isEmpty/1595667738=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), length/-134980193=([java.lang.String], int)}
; {var730=r0, var3638=null_type, var385=c0, var1389=org.apache.commons.lang3.StringUtils, var768=$z0, var375=$c1, var3096=$i7, var3100=$i8, var542=$z3, var1515=z1, var2427=$i2, var2481=$i3, var1868=$c4, var949=$i9, var1424=$i10, var1416=$z6, var2121=$z5, var3989=z2}
; {r0=var730, null_type=var3638, c0=var385, org.apache.commons.lang3.StringUtils=var1389, $z0=var768, $c1=var375, $i7=var3096, $i8=var3100, $z3=var542, z1=var1515, $i2=var2427, $i3=var2481, $c4=var1868, $i9=var949, $i10=var1424, $z6=var1416, $z5=var2121, z2=var3989}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 2,"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	c0 := @parameter1: char;	$z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0);	if $z0 != 0 goto return r0;	if c0 != 0 goto $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i7 = (int) $c1;	$i8 = (int) c0;	if $i7 == $i8 goto $z3 = 0;	$z3 = 1;	goto [?= z1 = $z3];	z1 = $z3;	$i2 = virtualinvoke r0.<java.lang.String: int length()>();	$i3 = $i2 - 1;	$c4 = virtualinvoke r0.<java.lang.String: char charAt(int)>($i3);	$i9 = (int) $c4;	$i10 = (int) c0;	if $i9 == $i10 goto $z6 = 0;	$z6 = 0;	$z5 = 0;	z2 = $z6;	if z1 != 0 goto $r3 = new java.lang.StringBuilder;	if $z5 != 0 goto $r3 = new java.lang.StringBuilder;	return r0
;block_num 9