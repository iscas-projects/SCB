(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var966 0)
(declare-sort var3390 0)
(declare-sort var1231 0)
(declare-sort var3682 0)
(declare-sort var1060 0)
(declare-sort var2478 0)
(declare-sort var2452 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun match/-265621467 (var966 Int) void)
(declare-fun c/-659233613 (var966) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3390-init () var3390)
(declare-fun input/-659233613 (var966) var1231)
(declare-fun cast-from-var1231-to-var3682 (var1231) var3682)
(declare-fun <init>/1093968374 (var3390 Int var3682) void)
(declare-fun var1231_getLine/27683965 (var1231) Int)
(declare-fun cast-from-var3390-to-var1060 (var3390) var1060)
(declare-fun line/53134009 (var1060) Int)
(declare-fun var1231_getCharPositionInLine/1772701881 (var1231) Int)
(declare-fun charPositionInLine/53134009 (var1060) Int)
(declare-fun errMgr/-659233613 (var966) var2478)
(declare-fun var1231_getSourceName/-286570653 (var1231) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun startLine/-659233613 (var966) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun startCharPositionInLine/-659233613 (var966) Int)
(declare-fun delimiterStopChar/-659233613 (var966) Int)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun templateToken/-659233613 (var966) var2452)
(declare-fun lexerError/1046367260 (var2478 String String var2452 var1060) void)
(declare-fun consume/146832376 (var966) void)
(declare-fun newToken/-2113678158 (var966 Int) var2452)
(declare-const null-var966 var966)
(declare-const null-var1060 var1060)
(declare-const var1313 var966) ; Statement: r0 := @this: org.stringtemplate.v4.compiler.STLexer 
(assert (not (= var1313 null-var966)))
(assert true)
;(assert (match/-265621467 var1313 33)) ; Statement: virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer: void match(char)>(33) 

(declare-const var1313!1 var966)
(declare-const var3550 Int)
(assert true) ; Non Conditional
(define-const var842 Int (c/-659233613 var1313!1)) ; Statement: $c0 = r0.<org.stringtemplate.v4.compiler.STLexer: char c> 
(define-const var1259 Int (cast-from-Int-to-Int var842)) ; Statement: $i9 = (int) $c0 
 ; Statement: if $i9 != 33 goto $c1 = r0.<org.stringtemplate.v4.compiler.STLexer: char c> 
(assert (not (= var1259 33))) ; Cond: $i9 != 33 
(define-const var157 Int (c/-659233613 var1313!1)) ; Statement: $c1 = r0.<org.stringtemplate.v4.compiler.STLexer: char c> 
(define-const var3195 Int (cast-from-Int-to-Int var157)) ; Statement: $i11 = (int) $c1 
(define-const var2623 Int (cast-from-Int-to-Int 65535)) ; Statement: $i13 = (int) 65535 
 ; Statement: if $i11 != $i13 goto virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer: void consume()>() 
(assert (not (not (= var3195 var2623)))) ; Negate: Cond: $i11 != $i13  
(define-const var2714 var3390 var3390-init) ; Statement: $r20 = new org.antlr.runtime.MismatchedTokenException 
(define-const var171 var1231 (input/-659233613 var1313!1)) ; Statement: $r2 = r0.<org.stringtemplate.v4.compiler.STLexer: org.antlr.runtime.CharStream input> 
(define-const var1928 var3682 (cast-from-var1231-to-var3682 var171)) ; Statement: $r22 = (org.antlr.runtime.IntStream) $r2 
(assert true)
;(assert (<init>/1093968374 var2714 33 var1928)) ; Statement: specialinvoke $r20.<org.antlr.runtime.MismatchedTokenException: void <init>(int,org.antlr.runtime.IntStream)>(33, $r22) 

