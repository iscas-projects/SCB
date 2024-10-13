(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1880 0)
(declare-sort var426 0)
(declare-sort var2093 0)
(declare-sort var1090 0)
(declare-sort var3050 0)
(declare-sort var970 0)
(declare-sort var705 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun index/-1834389046 (var1880) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun peekChar/-2022892458 (var1880) Int)
(declare-fun var426_isIdentifierPart/-790594859 (Int) Bool)
(declare-fun contents/-1834389046 (var1880) String)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun var1880_processUnicodeEscapes/-1554260635 (String) String)
(declare-fun getPosition/-1695732445 (var1880 Int) var1090)
(declare-fun arr-var3050-init () (Array Int var3050))
(declare-fun reportError/1084259189 (var1880 var1090 String (Array Int var3050)) void)
(declare-fun createToken/1083011389 (var1880 var970 Int) var705)
(declare-const null-var1880 var1880)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var970-ERROR var970)
(declare-const var3172 var1880) ; Statement: r0 := @this: com.google.javascript.jscomp.parsing.parser.Scanner 
(assert (not (= var3172 null-var1880)))
(declare-const var1767 Int) ; Statement: i3 := @parameter0: int 
(assert (not (= var1767 null-Int)))
(declare-const var3035 Int) ; Statement: c6 := @parameter1: char 
(assert (not (= var3035 null-Int)))
(define-const var3810 Int (index/-1834389046 var3172)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int index> 
(define-const var2054 Int (- var3810 1)) ; Statement: i1 = $i0 - 1 
(define-const var3859 Int (cast-from-Int-to-Int var3035)) ; Statement: $i10 = (int) c6 
 ; Statement: if $i10 != 92 goto $z6 = 0 
(assert (not (= var3859 92))) ; Cond: $i10 != 92 
(define-const var3297 Bool (ite (= 1 0) true false)) ; Statement: $z6 = 0 
(define-const var69 Bool (ite (= 1 0) true false)) ; Statement: $z5 = 0 
(assert true) ; Non Conditional
(define-const var2559 Bool var69) ; Statement: z2 = $z5 
(define-const var375 Bool (ite (= 1 0) true false)) ; Statement: z3 = 0 
(define-const var3158 Bool (ite (= 1 0) true false)) ; Statement: z8 = 0 
(define-const var1200 Bool (ite (= 1 0) true false)) ; Statement: z7 = 0 
 ; Statement: if $z6 == 0 goto $b7 = 0 
(assert (= (ite var3297 1 0) 0)) ; Cond: $z6 == 0 
(define-const var3470 Int 0) ; Statement: $b7 = 0 
(assert true) ; Non Conditional
(define-const var896 Int var3470) ; Statement: i8 = $b7 
(assert true)
(define-const var601 Int (peekChar/-2022892458 var3172)) ; Statement: c9 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: char peekChar()>() 
(assert true) ; Non Conditional
(define-const var1518 Bool (var426_isIdentifierPart/-790594859 var601)) ; Statement: $z4 = staticinvoke <com.google.javascript.jscomp.parsing.parser.Identifiers: boolean isIdentifierPart(char)>(c9) 
 ; Statement: if $z4 != 0 goto $i14 = (int) c9 
(assert (not (not (= (ite var1518 1 0) 0)))) ; Negate: Cond: $z4 != 0  
(define-const var574 Int (cast-from-Int-to-Int var601)) ; Statement: $i11 = (int) c9 
 ; Statement: if $i11 == 92 goto $i14 = (int) c9 
(assert (not (= var574 92))) ; Negate: Cond: $i11 == 92  
(define-const var2998 Int (cast-from-Int-to-Int var601)) ; Statement: $i12 = (int) c9 
 ; Statement: if $i12 != 123 goto $i13 = (int) c9 
(assert (not (= var2998 123))) ; Cond: $i12 != 123 
(define-const var673 Int (cast-from-Int-to-Int var601)) ; Statement: $i13 = (int) c9 
 ; Statement: if $i13 != 125 goto $r1 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: java.lang.String contents> 
(assert (not (= var673 125))) ; Cond: $i13 != 125 
(define-const var3724 String (contents/-1834389046 var3172)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: java.lang.String contents> 
(define-const var3304 Int (index/-1834389046 var3172)) ; Statement: $i2 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int index> 
(assert (not (and true (and (>= var2054 0) (>= (str.len var3724) var3304) (>= var3304 var2054)))))
(check-sat)
(get-model)
(get-unsat-core)
; {index/-1834389046=([com.google.javascript.jscomp.parsing.parser.Scanner], int), cast-from-Int-to-Int=([char], int), peekChar/-2022892458=([com.google.javascript.jscomp.parsing.parser.Scanner], char), var426_isIdentifierPart/-790594859=([char], boolean), contents/-1834389046=([com.google.javascript.jscomp.parsing.parser.Scanner], java.lang.String), substring/-1240304868=([java.lang.String, int, int], java.lang.String), var1880_processUnicodeEscapes/-1554260635=([java.lang.String], java.lang.String), getPosition/-1695732445=([com.google.javascript.jscomp.parsing.parser.Scanner, int], com.google.javascript.jscomp.parsing.parser.util.SourcePosition), arr-var3050-init=([], java.lang.Object[]), reportError/1084259189=([com.google.javascript.jscomp.parsing.parser.Scanner, com.google.javascript.jscomp.parsing.parser.util.SourcePosition, java.lang.String, java.lang.Object[]], void), createToken/1083011389=([com.google.javascript.jscomp.parsing.parser.Scanner, com.google.javascript.jscomp.parsing.parser.TokenType, int], com.google.javascript.jscomp.parsing.parser.Token)}
; {var1880=com.google.javascript.jscomp.parsing.parser.Scanner, var3172=r0, var1767=i3, var3035=c6, var3810=$i0, var2054=i1, var3859=$i10, var3297=$z6, var69=$z5, var2559=z2, var375=z3, var3158=z8, var1200=z7, var3470=$b7, var896=i8, var601=c9, var426=com.google.javascript.jscomp.parsing.parser.Identifiers, var1518=$z4, var574=$i11, var2998=$i12, var673=$i13, var3724=$r1, var3304=$i2, var3621=$r18, var3719=r19, var2093=null_type, var3008=$i5, var1090=com.google.javascript.jscomp.parsing.parser.util.SourcePosition, var1356=$r15, var3050=java.lang.Object, var3399=$r14, var3872="Invalid escape sequence", var970=com.google.javascript.jscomp.parsing.parser.TokenType, var2224=$r16, var705=com.google.javascript.jscomp.parsing.parser.Token, var2187=$r17}
; {com.google.javascript.jscomp.parsing.parser.Scanner=var1880, r0=var3172, i3=var1767, c6=var3035, $i0=var3810, i1=var2054, $i10=var3859, $z6=var3297, $z5=var69, z2=var2559, z3=var375, z8=var3158, z7=var1200, $b7=var3470, i8=var896, c9=var601, com.google.javascript.jscomp.parsing.parser.Identifiers=var426, $z4=var1518, $i11=var574, $i12=var2998, $i13=var673, $r1=var3724, $i2=var3304, $r18=var3621, r19=var3719, null_type=var2093, $i5=var3008, com.google.javascript.jscomp.parsing.parser.util.SourcePosition=var1090, $r15=var1356, java.lang.Object=var3050, $r14=var3399, "Invalid escape sequence"=var3872, com.google.javascript.jscomp.parsing.parser.TokenType=var970, $r16=var2224, com.google.javascript.jscomp.parsing.parser.Token=var705, $r17=var2187}
;seq <java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.parsing.parser.Scanner;	i3 := @parameter0: int;	c6 := @parameter1: char;	$i0 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int index>;	i1 = $i0 - 1;	$i10 = (int) c6;	if $i10 != 92 goto $z6 = 0;	$z6 = 0;	$z5 = 0;	z2 = $z5;	z3 = 0;	z8 = 0;	z7 = 0;	if $z6 == 0 goto $b7 = 0;	$b7 = 0;	i8 = $b7;	c9 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: char peekChar()>();	$z4 = staticinvoke <com.google.javascript.jscomp.parsing.parser.Identifiers: boolean isIdentifierPart(char)>(c9);	if $z4 != 0 goto $i14 = (int) c9;	$i11 = (int) c9;	if $i11 == 92 goto $i14 = (int) c9;	$i12 = (int) c9;	if $i12 != 123 goto $i13 = (int) c9;	$i13 = (int) c9;	if $i13 != 125 goto $r1 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: java.lang.String contents>;	$r1 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: java.lang.String contents>;	$i2 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int index>;	$r18 = virtualinvoke $r1.<java.lang.String: java.lang.String substring(int,int)>(i1, $i2);	r19 = $r18;	if z2 == 0 goto $c4 = virtualinvoke r19.<java.lang.String: char charAt(int)>(0);	r19 = staticinvoke <com.google.javascript.jscomp.parsing.parser.Scanner: java.lang.String processUnicodeEscapes(java.lang.String)>($r18);	if r19 != null goto $c4 = virtualinvoke r19.<java.lang.String: char charAt(int)>(0);	$i5 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int index>;	$r15 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: com.google.javascript.jscomp.parsing.parser.util.SourcePosition getPosition(int)>($i5);	$r14 = newarray (java.lang.Object)[0];	virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: void reportError(com.google.javascript.jscomp.parsing.parser.util.SourcePosition,java.lang.String,java.lang.Object[])>($r15, "Invalid escape sequence", $r14);	$r16 = <com.google.javascript.jscomp.parsing.parser.TokenType: com.google.javascript.jscomp.parsing.parser.TokenType ERROR>;	$r17 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: com.google.javascript.jscomp.parsing.parser.Token createToken(com.google.javascript.jscomp.parsing.parser.TokenType,int)>($r16, i3);	return $r17
;block_num 12