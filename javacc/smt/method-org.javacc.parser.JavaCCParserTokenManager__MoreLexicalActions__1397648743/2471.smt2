(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3084 0)
(declare-sort var769 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jjimageLen/1964309570 (var3084) Int)
(declare-fun jjmatchedPos/1964309570 (var3084) Int)
(declare-fun lengthOfMatch/1964309570 (var3084) Int)
(declare-fun jjmatchedKind/1964309570 (var3084) Int)
(declare-fun image/1964309570 (var3084) String)
(declare-fun input_stream/1964309570 (var3084) var769)
(declare-fun GetSuffix/-1031269374 (var769 Int) (Array Int Int))
(declare-fun append/109888945 (String (Array Int Int)) String)
(declare-fun backup/649253219 (var769 Int) void)
(declare-const null-var3084 var3084)
(declare-const var2283 var3084) ; Statement: r0 := @this: org.javacc.parser.JavaCCParserTokenManager 
(assert (not (= var2283 null-var3084)))
(define-const var3348 Int (jjimageLen/1964309570 var2283)) ; Statement: $i2 = r0.<org.javacc.parser.JavaCCParserTokenManager: int jjimageLen> 
(define-const var1418 Int (jjmatchedPos/1964309570 var2283)) ; Statement: $i0 = r0.<org.javacc.parser.JavaCCParserTokenManager: int jjmatchedPos> 
(define-const var3782 Int (+ var1418 1)) ; Statement: $i1 = $i0 + 1 
(declare-const var2283!1 var3084)
(assert (not (= var2283!1 null-var3084)))
(assert (= (lengthOfMatch/1964309570 var2283!1) var3782)) ; Statement: r0.<org.javacc.parser.JavaCCParserTokenManager: int lengthOfMatch> = $i1 
(define-const var3033 Int (+ var3348 var3782)) ; Statement: $i3 = $i2 + $i1 
(declare-const var2283!2 var3084)
(assert (not (= var2283!2 null-var3084)))
(assert (= (jjimageLen/1964309570 var2283!2) var3033)) ; Statement: r0.<org.javacc.parser.JavaCCParserTokenManager: int jjimageLen> = $i3 
(define-const var3812 Int (jjmatchedKind/1964309570 var2283!2)) ; Statement: $i4 = r0.<org.javacc.parser.JavaCCParserTokenManager: int jjmatchedKind> 
 ; Statement: lookupswitch($i4) {     case 21: goto $r7 = r0.<org.javacc.parser.JavaCCParserTokenManager: java.lang.StringBuilder image>;     case 23: goto $r2 = r0.<org.javacc.parser.JavaCCParserTokenManager: java.lang.StringBuilder image>;     default: goto return; } 
(assert (and (= var3812 21) true)) ; Intersect: Cond: $i4 == 21  and Non Conditional 
(define-const var2636 String (image/1964309570 var2283!2)) ; Statement: $r7 = r0.<org.javacc.parser.JavaCCParserTokenManager: java.lang.StringBuilder image> 
(define-const var468 var769 (input_stream/1964309570 var2283!2)) ; Statement: $r6 = r0.<org.javacc.parser.JavaCCParserTokenManager: org.javacc.parser.JavaCharStream input_stream> 
(define-const var2588 Int (jjimageLen/1964309570 var2283!2)) ; Statement: $i8 = r0.<org.javacc.parser.JavaCCParserTokenManager: int jjimageLen> 
(assert true)
(define-const var3372 (Array Int Int) (GetSuffix/-1031269374 var468 var2588)) ; Statement: $r8 = virtualinvoke $r6.<org.javacc.parser.JavaCharStream: char[] GetSuffix(int)>($i8) 
(assert true)
;(assert (append/109888945 var2636 var3372)) ; Statement: virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char[])>($r8) 
(declare-const var2636!1 String)
(assert (str.prefixof var2636 var2636!1))
(declare-const var2283!3 var3084)
(assert (not (= var2283!3 null-var3084)))
(assert (= (jjimageLen/1964309570 var2283!3) 0)) ; Statement: r0.<org.javacc.parser.JavaCCParserTokenManager: int jjimageLen> = 0 
(define-const var1348 var769 (input_stream/1964309570 var2283!3)) ; Statement: $r9 = r0.<org.javacc.parser.JavaCCParserTokenManager: org.javacc.parser.JavaCharStream input_stream> 
(assert true)
;(assert (backup/649253219 var1348 1)) ; Statement: virtualinvoke $r9.<org.javacc.parser.JavaCharStream: void backup(int)>(1) 