(declare-const var2714!1 var3390)
(declare-const var3550!1 Int)
(declare-const var1928!1 var3682)
(define-const var2922 var1231 (input/-659233613 var1313!1)) ; Statement: $r3 = r0.<org.stringtemplate.v4.compiler.STLexer: org.antlr.runtime.CharStream input> 
(define-const var3499 Int (var1231_getLine/27683965 var2922)) ; Statement: $i2 = interfaceinvoke $r3.<org.antlr.runtime.CharStream: int getLine()>() 
(define-const var1930 var1060 (cast-from-var3390-to-var1060 var2714!1)) ; Statement: $r23 = (org.antlr.runtime.RecognitionException) $r20 
(declare-const var1930!1 var1060)
(assert (not (= var1930!1 null-var1060)))
(assert (= (line/53134009 var1930!1) var3499)) ; Statement: $r23.<org.antlr.runtime.RecognitionException: int line> = $i2 
(define-const var1736 var1231 (input/-659233613 var1313!1)) ; Statement: $r4 = r0.<org.stringtemplate.v4.compiler.STLexer: org.antlr.runtime.CharStream input> 
(define-const var3280 Int (var1231_getCharPositionInLine/1772701881 var1736)) ; Statement: $i3 = interfaceinvoke $r4.<org.antlr.runtime.CharStream: int getCharPositionInLine()>() 
(define-const var1117 var1060 (cast-from-var3390-to-var1060 var2714!1)) ; Statement: $r24 = (org.antlr.runtime.RecognitionException) $r20 
(declare-const var1117!1 var1060)
(assert (not (= var1117!1 null-var1060)))
(assert (= (charPositionInLine/53134009 var1117!1) var3280)) ; Statement: $r24.<org.antlr.runtime.RecognitionException: int charPositionInLine> = $i3 
(define-const var1034 var2478 (errMgr/-659233613 var1313!1)) ; Statement: $r6 = r0.<org.stringtemplate.v4.compiler.STLexer: org.stringtemplate.v4.misc.ErrorManager errMgr> 
(define-const var3022 var1231 (input/-659233613 var1313!1)) ; Statement: $r5 = r0.<org.stringtemplate.v4.compiler.STLexer: org.antlr.runtime.CharStream input> 
(define-const var3444 String (var1231_getSourceName/-286570653 var3022)) ; Statement: $r17 = interfaceinvoke $r5.<org.antlr.runtime.CharStream: java.lang.String getSourceName()>() 
(define-const var1123 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1123)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1123!1 String)
(assert (= var1123!1 ""))
(assert true)
(define-const var1140 String (append/672562846 var1123!1 "Nonterminated comment starting at ")) ; Statement: $r8 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Nonterminated comment starting at ") 
(declare-const var1123!2 String)
(assert (= var1123!2 (str.++ var1123!1 "Nonterminated comment starting at ")))
(define-const var3326 Int (startLine/-659233613 var1313!1)) ; Statement: $i4 = r0.<org.stringtemplate.v4.compiler.STLexer: int startLine> 
(assert true)
(define-const var1473 String (append/-1001720160 var1140 var3326)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4) 
(declare-const var1140!1 String)
(assert (str.prefixof var1140 var1140!1))
(assert true)
(define-const var2240 String (append/672562846 var1473 ":")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var1473!1 String)
(assert (= var1473!1 (str.++ var1473 ":")))
(define-const var949 Int (startCharPositionInLine/-659233613 var1313!1)) ; Statement: $i5 = r0.<org.stringtemplate.v4.compiler.STLexer: int startCharPositionInLine> 
(assert true)
(define-const var2769 String (append/-1001720160 var2240 var949)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i5) 
(declare-const var2240!1 String)
(assert (str.prefixof var2240 var2240!1))
(assert true)
(define-const var1941 String (append/672562846 var2769 ": \u0027!")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": \'!") 
(declare-const var2769!1 String)
(assert (= var2769!1 (str.++ var2769 ": \u0027!")))
(define-const var2128 Int (delimiterStopChar/-659233613 var1313!1)) ; Statement: $c6 = r0.<org.stringtemplate.v4.compiler.STLexer: char delimiterStopChar> 
(assert true)
(define-const var1656 String (append/-1166366385 var1941 var2128)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c6) 
(declare-const var1941!1 String)
(assert (str.prefixof var1941 var1941!1))
(assert true)
(define-const var2980 String (append/672562846 var1656 "\u0027 missing")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' missing") 
(declare-const var1656!1 String)
(assert (= var1656!1 (str.++ var1656 "\u0027 missing")))
(assert true)
(define-const var3015 String (toString/-2075883882 var2980)) ; Statement: $r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2676 var2452 (templateToken/-659233613 var1313!1)) ; Statement: $r15 = r0.<org.stringtemplate.v4.compiler.STLexer: org.antlr.runtime.Token templateToken> 
(define-const var1727 var1060 (cast-from-var3390-to-var1060 var2714!1)) ; Statement: $r25 = (org.antlr.runtime.RecognitionException) $r20 
(assert true)
;(assert (lexerError/1046367260 var1034 var3444 var3015 var2676 var1727)) ; Statement: virtualinvoke $r6.<org.stringtemplate.v4.misc.ErrorManager: void lexerError(java.lang.String,java.lang.String,org.antlr.runtime.Token,org.antlr.runtime.RecognitionException)>($r17, $r16, $r15, $r25) 

