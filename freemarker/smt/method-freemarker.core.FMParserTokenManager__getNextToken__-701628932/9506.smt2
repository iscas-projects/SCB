(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2469 0)
(declare-sort var1137 0)
(declare-sort var3037 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun input_stream/929889025 (var2469) var1137)
(declare-fun BeginToken/1565880212 (var1137) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun curChar/929889025 (var2469) Int)
(declare-fun jjimage/929889025 (var2469) String)
(declare-fun image/929889025 (var2469) String)
(declare-fun setLength/1276735992 (String Int) void)
(declare-fun jjimageLen/929889025 (var2469) Int)
(declare-fun curLexState/929889025 (var2469) Int)
(declare-fun jjmatchedKind/929889025 (var2469) Int)
(declare-fun jjmatchedPos/929889025 (var2469) Int)
(declare-fun jjFillToken/-1048404936 (var2469) var3037)
(declare-fun TokenLexicalActions/-997795480 (var2469 var3037) void)
(declare-const null-var2469 var2469)
(declare-const var2469-jjtoToken (Array Int Int))
(declare-const var2469-jjnewLexState (Array Int Int))
(declare-const var1337 var2469) ; Statement: r0 := @this: freemarker.core.FMParserTokenManager 
(assert (not (= var1337 null-var2469)))
(define-const var3071 Int 0) ; Statement: i37 = 0 
(assert true) ; Non Conditional
(define-const var351 var1137 (input_stream/929889025 var1337)) ; Statement: $r21 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream> 
(assert true) ; Non Conditional
(assert true)
(define-const var1081 Int (BeginToken/1565880212 var351)) ; Statement: $c38 = virtualinvoke $r21.<freemarker.core.SimpleCharStream: char BeginToken()>() 
(assert true) ; Non Conditional
(define-const var3348 Int (cast-from-Int-to-Int var1081)) ; Statement: $i44 = (int) $c38 
(assert true) ; Non Conditional
(declare-const var1337!1 var2469)
(assert (not (= var1337!1 null-var2469)))
(assert (= (curChar/929889025 var1337!1) var3348)) ; Statement: r0.<freemarker.core.FMParserTokenManager: int curChar> = $i44 
(assert true) ; Non Conditional
 ; Statement: goto [?= $r1 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder jjimage>] 
