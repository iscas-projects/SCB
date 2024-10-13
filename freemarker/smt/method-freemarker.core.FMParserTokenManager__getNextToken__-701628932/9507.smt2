(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var394 0)
(declare-sort var3562 0)
(declare-sort var3608 0)
(declare-sort var1059 0)
(declare-sort var3442 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun input_stream/929889025 (var394) var3562)
(declare-fun BeginToken/1565880212 (var3562) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun curChar/929889025 (var394) Int)
(declare-fun jjimage/929889025 (var394) String)
(declare-fun image/929889025 (var394) String)
(declare-fun setLength/1276735992 (String Int) void)
(declare-fun jjimageLen/929889025 (var394) Int)
(declare-fun curLexState/929889025 (var394) Int)
(declare-fun jjmatchedKind/929889025 (var394) Int)
(declare-fun jjmatchedPos/929889025 (var394) Int)
(declare-fun SkipLexicalActions/953043104 (var394 var3608) void)
(declare-fun jjFillToken/-1048404936 (var394) var3608)
(declare-const null-var394 var394)
(declare-const var394-jjtoToken (Array Int Int))
(declare-const null-NullType var1059)
(declare-const null-var3608 var3608)
(declare-const var394-jjnewLexState (Array Int Int))
(declare-const null-var3442 var3442)
(declare-const var639 var394) ; Statement: r0 := @this: freemarker.core.FMParserTokenManager 
(assert (not (= var639 null-var394)))
(define-const var1977 Int 0) ; Statement: i37 = 0 
(assert true) ; Non Conditional
(define-const var2539 var3562 (input_stream/929889025 var639)) ; Statement: $r21 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream> 
(assert true) ; Non Conditional
(assert true)
(define-const var1255 Int (BeginToken/1565880212 var2539)) ; Statement: $c38 = virtualinvoke $r21.<freemarker.core.SimpleCharStream: char BeginToken()>() 
(assert true) ; Non Conditional
(define-const var2904 Int (cast-from-Int-to-Int var1255)) ; Statement: $i44 = (int) $c38 
(assert true) ; Non Conditional
(declare-const var639!1 var394)
(assert (not (= var639!1 null-var394)))
(assert (= (curChar/929889025 var639!1) var2904)) ; Statement: r0.<freemarker.core.FMParserTokenManager: int curChar> = $i44 
(assert true) ; Non Conditional
 ; Statement: goto [?= $r1 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder jjimage>] 