(declare-const var1034!1 var2478)
(declare-const var3444!1 String)
(declare-const var3015!1 String)
(declare-const var2676!1 var2452)
(declare-const var1727!1 var1060)
 ; Statement: goto [?= virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer: void consume()>()] 
(assert true) ; Non Conditional
(assert true)
;(assert (consume/146832376 var1313!1)) ; Statement: virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer: void consume()>() 

(declare-const var1313!2 var966)
(assert true)
;(assert (consume/146832376 var1313!2)) ; Statement: virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer: void consume()>() 

(declare-const var1313!3 var966)
(assert true)
(define-const var271 var2452 (newToken/-2113678158 var1313!3 37)) ; Statement: $r18 = virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer: org.antlr.runtime.Token newToken(int)>(37) 
 ; Statement: return $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {match/-265621467=([org.stringtemplate.v4.compiler.STLexer, char], void), c/-659233613=([org.stringtemplate.v4.compiler.STLexer], char), cast-from-Int-to-Int=([char], int), var3390-init=([], org.antlr.runtime.MismatchedTokenException), input/-659233613=([org.stringtemplate.v4.compiler.STLexer], org.antlr.runtime.CharStream), cast-from-var1231-to-var3682=([org.antlr.runtime.CharStream], org.antlr.runtime.IntStream), <init>/1093968374=([org.antlr.runtime.MismatchedTokenException, int, org.antlr.runtime.IntStream], void), var1231_getLine/27683965=([org.antlr.runtime.CharStream], int), cast-from-var3390-to-var1060=([org.antlr.runtime.MismatchedTokenException], org.antlr.runtime.RecognitionException), line/53134009=([org.antlr.runtime.RecognitionException], int), var1231_getCharPositionInLine/1772701881=([org.antlr.runtime.CharStream], int), charPositionInLine/53134009=([org.antlr.runtime.RecognitionException], int), errMgr/-659233613=([org.stringtemplate.v4.compiler.STLexer], org.stringtemplate.v4.misc.ErrorManager), var1231_getSourceName/-286570653=([org.antlr.runtime.CharStream], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), startLine/-659233613=([org.stringtemplate.v4.compiler.STLexer], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), startCharPositionInLine/-659233613=([org.stringtemplate.v4.compiler.STLexer], int), delimiterStopChar/-659233613=([org.stringtemplate.v4.compiler.STLexer], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), templateToken/-659233613=([org.stringtemplate.v4.compiler.STLexer], org.antlr.runtime.Token), lexerError/1046367260=([org.stringtemplate.v4.misc.ErrorManager, java.lang.String, java.lang.String, org.antlr.runtime.Token, org.antlr.runtime.RecognitionException], void), consume/146832376=([org.stringtemplate.v4.compiler.STLexer], void), newToken/-2113678158=([org.stringtemplate.v4.compiler.STLexer, int], org.antlr.runtime.Token)}
