(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var205 0)
(declare-sort var1431 0)
(declare-sort var1405 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jjmatchedKind/929889025 (var205) Int)
(declare-fun image/929889025 (var205) String)
(declare-fun input_stream/929889025 (var205) var1405)
(declare-fun jjimageLen/929889025 (var205) Int)
(declare-fun jjmatchedPos/929889025 (var205) Int)
(declare-fun lengthOfMatch/929889025 (var205) Int)
(declare-fun GetSuffix/1820013612 (var1405 Int) (Array Int Int))
(declare-fun append/109888945 (String (Array Int Int)) String)
(declare-fun parenthesisNesting/929889025 (var205) Int)
(declare-fun inInvocation/929889025 (var205) Bool)
(declare-fun SwitchTo/-1839513100 (var205 Int) void)
(declare-const null-var205 var205)
(declare-const null-var1431 var1431)
(declare-const var1202 var205) ; Statement: r0 := @this: freemarker.core.FMParserTokenManager 
(assert (not (= var1202 null-var205)))
(declare-const var626 var1431) ; Statement: r4 := @parameter0: freemarker.core.Token 
(assert (not (= var626 null-var1431)))
(define-const var201 Int (jjmatchedKind/929889025 var1202)) ; Statement: $i0 = r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> 
 ; Statement: lookupswitch($i0) {     case 91: goto $r1 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder image>;     default: goto return; } 
(assert (and (= var201 91) true)) ; Intersect: Cond: $i0 == 91  and Non Conditional 
(define-const var3150 String (image/929889025 var1202)) ; Statement: $r1 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder image> 
(define-const var3154 var1405 (input_stream/929889025 var1202)) ; Statement: $r2 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream> 
(define-const var3632 Int (jjimageLen/929889025 var1202)) ; Statement: $i3 = r0.<freemarker.core.FMParserTokenManager: int jjimageLen> 
(define-const var2066 Int (jjmatchedPos/929889025 var1202)) ; Statement: $i1 = r0.<freemarker.core.FMParserTokenManager: int jjmatchedPos> 
(define-const var2315 Int (+ var2066 1)) ; Statement: $i2 = $i1 + 1 
(declare-const var1202!1 var205)
(assert (not (= var1202!1 null-var205)))
(assert (= (lengthOfMatch/929889025 var1202!1) var2315)) ; Statement: r0.<freemarker.core.FMParserTokenManager: int lengthOfMatch> = $i2 
(define-const var2839 Int (+ var3632 var2315)) ; Statement: $i4 = $i3 + $i2 
(assert true)
(define-const var2274 (Array Int Int) (GetSuffix/1820013612 var3154 var2839)) ; Statement: $r3 = virtualinvoke $r2.<freemarker.core.SimpleCharStream: char[] GetSuffix(int)>($i4) 
(assert true)
;(assert (append/109888945 var3150 var2274)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char[])>($r3) 
(declare-const var3150!1 String)
(assert (str.prefixof var3150 var3150!1))
(define-const var1329 Int (parenthesisNesting/929889025 var1202!1)) ; Statement: $i5 = r0.<freemarker.core.FMParserTokenManager: int parenthesisNesting> 
 ; Statement: if $i5 <= 0 goto $z0 = r0.<freemarker.core.FMParserTokenManager: boolean inInvocation> 
(assert (<= var1329 0)) ; Cond: $i5 <= 0 
(define-const var1354 Bool (inInvocation/929889025 var1202!1)) ; Statement: $z0 = r0.<freemarker.core.FMParserTokenManager: boolean inInvocation> 
 ; Statement: if $z0 == 0 goto virtualinvoke r0.<freemarker.core.FMParserTokenManager: void SwitchTo(int)>(2) 
(assert (= (ite var1354 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (SwitchTo/-1839513100 var1202!1 2)) ; Statement: virtualinvoke r0.<freemarker.core.FMParserTokenManager: void SwitchTo(int)>(2) 

(declare-const var1202!2 var205)
(declare-const var2028 Int)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {jjmatchedKind/929889025=([freemarker.core.FMParserTokenManager], int), image/929889025=([freemarker.core.FMParserTokenManager], java.lang.StringBuilder), input_stream/929889025=([freemarker.core.FMParserTokenManager], freemarker.core.SimpleCharStream), jjimageLen/929889025=([freemarker.core.FMParserTokenManager], int), jjmatchedPos/929889025=([freemarker.core.FMParserTokenManager], int), lengthOfMatch/929889025=([freemarker.core.FMParserTokenManager], int), GetSuffix/1820013612=([freemarker.core.SimpleCharStream, int], char[]), append/109888945=([java.lang.StringBuilder, char[]], java.lang.StringBuilder), parenthesisNesting/929889025=([freemarker.core.FMParserTokenManager], int), inInvocation/929889025=([freemarker.core.FMParserTokenManager], boolean), SwitchTo/-1839513100=([freemarker.core.FMParserTokenManager, int], void)}
; {var205=freemarker.core.FMParserTokenManager, var1202=r0, var1431=freemarker.core.Token, var626=r4, var201=$i0, var3150=$r1, var1405=freemarker.core.SimpleCharStream, var3154=$r2, var3632=$i3, var2066=$i1, var2315=$i2, var2839=$i4, var2274=$r3, var1329=$i5, var1354=$z0, var2028=2}
; {freemarker.core.FMParserTokenManager=var205, r0=var1202, freemarker.core.Token=var1431, r4=var626, $i0=var201, $r1=var3150, freemarker.core.SimpleCharStream=var1405, $r2=var3154, $i3=var3632, $i1=var2066, $i2=var2315, $i4=var2839, $r3=var2274, $i5=var1329, $z0=var1354, 2=var2028}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char[])>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char[])>": 1}
;stmts r0 := @this: freemarker.core.FMParserTokenManager;	r4 := @parameter0: freemarker.core.Token;	$i0 = r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind>;	lookupswitch($i0) {     case 91: goto $r1 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder image>;     default: goto return; };	$r1 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder image>;	$r2 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream>;	$i3 = r0.<freemarker.core.FMParserTokenManager: int jjimageLen>;	$i1 = r0.<freemarker.core.FMParserTokenManager: int jjmatchedPos>;	$i2 = $i1 + 1;	r0.<freemarker.core.FMParserTokenManager: int lengthOfMatch> = $i2;	$i4 = $i3 + $i2;	$r3 = virtualinvoke $r2.<freemarker.core.SimpleCharStream: char[] GetSuffix(int)>($i4);	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char[])>($r3);	$i5 = r0.<freemarker.core.FMParserTokenManager: int parenthesisNesting>;	if $i5 <= 0 goto $z0 = r0.<freemarker.core.FMParserTokenManager: boolean inInvocation>;	$z0 = r0.<freemarker.core.FMParserTokenManager: boolean inInvocation>;	if $z0 == 0 goto virtualinvoke r0.<freemarker.core.FMParserTokenManager: void SwitchTo(int)>(2);	virtualinvoke r0.<freemarker.core.FMParserTokenManager: void SwitchTo(int)>(2);	goto [?= return];	return
;block_num 5