(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2868 0)
(declare-sort var2865 0)
(declare-sort var2426 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jjmatchedKind/1964309570 (var2868) Int)
(declare-fun image/1964309570 (var2868) String)
(declare-fun input_stream/1964309570 (var2868) var2426)
(declare-fun jjimageLen/1964309570 (var2868) Int)
(declare-fun jjmatchedPos/1964309570 (var2868) Int)
(declare-fun lengthOfMatch/1964309570 (var2868) Int)
(declare-fun GetSuffix/-1031269374 (var2426 Int) (Array Int Int))
(declare-fun append/109888945 (String (Array Int Int)) String)
(declare-fun restoreBeginLineCol/1410905204 (var2868) void)
(declare-fun backup/649253219 (var2426 Int) void)
(declare-const null-var2868 var2868)
(declare-const null-var2865 var2865)
(declare-const var1491 var2868) ; Statement: r0 := @this: org.javacc.parser.JavaCCParserTokenManager 
(assert (not (= var1491 null-var2868)))
(declare-const var3812 var2865) ; Statement: r5 := @parameter0: org.javacc.parser.Token 
(assert (not (= var3812 null-var2865)))
(define-const var2695 Int (jjmatchedKind/1964309570 var1491)) ; Statement: $i0 = r0.<org.javacc.parser.JavaCCParserTokenManager: int jjmatchedKind> 
 ; Statement: lookupswitch($i0) {     case 19: goto $r1 = r0.<org.javacc.parser.JavaCCParserTokenManager: java.lang.StringBuilder image>;     default: goto return; } 
(assert (and (= var2695 19) true)) ; Intersect: Cond: $i0 == 19  and Non Conditional 
(define-const var2206 String (image/1964309570 var1491)) ; Statement: $r1 = r0.<org.javacc.parser.JavaCCParserTokenManager: java.lang.StringBuilder image> 
(define-const var3835 var2426 (input_stream/1964309570 var1491)) ; Statement: $r2 = r0.<org.javacc.parser.JavaCCParserTokenManager: org.javacc.parser.JavaCharStream input_stream> 
(define-const var1618 Int (jjimageLen/1964309570 var1491)) ; Statement: $i3 = r0.<org.javacc.parser.JavaCCParserTokenManager: int jjimageLen> 
(define-const var960 Int (jjmatchedPos/1964309570 var1491)) ; Statement: $i1 = r0.<org.javacc.parser.JavaCCParserTokenManager: int jjmatchedPos> 
(define-const var2086 Int (+ var960 1)) ; Statement: $i2 = $i1 + 1 
(declare-const var1491!1 var2868)
(assert (not (= var1491!1 null-var2868)))
(assert (= (lengthOfMatch/1964309570 var1491!1) var2086)) ; Statement: r0.<org.javacc.parser.JavaCCParserTokenManager: int lengthOfMatch> = $i2 
(define-const var3765 Int (+ var1618 var2086)) ; Statement: $i4 = $i3 + $i2 
(assert true)
(define-const var3 (Array Int Int) (GetSuffix/-1031269374 var3835 var3765)) ; Statement: $r3 = virtualinvoke $r2.<org.javacc.parser.JavaCharStream: char[] GetSuffix(int)>($i4) 
(assert true)
;(assert (append/109888945 var2206 var3)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char[])>($r3) 
(declare-const var2206!1 String)
(assert (str.prefixof var2206 var2206!1))
(assert true)
;(assert (restoreBeginLineCol/1410905204 var1491!1)) ; Statement: virtualinvoke r0.<org.javacc.parser.JavaCCParserTokenManager: void restoreBeginLineCol()>() 

(declare-const var1491!2 var2868)
(define-const var2336 var2426 (input_stream/1964309570 var1491!2)) ; Statement: $r4 = r0.<org.javacc.parser.JavaCCParserTokenManager: org.javacc.parser.JavaCharStream input_stream> 
(assert true)
;(assert (backup/649253219 var2336 1)) ; Statement: virtualinvoke $r4.<org.javacc.parser.JavaCharStream: void backup(int)>(1) 

(declare-const var2336!1 var2426)
(declare-const var2331 Int)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {jjmatchedKind/1964309570=([org.javacc.parser.JavaCCParserTokenManager], int), image/1964309570=([org.javacc.parser.JavaCCParserTokenManager], java.lang.StringBuilder), input_stream/1964309570=([org.javacc.parser.JavaCCParserTokenManager], org.javacc.parser.JavaCharStream), jjimageLen/1964309570=([org.javacc.parser.JavaCCParserTokenManager], int), jjmatchedPos/1964309570=([org.javacc.parser.JavaCCParserTokenManager], int), lengthOfMatch/1964309570=([org.javacc.parser.JavaCCParserTokenManager], int), GetSuffix/-1031269374=([org.javacc.parser.JavaCharStream, int], char[]), append/109888945=([java.lang.StringBuilder, char[]], java.lang.StringBuilder), restoreBeginLineCol/1410905204=([org.javacc.parser.JavaCCParserTokenManager], void), backup/649253219=([org.javacc.parser.JavaCharStream, int], void)}
; {var2868=org.javacc.parser.JavaCCParserTokenManager, var1491=r0, var2865=org.javacc.parser.Token, var3812=r5, var2695=$i0, var2206=$r1, var2426=org.javacc.parser.JavaCharStream, var3835=$r2, var1618=$i3, var960=$i1, var2086=$i2, var3765=$i4, var3=$r3, var2336=$r4, var2331=1}
; {org.javacc.parser.JavaCCParserTokenManager=var2868, r0=var1491, org.javacc.parser.Token=var2865, r5=var3812, $i0=var2695, $r1=var2206, org.javacc.parser.JavaCharStream=var2426, $r2=var3835, $i3=var1618, $i1=var960, $i2=var2086, $i4=var3765, $r3=var3, $r4=var2336, 1=var2331}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char[])>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char[])>": 1}
;stmts r0 := @this: org.javacc.parser.JavaCCParserTokenManager;	r5 := @parameter0: org.javacc.parser.Token;	$i0 = r0.<org.javacc.parser.JavaCCParserTokenManager: int jjmatchedKind>;	lookupswitch($i0) {     case 19: goto $r1 = r0.<org.javacc.parser.JavaCCParserTokenManager: java.lang.StringBuilder image>;     default: goto return; };	$r1 = r0.<org.javacc.parser.JavaCCParserTokenManager: java.lang.StringBuilder image>;	$r2 = r0.<org.javacc.parser.JavaCCParserTokenManager: org.javacc.parser.JavaCharStream input_stream>;	$i3 = r0.<org.javacc.parser.JavaCCParserTokenManager: int jjimageLen>;	$i1 = r0.<org.javacc.parser.JavaCCParserTokenManager: int jjmatchedPos>;	$i2 = $i1 + 1;	r0.<org.javacc.parser.JavaCCParserTokenManager: int lengthOfMatch> = $i2;	$i4 = $i3 + $i2;	$r3 = virtualinvoke $r2.<org.javacc.parser.JavaCharStream: char[] GetSuffix(int)>($i4);	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char[])>($r3);	virtualinvoke r0.<org.javacc.parser.JavaCCParserTokenManager: void restoreBeginLineCol()>();	$r4 = r0.<org.javacc.parser.JavaCCParserTokenManager: org.javacc.parser.JavaCharStream input_stream>;	virtualinvoke $r4.<org.javacc.parser.JavaCharStream: void backup(int)>(1);	goto [?= return];	return
;block_num 3