(assert true) ; Non Conditional
(define-const var2567 String (jjimage/929889025 var1337!1)) ; Statement: $r1 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder jjimage> 
(declare-const var1337!2 var2469)
(assert (not (= var1337!2 null-var2469)))
(assert (= (image/929889025 var1337!2) var2567)) ; Statement: r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder image> = $r1 
(define-const var9 String (image/929889025 var1337!2)) ; Statement: $r2 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder image> 
(assert true)
;(assert (setLength/1276735992 var9 0)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: void setLength(int)>(0) 

(declare-const var9!1 String)
(declare-const var831 Int)
(declare-const var1337!3 var2469)
(assert (not (= var1337!3 null-var2469)))
(assert (= (jjimageLen/929889025 var1337!3) 0)) ; Statement: r0.<freemarker.core.FMParserTokenManager: int jjimageLen> = 0 
(define-const var3193 Int (curLexState/929889025 var1337!3)) ; Statement: $i0 = r0.<freemarker.core.FMParserTokenManager: int curLexState> 
 ; Statement: tableswitch($i0) {     case 0: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 1: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 2: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 3: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 4: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 5: goto $r15 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream>;     case 6: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 7: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     default: goto $i39 = r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind>; } 
(assert (and (not (= var3193 7)) (and (not (= var3193 6)) (and (not (= var3193 5)) (and (not (= var3193 4)) (and (not (= var3193 3)) (and (not (= var3193 2)) (and (not (= var3193 1)) (and (not (= var3193 0)) true))))))))) ; Intersect: Negate: Cond: $i0 == 7   and Intersect: Negate: Cond: $i0 == 6   and Intersect: Negate: Cond: $i0 == 5   and Intersect: Negate: Cond: $i0 == 4   and Intersect: Negate: Cond: $i0 == 3   and Intersect: Negate: Cond: $i0 == 2   and Intersect: Negate: Cond: $i0 == 1   and Intersect: Negate: Cond: $i0 == 0   and Non Conditional        
(define-const var3318 Int (jjmatchedKind/929889025 var1337!3)) ; Statement: $i39 = r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> 
 ; Statement: if $i39 == 2147483647 goto $r3 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream> 
(assert (not (= var3318 2147483647))) ; Negate: Cond: $i39 == 2147483647  
(define-const var2275 Int (jjmatchedPos/929889025 var1337!3)) ; Statement: $i1 = r0.<freemarker.core.FMParserTokenManager: int jjmatchedPos> 
(define-const var3076 Int (+ var2275 1)) ; Statement: $i2 = $i1 + 1 
 ; Statement: if $i2 >= i37 goto $r9 = <freemarker.core.FMParserTokenManager: long[] jjtoToken> 
(assert (>= var3076 var3071)) ; Cond: $i2 >= i37 
(define-const var1827 (Array Int Int) var2469-jjtoToken) ; Statement: $r9 = <freemarker.core.FMParserTokenManager: long[] jjtoToken> 
(define-const var1657 Int (jjmatchedKind/929889025 var1337!3)) ; Statement: $i3 = r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> 
(define-const var1995 Int (div var1657 (to_int (^ 2 6)))) ; Statement: $i4 = $i3 >> 6 
(define-const var3150 Int (select var1827 var1995)) ; Statement: $l8 = $r9[$i4] 
(define-const var3581 Int (jjmatchedKind/929889025 var1337!3)) ; Statement: $i5 = r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> 
(define-const var2502 Int (bv2nat (bvand ((_ int2bv 64) var3581) ((_ int2bv 64) 63)))) ; Statement: $i6 = $i5 & 63 
(define-const var2504 Int (* 1 (to_int (^ 2 var2502)))) ; Statement: $l7 = 1L << $i6 
(define-const var309 Int (bv2nat (bvand ((_ int2bv 64) var3150) ((_ int2bv 64) var2504)))) ; Statement: $l9 = $l8 & $l7 
(define-const var1789 Int (ite (> var309 0) 1 (ite (< var309 0) (- 1) 0))) ; Statement: $b10 = $l9 cmp 0L 
 ; Statement: if $b10 == 0 goto virtualinvoke r0.<freemarker.core.FMParserTokenManager: void SkipLexicalActions(freemarker.core.Token)>(null) 
(assert (not (= var1789 0))) ; Negate: Cond: $b10 == 0  
(assert true)
(define-const var2563 var3037 (jjFillToken/-1048404936 var1337!3)) ; Statement: r23 = virtualinvoke r0.<freemarker.core.FMParserTokenManager: freemarker.core.Token jjFillToken()>() 
(assert true)
;(assert (TokenLexicalActions/-997795480 var1337!3 var2563)) ; Statement: virtualinvoke r0.<freemarker.core.FMParserTokenManager: void TokenLexicalActions(freemarker.core.Token)>(r23) 

(declare-const var1337!4 var2469)
(declare-const var2563!1 var3037)
(define-const var330 (Array Int Int) var2469-jjnewLexState) ; Statement: $r12 = <freemarker.core.FMParserTokenManager: int[] jjnewLexState> 
(define-const var3424 Int (jjmatchedKind/929889025 var1337!4)) ; Statement: $i15 = r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> 
(define-const var1058 Int (select var330 var3424)) ; Statement: $i16 = $r12[$i15] 
(define-const var2241 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i49 = (int) -1 
 ; Statement: if $i16 == $i49 goto return r23 
(assert (= var1058 var2241)) ; Cond: $i16 == $i49 
 ; Statement: return r23 
(check-sat)
(get-model)
(get-unsat-core)
; {input_stream/929889025=([freemarker.core.FMParserTokenManager], freemarker.core.SimpleCharStream), BeginToken/1565880212=([freemarker.core.SimpleCharStream], char), cast-from-Int-to-Int=([char], int), curChar/929889025=([freemarker.core.FMParserTokenManager], int), jjimage/929889025=([freemarker.core.FMParserTokenManager], java.lang.StringBuilder), image/929889025=([freemarker.core.FMParserTokenManager], java.lang.StringBuilder), setLength/1276735992=([java.lang.StringBuilder, int], void), jjimageLen/929889025=([freemarker.core.FMParserTokenManager], int), curLexState/929889025=([freemarker.core.FMParserTokenManager], int), jjmatchedKind/929889025=([freemarker.core.FMParserTokenManager], int), jjmatchedPos/929889025=([freemarker.core.FMParserTokenManager], int), jjFillToken/-1048404936=([freemarker.core.FMParserTokenManager], freemarker.core.Token), TokenLexicalActions/-997795480=([freemarker.core.FMParserTokenManager, freemarker.core.Token], void)}
; {var2469=freemarker.core.FMParserTokenManager, var1337=r0, var3071=i37, var1137=freemarker.core.SimpleCharStream, var351=$r21, var1081=$c38, var3348=$i44, var2567=$r1, var9=$r2, var831=0, var3193=$i0, var3318=$i39, var2275=$i1, var3076=$i2, var1827=$r9, var1657=$i3, var1995=$i4, var3150=$l8, var3581=$i5, var2502=$i6, var2504=$l7, var309=$l9, var1789=$b10, var3037=freemarker.core.Token, var2563=r23, var330=$r12, var3424=$i15, var1058=$i16, var2241=$i49}
; {freemarker.core.FMParserTokenManager=var2469, r0=var1337, i37=var3071, freemarker.core.SimpleCharStream=var1137, $r21=var351, $c38=var1081, $i44=var3348, $r1=var2567, $r2=var9, 0=var831, $i0=var3193, $i39=var3318, $i1=var2275, $i2=var3076, $r9=var1827, $i3=var1657, $i4=var1995, $l8=var3150, $i5=var3581, $i6=var2502, $l7=var2504, $l9=var309, $b10=var1789, freemarker.core.Token=var3037, r23=var2563, $r12=var330, $i15=var3424, $i16=var1058, $i49=var2241}
;seq <java.lang.StringBuilder: void setLength(int)>
;cnt {"<java.lang.StringBuilder: void setLength(int)>": 1}
;stmts r0 := @this: freemarker.core.FMParserTokenManager;	i37 = 0;	$r21 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream>;	$c38 = virtualinvoke $r21.<freemarker.core.SimpleCharStream: char BeginToken()>();	$i44 = (int) $c38;	r0.<freemarker.core.FMParserTokenManager: int curChar> = $i44;	goto [?= $r1 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder jjimage>];	$r1 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder jjimage>;	r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder image> = $r1;	$r2 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder image>;	virtualinvoke $r2.<java.lang.StringBuilder: void setLength(int)>(0);	r0.<freemarker.core.FMParserTokenManager: int jjimageLen> = 0;	$i0 = r0.<freemarker.core.FMParserTokenManager: int curLexState>;	tableswitch($i0) {     case 0: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 1: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 2: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 3: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 4: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 5: goto $r15 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream>;     case 6: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 7: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     default: goto $i39 = r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind>; };	$i39 = r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind>;	if $i39 == 2147483647 goto $r3 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream>;	$i1 = r0.<freemarker.core.FMParserTokenManager: int jjmatchedPos>;	$i2 = $i1 + 1;	if $i2 >= i37 goto $r9 = <freemarker.core.FMParserTokenManager: long[] jjtoToken>;	$r9 = <freemarker.core.FMParserTokenManager: long[] jjtoToken>;	$i3 = r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind>;	$i4 = $i3 >> 6;	$l8 = $r9[$i4];	$i5 = r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind>;	$i6 = $i5 & 63;	$l7 = 1L << $i6;	$l9 = $l8 & $l7;	$b10 = $l9 cmp 0L;	if $b10 == 0 goto virtualinvoke r0.<freemarker.core.FMParserTokenManager: void SkipLexicalActions(freemarker.core.Token)>(null);	r23 = virtualinvoke r0.<freemarker.core.FMParserTokenManager: freemarker.core.Token jjFillToken()>();	virtualinvoke r0.<freemarker.core.FMParserTokenManager: void TokenLexicalActions(freemarker.core.Token)>(r23);	$r12 = <freemarker.core.FMParserTokenManager: int[] jjnewLexState>;	$i15 = r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind>;	$i16 = $r12[$i15];	$i49 = (int) -1;	if $i16 == $i49 goto return r23;	return r23
;block_num 12