(declare-const var1348!1 var769)
(declare-const var1886 Int)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {jjimageLen/1964309570=([org.javacc.parser.JavaCCParserTokenManager], int), jjmatchedPos/1964309570=([org.javacc.parser.JavaCCParserTokenManager], int), lengthOfMatch/1964309570=([org.javacc.parser.JavaCCParserTokenManager], int), jjmatchedKind/1964309570=([org.javacc.parser.JavaCCParserTokenManager], int), image/1964309570=([org.javacc.parser.JavaCCParserTokenManager], java.lang.StringBuilder), input_stream/1964309570=([org.javacc.parser.JavaCCParserTokenManager], org.javacc.parser.JavaCharStream), GetSuffix/-1031269374=([org.javacc.parser.JavaCharStream, int], char[]), append/109888945=([java.lang.StringBuilder, char[]], java.lang.StringBuilder), backup/649253219=([org.javacc.parser.JavaCharStream, int], void)}
; {var3084=org.javacc.parser.JavaCCParserTokenManager, var2283=r0, var3348=$i2, var1418=$i0, var3782=$i1, var3033=$i3, var3812=$i4, var2636=$r7, var769=org.javacc.parser.JavaCharStream, var468=$r6, var2588=$i8, var3372=$r8, var1348=$r9, var1886=1}
; {org.javacc.parser.JavaCCParserTokenManager=var3084, r0=var2283, $i2=var3348, $i0=var1418, $i1=var3782, $i3=var3033, $i4=var3812, $r7=var2636, org.javacc.parser.JavaCharStream=var769, $r6=var468, $i8=var2588, $r8=var3372, $r9=var1348, 1=var1886}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char[])>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char[])>": 1}
;stmts r0 := @this: org.javacc.parser.JavaCCParserTokenManager;	$i2 = r0.<org.javacc.parser.JavaCCParserTokenManager: int jjimageLen>;	$i0 = r0.<org.javacc.parser.JavaCCParserTokenManager: int jjmatchedPos>;	$i1 = $i0 + 1;	r0.<org.javacc.parser.JavaCCParserTokenManager: int lengthOfMatch> = $i1;	$i3 = $i2 + $i1;	r0.<org.javacc.parser.JavaCCParserTokenManager: int jjimageLen> = $i3;	$i4 = r0.<org.javacc.parser.JavaCCParserTokenManager: int jjmatchedKind>;	lookupswitch($i4) {     case 21: goto $r7 = r0.<org.javacc.parser.JavaCCParserTokenManager: java.lang.StringBuilder image>;     case 23: goto $r2 = r0.<org.javacc.parser.JavaCCParserTokenManager: java.lang.StringBuilder image>;     default: goto return; };	$r7 = r0.<org.javacc.parser.JavaCCParserTokenManager: java.lang.StringBuilder image>;	$r6 = r0.<org.javacc.parser.JavaCCParserTokenManager: org.javacc.parser.JavaCharStream input_stream>;	$i8 = r0.<org.javacc.parser.JavaCCParserTokenManager: int jjimageLen>;	$r8 = virtualinvoke $r6.<org.javacc.parser.JavaCharStream: char[] GetSuffix(int)>($i8);	virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char[])>($r8);	r0.<org.javacc.parser.JavaCCParserTokenManager: int jjimageLen> = 0;	$r9 = r0.<org.javacc.parser.JavaCCParserTokenManager: org.javacc.parser.JavaCharStream input_stream>;	virtualinvoke $r9.<org.javacc.parser.JavaCharStream: void backup(int)>(1);	goto [?= return];	return
;block_num 3