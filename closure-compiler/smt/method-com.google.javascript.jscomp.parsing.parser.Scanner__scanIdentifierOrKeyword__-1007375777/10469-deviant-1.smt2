(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2023 0)
(declare-sort var1470 0)
(declare-sort var1936 0)
(declare-sort var2166 0)
(declare-sort var3835 0)
(declare-sort var2060 0)
(declare-sort var2602 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun index/-1834389046 (var2023) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun peekChar/-2022892458 (var2023) Int)
(declare-fun var1470_isIdentifierPart/-790594859 (Int) Bool)
(declare-fun contents/-1834389046 (var2023) String)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var1470_isIdentifierStart/-1418650564 (Int) Bool)
(declare-fun getPosition/-1695732445 (var2023 Int) var1936)
(declare-fun arr-var2166-init () (Array Int var2166))
(declare-fun var3835_valueOf/-1186540555 (Int) var3835)
(declare-fun cast-from-var3835-to-var2166 (var3835) var2166)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var2166 (Int) var2166)
(declare-fun reportError/1084259189 (var2023 var1936 String (Array Int var2166)) void)
(declare-fun createToken/1083011389 (var2023 var2060 Int) var2602)
(declare-const null-var2023 var2023)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var2166__ (Array Int var2166))
(declare-const var2060-ERROR var2060)
(declare-const var627 var2023) ; Statement: r0 := @this: com.google.javascript.jscomp.parsing.parser.Scanner 
(assert (not (= var627 null-var2023)))
(declare-const var80 Int) ; Statement: i3 := @parameter0: int 
(assert (not (= var80 null-Int)))
(declare-const var5 Int) ; Statement: c6 := @parameter1: char 
(assert (not (= var5 null-Int)))
(define-const var2603 Int (index/-1834389046 var627)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int index> 
(define-const var2747 Int (- var2603 1)) ; Statement: i1 = $i0 - 1 
(define-const var2528 Int (cast-from-Int-to-Int var5)) ; Statement: $i10 = (int) c6 
 ; Statement: if $i10 != 92 goto $z6 = 0 
(assert (not (= var2528 92))) ; Cond: $i10 != 92 
(define-const var2739 Bool (ite (= 1 0) true false)) ; Statement: $z6 = 0 
(define-const var857 Bool (ite (= 1 0) true false)) ; Statement: $z5 = 0 
(assert true) ; Non Conditional
(define-const var3949 Bool var857) ; Statement: z2 = $z5 
(define-const var3017 Bool (ite (= 1 0) true false)) ; Statement: z3 = 0 
(define-const var25 Bool (ite (= 1 0) true false)) ; Statement: z8 = 0 
(define-const var284 Bool (ite (= 1 0) true false)) ; Statement: z7 = 0 
 ; Statement: if $z6 == 0 goto $b7 = 0 
(assert (not (= (ite var2739 1 0) 0))) ; Negate: Cond: $z6 == 0  
(define-const var202 Int 1) ; Statement: $b7 = 1 
 ; Statement: goto [?= i8 = $b7] 
(assert true) ; Non Conditional
(define-const var2470 Int var202) ; Statement: i8 = $b7 
(assert true)
(define-const var3419 Int (peekChar/-2022892458 var627)) ; Statement: c9 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: char peekChar()>() 
(assert true) ; Non Conditional
(define-const var290 Bool (var1470_isIdentifierPart/-790594859 var3419)) ; Statement: $z4 = staticinvoke <com.google.javascript.jscomp.parsing.parser.Identifiers: boolean isIdentifierPart(char)>(c9) 
 ; Statement: if $z4 != 0 goto $i14 = (int) c9 
(assert (not (not (= (ite var290 1 0) 0)))) ; Negate: Cond: $z4 != 0  
(define-const var3509 Int (cast-from-Int-to-Int var3419)) ; Statement: $i11 = (int) c9 
 ; Statement: if $i11 == 92 goto $i14 = (int) c9 
(assert (not (= var3509 92))) ; Negate: Cond: $i11 == 92  
(define-const var3236 Int (cast-from-Int-to-Int var3419)) ; Statement: $i12 = (int) c9 
 ; Statement: if $i12 != 123 goto $i13 = (int) c9 
(assert (not (= var3236 123))) ; Cond: $i12 != 123 
(define-const var684 Int (cast-from-Int-to-Int var3419)) ; Statement: $i13 = (int) c9 
 ; Statement: if $i13 != 125 goto $r1 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: java.lang.String contents> 
(assert (not (= var684 125))) ; Cond: $i13 != 125 
(define-const var3288 String (contents/-1834389046 var627)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: java.lang.String contents> 
(define-const var3329 Int (index/-1834389046 var627)) ; Statement: $i2 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int index> 
(assert (and true (and (>= var2747 0) (>= (str.len var3288) var3329) (>= var3329 var2747))))
(define-const var2292 String (substring/-1240304868 var3288 var2747 var3329)) ; Statement: $r18 = virtualinvoke $r1.<java.lang.String: java.lang.String substring(int,int)>(i1, $i2) 
(define-const var1763 String var2292) ; Statement: r19 = $r18 
 ; Statement: if z2 == 0 goto $c4 = virtualinvoke r19.<java.lang.String: char charAt(int)>(0) 
(assert (= (ite var3949 1 0) 0)) ; Cond: z2 == 0 
(assert (not (and true (and (> (str.len var1763) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {index/-1834389046=([com.google.javascript.jscomp.parsing.parser.Scanner], int), cast-from-Int-to-Int=([char], int), peekChar/-2022892458=([com.google.javascript.jscomp.parsing.parser.Scanner], char), var1470_isIdentifierPart/-790594859=([char], boolean), contents/-1834389046=([com.google.javascript.jscomp.parsing.parser.Scanner], java.lang.String), substring/-1240304868=([java.lang.String, int, int], java.lang.String), charAt/698050440=([java.lang.String, int], char), var1470_isIdentifierStart/-1418650564=([char], boolean), getPosition/-1695732445=([com.google.javascript.jscomp.parsing.parser.Scanner, int], com.google.javascript.jscomp.parsing.parser.util.SourcePosition), arr-var2166-init=([], java.lang.Object[]), var3835_valueOf/-1186540555=([char], java.lang.Character), cast-from-var3835-to-var2166=([java.lang.Character], java.lang.Object), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var2166=([java.lang.Integer], java.lang.Object), reportError/1084259189=([com.google.javascript.jscomp.parsing.parser.Scanner, com.google.javascript.jscomp.parsing.parser.util.SourcePosition, java.lang.String, java.lang.Object[]], void), createToken/1083011389=([com.google.javascript.jscomp.parsing.parser.Scanner, com.google.javascript.jscomp.parsing.parser.TokenType, int], com.google.javascript.jscomp.parsing.parser.Token)}
; {var2023=com.google.javascript.jscomp.parsing.parser.Scanner, var627=r0, var80=i3, var5=c6, var2603=$i0, var2747=i1, var2528=$i10, var2739=$z6, var857=$z5, var3949=z2, var3017=z3, var25=z8, var284=z7, var202=$b7, var2470=i8, var3419=c9, var1470=com.google.javascript.jscomp.parsing.parser.Identifiers, var290=$z4, var3509=$i11, var3236=$i12, var684=$i13, var3288=$r1, var3329=$i2, var2292=$r18, var1763=r19, var3348=$c4, var2755=$z0, var1936=com.google.javascript.jscomp.parsing.parser.util.SourcePosition, var2695=$r11, var2166=java.lang.Object, var3768=$r8, var3835=java.lang.Character, var1578=$r9, var448=$i18, var2615=$r10, var3935="Character \'%c\' (U+%04X) is not a valid identifier start char", var2060=com.google.javascript.jscomp.parsing.parser.TokenType, var3738=$r12, var2602=com.google.javascript.jscomp.parsing.parser.Token, var3216=$r13}
; {com.google.javascript.jscomp.parsing.parser.Scanner=var2023, r0=var627, i3=var80, c6=var5, $i0=var2603, i1=var2747, $i10=var2528, $z6=var2739, $z5=var857, z2=var3949, z3=var3017, z8=var25, z7=var284, $b7=var202, i8=var2470, c9=var3419, com.google.javascript.jscomp.parsing.parser.Identifiers=var1470, $z4=var290, $i11=var3509, $i12=var3236, $i13=var684, $r1=var3288, $i2=var3329, $r18=var2292, r19=var1763, $c4=var3348, $z0=var2755, com.google.javascript.jscomp.parsing.parser.util.SourcePosition=var1936, $r11=var2695, java.lang.Object=var2166, $r8=var3768, java.lang.Character=var3835, $r9=var1578, $i18=var448, $r10=var2615, "Character \'%c\' (U+%04X) is not a valid identifier start char"=var3935, com.google.javascript.jscomp.parsing.parser.TokenType=var2060, $r12=var3738, com.google.javascript.jscomp.parsing.parser.Token=var2602, $r13=var3216}
;seq <java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.parsing.parser.Scanner;	i3 := @parameter0: int;	c6 := @parameter1: char;	$i0 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int index>;	i1 = $i0 - 1;	$i10 = (int) c6;	if $i10 != 92 goto $z6 = 0;	$z6 = 0;	$z5 = 0;	z2 = $z5;	z3 = 0;	z8 = 0;	z7 = 0;	if $z6 == 0 goto $b7 = 0;	$b7 = 1;	goto [?= i8 = $b7];	i8 = $b7;	c9 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: char peekChar()>();	$z4 = staticinvoke <com.google.javascript.jscomp.parsing.parser.Identifiers: boolean isIdentifierPart(char)>(c9);	if $z4 != 0 goto $i14 = (int) c9;	$i11 = (int) c9;	if $i11 == 92 goto $i14 = (int) c9;	$i12 = (int) c9;	if $i12 != 123 goto $i13 = (int) c9;	$i13 = (int) c9;	if $i13 != 125 goto $r1 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: java.lang.String contents>;	$r1 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: java.lang.String contents>;	$i2 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int index>;	$r18 = virtualinvoke $r1.<java.lang.String: java.lang.String substring(int,int)>(i1, $i2);	r19 = $r18;	if z2 == 0 goto $c4 = virtualinvoke r19.<java.lang.String: char charAt(int)>(0);	$c4 = virtualinvoke r19.<java.lang.String: char charAt(int)>(0);	$z0 = staticinvoke <com.google.javascript.jscomp.parsing.parser.Identifiers: boolean isIdentifierStart(char)>($c4);	if $z0 != 0 goto r2 = staticinvoke <com.google.javascript.jscomp.parsing.parser.Keywords: com.google.javascript.jscomp.parsing.parser.Keywords get(java.lang.String)>(r19);	$r11 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: com.google.javascript.jscomp.parsing.parser.util.SourcePosition getPosition(int)>(i3);	$r8 = newarray (java.lang.Object)[2];	$r9 = staticinvoke <java.lang.Character: java.lang.Character valueOf(char)>($c4);	$r8[0] = $r9;	$i18 = (int) $c4;	$r10 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i18);	$r8[1] = $r10;	virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: void reportError(com.google.javascript.jscomp.parsing.parser.util.SourcePosition,java.lang.String,java.lang.Object[])>($r11, "Character \'%c\' (U+%04X) is not a valid identifier start char", $r8);	$r12 = <com.google.javascript.jscomp.parsing.parser.TokenType: com.google.javascript.jscomp.parsing.parser.TokenType ERROR>;	$r13 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: com.google.javascript.jscomp.parsing.parser.Token createToken(com.google.javascript.jscomp.parsing.parser.TokenType,int)>($r12, i3);	return $r13
;block_num 12