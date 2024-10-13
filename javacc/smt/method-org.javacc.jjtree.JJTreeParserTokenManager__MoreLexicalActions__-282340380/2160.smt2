(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2920 0)
(declare-sort var2691 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jjimageLen/-1450700737 (var2920) Int)
(declare-fun jjmatchedPos/-1450700737 (var2920) Int)
(declare-fun lengthOfMatch/-1450700737 (var2920) Int)
(declare-fun jjmatchedKind/-1450700737 (var2920) Int)
(declare-fun image/-1450700737 (var2920) String)
(declare-fun input_stream/-1450700737 (var2920) var2691)
(declare-fun GetSuffix/1403758179 (var2691 Int) (Array Int Int))
(declare-fun append/109888945 (String (Array Int Int)) String)
(declare-fun backup/-1560050078 (var2691 Int) void)
(declare-const null-var2920 var2920)
(declare-const var3343 var2920) ; Statement: r0 := @this: org.javacc.jjtree.JJTreeParserTokenManager 
(assert (not (= var3343 null-var2920)))
(define-const var712 Int (jjimageLen/-1450700737 var3343)) ; Statement: $i2 = r0.<org.javacc.jjtree.JJTreeParserTokenManager: int jjimageLen> 
(define-const var177 Int (jjmatchedPos/-1450700737 var3343)) ; Statement: $i0 = r0.<org.javacc.jjtree.JJTreeParserTokenManager: int jjmatchedPos> 
(define-const var1236 Int (+ var177 1)) ; Statement: $i1 = $i0 + 1 
(declare-const var3343!1 var2920)
(assert (not (= var3343!1 null-var2920)))
(assert (= (lengthOfMatch/-1450700737 var3343!1) var1236)) ; Statement: r0.<org.javacc.jjtree.JJTreeParserTokenManager: int lengthOfMatch> = $i1 
(define-const var396 Int (+ var712 var1236)) ; Statement: $i3 = $i2 + $i1 
(declare-const var3343!2 var2920)
(assert (not (= var3343!2 null-var2920)))
(assert (= (jjimageLen/-1450700737 var3343!2) var396)) ; Statement: r0.<org.javacc.jjtree.JJTreeParserTokenManager: int jjimageLen> = $i3 
(define-const var3235 Int (jjmatchedKind/-1450700737 var3343!2)) ; Statement: $i4 = r0.<org.javacc.jjtree.JJTreeParserTokenManager: int jjmatchedKind> 
 ; Statement: lookupswitch($i4) {     case 18: goto $r2 = r0.<org.javacc.jjtree.JJTreeParserTokenManager: java.lang.StringBuilder image>;     default: goto return; } 
(assert (and (= var3235 18) true)) ; Intersect: Cond: $i4 == 18  and Non Conditional 
(define-const var232 String (image/-1450700737 var3343!2)) ; Statement: $r2 = r0.<org.javacc.jjtree.JJTreeParserTokenManager: java.lang.StringBuilder image> 
(define-const var2444 var2691 (input_stream/-1450700737 var3343!2)) ; Statement: $r1 = r0.<org.javacc.jjtree.JJTreeParserTokenManager: org.javacc.jjtree.JavaCharStream input_stream> 
(define-const var1735 Int (jjimageLen/-1450700737 var3343!2)) ; Statement: $i5 = r0.<org.javacc.jjtree.JJTreeParserTokenManager: int jjimageLen> 
(assert true)
(define-const var3269 (Array Int Int) (GetSuffix/1403758179 var2444 var1735)) ; Statement: $r3 = virtualinvoke $r1.<org.javacc.jjtree.JavaCharStream: char[] GetSuffix(int)>($i5) 
(assert true)
;(assert (append/109888945 var232 var3269)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char[])>($r3) 
(declare-const var232!1 String)
(assert (str.prefixof var232 var232!1))
(declare-const var3343!3 var2920)
(assert (not (= var3343!3 null-var2920)))
(assert (= (jjimageLen/-1450700737 var3343!3) 0)) ; Statement: r0.<org.javacc.jjtree.JJTreeParserTokenManager: int jjimageLen> = 0 
(define-const var1496 var2691 (input_stream/-1450700737 var3343!3)) ; Statement: $r4 = r0.<org.javacc.jjtree.JJTreeParserTokenManager: org.javacc.jjtree.JavaCharStream input_stream> 
(assert true)
;(assert (backup/-1560050078 var1496 1)) ; Statement: virtualinvoke $r4.<org.javacc.jjtree.JavaCharStream: void backup(int)>(1) 

