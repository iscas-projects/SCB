(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2612 0)
(declare-sort var282 0)
(declare-sort var2017 0)
(declare-sort var2935 0)
(declare-sort var443 0)
(declare-sort var1753 0)
(declare-sort var892 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun index/-1834389046 (var2612) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun peekChar/-2022892458 (var2612) Int)
(declare-fun var282_isIdentifierPart/-790594859 (Int) Bool)
(declare-fun contents/-1834389046 (var2612) String)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var282_isIdentifierStart/-1418650564 (Int) Bool)
(declare-fun getPosition/-1695732445 (var2612 Int) var2017)
(declare-fun arr-var2935-init () (Array Int var2935))
(declare-fun var443_valueOf/-1186540555 (Int) var443)
(declare-fun cast-from-var443-to-var2935 (var443) var2935)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var2935 (Int) var2935)
(declare-fun reportError/1084259189 (var2612 var2017 String (Array Int var2935)) void)
(declare-fun createToken/1083011389 (var2612 var1753 Int) var892)
(declare-const null-var2612 var2612)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var2935__ (Array Int var2935))
(declare-const var1753-ERROR var1753)
(declare-const var2490 var2612) ; Statement: r0 := @this: com.google.javascript.jscomp.parsing.parser.Scanner 
(assert (not (= var2490 null-var2612)))
(declare-const var50 Int) ; Statement: i3 := @parameter0: int 
(assert (not (= var50 null-Int)))
(declare-const var1071 Int) ; Statement: c6 := @parameter1: char 
(assert (not (= var1071 null-Int)))
(define-const var1421 Int (index/-1834389046 var2490)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int index> 
(define-const var1630 Int (- var1421 1)) ; Statement: i1 = $i0 - 1 
(define-const var545 Int (cast-from-Int-to-Int var1071)) ; Statement: $i10 = (int) c6 
 ; Statement: if $i10 != 92 goto $z6 = 0 
(assert (not (= var545 92))) ; Cond: $i10 != 92 
(define-const var2842 Bool (ite (= 1 0) true false)) ; Statement: $z6 = 0 
(define-const var2161 Bool (ite (= 1 0) true false)) ; Statement: $z5 = 0 
(assert true) ; Non Conditional
(define-const var1522 Bool var2161) ; Statement: z2 = $z5 
(define-const var2602 Bool (ite (= 1 0) true false)) ; Statement: z3 = 0 
(define-const var838 Bool (ite (= 1 0) true false)) ; Statement: z8 = 0 
(define-const var1686 Bool (ite (= 1 0) true false)) ; Statement: z7 = 0 
 ; Statement: if $z6 == 0 goto $b7 = 0 
(assert (= (ite var2842 1 0) 0)) ; Cond: $z6 == 0 
(define-const var1479 Int 0) ; Statement: $b7 = 0 
(assert true) ; Non Conditional
(define-const var3589 Int var1479) ; Statement: i8 = $b7 
(assert true)
(define-const var3074 Int (peekChar/-2022892458 var2490)) ; Statement: c9 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: char peekChar()>() 
(assert true) ; Non Conditional
(define-const var2167 Bool (var282_isIdentifierPart/-790594859 var3074)) ; Statement: $z4 = staticinvoke <com.google.javascript.jscomp.parsing.parser.Identifiers: boolean isIdentifierPart(char)>(c9) 
 ; Statement: if $z4 != 0 goto $i14 = (int) c9 
(assert (not (not (= (ite var2167 1 0) 0)))) ; Negate: Cond: $z4 != 0  
(define-const var2674 Int (cast-from-Int-to-Int var3074)) ; Statement: $i11 = (int) c9 
 ; Statement: if $i11 == 92 goto $i14 = (int) c9 
(assert (not (= var2674 92))) ; Negate: Cond: $i11 == 92  
(define-const var303 Int (cast-from-Int-to-Int var3074)) ; Statement: $i12 = (int) c9 
 ; Statement: if $i12 != 123 goto $i13 = (int) c9 
(assert (not (= var303 123))) ; Cond: $i12 != 123 
(define-const var138 Int (cast-from-Int-to-Int var3074)) ; Statement: $i13 = (int) c9 
 ; Statement: if $i13 != 125 goto $r1 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: java.lang.String contents> 
(assert (not (= var138 125))) ; Cond: $i13 != 125 
(define-const var3464 String (contents/-1834389046 var2490)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: java.lang.String contents> 
(define-const var536 Int (index/-1834389046 var2490)) ; Statement: $i2 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int index> 
(assert (not (and true (and (>= var1630 0) (>= (str.len var3464) var536) (>= var536 var1630)))))
(check-sat)
(get-model)
(get-unsat-core)
; {index/-1834389046=([com.google.javascript.jscomp.parsing.parser.Scanner], int), cast-from-Int-to-Int=([char], int), peekChar/-2022892458=([com.google.javascript.jscomp.parsing.parser.Scanner], char), var282_isIdentifierPart/-790594859=([char], boolean), contents/-1834389046=([com.google.javascript.jscomp.parsing.parser.Scanner], java.lang.String), substring/-1240304868=([java.lang.String, int, int], java.lang.String), charAt/698050440=([java.lang.String, int], char), var282_isIdentifierStart/-1418650564=([char], boolean), getPosition/-1695732445=([com.google.javascript.jscomp.parsing.parser.Scanner, int], com.google.javascript.jscomp.parsing.parser.util.SourcePosition), arr-var2935-init=([], java.lang.Object[]), var443_valueOf/-1186540555=([char], java.lang.Character), cast-from-var443-to-var2935=([java.lang.Character], java.lang.Object), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var2935=([java.lang.Integer], java.lang.Object), reportError/1084259189=([com.google.javascript.jscomp.parsing.parser.Scanner, com.google.javascript.jscomp.parsing.parser.util.SourcePosition, java.lang.String, java.lang.Object[]], void), createToken/1083011389=([com.google.javascript.jscomp.parsing.parser.Scanner, com.google.javascript.jscomp.parsing.parser.TokenType, int], com.google.javascript.jscomp.parsing.parser.Token)}
; {var2612=com.google.javascript.jscomp.parsing.parser.Scanner, var2490=r0, var50=i3, var1071=c6, var1421=$i0, var1630=i1, var545=$i10, var2842=$z6, var2161=$z5, var1522=z2, var2602=z3, var838=z8, var1686=z7, var1479=$b7, var3589=i8, var3074=c9, var282=com.google.javascript.jscomp.parsing.parser.Identifiers, var2167=$z4, var2674=$i11, var303=$i12, var138=$i13, var3464=$r1, var536=$i2, var18=$r18, var2618=r19, var1704=$c4, var2599=$z0, var2017=com.google.javascript.jscomp.parsing.parser.util.SourcePosition, var1508=$r11, var2935=java.lang.Object, var3575=$r8, var443=java.lang.Character, var3099=$r9, var1128=$i18, var2250=$r10, var1557="Character \'%c\' (U+%04X) is not a valid identifier start char", var1753=com.google.javascript.jscomp.parsing.parser.TokenType, var3730=$r12, var892=com.google.javascript.jscomp.parsing.parser.Token, var2039=$r13}
; {com.google.javascript.jscomp.parsing.parser.Scanner=var2612, r0=var2490, i3=var50, c6=var1071, $i0=var1421, i1=var1630, $i10=var545, $z6=var2842, $z5=var2161, z2=var1522, z3=var2602, z8=var838, z7=var1686, $b7=var1479, i8=var3589, c9=var3074, com.google.javascript.jscomp.parsing.parser.Identifiers=var282, $z4=var2167, $i11=var2674, $i12=var303, $i13=var138, $r1=var3464, $i2=var536, $r18=var18, r19=var2618, $c4=var1704, $z0=var2599, com.google.javascript.jscomp.parsing.parser.util.SourcePosition=var2017, $r11=var1508, java.lang.Object=var2935, $r8=var3575, java.lang.Character=var443, $r9=var3099, $i18=var1128, $r10=var2250, "Character \'%c\' (U+%04X) is not a valid identifier start char"=var1557, com.google.javascript.jscomp.parsing.parser.TokenType=var1753, $r12=var3730, com.google.javascript.jscomp.parsing.parser.Token=var892, $r13=var2039}
;seq <java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.parsing.parser.Scanner;	i3 := @parameter0: int;	c6 := @parameter1: char;	$i0 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int index>;	i1 = $i0 - 1;	$i10 = (int) c6;	if $i10 != 92 goto $z6 = 0;	$z6 = 0;	$z5 = 0;	z2 = $z5;	z3 = 0;	z8 = 0;	z7 = 0;	if $z6 == 0 goto $b7 = 0;	$b7 = 0;	i8 = $b7;	c9 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: char peekChar()>();	$z4 = staticinvoke <com.google.javascript.jscomp.parsing.parser.Identifiers: boolean isIdentifierPart(char)>(c9);	if $z4 != 0 goto $i14 = (int) c9;	$i11 = (int) c9;	if $i11 == 92 goto $i14 = (int) c9;	$i12 = (int) c9;	if $i12 != 123 goto $i13 = (int) c9;	$i13 = (int) c9;	if $i13 != 125 goto $r1 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: java.lang.String contents>;	$r1 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: java.lang.String contents>;	$i2 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int index>;	$r18 = virtualinvoke $r1.<java.lang.String: java.lang.String substring(int,int)>(i1, $i2);	r19 = $r18;	if z2 == 0 goto $c4 = virtualinvoke r19.<java.lang.String: char charAt(int)>(0);	$c4 = virtualinvoke r19.<java.lang.String: char charAt(int)>(0);	$z0 = staticinvoke <com.google.javascript.jscomp.parsing.parser.Identifiers: boolean isIdentifierStart(char)>($c4);	if $z0 != 0 goto r2 = staticinvoke <com.google.javascript.jscomp.parsing.parser.Keywords: com.google.javascript.jscomp.parsing.parser.Keywords get(java.lang.String)>(r19);	$r11 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: com.google.javascript.jscomp.parsing.parser.util.SourcePosition getPosition(int)>(i3);	$r8 = newarray (java.lang.Object)[2];	$r9 = staticinvoke <java.lang.Character: java.lang.Character valueOf(char)>($c4);	$r8[0] = $r9;	$i18 = (int) $c4;	$r10 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i18);	$r8[1] = $r10;	virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: void reportError(com.google.javascript.jscomp.parsing.parser.util.SourcePosition,java.lang.String,java.lang.Object[])>($r11, "Character \'%c\' (U+%04X) is not a valid identifier start char", $r8);	$r12 = <com.google.javascript.jscomp.parsing.parser.TokenType: com.google.javascript.jscomp.parsing.parser.TokenType ERROR>;	$r13 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: com.google.javascript.jscomp.parsing.parser.Token createToken(com.google.javascript.jscomp.parsing.parser.TokenType,int)>($r12, i3);	return $r13
;block_num 12