; {var966=org.stringtemplate.v4.compiler.STLexer, var1313=r0, var3550=33, var842=$c0, var1259=$i9, var157=$c1, var3195=$i11, var2623=$i13, var3390=org.antlr.runtime.MismatchedTokenException, var2714=$r20, var1231=org.antlr.runtime.CharStream, var171=$r2, var3682=org.antlr.runtime.IntStream, var1928=$r22, var2922=$r3, var3499=$i2, var1060=org.antlr.runtime.RecognitionException, var1930=$r23, var1736=$r4, var3280=$i3, var1117=$r24, var2478=org.stringtemplate.v4.misc.ErrorManager, var1034=$r6, var3022=$r5, var3444=$r17, var1123=$r21, var1140=$r8, var3326=$i4, var1473=$r9, var2240=$r10, var949=$i5, var2769=$r11, var1941=$r12, var2128=$c6, var1656=$r13, var2980=$r14, var3015=$r16, var2452=org.antlr.runtime.Token, var2676=$r15, var1727=$r25, var271=$r18}
; {org.stringtemplate.v4.compiler.STLexer=var966, r0=var1313, 33=var3550, $c0=var842, $i9=var1259, $c1=var157, $i11=var3195, $i13=var2623, org.antlr.runtime.MismatchedTokenException=var3390, $r20=var2714, org.antlr.runtime.CharStream=var1231, $r2=var171, org.antlr.runtime.IntStream=var3682, $r22=var1928, $r3=var2922, $i2=var3499, org.antlr.runtime.RecognitionException=var1060, $r23=var1930, $r4=var1736, $i3=var3280, $r24=var1117, org.stringtemplate.v4.misc.ErrorManager=var2478, $r6=var1034, $r5=var3022, $r17=var3444, $r21=var1123, $r8=var1140, $i4=var3326, $r9=var1473, $r10=var2240, $i5=var949, $r11=var2769, $r12=var1941, $c6=var2128, $r13=var1656, $r14=var2980, $r16=var3015, org.antlr.runtime.Token=var2452, $r15=var2676, $r25=var1727, $r18=var271}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.stringtemplate.v4.compiler.STLexer;	virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer: void match(char)>(33);	$c0 = r0.<org.stringtemplate.v4.compiler.STLexer: char c>;	$i9 = (int) $c0;	if $i9 != 33 goto $c1 = r0.<org.stringtemplate.v4.compiler.STLexer: char c>;	$c1 = r0.<org.stringtemplate.v4.compiler.STLexer: char c>;	$i11 = (int) $c1;	$i13 = (int) 65535;	if $i11 != $i13 goto virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer: void consume()>();	$r20 = new org.antlr.runtime.MismatchedTokenException;	$r2 = r0.<org.stringtemplate.v4.compiler.STLexer: org.antlr.runtime.CharStream input>;	$r22 = (org.antlr.runtime.IntStream) $r2;	specialinvoke $r20.<org.antlr.runtime.MismatchedTokenException: void <init>(int,org.antlr.runtime.IntStream)>(33, $r22);	$r3 = r0.<org.stringtemplate.v4.compiler.STLexer: org.antlr.runtime.CharStream input>;	$i2 = interfaceinvoke $r3.<org.antlr.runtime.CharStream: int getLine()>();	$r23 = (org.antlr.runtime.RecognitionException) $r20;	$r23.<org.antlr.runtime.RecognitionException: int line> = $i2;	$r4 = r0.<org.stringtemplate.v4.compiler.STLexer: org.antlr.runtime.CharStream input>;	$i3 = interfaceinvoke $r4.<org.antlr.runtime.CharStream: int getCharPositionInLine()>();	$r24 = (org.antlr.runtime.RecognitionException) $r20;	$r24.<org.antlr.runtime.RecognitionException: int charPositionInLine> = $i3;	$r6 = r0.<org.stringtemplate.v4.compiler.STLexer: org.stringtemplate.v4.misc.ErrorManager errMgr>;	$r5 = r0.<org.stringtemplate.v4.compiler.STLexer: org.antlr.runtime.CharStream input>;	$r17 = interfaceinvoke $r5.<org.antlr.runtime.CharStream: java.lang.String getSourceName()>();	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Nonterminated comment starting at ");	$i4 = r0.<org.stringtemplate.v4.compiler.STLexer: int startLine>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i4);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$i5 = r0.<org.stringtemplate.v4.compiler.STLexer: int startCharPositionInLine>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i5);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": \'!");	$c6 = r0.<org.stringtemplate.v4.compiler.STLexer: char delimiterStopChar>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c6);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' missing");	$r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$r15 = r0.<org.stringtemplate.v4.compiler.STLexer: org.antlr.runtime.Token templateToken>;	$r25 = (org.antlr.runtime.RecognitionException) $r20;	virtualinvoke $r6.<org.stringtemplate.v4.misc.ErrorManager: void lexerError(java.lang.String,java.lang.String,org.antlr.runtime.Token,org.antlr.runtime.RecognitionException)>($r17, $r16, $r15, $r25);	goto [?= virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer: void consume()>()];	virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer: void consume()>();	virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer: void consume()>();	$r18 = virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer: org.antlr.runtime.Token newToken(int)>(37);	return $r18
;block_num 5