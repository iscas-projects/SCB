(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var438 0)
(declare-sort var2789 0)
(declare-sort var1003 0)
(declare-sort var2107 0)
(declare-sort var85 0)
(declare-sort var803 0)
(declare-sort var1854 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun input/-659233613 (var438) var2789)
(declare-fun var2789_index/1058704789 (var2789) Int)
(declare-fun startCharIndex/-659233613 (var438) Int)
(declare-fun var2789_getCharPositionInLine/1772701881 (var2789) Int)
(declare-fun startCharPositionInLine/-659233613 (var438) Int)
(declare-fun consume/146832376 (var438) void)
(declare-fun c/-659233613 (var438) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1003-init () var1003)
(declare-fun cast-from-var2789-to-var2107 (var2789) var2107)
(declare-fun <init>/1096354019 (var1003 String Int Int var2107) void)
(declare-fun errMgr/-659233613 (var438) var85)
(declare-fun var2789_getSourceName/-286570653 (var2789) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var438_str/-1538286905 (Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun templateToken/-659233613 (var438) var803)
(declare-fun cast-from-var1003-to-var1854 (var1003) var1854)
(declare-fun lexerError/1046367260 (var85 String String var803 var1854) void)
(declare-fun delimiterStopChar/-659233613 (var438) Int)
(declare-fun match/-265621467 (var438 Int) void)
(declare-const null-var438 var438)
(declare-const var438-SKIP var803)
(declare-const var1812 var438) ; Statement: r0 := @this: org.stringtemplate.v4.compiler.STLexer 
(assert (not (= var1812 null-var438)))
(define-const var1009 var2789 (input/-659233613 var1812)) ; Statement: $r1 = r0.<org.stringtemplate.v4.compiler.STLexer: org.antlr.runtime.CharStream input> 
(define-const var3645 Int (var2789_index/1058704789 var1009)) ; Statement: $i0 = interfaceinvoke $r1.<org.antlr.runtime.CharStream: int index()>() 
(declare-const var1812!1 var438)
(assert (not (= var1812!1 null-var438)))
(assert (= (startCharIndex/-659233613 var1812!1) var3645)) ; Statement: r0.<org.stringtemplate.v4.compiler.STLexer: int startCharIndex> = $i0 
(define-const var1205 var2789 (input/-659233613 var1812!1)) ; Statement: $r2 = r0.<org.stringtemplate.v4.compiler.STLexer: org.antlr.runtime.CharStream input> 
(define-const var926 Int (var2789_getCharPositionInLine/1772701881 var1205)) ; Statement: $i1 = interfaceinvoke $r2.<org.antlr.runtime.CharStream: int getCharPositionInLine()>() 
(declare-const var1812!2 var438)
(assert (not (= var1812!2 null-var438)))
(assert (= (startCharPositionInLine/-659233613 var1812!2) var926)) ; Statement: r0.<org.stringtemplate.v4.compiler.STLexer: int startCharPositionInLine> = $i1 
(assert true)
;(assert (consume/146832376 var1812!2)) ; Statement: virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer: void consume()>() 

(declare-const var1812!3 var438)
(define-const var1052 Int (c/-659233613 var1812!3)) ; Statement: $c2 = r0.<org.stringtemplate.v4.compiler.STLexer: char c> 
(define-const var1071 Int (cast-from-Int-to-Int var1052)) ; Statement: $i9 = (int) $c2 
 ; Statement: if $i9 != 117 goto $c3 = r0.<org.stringtemplate.v4.compiler.STLexer: char c> 
(assert (not (= var1071 117))) ; Cond: $i9 != 117 
(define-const var3347 Int (c/-659233613 var1812!3)) ; Statement: $c3 = r0.<org.stringtemplate.v4.compiler.STLexer: char c> 
(define-const var565 Int (cast-from-Int-to-Int var3347)) ; Statement: $i10 = (int) $c3 
 ; Statement: lookupswitch($i10) {     case 32: goto r18 = " ";     case 92: goto virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer: void LINEBREAK()>();     case 110: goto r18 = "\n";     case 116: goto r18 = "\t";     default: goto $r21 = new org.antlr.runtime.NoViableAltException; } 
(assert (and (not (= var565 116)) (and (not (= var565 110)) (and (not (= var565 92)) (and (not (= var565 32)) true))))) ; Intersect: Negate: Cond: $i10 == 116   and Intersect: Negate: Cond: $i10 == 110   and Intersect: Negate: Cond: $i10 == 92   and Intersect: Negate: Cond: $i10 == 32   and Non Conditional    
(define-const var3182 var1003 var1003-init) ; Statement: $r21 = new org.antlr.runtime.NoViableAltException 
(define-const var2108 var2789 (input/-659233613 var1812!3)) ; Statement: $r5 = r0.<org.stringtemplate.v4.compiler.STLexer: org.antlr.runtime.CharStream input> 
(define-const var1430 var2107 (cast-from-var2789-to-var2107 var2108)) ; Statement: $r23 = (org.antlr.runtime.IntStream) $r5 
(assert true)
;(assert (<init>/1096354019 var3182 "" 0 0 var1430)) ; Statement: specialinvoke $r21.<org.antlr.runtime.NoViableAltException: void <init>(java.lang.String,int,int,org.antlr.runtime.IntStream)>("", 0, 0, $r23) 

(declare-const var3182!1 var1003)
(declare-const var2805 String)
(declare-const var1164 Int)
(declare-const var1164!1 Int)
(declare-const var1430!1 var2107)
(define-const var2567 var85 (errMgr/-659233613 var1812!3)) ; Statement: $r7 = r0.<org.stringtemplate.v4.compiler.STLexer: org.stringtemplate.v4.misc.ErrorManager errMgr> 
(define-const var694 var2789 (input/-659233613 var1812!3)) ; Statement: $r6 = r0.<org.stringtemplate.v4.compiler.STLexer: org.antlr.runtime.CharStream input> 
(define-const var3109 String (var2789_getSourceName/-286570653 var694)) ; Statement: $r15 = interfaceinvoke $r6.<org.antlr.runtime.CharStream: java.lang.String getSourceName()>() 
(define-const var60 String String-init) ; Statement: $r22 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var60)) ; Statement: specialinvoke $r22.<java.lang.StringBuilder: void <init>()>() 
(declare-const var60!1 String)
(assert (= var60!1 ""))
(assert true)
(define-const var3606 String (append/672562846 var60!1 "invalid escaped char: \u0027")) ; Statement: $r10 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invalid escaped char: \'") 
(declare-const var60!2 String)
(assert (= var60!2 (str.++ var60!1 "invalid escaped char: \u0027")))
(define-const var1288 Int (c/-659233613 var1812!3)) ; Statement: $c4 = r0.<org.stringtemplate.v4.compiler.STLexer: char c> 
(define-const var1512 Int (cast-from-Int-to-Int var1288)) ; Statement: $i11 = (int) $c4 
(define-const var2522 String (var438_str/-1538286905 var1512)) ; Statement: $r9 = staticinvoke <org.stringtemplate.v4.compiler.STLexer: java.lang.String str(int)>($i11) 
(assert true)
(define-const var2812 String (append/672562846 var3606 var2522)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3606!1 String)
(assert (= var3606!1 (str.++ var3606 var2522)))
(assert true)
(define-const var3125 String (append/672562846 var2812 "\u0027")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var2812!1 String)
(assert (= var2812!1 (str.++ var2812 "\u0027")))
(assert true)
(define-const var1360 String (toString/-2075883882 var3125)) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1749 var803 (templateToken/-659233613 var1812!3)) ; Statement: $r13 = r0.<org.stringtemplate.v4.compiler.STLexer: org.antlr.runtime.Token templateToken> 
(define-const var2084 var1854 (cast-from-var1003-to-var1854 var3182!1)) ; Statement: $r24 = (org.antlr.runtime.RecognitionException) $r21 
(assert true)
;(assert (lexerError/1046367260 var2567 var3109 var1360 var1749 var2084)) ; Statement: virtualinvoke $r7.<org.stringtemplate.v4.misc.ErrorManager: void lexerError(java.lang.String,java.lang.String,org.antlr.runtime.Token,org.antlr.runtime.RecognitionException)>($r15, $r14, $r13, $r24) 

