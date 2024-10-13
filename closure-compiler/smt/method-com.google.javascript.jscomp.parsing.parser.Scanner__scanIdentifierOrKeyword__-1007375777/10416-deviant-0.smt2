(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var598 0)
(declare-sort var386 0)
(declare-sort var3122 0)
(declare-sort var853 0)
(declare-sort var333 0)
(declare-sort var3982 0)
(declare-sort var3550 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun index/-1834389046 (var598) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun peekChar/-2022892458 (var598) Int)
(declare-fun var386_isIdentifierPart/-790594859 (Int) Bool)
(declare-fun contents/-1834389046 (var598) String)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun var598_processUnicodeEscapes/-1554260635 (String) String)
(declare-fun getPosition/-1695732445 (var598 Int) var853)
(declare-fun arr-var333-init () (Array Int var333))
(declare-fun reportError/1084259189 (var598 var853 String (Array Int var333)) void)
(declare-fun createToken/1083011389 (var598 var3982 Int) var3550)
(declare-const null-var598 var598)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var3982-ERROR var3982)
(declare-const var1354 var598) ; Statement: r0 := @this: com.google.javascript.jscomp.parsing.parser.Scanner 
(assert (not (= var1354 null-var598)))
(declare-const var2023 Int) ; Statement: i3 := @parameter0: int 
(assert (not (= var2023 null-Int)))
(declare-const var3447 Int) ; Statement: c6 := @parameter1: char 
(assert (not (= var3447 null-Int)))
(define-const var802 Int (index/-1834389046 var1354)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int index> 
(define-const var1049 Int (- var802 1)) ; Statement: i1 = $i0 - 1 
(define-const var2861 Int (cast-from-Int-to-Int var3447)) ; Statement: $i10 = (int) c6 
 ; Statement: if $i10 != 92 goto $z6 = 0 
(assert (not (not (= var2861 92)))) ; Negate: Cond: $i10 != 92  
(define-const var2189 Bool (ite (= 1 1) true false)) ; Statement: $z6 = 1 
(define-const var2879 Bool (ite (= 1 1) true false)) ; Statement: $z5 = 1 
 ; Statement: goto [?= z2 = $z5] 
(assert true) ; Non Conditional
(define-const var3065 Bool var2879) ; Statement: z2 = $z5 
(define-const var3622 Bool (ite (= 1 0) true false)) ; Statement: z3 = 0 
(define-const var3805 Bool (ite (= 1 0) true false)) ; Statement: z8 = 0 
(define-const var3827 Bool (ite (= 1 0) true false)) ; Statement: z7 = 0 
 ; Statement: if $z6 == 0 goto $b7 = 0 
(assert (= (ite var2189 1 0) 0)) ; Cond: $z6 == 0 
(define-const var825 Int 0) ; Statement: $b7 = 0 
(assert true) ; Non Conditional
(define-const var3317 Int var825) ; Statement: i8 = $b7 
(assert true)
(define-const var1809 Int (peekChar/-2022892458 var1354)) ; Statement: c9 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: char peekChar()>() 
(assert true) ; Non Conditional
(define-const var1326 Bool (var386_isIdentifierPart/-790594859 var1809)) ; Statement: $z4 = staticinvoke <com.google.javascript.jscomp.parsing.parser.Identifiers: boolean isIdentifierPart(char)>(c9) 
 ; Statement: if $z4 != 0 goto $i14 = (int) c9 
(assert (not (not (= (ite var1326 1 0) 0)))) ; Negate: Cond: $z4 != 0  
(define-const var2888 Int (cast-from-Int-to-Int var1809)) ; Statement: $i11 = (int) c9 
 ; Statement: if $i11 == 92 goto $i14 = (int) c9 
(assert (not (= var2888 92))) ; Negate: Cond: $i11 == 92  
(define-const var165 Int (cast-from-Int-to-Int var1809)) ; Statement: $i12 = (int) c9 
 ; Statement: if $i12 != 123 goto $i13 = (int) c9 
(assert (not (= var165 123))) ; Cond: $i12 != 123 
(define-const var228 Int (cast-from-Int-to-Int var1809)) ; Statement: $i13 = (int) c9 
 ; Statement: if $i13 != 125 goto $r1 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: java.lang.String contents> 
(assert (not (= var228 125))) ; Cond: $i13 != 125 
(define-const var1490 String (contents/-1834389046 var1354)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: java.lang.String contents> 
(define-const var924 Int (index/-1834389046 var1354)) ; Statement: $i2 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int index> 
(assert (not (and true (and (>= var1049 0) (>= (str.len var1490) var924) (>= var924 var1049)))))
(check-sat)
(get-model)
(get-unsat-core)
; {index/-1834389046=([com.google.javascript.jscomp.parsing.parser.Scanner], int), cast-from-Int-to-Int=([char], int), peekChar/-2022892458=([com.google.javascript.jscomp.parsing.parser.Scanner], char), var386_isIdentifierPart/-790594859=([char], boolean), contents/-1834389046=([com.google.javascript.jscomp.parsing.parser.Scanner], java.lang.String), substring/-1240304868=([java.lang.String, int, int], java.lang.String), var598_processUnicodeEscapes/-1554260635=([java.lang.String], java.lang.String), getPosition/-1695732445=([com.google.javascript.jscomp.parsing.parser.Scanner, int], com.google.javascript.jscomp.parsing.parser.util.SourcePosition), arr-var333-init=([], java.lang.Object[]), reportError/1084259189=([com.google.javascript.jscomp.parsing.parser.Scanner, com.google.javascript.jscomp.parsing.parser.util.SourcePosition, java.lang.String, java.lang.Object[]], void), createToken/1083011389=([com.google.javascript.jscomp.parsing.parser.Scanner, com.google.javascript.jscomp.parsing.parser.TokenType, int], com.google.javascript.jscomp.parsing.parser.Token)}
; {var598=com.google.javascript.jscomp.parsing.parser.Scanner, var1354=r0, var2023=i3, var3447=c6, var802=$i0, var1049=i1, var2861=$i10, var2189=$z6, var2879=$z5, var3065=z2, var3622=z3, var3805=z8, var3827=z7, var825=$b7, var3317=i8, var1809=c9, var386=com.google.javascript.jscomp.parsing.parser.Identifiers, var1326=$z4, var2888=$i11, var165=$i12, var228=$i13, var1490=$r1, var924=$i2, var3869=$r18, var2316=r19, var3122=null_type, var41=$i5, var853=com.google.javascript.jscomp.parsing.parser.util.SourcePosition, var3907=$r15, var333=java.lang.Object, var3187=$r14, var3244="Invalid escape sequence", var3982=com.google.javascript.jscomp.parsing.parser.TokenType, var354=$r16, var3550=com.google.javascript.jscomp.parsing.parser.Token, var2477=$r17}
; {com.google.javascript.jscomp.parsing.parser.Scanner=var598, r0=var1354, i3=var2023, c6=var3447, $i0=var802, i1=var1049, $i10=var2861, $z6=var2189, $z5=var2879, z2=var3065, z3=var3622, z8=var3805, z7=var3827, $b7=var825, i8=var3317, c9=var1809, com.google.javascript.jscomp.parsing.parser.Identifiers=var386, $z4=var1326, $i11=var2888, $i12=var165, $i13=var228, $r1=var1490, $i2=var924, $r18=var3869, r19=var2316, null_type=var3122, $i5=var41, com.google.javascript.jscomp.parsing.parser.util.SourcePosition=var853, $r15=var3907, java.lang.Object=var333, $r14=var3187, "Invalid escape sequence"=var3244, com.google.javascript.jscomp.parsing.parser.TokenType=var3982, $r16=var354, com.google.javascript.jscomp.parsing.parser.Token=var3550, $r17=var2477}
;seq <java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.parsing.parser.Scanner;	i3 := @parameter0: int;	c6 := @parameter1: char;	$i0 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int index>;	i1 = $i0 - 1;	$i10 = (int) c6;	if $i10 != 92 goto $z6 = 0;	$z6 = 1;	$z5 = 1;	goto [?= z2 = $z5];	z2 = $z5;	z3 = 0;	z8 = 0;	z7 = 0;	if $z6 == 0 goto $b7 = 0;	$b7 = 0;	i8 = $b7;	c9 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: char peekChar()>();	$z4 = staticinvoke <com.google.javascript.jscomp.parsing.parser.Identifiers: boolean isIdentifierPart(char)>(c9);	if $z4 != 0 goto $i14 = (int) c9;	$i11 = (int) c9;	if $i11 == 92 goto $i14 = (int) c9;	$i12 = (int) c9;	if $i12 != 123 goto $i13 = (int) c9;	$i13 = (int) c9;	if $i13 != 125 goto $r1 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: java.lang.String contents>;	$r1 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: java.lang.String contents>;	$i2 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int index>;	$r18 = virtualinvoke $r1.<java.lang.String: java.lang.String substring(int,int)>(i1, $i2);	r19 = $r18;	if z2 == 0 goto $c4 = virtualinvoke r19.<java.lang.String: char charAt(int)>(0);	r19 = staticinvoke <com.google.javascript.jscomp.parsing.parser.Scanner: java.lang.String processUnicodeEscapes(java.lang.String)>($r18);	if r19 != null goto $c4 = virtualinvoke r19.<java.lang.String: char charAt(int)>(0);	$i5 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int index>;	$r15 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: com.google.javascript.jscomp.parsing.parser.util.SourcePosition getPosition(int)>($i5);	$r14 = newarray (java.lang.Object)[0];	virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: void reportError(com.google.javascript.jscomp.parsing.parser.util.SourcePosition,java.lang.String,java.lang.Object[])>($r15, "Invalid escape sequence", $r14);	$r16 = <com.google.javascript.jscomp.parsing.parser.TokenType: com.google.javascript.jscomp.parsing.parser.TokenType ERROR>;	$r17 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: com.google.javascript.jscomp.parsing.parser.Token createToken(com.google.javascript.jscomp.parsing.parser.TokenType,int)>($r16, i3);	return $r17
;block_num 12