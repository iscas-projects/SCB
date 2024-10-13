(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var270 0)
(declare-sort var580 0)
(declare-sort var1457 0)
(declare-sort var323 0)
(declare-sort var79 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun input_stream/929889025 (var270) var580)
(declare-fun BeginToken/1565880212 (var580) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun curChar/929889025 (var270) Int)
(declare-fun jjimage/929889025 (var270) String)
(declare-fun image/929889025 (var270) String)
(declare-fun setLength/1276735992 (String Int) void)
(declare-fun jjimageLen/929889025 (var270) Int)
(declare-fun curLexState/929889025 (var270) Int)
(declare-fun jjmatchedKind/929889025 (var270) Int)
(declare-fun jjmatchedPos/929889025 (var270) Int)
(declare-fun jjFillToken/-1048404936 (var270) var79)
(declare-const null-var270 var270)
(declare-const null-var1457 var1457)
(declare-const null-var323 var323)
(declare-const var503 var270) ; Statement: r0 := @this: freemarker.core.FMParserTokenManager 
(assert (not (= var503 null-var270)))
(define-const var2473 Int 0) ; Statement: i37 = 0 
(assert true) ; Non Conditional
(define-const var3203 var580 (input_stream/929889025 var503)) ; Statement: $r21 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream> 
(assert true) ; Non Conditional
(assert true)
(define-const var1479 Int (BeginToken/1565880212 var3203)) ; Statement: $c38 = virtualinvoke $r21.<freemarker.core.SimpleCharStream: char BeginToken()>() 
(assert true) ; Non Conditional
(define-const var996 Int (cast-from-Int-to-Int var1479)) ; Statement: $i44 = (int) $c38 
(assert true) ; Non Conditional
(declare-const var503!1 var270)
(assert (not (= var503!1 null-var270)))
(assert (= (curChar/929889025 var503!1) var996)) ; Statement: r0.<freemarker.core.FMParserTokenManager: int curChar> = $i44 
(assert true) ; Non Conditional
 ; Statement: goto [?= $r1 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder jjimage>] 
(assert true) ; Non Conditional
(define-const var1927 String (jjimage/929889025 var503!1)) ; Statement: $r1 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder jjimage> 
(declare-const var503!2 var270)
(assert (not (= var503!2 null-var270)))
(assert (= (image/929889025 var503!2) var1927)) ; Statement: r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder image> = $r1 
(define-const var3276 String (image/929889025 var503!2)) ; Statement: $r2 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder image> 
(assert true)
;(assert (setLength/1276735992 var3276 0)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: void setLength(int)>(0) 

(declare-const var3276!1 String)
(declare-const var1607 Int)
(declare-const var503!3 var270)
(assert (not (= var503!3 null-var270)))
(assert (= (jjimageLen/929889025 var503!3) 0)) ; Statement: r0.<freemarker.core.FMParserTokenManager: int jjimageLen> = 0 
(define-const var317 Int (curLexState/929889025 var503!3)) ; Statement: $i0 = r0.<freemarker.core.FMParserTokenManager: int curLexState> 
 ; Statement: tableswitch($i0) {     case 0: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 1: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 2: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 3: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 4: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 5: goto $r15 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream>;     case 6: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 7: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     default: goto $i39 = r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind>; } 
(assert (and (= var317 5) (and (not (= var317 4)) (and (not (= var317 3)) (and (not (= var317 2)) (and (not (= var317 1)) (and (not (= var317 0)) true))))))) ; Intersect: Cond: $i0 == 5  and Intersect: Negate: Cond: $i0 == 4   and Intersect: Negate: Cond: $i0 == 3   and Intersect: Negate: Cond: $i0 == 2   and Intersect: Negate: Cond: $i0 == 1   and Intersect: Negate: Cond: $i0 == 0   and Non Conditional      
(define-const var1878 var580 (input_stream/929889025 var503!3)) ; Statement: $r15 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var332 var1457) ; Statement: $r19 := @caughtexception 
(assert (not (= var332 null-var1457)))
 ; Statement: goto [?= $r21 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream>] 