(assert true) ; Non Conditional
(define-const var1223 String (jjimage/929889025 var639!1)) ; Statement: $r1 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder jjimage> 
(declare-const var639!2 var394)
(assert (not (= var639!2 null-var394)))
(assert (= (image/929889025 var639!2) var1223)) ; Statement: r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder image> = $r1 
(define-const var583 String (image/929889025 var639!2)) ; Statement: $r2 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder image> 
(assert true)
;(assert (setLength/1276735992 var583 0)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: void setLength(int)>(0) 

(declare-const var583!1 String)
(declare-const var280 Int)
(declare-const var639!3 var394)
(assert (not (= var639!3 null-var394)))
(assert (= (jjimageLen/929889025 var639!3) 0)) ; Statement: r0.<freemarker.core.FMParserTokenManager: int jjimageLen> = 0 
(define-const var3965 Int (curLexState/929889025 var639!3)) ; Statement: $i0 = r0.<freemarker.core.FMParserTokenManager: int curLexState> 
 ; Statement: tableswitch($i0) {     case 0: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 1: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 2: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 3: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 4: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 5: goto $r15 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream>;     case 6: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 7: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     default: goto $i39 = r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind>; } 
(assert (and (not (= var3965 7)) (and (not (= var3965 6)) (and (not (= var3965 5)) (and (not (= var3965 4)) (and (not (= var3965 3)) (and (not (= var3965 2)) (and (not (= var3965 1)) (and (not (= var3965 0)) true))))))))) ; Intersect: Negate: Cond: $i0 == 7   and Intersect: Negate: Cond: $i0 == 6   and Intersect: Negate: Cond: $i0 == 5   and Intersect: Negate: Cond: $i0 == 4   and Intersect: Negate: Cond: $i0 == 3   and Intersect: Negate: Cond: $i0 == 2   and Intersect: Negate: Cond: $i0 == 1   and Intersect: Negate: Cond: $i0 == 0   and Non Conditional        
(define-const var286 Int (jjmatchedKind/929889025 var639!3)) ; Statement: $i39 = r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> 
 ; Statement: if $i39 == 2147483647 goto $r3 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream> 
(assert (not (= var286 2147483647))) ; Negate: Cond: $i39 == 2147483647  
(define-const var3186 Int (jjmatchedPos/929889025 var639!3)) ; Statement: $i1 = r0.<freemarker.core.FMParserTokenManager: int jjmatchedPos> 
(define-const var699 Int (+ var3186 1)) ; Statement: $i2 = $i1 + 1 
 ; Statement: if $i2 >= i37 goto $r9 = <freemarker.core.FMParserTokenManager: long[] jjtoToken> 
(assert (>= var699 var1977)) ; Cond: $i2 >= i37 
(define-const var1818 (Array Int Int) var394-jjtoToken) ; Statement: $r9 = <freemarker.core.FMParserTokenManager: long[] jjtoToken> 
(define-const var1450 Int (jjmatchedKind/929889025 var639!3)) ; Statement: $i3 = r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> 
(define-const var591 Int (div var1450 (to_int (^ 2 6)))) ; Statement: $i4 = $i3 >> 6 
(define-const var2070 Int (select var1818 var591)) ; Statement: $l8 = $r9[$i4] 
(define-const var2264 Int (jjmatchedKind/929889025 var639!3)) ; Statement: $i5 = r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> 
(define-const var393 Int (bv2nat (bvand ((_ int2bv 64) var2264) ((_ int2bv 64) 63)))) ; Statement: $i6 = $i5 & 63 
(define-const var2573 Int (* 1 (to_int (^ 2 var393)))) ; Statement: $l7 = 1L << $i6 
(define-const var1873 Int (bv2nat (bvand ((_ int2bv 64) var2070) ((_ int2bv 64) var2573)))) ; Statement: $l9 = $l8 & $l7 
(define-const var3916 Int (ite (> var1873 0) 1 (ite (< var1873 0) (- 1) 0))) ; Statement: $b10 = $l9 cmp 0L 
 ; Statement: if $b10 == 0 goto virtualinvoke r0.<freemarker.core.FMParserTokenManager: void SkipLexicalActions(freemarker.core.Token)>(null) 
(assert (= var3916 0)) ; Cond: $b10 == 0 
(assert true)
;(assert (SkipLexicalActions/953043104 var639!3 null-var3608)) ; Statement: virtualinvoke r0.<freemarker.core.FMParserTokenManager: void SkipLexicalActions(freemarker.core.Token)>(null) 

(declare-const var639!4 var394)
(declare-const var2294 var1059)
(define-const var1099 (Array Int Int) var394-jjnewLexState) ; Statement: $r10 = <freemarker.core.FMParserTokenManager: int[] jjnewLexState> 
(define-const var1280 Int (jjmatchedKind/929889025 var639!4)) ; Statement: $i11 = r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> 
(define-const var2973 Int (select var1099 var1280)) ; Statement: $i12 = $r10[$i11] 
(define-const var3976 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i51 = (int) -1 
 ; Statement: if $i12 == $i51 goto $r21 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream> 
(assert (not (= var2973 var3976))) ; Negate: Cond: $i12 == $i51  
(declare-const var1964 var3442) ; Statement: $r20 := @caughtexception 
(assert (not (= var1964 null-var3442)))
(declare-const var639!5 var394)
(assert (not (= var639!5 null-var394)))
(assert (= (jjmatchedKind/929889025 var639!5) 0)) ; Statement: r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 0 
(define-const var1675 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i46 = (int) -1 
(declare-const var639!6 var394)
(assert (not (= var639!6 null-var394)))
(assert (= (jjmatchedPos/929889025 var639!6) var1675)) ; Statement: r0.<freemarker.core.FMParserTokenManager: int jjmatchedPos> = $i46 
(assert true)
(define-const var1547 var3608 (jjFillToken/-1048404936 var639!6)) ; Statement: r22 = virtualinvoke r0.<freemarker.core.FMParserTokenManager: freemarker.core.Token jjFillToken()>() 
 ; Statement: return r22 
(check-sat)
(get-model)
(get-unsat-core)
; {input_stream/929889025=([freemarker.core.FMParserTokenManager], freemarker.core.SimpleCharStream), BeginToken/1565880212=([freemarker.core.SimpleCharStream], char), cast-from-Int-to-Int=([char], int), curChar/929889025=([freemarker.core.FMParserTokenManager], int), jjimage/929889025=([freemarker.core.FMParserTokenManager], java.lang.StringBuilder), image/929889025=([freemarker.core.FMParserTokenManager], java.lang.StringBuilder), setLength/1276735992=([java.lang.StringBuilder, int], void), jjimageLen/929889025=([freemarker.core.FMParserTokenManager], int), curLexState/929889025=([freemarker.core.FMParserTokenManager], int), jjmatchedKind/929889025=([freemarker.core.FMParserTokenManager], int), jjmatchedPos/929889025=([freemarker.core.FMParserTokenManager], int), SkipLexicalActions/953043104=([freemarker.core.FMParserTokenManager, freemarker.core.Token], void), jjFillToken/-1048404936=([freemarker.core.FMParserTokenManager], freemarker.core.Token)}
; {var394=freemarker.core.FMParserTokenManager, var639=r0, var1977=i37, var3562=freemarker.core.SimpleCharStream, var2539=$r21, var1255=$c38, var2904=$i44, var1223=$r1, var583=$r2, var280=0, var3965=$i0, var286=$i39, var3186=$i1, var699=$i2, var1818=$r9, var1450=$i3, var591=$i4, var2070=$l8, var2264=$i5, var393=$i6, var2573=$l7, var1873=$l9, var3916=$b10, var3608=freemarker.core.Token, var2294=null, var1059=null_type, var1099=$r10, var1280=$i11, var2973=$i12, var3976=$i51, var3442=java.lang.Exception, var1964=$r20, var1675=$i46, var1547=r22}
; {freemarker.core.FMParserTokenManager=var394, r0=var639, i37=var1977, freemarker.core.SimpleCharStream=var3562, $r21=var2539, $c38=var1255, $i44=var2904, $r1=var1223, $r2=var583, 0=var280, $i0=var3965, $i39=var286, $i1=var3186, $i2=var699, $r9=var1818, $i3=var1450, $i4=var591, $l8=var2070, $i5=var2264, $i6=var393, $l7=var2573, $l9=var1873, $b10=var3916, freemarker.core.Token=var3608, null=var2294, null_type=var1059, $r10=var1099, $i11=var1280, $i12=var2973, $i51=var3976, java.lang.Exception=var3442, $r20=var1964, $i46=var1675, r22=var1547}
;seq <java.lang.StringBuilder: void setLength(int)>
;cnt {"<java.lang.StringBuilder: void setLength(int)>": 1}
;stmts r0 := @this: freemarker.core.FMParserTokenManager;	i37 = 0;	$r21 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream>;	$c38 = virtualinvoke $r21.<freemarker.core.SimpleCharStream: char BeginToken()>();	$i44 = (int) $c38;	r0.<freemarker.core.FMParserTokenManager: int curChar> = $i44;	goto [?= $r1 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder jjimage>];	$r1 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder jjimage>;	r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder image> = $r1;	$r2 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder image>;	virtualinvoke $r2.<java.lang.StringBuilder: void setLength(int)>(0);	r0.<freemarker.core.FMParserTokenManager: int jjimageLen> = 0;	$i0 = r0.<freemarker.core.FMParserTokenManager: int curLexState>;	tableswitch($i0) {     case 0: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 1: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 2: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 3: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 4: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 5: goto $r15 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream>;     case 6: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 7: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     default: goto $i39 = r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind>; };	$i39 = r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind>;	if $i39 == 2147483647 goto $r3 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream>;	$i1 = r0.<freemarker.core.FMParserTokenManager: int jjmatchedPos>;	$i2 = $i1 + 1;	if $i2 >= i37 goto $r9 = <freemarker.core.FMParserTokenManager: long[] jjtoToken>;	$r9 = <freemarker.core.FMParserTokenManager: long[] jjtoToken>;	$i3 = r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind>;	$i4 = $i3 >> 6;	$l8 = $r9[$i4];	$i5 = r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind>;	$i6 = $i5 & 63;	$l7 = 1L << $i6;	$l9 = $l8 & $l7;	$b10 = $l9 cmp 0L;	if $b10 == 0 goto virtualinvoke r0.<freemarker.core.FMParserTokenManager: void SkipLexicalActions(freemarker.core.Token)>(null);	virtualinvoke r0.<freemarker.core.FMParserTokenManager: void SkipLexicalActions(freemarker.core.Token)>(null);	$r10 = <freemarker.core.FMParserTokenManager: int[] jjnewLexState>;	$i11 = r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind>;	$i12 = $r10[$i11];	$i51 = (int) -1;	if $i12 == $i51 goto $r21 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream>;	$r20 := @caughtexception;	r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 0;	$i46 = (int) -1;	r0.<freemarker.core.FMParserTokenManager: int jjmatchedPos> = $i46;	r22 = virtualinvoke r0.<freemarker.core.FMParserTokenManager: freemarker.core.Token jjFillToken()>();	return r22
;block_num 12