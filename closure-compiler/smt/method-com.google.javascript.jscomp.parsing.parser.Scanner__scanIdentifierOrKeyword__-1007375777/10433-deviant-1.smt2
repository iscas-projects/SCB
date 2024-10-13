(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2876 0)
(declare-sort var2852 0)
(declare-sort var1532 0)
(declare-sort var379 0)
(declare-sort var169 0)
(declare-sort var486 0)
(declare-sort var3681 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun index/-1834389046 (var2876) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun peekChar/-2022892458 (var2876) Int)
(declare-fun var2852_isIdentifierPart/-790594859 (Int) Bool)
(declare-fun contents/-1834389046 (var2876) String)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var2852_isIdentifierStart/-1418650564 (Int) Bool)
(declare-fun getPosition/-1695732445 (var2876 Int) var1532)
(declare-fun arr-var379-init () (Array Int var379))
(declare-fun var169_valueOf/-1186540555 (Int) var169)
(declare-fun cast-from-var169-to-var379 (var169) var379)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var379 (Int) var379)
(declare-fun reportError/1084259189 (var2876 var1532 String (Array Int var379)) void)
(declare-fun createToken/1083011389 (var2876 var486 Int) var3681)
(declare-const null-var2876 var2876)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var379__ (Array Int var379))
(declare-const var486-ERROR var486)
(declare-const var623 var2876) ; Statement: r0 := @this: com.google.javascript.jscomp.parsing.parser.Scanner 
(assert (not (= var623 null-var2876)))
(declare-const var3060 Int) ; Statement: i3 := @parameter0: int 
(assert (not (= var3060 null-Int)))
(declare-const var536 Int) ; Statement: c6 := @parameter1: char 
(assert (not (= var536 null-Int)))
(define-const var2010 Int (index/-1834389046 var623)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int index> 
(define-const var1945 Int (- var2010 1)) ; Statement: i1 = $i0 - 1 
(define-const var1036 Int (cast-from-Int-to-Int var536)) ; Statement: $i10 = (int) c6 
 ; Statement: if $i10 != 92 goto $z6 = 0 
(assert (not (not (= var1036 92)))) ; Negate: Cond: $i10 != 92  
(define-const var627 Bool (ite (= 1 1) true false)) ; Statement: $z6 = 1 
(define-const var918 Bool (ite (= 1 1) true false)) ; Statement: $z5 = 1 
 ; Statement: goto [?= z2 = $z5] 
(assert true) ; Non Conditional
(define-const var3508 Bool var918) ; Statement: z2 = $z5 
(define-const var2066 Bool (ite (= 1 0) true false)) ; Statement: z3 = 0 
(define-const var104 Bool (ite (= 1 0) true false)) ; Statement: z8 = 0 
(define-const var2456 Bool (ite (= 1 0) true false)) ; Statement: z7 = 0 
 ; Statement: if $z6 == 0 goto $b7 = 0 
(assert (= (ite var627 1 0) 0)) ; Cond: $z6 == 0 
(define-const var2162 Int 0) ; Statement: $b7 = 0 
(assert true) ; Non Conditional
(define-const var2999 Int var2162) ; Statement: i8 = $b7 
(assert true)
(define-const var1184 Int (peekChar/-2022892458 var623)) ; Statement: c9 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: char peekChar()>() 
(assert true) ; Non Conditional
(define-const var2547 Bool (var2852_isIdentifierPart/-790594859 var1184)) ; Statement: $z4 = staticinvoke <com.google.javascript.jscomp.parsing.parser.Identifiers: boolean isIdentifierPart(char)>(c9) 
 ; Statement: if $z4 != 0 goto $i14 = (int) c9 
(assert (not (not (= (ite var2547 1 0) 0)))) ; Negate: Cond: $z4 != 0  
(define-const var1856 Int (cast-from-Int-to-Int var1184)) ; Statement: $i11 = (int) c9 
 ; Statement: if $i11 == 92 goto $i14 = (int) c9 
(assert (not (= var1856 92))) ; Negate: Cond: $i11 == 92  
(define-const var1044 Int (cast-from-Int-to-Int var1184)) ; Statement: $i12 = (int) c9 
 ; Statement: if $i12 != 123 goto $i13 = (int) c9 
(assert (not (= var1044 123))) ; Cond: $i12 != 123 
(define-const var2434 Int (cast-from-Int-to-Int var1184)) ; Statement: $i13 = (int) c9 
 ; Statement: if $i13 != 125 goto $r1 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: java.lang.String contents> 
(assert (not (= var2434 125))) ; Cond: $i13 != 125 
(define-const var2190 String (contents/-1834389046 var623)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: java.lang.String contents> 
(define-const var891 Int (index/-1834389046 var623)) ; Statement: $i2 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int index> 
(assert (and true (and (>= var1945 0) (>= (str.len var2190) var891) (>= var891 var1945))))
(define-const var647 String (substring/-1240304868 var2190 var1945 var891)) ; Statement: $r18 = virtualinvoke $r1.<java.lang.String: java.lang.String substring(int,int)>(i1, $i2) 
(define-const var877 String var647) ; Statement: r19 = $r18 
 ; Statement: if z2 == 0 goto $c4 = virtualinvoke r19.<java.lang.String: char charAt(int)>(0) 
(assert (= (ite var3508 1 0) 0)) ; Cond: z2 == 0 
(assert (not (and true (and (> (str.len var877) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {index/-1834389046=([com.google.javascript.jscomp.parsing.parser.Scanner], int), cast-from-Int-to-Int=([char], int), peekChar/-2022892458=([com.google.javascript.jscomp.parsing.parser.Scanner], char), var2852_isIdentifierPart/-790594859=([char], boolean), contents/-1834389046=([com.google.javascript.jscomp.parsing.parser.Scanner], java.lang.String), substring/-1240304868=([java.lang.String, int, int], java.lang.String), charAt/698050440=([java.lang.String, int], char), var2852_isIdentifierStart/-1418650564=([char], boolean), getPosition/-1695732445=([com.google.javascript.jscomp.parsing.parser.Scanner, int], com.google.javascript.jscomp.parsing.parser.util.SourcePosition), arr-var379-init=([], java.lang.Object[]), var169_valueOf/-1186540555=([char], java.lang.Character), cast-from-var169-to-var379=([java.lang.Character], java.lang.Object), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var379=([java.lang.Integer], java.lang.Object), reportError/1084259189=([com.google.javascript.jscomp.parsing.parser.Scanner, com.google.javascript.jscomp.parsing.parser.util.SourcePosition, java.lang.String, java.lang.Object[]], void), createToken/1083011389=([com.google.javascript.jscomp.parsing.parser.Scanner, com.google.javascript.jscomp.parsing.parser.TokenType, int], com.google.javascript.jscomp.parsing.parser.Token)}
; {var2876=com.google.javascript.jscomp.parsing.parser.Scanner, var623=r0, var3060=i3, var536=c6, var2010=$i0, var1945=i1, var1036=$i10, var627=$z6, var918=$z5, var3508=z2, var2066=z3, var104=z8, var2456=z7, var2162=$b7, var2999=i8, var1184=c9, var2852=com.google.javascript.jscomp.parsing.parser.Identifiers, var2547=$z4, var1856=$i11, var1044=$i12, var2434=$i13, var2190=$r1, var891=$i2, var647=$r18, var877=r19, var3152=$c4, var2002=$z0, var1532=com.google.javascript.jscomp.parsing.parser.util.SourcePosition, var912=$r11, var379=java.lang.Object, var1150=$r8, var169=java.lang.Character, var376=$r9, var1563=$i18, var1883=$r10, var2097="Character \'%c\' (U+%04X) is not a valid identifier start char", var486=com.google.javascript.jscomp.parsing.parser.TokenType, var2935=$r12, var3681=com.google.javascript.jscomp.parsing.parser.Token, var1808=$r13}
; {com.google.javascript.jscomp.parsing.parser.Scanner=var2876, r0=var623, i3=var3060, c6=var536, $i0=var2010, i1=var1945, $i10=var1036, $z6=var627, $z5=var918, z2=var3508, z3=var2066, z8=var104, z7=var2456, $b7=var2162, i8=var2999, c9=var1184, com.google.javascript.jscomp.parsing.parser.Identifiers=var2852, $z4=var2547, $i11=var1856, $i12=var1044, $i13=var2434, $r1=var2190, $i2=var891, $r18=var647, r19=var877, $c4=var3152, $z0=var2002, com.google.javascript.jscomp.parsing.parser.util.SourcePosition=var1532, $r11=var912, java.lang.Object=var379, $r8=var1150, java.lang.Character=var169, $r9=var376, $i18=var1563, $r10=var1883, "Character \'%c\' (U+%04X) is not a valid identifier start char"=var2097, com.google.javascript.jscomp.parsing.parser.TokenType=var486, $r12=var2935, com.google.javascript.jscomp.parsing.parser.Token=var3681, $r13=var1808}
;seq <java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.parsing.parser.Scanner;	i3 := @parameter0: int;	c6 := @parameter1: char;	$i0 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int index>;	i1 = $i0 - 1;	$i10 = (int) c6;	if $i10 != 92 goto $z6 = 0;	$z6 = 1;	$z5 = 1;	goto [?= z2 = $z5];	z2 = $z5;	z3 = 0;	z8 = 0;	z7 = 0;	if $z6 == 0 goto $b7 = 0;	$b7 = 0;	i8 = $b7;	c9 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: char peekChar()>();	$z4 = staticinvoke <com.google.javascript.jscomp.parsing.parser.Identifiers: boolean isIdentifierPart(char)>(c9);	if $z4 != 0 goto $i14 = (int) c9;	$i11 = (int) c9;	if $i11 == 92 goto $i14 = (int) c9;	$i12 = (int) c9;	if $i12 != 123 goto $i13 = (int) c9;	$i13 = (int) c9;	if $i13 != 125 goto $r1 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: java.lang.String contents>;	$r1 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: java.lang.String contents>;	$i2 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int index>;	$r18 = virtualinvoke $r1.<java.lang.String: java.lang.String substring(int,int)>(i1, $i2);	r19 = $r18;	if z2 == 0 goto $c4 = virtualinvoke r19.<java.lang.String: char charAt(int)>(0);	$c4 = virtualinvoke r19.<java.lang.String: char charAt(int)>(0);	$z0 = staticinvoke <com.google.javascript.jscomp.parsing.parser.Identifiers: boolean isIdentifierStart(char)>($c4);	if $z0 != 0 goto r2 = staticinvoke <com.google.javascript.jscomp.parsing.parser.Keywords: com.google.javascript.jscomp.parsing.parser.Keywords get(java.lang.String)>(r19);	$r11 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: com.google.javascript.jscomp.parsing.parser.util.SourcePosition getPosition(int)>(i3);	$r8 = newarray (java.lang.Object)[2];	$r9 = staticinvoke <java.lang.Character: java.lang.Character valueOf(char)>($c4);	$r8[0] = $r9;	$i18 = (int) $c4;	$r10 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i18);	$r8[1] = $r10;	virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: void reportError(com.google.javascript.jscomp.parsing.parser.util.SourcePosition,java.lang.String,java.lang.Object[])>($r11, "Character \'%c\' (U+%04X) is not a valid identifier start char", $r8);	$r12 = <com.google.javascript.jscomp.parsing.parser.TokenType: com.google.javascript.jscomp.parsing.parser.TokenType ERROR>;	$r13 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: com.google.javascript.jscomp.parsing.parser.Token createToken(com.google.javascript.jscomp.parsing.parser.TokenType,int)>($r12, i3);	return $r13
;block_num 12