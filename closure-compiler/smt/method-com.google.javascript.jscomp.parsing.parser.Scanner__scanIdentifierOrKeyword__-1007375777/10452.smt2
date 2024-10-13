(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2396 0)
(declare-sort var987 0)
(declare-sort var2203 0)
(declare-sort var2784 0)
(declare-sort var1399 0)
(declare-sort var69 0)
(declare-sort var2598 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun index/-1834389046 (var2396) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun peekChar/-2022892458 (var2396) Int)
(declare-fun var987_isIdentifierPart/-790594859 (Int) Bool)
(declare-fun contents/-1834389046 (var2396) String)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun var2396_processUnicodeEscapes/-1554260635 (String) String)
(declare-fun getPosition/-1695732445 (var2396 Int) var2784)
(declare-fun arr-var1399-init () (Array Int var1399))
(declare-fun reportError/1084259189 (var2396 var2784 String (Array Int var1399)) void)
(declare-fun createToken/1083011389 (var2396 var69 Int) var2598)
(declare-const null-var2396 var2396)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var69-ERROR var69)
(declare-const var288 var2396) ; Statement: r0 := @this: com.google.javascript.jscomp.parsing.parser.Scanner 
(assert (not (= var288 null-var2396)))
(declare-const var2566 Int) ; Statement: i3 := @parameter0: int 
(assert (not (= var2566 null-Int)))
(declare-const var1248 Int) ; Statement: c6 := @parameter1: char 
(assert (not (= var1248 null-Int)))
(define-const var387 Int (index/-1834389046 var288)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int index> 
(define-const var2429 Int (- var387 1)) ; Statement: i1 = $i0 - 1 
(define-const var1237 Int (cast-from-Int-to-Int var1248)) ; Statement: $i10 = (int) c6 
 ; Statement: if $i10 != 92 goto $z6 = 0 
(assert (not (= var1237 92))) ; Cond: $i10 != 92 
(define-const var1777 Bool (ite (= 1 0) true false)) ; Statement: $z6 = 0 
(define-const var428 Bool (ite (= 1 0) true false)) ; Statement: $z5 = 0 
(assert true) ; Non Conditional
(define-const var3345 Bool var428) ; Statement: z2 = $z5 
(define-const var7 Bool (ite (= 1 0) true false)) ; Statement: z3 = 0 
(define-const var1578 Bool (ite (= 1 0) true false)) ; Statement: z8 = 0 
(define-const var1409 Bool (ite (= 1 0) true false)) ; Statement: z7 = 0 
 ; Statement: if $z6 == 0 goto $b7 = 0 
(assert (not (= (ite var1777 1 0) 0))) ; Negate: Cond: $z6 == 0  
(define-const var3554 Int 1) ; Statement: $b7 = 1 
 ; Statement: goto [?= i8 = $b7] 
(assert true) ; Non Conditional
(define-const var3880 Int var3554) ; Statement: i8 = $b7 
(assert true)
(define-const var2760 Int (peekChar/-2022892458 var288)) ; Statement: c9 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: char peekChar()>() 
(assert true) ; Non Conditional
(define-const var2435 Bool (var987_isIdentifierPart/-790594859 var2760)) ; Statement: $z4 = staticinvoke <com.google.javascript.jscomp.parsing.parser.Identifiers: boolean isIdentifierPart(char)>(c9) 
 ; Statement: if $z4 != 0 goto $i14 = (int) c9 
(assert (not (not (= (ite var2435 1 0) 0)))) ; Negate: Cond: $z4 != 0  
(define-const var3342 Int (cast-from-Int-to-Int var2760)) ; Statement: $i11 = (int) c9 
 ; Statement: if $i11 == 92 goto $i14 = (int) c9 
(assert (not (= var3342 92))) ; Negate: Cond: $i11 == 92  
(define-const var3757 Int (cast-from-Int-to-Int var2760)) ; Statement: $i12 = (int) c9 
 ; Statement: if $i12 != 123 goto $i13 = (int) c9 
(assert (not (= var3757 123))) ; Cond: $i12 != 123 
(define-const var770 Int (cast-from-Int-to-Int var2760)) ; Statement: $i13 = (int) c9 
 ; Statement: if $i13 != 125 goto $r1 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: java.lang.String contents> 
(assert (not (= var770 125))) ; Cond: $i13 != 125 
(define-const var3756 String (contents/-1834389046 var288)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: java.lang.String contents> 
(define-const var2794 Int (index/-1834389046 var288)) ; Statement: $i2 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int index> 
(assert (and true (and (>= var2429 0) (>= (str.len var3756) var2794) (>= var2794 var2429))))
(define-const var3171 String (substring/-1240304868 var3756 var2429 var2794)) ; Statement: $r18 = virtualinvoke $r1.<java.lang.String: java.lang.String substring(int,int)>(i1, $i2) 
(define-const var2505 String var3171) ; Statement: r19 = $r18 
 ; Statement: if z2 == 0 goto $c4 = virtualinvoke r19.<java.lang.String: char charAt(int)>(0) 
(assert (not (= (ite var3345 1 0) 0))) ; Negate: Cond: z2 == 0  
(define-const var2505!1 String (var2396_processUnicodeEscapes/-1554260635 var3171)) ; Statement: r19 = staticinvoke <com.google.javascript.jscomp.parsing.parser.Scanner: java.lang.String processUnicodeEscapes(java.lang.String)>($r18) 
 ; Statement: if r19 != null goto $c4 = virtualinvoke r19.<java.lang.String: char charAt(int)>(0) 
(assert (not (not (= var2505!1 null-String)))) ; Negate: Cond: r19 != null  
(define-const var1025 Int (index/-1834389046 var288)) ; Statement: $i5 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int index> 
(assert true)
(define-const var3919 var2784 (getPosition/-1695732445 var288 var1025)) ; Statement: $r15 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: com.google.javascript.jscomp.parsing.parser.util.SourcePosition getPosition(int)>($i5) 
(define-const var700 (Array Int var1399) arr-var1399-init) ; Statement: $r14 = newarray (java.lang.Object)[0] 
(assert true)
;(assert (reportError/1084259189 var288 var3919 "Invalid escape sequence" var700)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: void reportError(com.google.javascript.jscomp.parsing.parser.util.SourcePosition,java.lang.String,java.lang.Object[])>($r15, "Invalid escape sequence", $r14) 

(declare-const var288!1 var2396)
(declare-const var3919!1 var2784)
(declare-const var2259 String)
(declare-const var700!1 (Array Int var1399))
(define-const var1710 var69 var69-ERROR) ; Statement: $r16 = <com.google.javascript.jscomp.parsing.parser.TokenType: com.google.javascript.jscomp.parsing.parser.TokenType ERROR> 
(assert true)
(define-const var1912 var2598 (createToken/1083011389 var288!1 var1710 var2566)) ; Statement: $r17 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: com.google.javascript.jscomp.parsing.parser.Token createToken(com.google.javascript.jscomp.parsing.parser.TokenType,int)>($r16, i3) 
 ; Statement: return $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {index/-1834389046=([com.google.javascript.jscomp.parsing.parser.Scanner], int), cast-from-Int-to-Int=([char], int), peekChar/-2022892458=([com.google.javascript.jscomp.parsing.parser.Scanner], char), var987_isIdentifierPart/-790594859=([char], boolean), contents/-1834389046=([com.google.javascript.jscomp.parsing.parser.Scanner], java.lang.String), substring/-1240304868=([java.lang.String, int, int], java.lang.String), var2396_processUnicodeEscapes/-1554260635=([java.lang.String], java.lang.String), getPosition/-1695732445=([com.google.javascript.jscomp.parsing.parser.Scanner, int], com.google.javascript.jscomp.parsing.parser.util.SourcePosition), arr-var1399-init=([], java.lang.Object[]), reportError/1084259189=([com.google.javascript.jscomp.parsing.parser.Scanner, com.google.javascript.jscomp.parsing.parser.util.SourcePosition, java.lang.String, java.lang.Object[]], void), createToken/1083011389=([com.google.javascript.jscomp.parsing.parser.Scanner, com.google.javascript.jscomp.parsing.parser.TokenType, int], com.google.javascript.jscomp.parsing.parser.Token)}
; {var2396=com.google.javascript.jscomp.parsing.parser.Scanner, var288=r0, var2566=i3, var1248=c6, var387=$i0, var2429=i1, var1237=$i10, var1777=$z6, var428=$z5, var3345=z2, var7=z3, var1578=z8, var1409=z7, var3554=$b7, var3880=i8, var2760=c9, var987=com.google.javascript.jscomp.parsing.parser.Identifiers, var2435=$z4, var3342=$i11, var3757=$i12, var770=$i13, var3756=$r1, var2794=$i2, var3171=$r18, var2505=r19, var2203=null_type, var1025=$i5, var2784=com.google.javascript.jscomp.parsing.parser.util.SourcePosition, var3919=$r15, var1399=java.lang.Object, var700=$r14, var2259="Invalid escape sequence", var69=com.google.javascript.jscomp.parsing.parser.TokenType, var1710=$r16, var2598=com.google.javascript.jscomp.parsing.parser.Token, var1912=$r17}
; {com.google.javascript.jscomp.parsing.parser.Scanner=var2396, r0=var288, i3=var2566, c6=var1248, $i0=var387, i1=var2429, $i10=var1237, $z6=var1777, $z5=var428, z2=var3345, z3=var7, z8=var1578, z7=var1409, $b7=var3554, i8=var3880, c9=var2760, com.google.javascript.jscomp.parsing.parser.Identifiers=var987, $z4=var2435, $i11=var3342, $i12=var3757, $i13=var770, $r1=var3756, $i2=var2794, $r18=var3171, r19=var2505, null_type=var2203, $i5=var1025, com.google.javascript.jscomp.parsing.parser.util.SourcePosition=var2784, $r15=var3919, java.lang.Object=var1399, $r14=var700, "Invalid escape sequence"=var2259, com.google.javascript.jscomp.parsing.parser.TokenType=var69, $r16=var1710, com.google.javascript.jscomp.parsing.parser.Token=var2598, $r17=var1912}
;seq <java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.parsing.parser.Scanner;	i3 := @parameter0: int;	c6 := @parameter1: char;	$i0 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int index>;	i1 = $i0 - 1;	$i10 = (int) c6;	if $i10 != 92 goto $z6 = 0;	$z6 = 0;	$z5 = 0;	z2 = $z5;	z3 = 0;	z8 = 0;	z7 = 0;	if $z6 == 0 goto $b7 = 0;	$b7 = 1;	goto [?= i8 = $b7];	i8 = $b7;	c9 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: char peekChar()>();	$z4 = staticinvoke <com.google.javascript.jscomp.parsing.parser.Identifiers: boolean isIdentifierPart(char)>(c9);	if $z4 != 0 goto $i14 = (int) c9;	$i11 = (int) c9;	if $i11 == 92 goto $i14 = (int) c9;	$i12 = (int) c9;	if $i12 != 123 goto $i13 = (int) c9;	$i13 = (int) c9;	if $i13 != 125 goto $r1 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: java.lang.String contents>;	$r1 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: java.lang.String contents>;	$i2 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int index>;	$r18 = virtualinvoke $r1.<java.lang.String: java.lang.String substring(int,int)>(i1, $i2);	r19 = $r18;	if z2 == 0 goto $c4 = virtualinvoke r19.<java.lang.String: char charAt(int)>(0);	r19 = staticinvoke <com.google.javascript.jscomp.parsing.parser.Scanner: java.lang.String processUnicodeEscapes(java.lang.String)>($r18);	if r19 != null goto $c4 = virtualinvoke r19.<java.lang.String: char charAt(int)>(0);	$i5 = r0.<com.google.javascript.jscomp.parsing.parser.Scanner: int index>;	$r15 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: com.google.javascript.jscomp.parsing.parser.util.SourcePosition getPosition(int)>($i5);	$r14 = newarray (java.lang.Object)[0];	virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: void reportError(com.google.javascript.jscomp.parsing.parser.util.SourcePosition,java.lang.String,java.lang.Object[])>($r15, "Invalid escape sequence", $r14);	$r16 = <com.google.javascript.jscomp.parsing.parser.TokenType: com.google.javascript.jscomp.parsing.parser.TokenType ERROR>;	$r17 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.parser.Scanner: com.google.javascript.jscomp.parsing.parser.Token createToken(com.google.javascript.jscomp.parsing.parser.TokenType,int)>($r16, i3);	return $r17
;block_num 12