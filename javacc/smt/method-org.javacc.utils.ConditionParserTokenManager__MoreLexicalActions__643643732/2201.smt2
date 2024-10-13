(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3968 0)
(declare-sort var2111 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jjimageLen/1944280239 (var3968) Int)
(declare-fun jjmatchedPos/1944280239 (var3968) Int)
(declare-fun lengthOfMatch/1944280239 (var3968) Int)
(declare-fun jjmatchedKind/1944280239 (var3968) Int)
(declare-fun image/1944280239 (var3968) String)
(declare-fun input_stream/1944280239 (var3968) var2111)
(declare-fun GetSuffix/-1895540804 (var2111 Int) (Array Int Int))
(declare-fun append/109888945 (String (Array Int Int)) String)
(declare-fun backup/1706402153 (var2111 Int) void)
(declare-const null-var3968 var3968)
(declare-const var542 var3968) ; Statement: r0 := @this: org.javacc.utils.ConditionParserTokenManager 
(assert (not (= var542 null-var3968)))
(define-const var2927 Int (jjimageLen/1944280239 var542)) ; Statement: $i2 = r0.<org.javacc.utils.ConditionParserTokenManager: int jjimageLen> 
(define-const var2730 Int (jjmatchedPos/1944280239 var542)) ; Statement: $i0 = r0.<org.javacc.utils.ConditionParserTokenManager: int jjmatchedPos> 
(define-const var1551 Int (+ var2730 1)) ; Statement: $i1 = $i0 + 1 
(declare-const var542!1 var3968)
(assert (not (= var542!1 null-var3968)))
(assert (= (lengthOfMatch/1944280239 var542!1) var1551)) ; Statement: r0.<org.javacc.utils.ConditionParserTokenManager: int lengthOfMatch> = $i1 
(define-const var295 Int (+ var2927 var1551)) ; Statement: $i3 = $i2 + $i1 
(declare-const var542!2 var3968)
(assert (not (= var542!2 null-var3968)))
(assert (= (jjimageLen/1944280239 var542!2) var295)) ; Statement: r0.<org.javacc.utils.ConditionParserTokenManager: int jjimageLen> = $i3 
(define-const var1504 Int (jjmatchedKind/1944280239 var542!2)) ; Statement: $i4 = r0.<org.javacc.utils.ConditionParserTokenManager: int jjmatchedKind> 
 ; Statement: lookupswitch($i4) {     case 7: goto $r2 = r0.<org.javacc.utils.ConditionParserTokenManager: java.lang.StringBuilder image>;     default: goto return; } 
(assert (and (= var1504 7) true)) ; Intersect: Cond: $i4 == 7  and Non Conditional 
(define-const var3850 String (image/1944280239 var542!2)) ; Statement: $r2 = r0.<org.javacc.utils.ConditionParserTokenManager: java.lang.StringBuilder image> 
(define-const var528 var2111 (input_stream/1944280239 var542!2)) ; Statement: $r1 = r0.<org.javacc.utils.ConditionParserTokenManager: org.javacc.utils.JavaCharStream input_stream> 
(define-const var270 Int (jjimageLen/1944280239 var542!2)) ; Statement: $i5 = r0.<org.javacc.utils.ConditionParserTokenManager: int jjimageLen> 
(assert true)
(define-const var3236 (Array Int Int) (GetSuffix/-1895540804 var528 var270)) ; Statement: $r3 = virtualinvoke $r1.<org.javacc.utils.JavaCharStream: char[] GetSuffix(int)>($i5) 
(assert true)
;(assert (append/109888945 var3850 var3236)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char[])>($r3) 
(declare-const var3850!1 String)
(assert (str.prefixof var3850 var3850!1))
(declare-const var542!3 var3968)
(assert (not (= var542!3 null-var3968)))
(assert (= (jjimageLen/1944280239 var542!3) 0)) ; Statement: r0.<org.javacc.utils.ConditionParserTokenManager: int jjimageLen> = 0 
(define-const var3168 var2111 (input_stream/1944280239 var542!3)) ; Statement: $r4 = r0.<org.javacc.utils.ConditionParserTokenManager: org.javacc.utils.JavaCharStream input_stream> 
(assert true)
;(assert (backup/1706402153 var3168 1)) ; Statement: virtualinvoke $r4.<org.javacc.utils.JavaCharStream: void backup(int)>(1) 

