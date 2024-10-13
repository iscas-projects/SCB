(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var92 0)
(declare-sort var1046 0)
(declare-sort var3412 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jjmatchedKind/929889025 (var92) Int)
(declare-fun image/929889025 (var92) String)
(declare-fun input_stream/929889025 (var92) var3412)
(declare-fun jjimageLen/929889025 (var92) Int)
(declare-fun jjmatchedPos/929889025 (var92) Int)
(declare-fun lengthOfMatch/929889025 (var92) Int)
(declare-fun GetSuffix/1820013612 (var3412 Int) (Array Int Int))
(declare-fun append/109888945 (String (Array Int Int)) String)
(declare-fun parenthesisNesting/929889025 (var92) Int)
(declare-fun SwitchTo/-1839513100 (var92 Int) void)
(declare-const null-var92 var92)
(declare-const null-var1046 var1046)
(declare-const var177 var92) ; Statement: r0 := @this: freemarker.core.FMParserTokenManager 
(assert (not (= var177 null-var92)))
(declare-const var1567 var1046) ; Statement: r4 := @parameter0: freemarker.core.Token 
(assert (not (= var1567 null-var1046)))
(define-const var19 Int (jjmatchedKind/929889025 var177)) ; Statement: $i0 = r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> 
 ; Statement: lookupswitch($i0) {     case 91: goto $r1 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder image>;     default: goto return; } 
(assert (and (= var19 91) true)) ; Intersect: Cond: $i0 == 91  and Non Conditional 
(define-const var479 String (image/929889025 var177)) ; Statement: $r1 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder image> 
(define-const var962 var3412 (input_stream/929889025 var177)) ; Statement: $r2 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream> 
(define-const var603 Int (jjimageLen/929889025 var177)) ; Statement: $i3 = r0.<freemarker.core.FMParserTokenManager: int jjimageLen> 
(define-const var230 Int (jjmatchedPos/929889025 var177)) ; Statement: $i1 = r0.<freemarker.core.FMParserTokenManager: int jjmatchedPos> 
(define-const var455 Int (+ var230 1)) ; Statement: $i2 = $i1 + 1 
(declare-const var177!1 var92)
(assert (not (= var177!1 null-var92)))
(assert (= (lengthOfMatch/929889025 var177!1) var455)) ; Statement: r0.<freemarker.core.FMParserTokenManager: int lengthOfMatch> = $i2 
(define-const var2047 Int (+ var603 var455)) ; Statement: $i4 = $i3 + $i2 
(assert true)
(define-const var2484 (Array Int Int) (GetSuffix/1820013612 var962 var2047)) ; Statement: $r3 = virtualinvoke $r2.<freemarker.core.SimpleCharStream: char[] GetSuffix(int)>($i4) 
(assert true)
;(assert (append/109888945 var479 var2484)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char[])>($r3) 
(declare-const var479!1 String)
(assert (str.prefixof var479 var479!1))
(define-const var1922 Int (parenthesisNesting/929889025 var177!1)) ; Statement: $i5 = r0.<freemarker.core.FMParserTokenManager: int parenthesisNesting> 
 ; Statement: if $i5 <= 0 goto $z0 = r0.<freemarker.core.FMParserTokenManager: boolean inInvocation> 
(assert (not (<= var1922 0))) ; Negate: Cond: $i5 <= 0  
(assert true)
;(assert (SwitchTo/-1839513100 var177!1 3)) ; Statement: virtualinvoke r0.<freemarker.core.FMParserTokenManager: void SwitchTo(int)>(3) 

(declare-const var177!2 var92)
(declare-const var1512 Int)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {jjmatchedKind/929889025=([freemarker.core.FMParserTokenManager], int), image/929889025=([freemarker.core.FMParserTokenManager], java.lang.StringBuilder), input_stream/929889025=([freemarker.core.FMParserTokenManager], freemarker.core.SimpleCharStream), jjimageLen/929889025=([freemarker.core.FMParserTokenManager], int), jjmatchedPos/929889025=([freemarker.core.FMParserTokenManager], int), lengthOfMatch/929889025=([freemarker.core.FMParserTokenManager], int), GetSuffix/1820013612=([freemarker.core.SimpleCharStream, int], char[]), append/109888945=([java.lang.StringBuilder, char[]], java.lang.StringBuilder), parenthesisNesting/929889025=([freemarker.core.FMParserTokenManager], int), SwitchTo/-1839513100=([freemarker.core.FMParserTokenManager, int], void)}
; {var92=freemarker.core.FMParserTokenManager, var177=r0, var1046=freemarker.core.Token, var1567=r4, var19=$i0, var479=$r1, var3412=freemarker.core.SimpleCharStream, var962=$r2, var603=$i3, var230=$i1, var455=$i2, var2047=$i4, var2484=$r3, var1922=$i5, var1512=3}
; {freemarker.core.FMParserTokenManager=var92, r0=var177, freemarker.core.Token=var1046, r4=var1567, $i0=var19, $r1=var479, freemarker.core.SimpleCharStream=var3412, $r2=var962, $i3=var603, $i1=var230, $i2=var455, $i4=var2047, $r3=var2484, $i5=var1922, 3=var1512}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char[])>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char[])>": 1}
;stmts r0 := @this: freemarker.core.FMParserTokenManager;	r4 := @parameter0: freemarker.core.Token;	$i0 = r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind>;	lookupswitch($i0) {     case 91: goto $r1 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder image>;     default: goto return; };	$r1 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder image>;	$r2 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream>;	$i3 = r0.<freemarker.core.FMParserTokenManager: int jjimageLen>;	$i1 = r0.<freemarker.core.FMParserTokenManager: int jjmatchedPos>;	$i2 = $i1 + 1;	r0.<freemarker.core.FMParserTokenManager: int lengthOfMatch> = $i2;	$i4 = $i3 + $i2;	$r3 = virtualinvoke $r2.<freemarker.core.SimpleCharStream: char[] GetSuffix(int)>($i4);	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char[])>($r3);	$i5 = r0.<freemarker.core.FMParserTokenManager: int parenthesisNesting>;	if $i5 <= 0 goto $z0 = r0.<freemarker.core.FMParserTokenManager: boolean inInvocation>;	virtualinvoke r0.<freemarker.core.FMParserTokenManager: void SwitchTo(int)>(3);	goto [?= return];	return
;block_num 4