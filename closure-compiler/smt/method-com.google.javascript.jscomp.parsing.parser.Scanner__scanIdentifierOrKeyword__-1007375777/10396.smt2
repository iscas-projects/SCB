(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var411 0)
(declare-sort var3774 0)
(declare-sort var254 0)
(declare-sort var2738 0)
(declare-sort var3802 0)
(declare-sort var3725 0)
(declare-sort var2957 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun index/-1834389046 (var411) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun peekChar/-2022892458 (var411) Int)
(declare-fun var3774_isIdentifierPart/-790594859 (Int) Bool)
(declare-fun contents/-1834389046 (var411) String)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var3774_isIdentifierStart/-1418650564 (Int) Bool)
(declare-fun getPosition/-1695732445 (var411 Int) var254)
(declare-fun arr-var2738-init () (Array Int var2738))
(declare-fun var3802_valueOf/-1186540555 (Int) var3802)
(declare-fun cast-from-var3802-to-var2738 (var3802) var2738)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var2738 (Int) var2738)
(declare-fun reportError/1084259189 (var411 var254 String (Array Int var2738)) void)
(declare-fun createToken/1083011389 (var411 var3725 Int) var2957)
(declare-const null-var411 var411)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var2738__ (Array Int var2738))
(declare-const var3725-ERROR var3725)
(declare-const var2378 var411) ; Statement: r0 := @this: com.google.javascript.jscomp.parsing.parser.Scanner 
(assert (not (= var2378 null-var411)))
(declare-const var1280 Int) ; Statement: i3 := @parameter0: int 
(assert (not (= var1280 null-Int)))
(declare-const var2063 Int) ; Statement: c6 := @parameter1: char 
(assert (not (= var2063 null-Int)))
(define-const var3775 Int (index/-1834389046 var2378)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int index> 
(define-const var616 Int (- var3775 1)) ; Statement: i1 = $i0 - 1 
(define-const var1305 Int (cast-from-Int-to-Int var2063)) ; Statement: $i10 = (int) c6 
 ; Statement: if $i10 != 92 goto $z6 = 0 
(assert (not (not (= var1305 92)))) ; Negate: Cond: $i10 != 92  
(define-const var2213 Bool (ite (= 1 1) true false)) ; Statement: $z6 = 1 
(define-const var504 Bool (ite (= 1 1) true false)) ; Statement: $z5 = 1 
 ; Statement: goto [?= z2 = $z5] 
(assert true) ; Non Conditional
(define-const var1959 Bool var504) ; Statement: z2 = $z5 
(define-const var1433 Bool (ite (= 1 0) true false)) ; Statement: z3 = 0 
(define-const var3333 Bool (ite (= 1 0) true false)) ; Statement: z8 = 0 
(define-const var2429 Bool (ite (= 1 0) true false)) ; Statement: z7 = 0 
 ; Statement: if $z6 == 0 goto $b7 = 0 
(assert (not (= (ite var2213 1 0) 0))) ; Negate: Cond: $z6 == 0  
(define-const var110 Int 1) ; Statement: $b7 = 1 
 ; Statement: goto [?= i8 = $b7] 
(assert true) ; Non Conditional
(define-const var2978 Int var110) ; Statement: i8 = $b7 
(assert true)
(define-const var1892 Int (peekChar/-2022892458 var2378)) ; Statement: c9 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: char peekChar()>() 
(assert true) ; Non Conditional
(define-const var1345 Bool (var3774_isIdentifierPart/-790594859 var1892)) ; Statement: $z4 = staticinvoke <com.google.javascript.jscomp.parsing.parser.Identifiers: boolean isIdentifierPart(char)>(c9) 
 ; Statement: if $z4 != 0 goto $i14 = (int) c9 
(assert (not (not (= (ite var1345 1 0) 0)))) ; Negate: Cond: $z4 != 0  
(define-const var1136 Int (cast-from-Int-to-Int var1892)) ; Statement: $i11 = (int) c9 
 ; Statement: if $i11 == 92 goto $i14 = (int) c9 
(assert (not (= var1136 92))) ; Negate: Cond: $i11 == 92  
(define-const var458 Int (cast-from-Int-to-Int var1892)) ; Statement: $i12 = (int) c9 
 ; Statement: if $i12 != 123 goto $i13 = (int) c9 
(assert (not (= var458 123))) ; Cond: $i12 != 123 
(define-const var2137 Int (cast-from-Int-to-Int var1892)) ; Statement: $i13 = (int) c9 
 ; Statement: if $i13 != 125 goto $r1 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: java.lang.String contents> 
(assert (not (= var2137 125))) ; Cond: $i13 != 125 
(define-const var596 String (contents/-1834389046 var2378)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: java.lang.String contents> 
(define-const var207 Int (index/-1834389046 var2378)) ; Statement: $i2 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int index> 
(assert (and true (and (>= var616 0) (>= (str.len var596) var207) (>= var207 var616))))
(define-const var1648 String (substring/-1240304868 var596 var616 var207)) ; Statement: $r18 = virtualinvoke $r1.<java.lang.String: java.lang.String substring(int,int)>(i1, $i2) 
(define-const var1653 String var1648) ; Statement: r19 = $r18 
 ; Statement: if z2 == 0 goto $c4 = virtualinvoke r19.<java.lang.String: char charAt(int)>(0) 
(assert (= (ite var1959 1 0) 0)) ; Cond: z2 == 0 
(assert (and true (and (> (str.len var1653) 0) (<= 0 0))))
(define-const var290 Int (charAt/698050440 var1653 0)) ; Statement: $c4 = virtualinvoke r19.<java.lang.String: char charAt(int)>(0) 
(define-const var2754 Bool (var3774_isIdentifierStart/-1418650564 var290)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.parsing.parser.Identifiers: boolean isIdentifierStart(char)>($c4) 
 ; Statement: if $z0 != 0 goto r2 = staticinvoke <com.google.javascript.jscomp.parsing.parser.Keywords: com.google.javascript.jscomp.parsing.parser.Keywords get(java.lang.String)>(r19) 
(assert (not (not (= (ite var2754 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var3919 var254 (getPosition/-1695732445 var2378 var1280)) ; Statement: $r11 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: com.google.javascript.jscomp.parsing.parser.util.SourcePosition getPosition(int)>(i3) 
(define-const var1295 (Array Int var2738) arr-var2738-init) ; Statement: $r8 = newarray (java.lang.Object)[2] 
(define-const var2330 var3802 (var3802_valueOf/-1186540555 var290)) ; Statement: $r9 = staticinvoke <java.lang.Character: java.lang.Character valueOf(char)>($c4) 
(declare-const var1295!1 (Array Int var2738))
(assert (not (= var1295!1 null-__Array__Int__var2738__)))
(assert (= (select var1295!1 0) (cast-from-var3802-to-var2738 var2330))) ; Statement: $r8[0] = $r9 
(define-const var1134 Int (cast-from-Int-to-Int var290)) ; Statement: $i18 = (int) $c4 
(define-const var3786 Int (Int_valueOf/-1371140006 var1134)) ; Statement: $r10 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i18) 
(declare-const var1295!2 (Array Int var2738))
(assert (not (= var1295!2 null-__Array__Int__var2738__)))
(assert (= (select var1295!2 1) (cast-from-Int-to-var2738 var3786))) ; Statement: $r8[1] = $r10 
(assert true)
;(assert (reportError/1084259189 var2378 var3919 "Character \u0027%c\u0027 (U+%04X) is not a valid identifier start char" var1295!2)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: void reportError(com.google.javascript.jscomp.parsing.parser.util.SourcePosition,java.lang.String,java.lang.Object[])>($r11, "Character \'%c\' (U+%04X) is not a valid identifier start char", $r8) 

(declare-const var2378!1 var411)
(declare-const var3919!1 var254)
(declare-const var1164 String)
(declare-const var1295!3 (Array Int var2738))
(define-const var3579 var3725 var3725-ERROR) ; Statement: $r12 = <com.google.javascript.jscomp.parsing.parser.TokenType: com.google.javascript.jscomp.parsing.parser.TokenType ERROR> 
(assert true)
(define-const var1258 var2957 (createToken/1083011389 var2378!1 var3579 var1280)) ; Statement: $r13 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: com.google.javascript.jscomp.parsing.parser.Token createToken(com.google.javascript.jscomp.parsing.parser.TokenType,int)>($r12, i3) 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {index/-1834389046=([com.google.javascript.jscomp.parsing.parser.Scanner], int), cast-from-Int-to-Int=([char], int), peekChar/-2022892458=([com.google.javascript.jscomp.parsing.parser.Scanner], char), var3774_isIdentifierPart/-790594859=([char], boolean), contents/-1834389046=([com.google.javascript.jscomp.parsing.parser.Scanner], java.lang.String), substring/-1240304868=([java.lang.String, int, int], java.lang.String), charAt/698050440=([java.lang.String, int], char), var3774_isIdentifierStart/-1418650564=([char], boolean), getPosition/-1695732445=([com.google.javascript.jscomp.parsing.parser.Scanner, int], com.google.javascript.jscomp.parsing.parser.util.SourcePosition), arr-var2738-init=([], java.lang.Object[]), var3802_valueOf/-1186540555=([char], java.lang.Character), cast-from-var3802-to-var2738=([java.lang.Character], java.lang.Object), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var2738=([java.lang.Integer], java.lang.Object), reportError/1084259189=([com.google.javascript.jscomp.parsing.parser.Scanner, com.google.javascript.jscomp.parsing.parser.util.SourcePosition, java.lang.String, java.lang.Object[]], void), createToken/1083011389=([com.google.javascript.jscomp.parsing.parser.Scanner, com.google.javascript.jscomp.parsing.parser.TokenType, int], com.google.javascript.jscomp.parsing.parser.Token)}
; {var411=com.google.javascript.jscomp.parsing.parser.Scanner, var2378=r0, var1280=i3, var2063=c6, var3775=$i0, var616=i1, var1305=$i10, var2213=$z6, var504=$z5, var1959=z2, var1433=z3, var3333=z8, var2429=z7, var110=$b7, var2978=i8, var1892=c9, var3774=com.google.javascript.jscomp.parsing.parser.Identifiers, var1345=$z4, var1136=$i11, var458=$i12, var2137=$i13, var596=$r1, var207=$i2, var1648=$r18, var1653=r19, var290=$c4, var2754=$z0, var254=com.google.javascript.jscomp.parsing.parser.util.SourcePosition, var3919=$r11, var2738=java.lang.Object, var1295=$r8, var3802=java.lang.Character, var2330=$r9, var1134=$i18, var3786=$r10, var1164="Character \'%c\' (U+%04X) is not a valid identifier start char", var3725=com.google.javascript.jscomp.parsing.parser.TokenType, var3579=$r12, var2957=com.google.javascript.jscomp.parsing.parser.Token, var1258=$r13}
; {com.google.javascript.jscomp.parsing.parser.Scanner=var411, r0=var2378, i3=var1280, c6=var2063, $i0=var3775, i1=var616, $i10=var1305, $z6=var2213, $z5=var504, z2=var1959, z3=var1433, z8=var3333, z7=var2429, $b7=var110, i8=var2978, c9=var1892, com.google.javascript.jscomp.parsing.parser.Identifiers=var3774, $z4=var1345, $i11=var1136, $i12=var458, $i13=var2137, $r1=var596, $i2=var207, $r18=var1648, r19=var1653, $c4=var290, $z0=var2754, com.google.javascript.jscomp.parsing.parser.util.SourcePosition=var254, $r11=var3919, java.lang.Object=var2738, $r8=var1295, java.lang.Character=var3802, $r9=var2330, $i18=var1134, $r10=var3786, "Character \'%c\' (U+%04X) is not a valid identifier start char"=var1164, com.google.javascript.jscomp.parsing.parser.TokenType=var3725, $r12=var3579, com.google.javascript.jscomp.parsing.parser.Token=var2957, $r13=var1258}
;seq <java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.parsing.parser.Scanner;	i3 := @parameter0: int;	c6 := @parameter1: char;	$i0 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int index>;	i1 = $i0 - 1;	$i10 = (int) c6;	if $i10 != 92 goto $z6 = 0;	$z6 = 1;	$z5 = 1;	goto [?= z2 = $z5];	z2 = $z5;	z3 = 0;	z8 = 0;	z7 = 0;	if $z6 == 0 goto $b7 = 0;	$b7 = 1;	goto [?= i8 = $b7];	i8 = $b7;	c9 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: char peekChar()>();	$z4 = staticinvoke <com.google.javascript.jscomp.parsing.parser.Identifiers: boolean isIdentifierPart(char)>(c9);	if $z4 != 0 goto $i14 = (int) c9;	$i11 = (int) c9;	if $i11 == 92 goto $i14 = (int) c9;	$i12 = (int) c9;	if $i12 != 123 goto $i13 = (int) c9;	$i13 = (int) c9;	if $i13 != 125 goto $r1 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: java.lang.String contents>;	$r1 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: java.lang.String contents>;	$i2 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int index>;	$r18 = virtualinvoke $r1.<java.lang.String: java.lang.String substring(int,int)>(i1, $i2);	r19 = $r18;	if z2 == 0 goto $c4 = virtualinvoke r19.<java.lang.String: char charAt(int)>(0);	$c4 = virtualinvoke r19.<java.lang.String: char charAt(int)>(0);	$z0 = staticinvoke <com.google.javascript.jscomp.parsing.parser.Identifiers: boolean isIdentifierStart(char)>($c4);	if $z0 != 0 goto r2 = staticinvoke <com.google.javascript.jscomp.parsing.parser.Keywords: com.google.javascript.jscomp.parsing.parser.Keywords get(java.lang.String)>(r19);	$r11 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: com.google.javascript.jscomp.parsing.parser.util.SourcePosition getPosition(int)>(i3);	$r8 = newarray (java.lang.Object)[2];	$r9 = staticinvoke <java.lang.Character: java.lang.Character valueOf(char)>($c4);	$r8[0] = $r9;	$i18 = (int) $c4;	$r10 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i18);	$r8[1] = $r10;	virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: void reportError(com.google.javascript.jscomp.parsing.parser.util.SourcePosition,java.lang.String,java.lang.Object[])>($r11, "Character \'%c\' (U+%04X) is not a valid identifier start char", $r8);	$r12 = <com.google.javascript.jscomp.parsing.parser.TokenType: com.google.javascript.jscomp.parsing.parser.TokenType ERROR>;	$r13 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: com.google.javascript.jscomp.parsing.parser.Token createToken(com.google.javascript.jscomp.parsing.parser.TokenType,int)>($r12, i3);	return $r13
;block_num 12