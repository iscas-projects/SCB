(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var305 0)
(declare-sort var3977 0)
(declare-sort var3198 0)
(declare-sort var1348 0)
(declare-sort var2920 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun input_stream/929889025 (var305) var3977)
(declare-fun BeginToken/1565880212 (var3977) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun curChar/929889025 (var305) Int)
(declare-fun jjimage/929889025 (var305) String)
(declare-fun image/929889025 (var305) String)
(declare-fun setLength/1276735992 (String Int) void)
(declare-fun jjimageLen/929889025 (var305) Int)
(declare-fun curLexState/929889025 (var305) Int)
(declare-fun backup/-2036154631 (var3977 Int) void)
(declare-fun jjmatchedKind/929889025 (var305) Int)
(declare-fun jjmatchedPos/929889025 (var305) Int)
(declare-fun jjFillToken/-1048404936 (var305) var2920)
(declare-const null-var305 var305)
(declare-const null-var3198 var3198)
(declare-const null-var1348 var1348)
(declare-const var2014 var305) ; Statement: r0 := @this: freemarker.core.FMParserTokenManager 
(assert (not (= var2014 null-var305)))
(define-const var3489 Int 0) ; Statement: i37 = 0 
(assert true) ; Non Conditional
(define-const var3982 var3977 (input_stream/929889025 var2014)) ; Statement: $r21 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream> 
(assert true) ; Non Conditional
(assert true)
(define-const var3222 Int (BeginToken/1565880212 var3982)) ; Statement: $c38 = virtualinvoke $r21.<freemarker.core.SimpleCharStream: char BeginToken()>() 
(assert true) ; Non Conditional
(define-const var3662 Int (cast-from-Int-to-Int var3222)) ; Statement: $i44 = (int) $c38 
(assert true) ; Non Conditional
(declare-const var2014!1 var305)
(assert (not (= var2014!1 null-var305)))
(assert (= (curChar/929889025 var2014!1) var3662)) ; Statement: r0.<freemarker.core.FMParserTokenManager: int curChar> = $i44 
(assert true) ; Non Conditional
 ; Statement: goto [?= $r1 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder jjimage>] 
(assert true) ; Non Conditional
(define-const var2386 String (jjimage/929889025 var2014!1)) ; Statement: $r1 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder jjimage> 
(declare-const var2014!2 var305)
(assert (not (= var2014!2 null-var305)))
(assert (= (image/929889025 var2014!2) var2386)) ; Statement: r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder image> = $r1 
(define-const var2463 String (image/929889025 var2014!2)) ; Statement: $r2 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder image> 
(assert true)
;(assert (setLength/1276735992 var2463 0)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: void setLength(int)>(0) 

(declare-const var2463!1 String)
(declare-const var2995 Int)
(declare-const var2014!3 var305)
(assert (not (= var2014!3 null-var305)))
(assert (= (jjimageLen/929889025 var2014!3) 0)) ; Statement: r0.<freemarker.core.FMParserTokenManager: int jjimageLen> = 0 
(define-const var1183 Int (curLexState/929889025 var2014!3)) ; Statement: $i0 = r0.<freemarker.core.FMParserTokenManager: int curLexState> 
 ; Statement: tableswitch($i0) {     case 0: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 1: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 2: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 3: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 4: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 5: goto $r15 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream>;     case 6: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 7: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     default: goto $i39 = r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind>; } 
(assert (and (= var1183 5) (and (not (= var1183 4)) (and (not (= var1183 3)) (and (not (= var1183 2)) (and (not (= var1183 1)) (and (not (= var1183 0)) true))))))) ; Intersect: Cond: $i0 == 5  and Intersect: Negate: Cond: $i0 == 4   and Intersect: Negate: Cond: $i0 == 3   and Intersect: Negate: Cond: $i0 == 2   and Intersect: Negate: Cond: $i0 == 1   and Intersect: Negate: Cond: $i0 == 0   and Non Conditional      
(define-const var1947 var3977 (input_stream/929889025 var2014!3)) ; Statement: $r15 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream> 
(assert true) ; Non Conditional
(assert true)
;(assert (backup/-2036154631 var1947 0)) ; Statement: virtualinvoke $r15.<freemarker.core.SimpleCharStream: void backup(int)>(0) 

(declare-const var1947!1 var3977)
(declare-const var2995!1 Int)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1064 var3198) ; Statement: $r19 := @caughtexception 
(assert (not (= var1064 null-var3198)))
 ; Statement: goto [?= $r21 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream>] 
