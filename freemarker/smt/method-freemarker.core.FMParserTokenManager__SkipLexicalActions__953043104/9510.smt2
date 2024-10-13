(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2086 0)
(declare-sort var835 0)
(declare-sort var2743 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jjmatchedKind/929889025 (var2086) Int)
(declare-fun image/929889025 (var2086) String)
(declare-fun input_stream/929889025 (var2086) var2743)
(declare-fun jjimageLen/929889025 (var2086) Int)
(declare-fun jjmatchedPos/929889025 (var2086) Int)
(declare-fun lengthOfMatch/929889025 (var2086) Int)
(declare-fun GetSuffix/1820013612 (var2743 Int) (Array Int Int))
(declare-fun append/109888945 (String (Array Int Int)) String)
(declare-fun parenthesisNesting/929889025 (var2086) Int)
(declare-fun inInvocation/929889025 (var2086) Bool)
(declare-fun SwitchTo/-1839513100 (var2086 Int) void)
(declare-const null-var2086 var2086)
(declare-const null-var835 var835)
(declare-const var3605 var2086) ; Statement: r0 := @this: freemarker.core.FMParserTokenManager 
(assert (not (= var3605 null-var2086)))
(declare-const var601 var835) ; Statement: r4 := @parameter0: freemarker.core.Token 
(assert (not (= var601 null-var835)))
(define-const var879 Int (jjmatchedKind/929889025 var3605)) ; Statement: $i0 = r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> 
 ; Statement: lookupswitch($i0) {     case 91: goto $r1 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder image>;     default: goto return; } 
(assert (and (= var879 91) true)) ; Intersect: Cond: $i0 == 91  and Non Conditional 
(define-const var1464 String (image/929889025 var3605)) ; Statement: $r1 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder image> 
(define-const var2358 var2743 (input_stream/929889025 var3605)) ; Statement: $r2 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream> 
(define-const var2633 Int (jjimageLen/929889025 var3605)) ; Statement: $i3 = r0.<freemarker.core.FMParserTokenManager: int jjimageLen> 
(define-const var1741 Int (jjmatchedPos/929889025 var3605)) ; Statement: $i1 = r0.<freemarker.core.FMParserTokenManager: int jjmatchedPos> 
(define-const var1490 Int (+ var1741 1)) ; Statement: $i2 = $i1 + 1 
(declare-const var3605!1 var2086)
(assert (not (= var3605!1 null-var2086)))
(assert (= (lengthOfMatch/929889025 var3605!1) var1490)) ; Statement: r0.<freemarker.core.FMParserTokenManager: int lengthOfMatch> = $i2 
(define-const var2347 Int (+ var2633 var1490)) ; Statement: $i4 = $i3 + $i2 
(assert true)
(define-const var33 (Array Int Int) (GetSuffix/1820013612 var2358 var2347)) ; Statement: $r3 = virtualinvoke $r2.<freemarker.core.SimpleCharStream: char[] GetSuffix(int)>($i4) 
(assert true)
;(assert (append/109888945 var1464 var33)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char[])>($r3) 
(declare-const var1464!1 String)
(assert (str.prefixof var1464 var1464!1))
(define-const var1828 Int (parenthesisNesting/929889025 var3605!1)) ; Statement: $i5 = r0.<freemarker.core.FMParserTokenManager: int parenthesisNesting> 
 ; Statement: if $i5 <= 0 goto $z0 = r0.<freemarker.core.FMParserTokenManager: boolean inInvocation> 
(assert (<= var1828 0)) ; Cond: $i5 <= 0 
(define-const var3472 Bool (inInvocation/929889025 var3605!1)) ; Statement: $z0 = r0.<freemarker.core.FMParserTokenManager: boolean inInvocation> 
 ; Statement: if $z0 == 0 goto virtualinvoke r0.<freemarker.core.FMParserTokenManager: void SwitchTo(int)>(2) 
(assert (not (= (ite var3472 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
;(assert (SwitchTo/-1839513100 var3605!1 4)) ; Statement: virtualinvoke r0.<freemarker.core.FMParserTokenManager: void SwitchTo(int)>(4) 

(declare-const var3605!2 var2086)
(declare-const var3585 Int)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {jjmatchedKind/929889025=([freemarker.core.FMParserTokenManager], int), image/929889025=([freemarker.core.FMParserTokenManager], java.lang.StringBuilder), input_stream/929889025=([freemarker.core.FMParserTokenManager], freemarker.core.SimpleCharStream), jjimageLen/929889025=([freemarker.core.FMParserTokenManager], int), jjmatchedPos/929889025=([freemarker.core.FMParserTokenManager], int), lengthOfMatch/929889025=([freemarker.core.FMParserTokenManager], int), GetSuffix/1820013612=([freemarker.core.SimpleCharStream, int], char[]), append/109888945=([java.lang.StringBuilder, char[]], java.lang.StringBuilder), parenthesisNesting/929889025=([freemarker.core.FMParserTokenManager], int), inInvocation/929889025=([freemarker.core.FMParserTokenManager], boolean), SwitchTo/-1839513100=([freemarker.core.FMParserTokenManager, int], void)}
; {var2086=freemarker.core.FMParserTokenManager, var3605=r0, var835=freemarker.core.Token, var601=r4, var879=$i0, var1464=$r1, var2743=freemarker.core.SimpleCharStream, var2358=$r2, var2633=$i3, var1741=$i1, var1490=$i2, var2347=$i4, var33=$r3, var1828=$i5, var3472=$z0, var3585=4}
; {freemarker.core.FMParserTokenManager=var2086, r0=var3605, freemarker.core.Token=var835, r4=var601, $i0=var879, $r1=var1464, freemarker.core.SimpleCharStream=var2743, $r2=var2358, $i3=var2633, $i1=var1741, $i2=var1490, $i4=var2347, $r3=var33, $i5=var1828, $z0=var3472, 4=var3585}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char[])>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char[])>": 1}
;stmts r0 := @this: freemarker.core.FMParserTokenManager;	r4 := @parameter0: freemarker.core.Token;	$i0 = r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind>;	lookupswitch($i0) {     case 91: goto $r1 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder image>;     default: goto return; };	$r1 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder image>;	$r2 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream>;	$i3 = r0.<freemarker.core.FMParserTokenManager: int jjimageLen>;	$i1 = r0.<freemarker.core.FMParserTokenManager: int jjmatchedPos>;	$i2 = $i1 + 1;	r0.<freemarker.core.FMParserTokenManager: int lengthOfMatch> = $i2;	$i4 = $i3 + $i2;	$r3 = virtualinvoke $r2.<freemarker.core.SimpleCharStream: char[] GetSuffix(int)>($i4);	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char[])>($r3);	$i5 = r0.<freemarker.core.FMParserTokenManager: int parenthesisNesting>;	if $i5 <= 0 goto $z0 = r0.<freemarker.core.FMParserTokenManager: boolean inInvocation>;	$z0 = r0.<freemarker.core.FMParserTokenManager: boolean inInvocation>;	if $z0 == 0 goto virtualinvoke r0.<freemarker.core.FMParserTokenManager: void SwitchTo(int)>(2);	virtualinvoke r0.<freemarker.core.FMParserTokenManager: void SwitchTo(int)>(4);	goto [?= return];	return
;block_num 5