(declare-const var1496!1 var2691)
(declare-const var1474 Int)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {jjimageLen/-1450700737=([org.javacc.jjtree.JJTreeParserTokenManager], int), jjmatchedPos/-1450700737=([org.javacc.jjtree.JJTreeParserTokenManager], int), lengthOfMatch/-1450700737=([org.javacc.jjtree.JJTreeParserTokenManager], int), jjmatchedKind/-1450700737=([org.javacc.jjtree.JJTreeParserTokenManager], int), image/-1450700737=([org.javacc.jjtree.JJTreeParserTokenManager], java.lang.StringBuilder), input_stream/-1450700737=([org.javacc.jjtree.JJTreeParserTokenManager], org.javacc.jjtree.JavaCharStream), GetSuffix/1403758179=([org.javacc.jjtree.JavaCharStream, int], char[]), append/109888945=([java.lang.StringBuilder, char[]], java.lang.StringBuilder), backup/-1560050078=([org.javacc.jjtree.JavaCharStream, int], void)}
; {var2920=org.javacc.jjtree.JJTreeParserTokenManager, var3343=r0, var712=$i2, var177=$i0, var1236=$i1, var396=$i3, var3235=$i4, var232=$r2, var2691=org.javacc.jjtree.JavaCharStream, var2444=$r1, var1735=$i5, var3269=$r3, var1496=$r4, var1474=1}
; {org.javacc.jjtree.JJTreeParserTokenManager=var2920, r0=var3343, $i2=var712, $i0=var177, $i1=var1236, $i3=var396, $i4=var3235, $r2=var232, org.javacc.jjtree.JavaCharStream=var2691, $r1=var2444, $i5=var1735, $r3=var3269, $r4=var1496, 1=var1474}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char[])>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char[])>": 1}
;stmts r0 := @this: org.javacc.jjtree.JJTreeParserTokenManager;	$i2 = r0.<org.javacc.jjtree.JJTreeParserTokenManager: int jjimageLen>;	$i0 = r0.<org.javacc.jjtree.JJTreeParserTokenManager: int jjmatchedPos>;	$i1 = $i0 + 1;	r0.<org.javacc.jjtree.JJTreeParserTokenManager: int lengthOfMatch> = $i1;	$i3 = $i2 + $i1;	r0.<org.javacc.jjtree.JJTreeParserTokenManager: int jjimageLen> = $i3;	$i4 = r0.<org.javacc.jjtree.JJTreeParserTokenManager: int jjmatchedKind>;	lookupswitch($i4) {     case 18: goto $r2 = r0.<org.javacc.jjtree.JJTreeParserTokenManager: java.lang.StringBuilder image>;     default: goto return; };	$r2 = r0.<org.javacc.jjtree.JJTreeParserTokenManager: java.lang.StringBuilder image>;	$r1 = r0.<org.javacc.jjtree.JJTreeParserTokenManager: org.javacc.jjtree.JavaCharStream input_stream>;	$i5 = r0.<org.javacc.jjtree.JJTreeParserTokenManager: int jjimageLen>;	$r3 = virtualinvoke $r1.<org.javacc.jjtree.JavaCharStream: char[] GetSuffix(int)>($i5);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char[])>($r3);	r0.<org.javacc.jjtree.JJTreeParserTokenManager: int jjimageLen> = 0;	$r4 = r0.<org.javacc.jjtree.JJTreeParserTokenManager: org.javacc.jjtree.JavaCharStream input_stream>;	virtualinvoke $r4.<org.javacc.jjtree.JavaCharStream: void backup(int)>(1);	goto [?= return];	return
;block_num 3