(assert true) ; Non Conditional
(declare-const var3334 var1348) ; Statement: $r20 := @caughtexception 
(assert (not (= var3334 null-var1348)))
(declare-const var2014!4 var305)
(assert (not (= var2014!4 null-var305)))
(assert (= (jjmatchedKind/929889025 var2014!4) 0)) ; Statement: r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 0 
(define-const var2884 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i46 = (int) -1 
(declare-const var2014!5 var305)
(assert (not (= var2014!5 null-var305)))
(assert (= (jjmatchedPos/929889025 var2014!5) var2884)) ; Statement: r0.<freemarker.core.FMParserTokenManager: int jjmatchedPos> = $i46 
(assert true)
(define-const var3070 var2920 (jjFillToken/-1048404936 var2014!5)) ; Statement: r22 = virtualinvoke r0.<freemarker.core.FMParserTokenManager: freemarker.core.Token jjFillToken()>() 
 ; Statement: return r22 
(check-sat)
(get-model)
(get-unsat-core)
; {input_stream/929889025=([freemarker.core.FMParserTokenManager], freemarker.core.SimpleCharStream), BeginToken/1565880212=([freemarker.core.SimpleCharStream], char), cast-from-Int-to-Int=([char], int), curChar/929889025=([freemarker.core.FMParserTokenManager], int), jjimage/929889025=([freemarker.core.FMParserTokenManager], java.lang.StringBuilder), image/929889025=([freemarker.core.FMParserTokenManager], java.lang.StringBuilder), setLength/1276735992=([java.lang.StringBuilder, int], void), jjimageLen/929889025=([freemarker.core.FMParserTokenManager], int), curLexState/929889025=([freemarker.core.FMParserTokenManager], int), backup/-2036154631=([freemarker.core.SimpleCharStream, int], void), jjmatchedKind/929889025=([freemarker.core.FMParserTokenManager], int), jjmatchedPos/929889025=([freemarker.core.FMParserTokenManager], int), jjFillToken/-1048404936=([freemarker.core.FMParserTokenManager], freemarker.core.Token)}
; {var305=freemarker.core.FMParserTokenManager, var2014=r0, var3489=i37, var3977=freemarker.core.SimpleCharStream, var3982=$r21, var3222=$c38, var3662=$i44, var2386=$r1, var2463=$r2, var2995=0, var1183=$i0, var1947=$r15, var3198=java.io.IOException, var1064=$r19, var1348=java.lang.Exception, var3334=$r20, var2884=$i46, var2920=freemarker.core.Token, var3070=r22}
; {freemarker.core.FMParserTokenManager=var305, r0=var2014, i37=var3489, freemarker.core.SimpleCharStream=var3977, $r21=var3982, $c38=var3222, $i44=var3662, $r1=var2386, $r2=var2463, 0=var2995, $i0=var1183, $r15=var1947, java.io.IOException=var3198, $r19=var1064, java.lang.Exception=var1348, $r20=var3334, $i46=var2884, freemarker.core.Token=var2920, r22=var3070}
;seq <java.lang.StringBuilder: void setLength(int)>
;cnt {"<java.lang.StringBuilder: void setLength(int)>": 1}
;stmts r0 := @this: freemarker.core.FMParserTokenManager;	i37 = 0;	$r21 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream>;	$c38 = virtualinvoke $r21.<freemarker.core.SimpleCharStream: char BeginToken()>();	$i44 = (int) $c38;	r0.<freemarker.core.FMParserTokenManager: int curChar> = $i44;	goto [?= $r1 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder jjimage>];	$r1 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder jjimage>;	r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder image> = $r1;	$r2 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder image>;	virtualinvoke $r2.<java.lang.StringBuilder: void setLength(int)>(0);	r0.<freemarker.core.FMParserTokenManager: int jjimageLen> = 0;	$i0 = r0.<freemarker.core.FMParserTokenManager: int curLexState>;	tableswitch($i0) {     case 0: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 1: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 2: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 3: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 4: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 5: goto $r15 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream>;     case 6: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 7: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     default: goto $i39 = r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind>; };	$r15 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream>;	virtualinvoke $r15.<freemarker.core.SimpleCharStream: void backup(int)>(0);	$r19 := @caughtexception;	goto [?= $r21 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream>];	$r20 := @caughtexception;	r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 0;	$i46 = (int) -1;	r0.<freemarker.core.FMParserTokenManager: int jjmatchedPos> = $i46;	r22 = virtualinvoke r0.<freemarker.core.FMParserTokenManager: freemarker.core.Token jjFillToken()>();	return r22
;block_num 11