(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3049 0)
(declare-sort var2824 0)
(declare-sort var988 0)
(declare-sort var1154 0)
(declare-sort var1036 0)
(declare-sort var1105 0)
(declare-sort var2767 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun index/-1834389046 (var3049) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun peekChar/-2022892458 (var3049) Int)
(declare-fun var2824_isIdentifierPart/-790594859 (Int) Bool)
(declare-fun contents/-1834389046 (var3049) String)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun var3049_processUnicodeEscapes/-1554260635 (String) String)
(declare-fun getPosition/-1695732445 (var3049 Int) var1154)
(declare-fun arr-var1036-init () (Array Int var1036))
(declare-fun reportError/1084259189 (var3049 var1154 String (Array Int var1036)) void)
(declare-fun createToken/1083011389 (var3049 var1105 Int) var2767)
(declare-const null-var3049 var3049)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var1105-ERROR var1105)
(declare-const var1604 var3049) ; Statement: r0 := @this: com.google.javascript.jscomp.parsing.parser.Scanner 
(assert (not (= var1604 null-var3049)))
(declare-const var3916 Int) ; Statement: i3 := @parameter0: int 
(assert (not (= var3916 null-Int)))
(declare-const var2093 Int) ; Statement: c6 := @parameter1: char 
(assert (not (= var2093 null-Int)))
(define-const var3061 Int (index/-1834389046 var1604)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int index> 
(define-const var370 Int (- var3061 1)) ; Statement: i1 = $i0 - 1 
(define-const var395 Int (cast-from-Int-to-Int var2093)) ; Statement: $i10 = (int) c6 
 ; Statement: if $i10 != 92 goto $z6 = 0 
(assert (not (not (= var395 92)))) ; Negate: Cond: $i10 != 92  
(define-const var77 Bool (ite (= 1 1) true false)) ; Statement: $z6 = 1 
(define-const var1657 Bool (ite (= 1 1) true false)) ; Statement: $z5 = 1 
 ; Statement: goto [?= z2 = $z5] 
(assert true) ; Non Conditional
(define-const var1791 Bool var1657) ; Statement: z2 = $z5 
(define-const var2537 Bool (ite (= 1 0) true false)) ; Statement: z3 = 0 
(define-const var2995 Bool (ite (= 1 0) true false)) ; Statement: z8 = 0 
(define-const var3606 Bool (ite (= 1 0) true false)) ; Statement: z7 = 0 
 ; Statement: if $z6 == 0 goto $b7 = 0 
(assert (not (= (ite var77 1 0) 0))) ; Negate: Cond: $z6 == 0  
(define-const var197 Int 1) ; Statement: $b7 = 1 
 ; Statement: goto [?= i8 = $b7] 
(assert true) ; Non Conditional
(define-const var3021 Int var197) ; Statement: i8 = $b7 
(assert true)
(define-const var2596 Int (peekChar/-2022892458 var1604)) ; Statement: c9 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: char peekChar()>() 
(assert true) ; Non Conditional
(define-const var420 Bool (var2824_isIdentifierPart/-790594859 var2596)) ; Statement: $z4 = staticinvoke <com.google.javascript.jscomp.parsing.parser.Identifiers: boolean isIdentifierPart(char)>(c9) 
 ; Statement: if $z4 != 0 goto $i14 = (int) c9 
(assert (not (not (= (ite var420 1 0) 0)))) ; Negate: Cond: $z4 != 0  
(define-const var2557 Int (cast-from-Int-to-Int var2596)) ; Statement: $i11 = (int) c9 
 ; Statement: if $i11 == 92 goto $i14 = (int) c9 
(assert (not (= var2557 92))) ; Negate: Cond: $i11 == 92  
(define-const var1806 Int (cast-from-Int-to-Int var2596)) ; Statement: $i12 = (int) c9 
 ; Statement: if $i12 != 123 goto $i13 = (int) c9 
(assert (not (= var1806 123))) ; Cond: $i12 != 123 
(define-const var2620 Int (cast-from-Int-to-Int var2596)) ; Statement: $i13 = (int) c9 
 ; Statement: if $i13 != 125 goto $r1 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: java.lang.String contents> 
(assert (not (= var2620 125))) ; Cond: $i13 != 125 
(define-const var1953 String (contents/-1834389046 var1604)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: java.lang.String contents> 
(define-const var96 Int (index/-1834389046 var1604)) ; Statement: $i2 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int index> 
(assert (and true (and (>= var370 0) (>= (str.len var1953) var96) (>= var96 var370))))
(define-const var998 String (substring/-1240304868 var1953 var370 var96)) ; Statement: $r18 = virtualinvoke $r1.<java.lang.String: java.lang.String substring(int,int)>(i1, $i2) 
(define-const var651 String var998) ; Statement: r19 = $r18 
 ; Statement: if z2 == 0 goto $c4 = virtualinvoke r19.<java.lang.String: char charAt(int)>(0) 
(assert (not (= (ite var1791 1 0) 0))) ; Negate: Cond: z2 == 0  
(define-const var651!1 String (var3049_processUnicodeEscapes/-1554260635 var998)) ; Statement: r19 = staticinvoke <com.google.javascript.jscomp.parsing.parser.Scanner: java.lang.String processUnicodeEscapes(java.lang.String)>($r18) 
 ; Statement: if r19 != null goto $c4 = virtualinvoke r19.<java.lang.String: char charAt(int)>(0) 
(assert (not (not (= var651!1 null-String)))) ; Negate: Cond: r19 != null  
(define-const var1302 Int (index/-1834389046 var1604)) ; Statement: $i5 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int index> 
(assert true)
(define-const var645 var1154 (getPosition/-1695732445 var1604 var1302)) ; Statement: $r15 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: com.google.javascript.jscomp.parsing.parser.util.SourcePosition getPosition(int)>($i5) 
(define-const var281 (Array Int var1036) arr-var1036-init) ; Statement: $r14 = newarray (java.lang.Object)[0] 
(assert true)
;(assert (reportError/1084259189 var1604 var645 "Invalid escape sequence" var281)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: void reportError(com.google.javascript.jscomp.parsing.parser.util.SourcePosition,java.lang.String,java.lang.Object[])>($r15, "Invalid escape sequence", $r14) 

(declare-const var1604!1 var3049)
(declare-const var645!1 var1154)
(declare-const var633 String)
(declare-const var281!1 (Array Int var1036))
(define-const var2388 var1105 var1105-ERROR) ; Statement: $r16 = <com.google.javascript.jscomp.parsing.parser.TokenType: com.google.javascript.jscomp.parsing.parser.TokenType ERROR> 
(assert true)
(define-const var1372 var2767 (createToken/1083011389 var1604!1 var2388 var3916)) ; Statement: $r17 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: com.google.javascript.jscomp.parsing.parser.Token createToken(com.google.javascript.jscomp.parsing.parser.TokenType,int)>($r16, i3) 
 ; Statement: return $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {index/-1834389046=([com.google.javascript.jscomp.parsing.parser.Scanner], int), cast-from-Int-to-Int=([char], int), peekChar/-2022892458=([com.google.javascript.jscomp.parsing.parser.Scanner], char), var2824_isIdentifierPart/-790594859=([char], boolean), contents/-1834389046=([com.google.javascript.jscomp.parsing.parser.Scanner], java.lang.String), substring/-1240304868=([java.lang.String, int, int], java.lang.String), var3049_processUnicodeEscapes/-1554260635=([java.lang.String], java.lang.String), getPosition/-1695732445=([com.google.javascript.jscomp.parsing.parser.Scanner, int], com.google.javascript.jscomp.parsing.parser.util.SourcePosition), arr-var1036-init=([], java.lang.Object[]), reportError/1084259189=([com.google.javascript.jscomp.parsing.parser.Scanner, com.google.javascript.jscomp.parsing.parser.util.SourcePosition, java.lang.String, java.lang.Object[]], void), createToken/1083011389=([com.google.javascript.jscomp.parsing.parser.Scanner, com.google.javascript.jscomp.parsing.parser.TokenType, int], com.google.javascript.jscomp.parsing.parser.Token)}
; {var3049=com.google.javascript.jscomp.parsing.parser.Scanner, var1604=r0, var3916=i3, var2093=c6, var3061=$i0, var370=i1, var395=$i10, var77=$z6, var1657=$z5, var1791=z2, var2537=z3, var2995=z8, var3606=z7, var197=$b7, var3021=i8, var2596=c9, var2824=com.google.javascript.jscomp.parsing.parser.Identifiers, var420=$z4, var2557=$i11, var1806=$i12, var2620=$i13, var1953=$r1, var96=$i2, var998=$r18, var651=r19, var988=null_type, var1302=$i5, var1154=com.google.javascript.jscomp.parsing.parser.util.SourcePosition, var645=$r15, var1036=java.lang.Object, var281=$r14, var633="Invalid escape sequence", var1105=com.google.javascript.jscomp.parsing.parser.TokenType, var2388=$r16, var2767=com.google.javascript.jscomp.parsing.parser.Token, var1372=$r17}
; {com.google.javascript.jscomp.parsing.parser.Scanner=var3049, r0=var1604, i3=var3916, c6=var2093, $i0=var3061, i1=var370, $i10=var395, $z6=var77, $z5=var1657, z2=var1791, z3=var2537, z8=var2995, z7=var3606, $b7=var197, i8=var3021, c9=var2596, com.google.javascript.jscomp.parsing.parser.Identifiers=var2824, $z4=var420, $i11=var2557, $i12=var1806, $i13=var2620, $r1=var1953, $i2=var96, $r18=var998, r19=var651, null_type=var988, $i5=var1302, com.google.javascript.jscomp.parsing.parser.util.SourcePosition=var1154, $r15=var645, java.lang.Object=var1036, $r14=var281, "Invalid escape sequence"=var633, com.google.javascript.jscomp.parsing.parser.TokenType=var1105, $r16=var2388, com.google.javascript.jscomp.parsing.parser.Token=var2767, $r17=var1372}
;seq <java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.parsing.parser.Scanner;	i3 := @parameter0: int;	c6 := @parameter1: char;	$i0 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int index>;	i1 = $i0 - 1;	$i10 = (int) c6;	if $i10 != 92 goto $z6 = 0;	$z6 = 1;	$z5 = 1;	goto [?= z2 = $z5];	z2 = $z5;	z3 = 0;	z8 = 0;	z7 = 0;	if $z6 == 0 goto $b7 = 0;	$b7 = 1;	goto [?= i8 = $b7];	i8 = $b7;	c9 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: char peekChar()>();	$z4 = staticinvoke <com.google.javascript.jscomp.parsing.parser.Identifiers: boolean isIdentifierPart(char)>(c9);	if $z4 != 0 goto $i14 = (int) c9;	$i11 = (int) c9;	if $i11 == 92 goto $i14 = (int) c9;	$i12 = (int) c9;	if $i12 != 123 goto $i13 = (int) c9;	$i13 = (int) c9;	if $i13 != 125 goto $r1 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: java.lang.String contents>;	$r1 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: java.lang.String contents>;	$i2 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int index>;	$r18 = virtualinvoke $r1.<java.lang.String: java.lang.String substring(int,int)>(i1, $i2);	r19 = $r18;	if z2 == 0 goto $c4 = virtualinvoke r19.<java.lang.String: char charAt(int)>(0);	r19 = staticinvoke <com.google.javascript.jscomp.parsing.parser.Scanner: java.lang.String processUnicodeEscapes(java.lang.String)>($r18);	if r19 != null goto $c4 = virtualinvoke r19.<java.lang.String: char charAt(int)>(0);	$i5 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int index>;	$r15 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: com.google.javascript.jscomp.parsing.parser.util.SourcePosition getPosition(int)>($i5);	$r14 = newarray (java.lang.Object)[0];	virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: void reportError(com.google.javascript.jscomp.parsing.parser.util.SourcePosition,java.lang.String,java.lang.Object[])>($r15, "Invalid escape sequence", $r14);	$r16 = <com.google.javascript.jscomp.parsing.parser.TokenType: com.google.javascript.jscomp.parsing.parser.TokenType ERROR>;	$r17 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: com.google.javascript.jscomp.parsing.parser.Token createToken(com.google.javascript.jscomp.parsing.parser.TokenType,int)>($r16, i3);	return $r17
;block_num 12