(declare-const var3168!1 var2111)
(declare-const var3670 Int)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {jjimageLen/1944280239=([org.javacc.utils.ConditionParserTokenManager], int), jjmatchedPos/1944280239=([org.javacc.utils.ConditionParserTokenManager], int), lengthOfMatch/1944280239=([org.javacc.utils.ConditionParserTokenManager], int), jjmatchedKind/1944280239=([org.javacc.utils.ConditionParserTokenManager], int), image/1944280239=([org.javacc.utils.ConditionParserTokenManager], java.lang.StringBuilder), input_stream/1944280239=([org.javacc.utils.ConditionParserTokenManager], org.javacc.utils.JavaCharStream), GetSuffix/-1895540804=([org.javacc.utils.JavaCharStream, int], char[]), append/109888945=([java.lang.StringBuilder, char[]], java.lang.StringBuilder), backup/1706402153=([org.javacc.utils.JavaCharStream, int], void)}
; {var3968=org.javacc.utils.ConditionParserTokenManager, var542=r0, var2927=$i2, var2730=$i0, var1551=$i1, var295=$i3, var1504=$i4, var3850=$r2, var2111=org.javacc.utils.JavaCharStream, var528=$r1, var270=$i5, var3236=$r3, var3168=$r4, var3670=1}
; {org.javacc.utils.ConditionParserTokenManager=var3968, r0=var542, $i2=var2927, $i0=var2730, $i1=var1551, $i3=var295, $i4=var1504, $r2=var3850, org.javacc.utils.JavaCharStream=var2111, $r1=var528, $i5=var270, $r3=var3236, $r4=var3168, 1=var3670}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char[])>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char[])>": 1}
;stmts r0 := @this: org.javacc.utils.ConditionParserTokenManager;	$i2 = r0.<org.javacc.utils.ConditionParserTokenManager: int jjimageLen>;	$i0 = r0.<org.javacc.utils.ConditionParserTokenManager: int jjmatchedPos>;	$i1 = $i0 + 1;	r0.<org.javacc.utils.ConditionParserTokenManager: int lengthOfMatch> = $i1;	$i3 = $i2 + $i1;	r0.<org.javacc.utils.ConditionParserTokenManager: int jjimageLen> = $i3;	$i4 = r0.<org.javacc.utils.ConditionParserTokenManager: int jjmatchedKind>;	lookupswitch($i4) {     case 7: goto $r2 = r0.<org.javacc.utils.ConditionParserTokenManager: java.lang.StringBuilder image>;     default: goto return; };	$r2 = r0.<org.javacc.utils.ConditionParserTokenManager: java.lang.StringBuilder image>;	$r1 = r0.<org.javacc.utils.ConditionParserTokenManager: org.javacc.utils.JavaCharStream input_stream>;	$i5 = r0.<org.javacc.utils.ConditionParserTokenManager: int jjimageLen>;	$r3 = virtualinvoke $r1.<org.javacc.utils.JavaCharStream: char[] GetSuffix(int)>($i5);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char[])>($r3);	r0.<org.javacc.utils.ConditionParserTokenManager: int jjimageLen> = 0;	$r4 = r0.<org.javacc.utils.ConditionParserTokenManager: org.javacc.utils.JavaCharStream input_stream>;	virtualinvoke $r4.<org.javacc.utils.JavaCharStream: void backup(int)>(1);	goto [?= return];	return
;block_num 3