(declare-const var2567!1 var85)
(declare-const var3109!1 String)
(declare-const var1360!1 String)
(declare-const var1749!1 var803)
(declare-const var2084!1 var1854)
(assert true)
;(assert (consume/146832376 var1812!3)) ; Statement: virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer: void consume()>() 

(declare-const var1812!4 var438)
(define-const var3359 Int (delimiterStopChar/-659233613 var1812!4)) ; Statement: $c5 = r0.<org.stringtemplate.v4.compiler.STLexer: char delimiterStopChar> 
(assert true)
;(assert (match/-265621467 var1812!4 var3359)) ; Statement: virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer: void match(char)>($c5) 

(declare-const var1812!5 var438)
(declare-const var3359!1 Int)
(define-const var87 var803 var438-SKIP) ; Statement: $r16 = <org.stringtemplate.v4.compiler.STLexer: org.antlr.runtime.Token SKIP> 
 ; Statement: return $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {input/-659233613=([org.stringtemplate.v4.compiler.STLexer], org.antlr.runtime.CharStream), var2789_index/1058704789=([org.antlr.runtime.CharStream], int), startCharIndex/-659233613=([org.stringtemplate.v4.compiler.STLexer], int), var2789_getCharPositionInLine/1772701881=([org.antlr.runtime.CharStream], int), startCharPositionInLine/-659233613=([org.stringtemplate.v4.compiler.STLexer], int), consume/146832376=([org.stringtemplate.v4.compiler.STLexer], void), c/-659233613=([org.stringtemplate.v4.compiler.STLexer], char), cast-from-Int-to-Int=([char], int), var1003-init=([], org.antlr.runtime.NoViableAltException), cast-from-var2789-to-var2107=([org.antlr.runtime.CharStream], org.antlr.runtime.IntStream), <init>/1096354019=([org.antlr.runtime.NoViableAltException, java.lang.String, int, int, org.antlr.runtime.IntStream], void), errMgr/-659233613=([org.stringtemplate.v4.compiler.STLexer], org.stringtemplate.v4.misc.ErrorManager), var2789_getSourceName/-286570653=([org.antlr.runtime.CharStream], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var438_str/-1538286905=([int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), templateToken/-659233613=([org.stringtemplate.v4.compiler.STLexer], org.antlr.runtime.Token), cast-from-var1003-to-var1854=([org.antlr.runtime.NoViableAltException], org.antlr.runtime.RecognitionException), lexerError/1046367260=([org.stringtemplate.v4.misc.ErrorManager, java.lang.String, java.lang.String, org.antlr.runtime.Token, org.antlr.runtime.RecognitionException], void), delimiterStopChar/-659233613=([org.stringtemplate.v4.compiler.STLexer], char), match/-265621467=([org.stringtemplate.v4.compiler.STLexer, char], void)}
; {var438=org.stringtemplate.v4.compiler.STLexer, var1812=r0, var2789=org.antlr.runtime.CharStream, var1009=$r1, var3645=$i0, var1205=$r2, var926=$i1, var1052=$c2, var1071=$i9, var3347=$c3, var565=$i10, var1003=org.antlr.runtime.NoViableAltException, var3182=$r21, var2108=$r5, var2107=org.antlr.runtime.IntStream, var1430=$r23, var2805="", var1164=0, var85=org.stringtemplate.v4.misc.ErrorManager, var2567=$r7, var694=$r6, var3109=$r15, var60=$r22, var3606=$r10, var1288=$c4, var1512=$i11, var2522=$r9, var2812=$r11, var3125=$r12, var1360=$r14, var803=org.antlr.runtime.Token, var1749=$r13, var1854=org.antlr.runtime.RecognitionException, var2084=$r24, var3359=$c5, var87=$r16}
; {org.stringtemplate.v4.compiler.STLexer=var438, r0=var1812, org.antlr.runtime.CharStream=var2789, $r1=var1009, $i0=var3645, $r2=var1205, $i1=var926, $c2=var1052, $i9=var1071, $c3=var3347, $i10=var565, org.antlr.runtime.NoViableAltException=var1003, $r21=var3182, $r5=var2108, org.antlr.runtime.IntStream=var2107, $r23=var1430, ""=var2805, 0=var1164, org.stringtemplate.v4.misc.ErrorManager=var85, $r7=var2567, $r6=var694, $r15=var3109, $r22=var60, $r10=var3606, $c4=var1288, $i11=var1512, $r9=var2522, $r11=var2812, $r12=var3125, $r14=var1360, org.antlr.runtime.Token=var803, $r13=var1749, org.antlr.runtime.RecognitionException=var1854, $r24=var2084, $c5=var3359, $r16=var87}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.stringtemplate.v4.compiler.STLexer;	$r1 = r0.<org.stringtemplate.v4.compiler.STLexer: org.antlr.runtime.CharStream input>;	$i0 = interfaceinvoke $r1.<org.antlr.runtime.CharStream: int index()>();	r0.<org.stringtemplate.v4.compiler.STLexer: int startCharIndex> = $i0;	$r2 = r0.<org.stringtemplate.v4.compiler.STLexer: org.antlr.runtime.CharStream input>;	$i1 = interfaceinvoke $r2.<org.antlr.runtime.CharStream: int getCharPositionInLine()>();	r0.<org.stringtemplate.v4.compiler.STLexer: int startCharPositionInLine> = $i1;	virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer: void consume()>();	$c2 = r0.<org.stringtemplate.v4.compiler.STLexer: char c>;	$i9 = (int) $c2;	if $i9 != 117 goto $c3 = r0.<org.stringtemplate.v4.compiler.STLexer: char c>;	$c3 = r0.<org.stringtemplate.v4.compiler.STLexer: char c>;	$i10 = (int) $c3;	lookupswitch($i10) {     case 32: goto r18 = " ";     case 92: goto virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer: void LINEBREAK()>();     case 110: goto r18 = "\n";     case 116: goto r18 = "\t";     default: goto $r21 = new org.antlr.runtime.NoViableAltException; };	$r21 = new org.antlr.runtime.NoViableAltException;	$r5 = r0.<org.stringtemplate.v4.compiler.STLexer: org.antlr.runtime.CharStream input>;	$r23 = (org.antlr.runtime.IntStream) $r5;	specialinvoke $r21.<org.antlr.runtime.NoViableAltException: void <init>(java.lang.String,int,int,org.antlr.runtime.IntStream)>("", 0, 0, $r23);	$r7 = r0.<org.stringtemplate.v4.compiler.STLexer: org.stringtemplate.v4.misc.ErrorManager errMgr>;	$r6 = r0.<org.stringtemplate.v4.compiler.STLexer: org.antlr.runtime.CharStream input>;	$r15 = interfaceinvoke $r6.<org.antlr.runtime.CharStream: java.lang.String getSourceName()>();	$r22 = new java.lang.StringBuilder;	specialinvoke $r22.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invalid escaped char: \'");	$c4 = r0.<org.stringtemplate.v4.compiler.STLexer: char c>;	$i11 = (int) $c4;	$r9 = staticinvoke <org.stringtemplate.v4.compiler.STLexer: java.lang.String str(int)>($i11);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$r13 = r0.<org.stringtemplate.v4.compiler.STLexer: org.antlr.runtime.Token templateToken>;	$r24 = (org.antlr.runtime.RecognitionException) $r21;	virtualinvoke $r7.<org.stringtemplate.v4.misc.ErrorManager: void lexerError(java.lang.String,java.lang.String,org.antlr.runtime.Token,org.antlr.runtime.RecognitionException)>($r15, $r14, $r13, $r24);	virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer: void consume()>();	$c5 = r0.<org.stringtemplate.v4.compiler.STLexer: char delimiterStopChar>;	virtualinvoke r0.<org.stringtemplate.v4.compiler.STLexer: void match(char)>($c5);	$r16 = <org.stringtemplate.v4.compiler.STLexer: org.antlr.runtime.Token SKIP>;	return $r16
;block_num 3