(assert true) ; Non Conditional
(define-const var3203!1 var580 (input_stream/929889025 var503!3)) ; Statement: $r21 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2347 var323) ; Statement: $r20 := @caughtexception 
(assert (not (= var2347 null-var323)))
(declare-const var503!4 var270)
(assert (not (= var503!4 null-var270)))
(assert (= (jjmatchedKind/929889025 var503!4) 0)) ; Statement: r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 0 
(define-const var895 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i46 = (int) -1 
(declare-const var503!5 var270)
(assert (not (= var503!5 null-var270)))
(assert (= (jjmatchedPos/929889025 var503!5) var895)) ; Statement: r0.<freemarker.core.FMParserTokenManager: int jjmatchedPos> = $i46 
(assert true)
(define-const var2125 var79 (jjFillToken/-1048404936 var503!5)) ; Statement: r22 = virtualinvoke r0.<freemarker.core.FMParserTokenManager: freemarker.core.Token jjFillToken()>() 
 ; Statement: return r22 
(check-sat)
(get-model)
(get-unsat-core)
; {input_stream/929889025=([freemarker.core.FMParserTokenManager], freemarker.core.SimpleCharStream), BeginToken/1565880212=([freemarker.core.SimpleCharStream], char), cast-from-Int-to-Int=([char], int), curChar/929889025=([freemarker.core.FMParserTokenManager], int), jjimage/929889025=([freemarker.core.FMParserTokenManager], java.lang.StringBuilder), image/929889025=([freemarker.core.FMParserTokenManager], java.lang.StringBuilder), setLength/1276735992=([java.lang.StringBuilder, int], void), jjimageLen/929889025=([freemarker.core.FMParserTokenManager], int), curLexState/929889025=([freemarker.core.FMParserTokenManager], int), jjmatchedKind/929889025=([freemarker.core.FMParserTokenManager], int), jjmatchedPos/929889025=([freemarker.core.FMParserTokenManager], int), jjFillToken/-1048404936=([freemarker.core.FMParserTokenManager], freemarker.core.Token)}
; {var270=freemarker.core.FMParserTokenManager, var503=r0, var2473=i37, var580=freemarker.core.SimpleCharStream, var3203=$r21, var1479=$c38, var996=$i44, var1927=$r1, var3276=$r2, var1607=0, var317=$i0, var1878=$r15, var1457=java.io.IOException, var332=$r19, var323=java.lang.Exception, var2347=$r20, var895=$i46, var79=freemarker.core.Token, var2125=r22}
; {freemarker.core.FMParserTokenManager=var270, r0=var503, i37=var2473, freemarker.core.SimpleCharStream=var580, $r21=var3203, $c38=var1479, $i44=var996, $r1=var1927, $r2=var3276, 0=var1607, $i0=var317, $r15=var1878, java.io.IOException=var1457, $r19=var332, java.lang.Exception=var323, $r20=var2347, $i46=var895, freemarker.core.Token=var79, r22=var2125}
;seq <java.lang.StringBuilder: void setLength(int)>
;cnt {"<java.lang.StringBuilder: void setLength(int)>": 1}
;stmts r0 := @this: freemarker.core.FMParserTokenManager;	i37 = 0;	$r21 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream>;	$c38 = virtualinvoke $r21.<freemarker.core.SimpleCharStream: char BeginToken()>();	$i44 = (int) $c38;	r0.<freemarker.core.FMParserTokenManager: int curChar> = $i44;	goto [?= $r1 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder jjimage>];	$r1 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder jjimage>;	r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder image> = $r1;	$r2 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder image>;	virtualinvoke $r2.<java.lang.StringBuilder: void setLength(int)>(0);	r0.<freemarker.core.FMParserTokenManager: int jjimageLen> = 0;	$i0 = r0.<freemarker.core.FMParserTokenManager: int curLexState>;	tableswitch($i0) {     case 0: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 1: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 2: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 3: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 4: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 5: goto $r15 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream>;     case 6: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 7: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     default: goto $i39 = r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind>; };	$r15 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream>;	$r19 := @caughtexception;	goto [?= $r21 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream>];	$r21 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream>;	$r20 := @caughtexception;	r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 0;	$i46 = (int) -1;	r0.<freemarker.core.FMParserTokenManager: int jjmatchedPos> = $i46;	r22 = virtualinvoke r0.<freemarker.core.FMParserTokenManager: freemarker.core.Token jjFillToken()>();	return r22
;block_num 11