(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2886 0)
(declare-sort var3979 0)
(declare-sort var1558 0)
(declare-sort var1580 0)
(declare-sort var1898 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun input_stream/929889025 (var2886) var3979)
(declare-fun BeginToken/1565880212 (var3979) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun curChar/929889025 (var2886) Int)
(declare-fun jjimage/929889025 (var2886) String)
(declare-fun image/929889025 (var2886) String)
(declare-fun setLength/1276735992 (String Int) void)
(declare-fun jjimageLen/929889025 (var2886) Int)
(declare-fun curLexState/929889025 (var2886) Int)
(declare-fun jjmatchedKind/929889025 (var2886) Int)
(declare-fun jjmatchedPos/929889025 (var2886) Int)
(declare-fun jjFillToken/-1048404936 (var2886) var1898)
(declare-const null-var2886 var2886)
(declare-const null-var1558 var1558)
(declare-const null-var1580 var1580)
(declare-const var2641 var2886) ; Statement: r0 := @this: freemarker.core.FMParserTokenManager 
(assert (not (= var2641 null-var2886)))
(define-const var775 Int 0) ; Statement: i37 = 0 
(assert true) ; Non Conditional
(define-const var1054 var3979 (input_stream/929889025 var2641)) ; Statement: $r21 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream> 
(assert true) ; Non Conditional
(assert true)
(define-const var3347 Int (BeginToken/1565880212 var1054)) ; Statement: $c38 = virtualinvoke $r21.<freemarker.core.SimpleCharStream: char BeginToken()>() 
(assert true) ; Non Conditional
(define-const var3398 Int (cast-from-Int-to-Int var3347)) ; Statement: $i44 = (int) $c38 
(assert true) ; Non Conditional
(declare-const var2641!1 var2886)
(assert (not (= var2641!1 null-var2886)))
(assert (= (curChar/929889025 var2641!1) var3398)) ; Statement: r0.<freemarker.core.FMParserTokenManager: int curChar> = $i44 
(assert true) ; Non Conditional
 ; Statement: goto [?= $r1 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder jjimage>] 
(assert true) ; Non Conditional
(define-const var881 String (jjimage/929889025 var2641!1)) ; Statement: $r1 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder jjimage> 
(declare-const var2641!2 var2886)
(assert (not (= var2641!2 null-var2886)))
(assert (= (image/929889025 var2641!2) var881)) ; Statement: r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder image> = $r1 
(define-const var2885 String (image/929889025 var2641!2)) ; Statement: $r2 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder image> 
(assert true)
;(assert (setLength/1276735992 var2885 0)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: void setLength(int)>(0) 

(declare-const var2885!1 String)
(declare-const var3834 Int)
(declare-const var2641!3 var2886)
(assert (not (= var2641!3 null-var2886)))
(assert (= (jjimageLen/929889025 var2641!3) 0)) ; Statement: r0.<freemarker.core.FMParserTokenManager: int jjimageLen> = 0 
(define-const var3711 Int (curLexState/929889025 var2641!3)) ; Statement: $i0 = r0.<freemarker.core.FMParserTokenManager: int curLexState> 
 ; Statement: tableswitch($i0) {     case 0: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 1: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 2: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 3: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 4: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 5: goto $r15 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream>;     case 6: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 7: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     default: goto $i39 = r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind>; } 
(assert (and (= var3711 5) (and (not (= var3711 4)) (and (not (= var3711 3)) (and (not (= var3711 2)) (and (not (= var3711 1)) (and (not (= var3711 0)) true))))))) ; Intersect: Cond: $i0 == 5  and Intersect: Negate: Cond: $i0 == 4   and Intersect: Negate: Cond: $i0 == 3   and Intersect: Negate: Cond: $i0 == 2   and Intersect: Negate: Cond: $i0 == 1   and Intersect: Negate: Cond: $i0 == 0   and Non Conditional      
(define-const var82 var3979 (input_stream/929889025 var2641!3)) ; Statement: $r15 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3290 var1558) ; Statement: $r19 := @caughtexception 
(assert (not (= var3290 null-var1558)))
 ; Statement: goto [?= $r21 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream>] 
(assert true) ; Non Conditional
(declare-const var1560 var1580) ; Statement: $r20 := @caughtexception 
(assert (not (= var1560 null-var1580)))
(declare-const var2641!4 var2886)
(assert (not (= var2641!4 null-var2886)))
(assert (= (jjmatchedKind/929889025 var2641!4) 0)) ; Statement: r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 0 
(define-const var2086 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i46 = (int) -1 
(declare-const var2641!5 var2886)
(assert (not (= var2641!5 null-var2886)))
(assert (= (jjmatchedPos/929889025 var2641!5) var2086)) ; Statement: r0.<freemarker.core.FMParserTokenManager: int jjmatchedPos> = $i46 
(assert true)
(define-const var2896 var1898 (jjFillToken/-1048404936 var2641!5)) ; Statement: r22 = virtualinvoke r0.<freemarker.core.FMParserTokenManager: freemarker.core.Token jjFillToken()>() 
 ; Statement: return r22 
(check-sat)
(get-model)
(get-unsat-core)
; {input_stream/929889025=([freemarker.core.FMParserTokenManager], freemarker.core.SimpleCharStream), BeginToken/1565880212=([freemarker.core.SimpleCharStream], char), cast-from-Int-to-Int=([char], int), curChar/929889025=([freemarker.core.FMParserTokenManager], int), jjimage/929889025=([freemarker.core.FMParserTokenManager], java.lang.StringBuilder), image/929889025=([freemarker.core.FMParserTokenManager], java.lang.StringBuilder), setLength/1276735992=([java.lang.StringBuilder, int], void), jjimageLen/929889025=([freemarker.core.FMParserTokenManager], int), curLexState/929889025=([freemarker.core.FMParserTokenManager], int), jjmatchedKind/929889025=([freemarker.core.FMParserTokenManager], int), jjmatchedPos/929889025=([freemarker.core.FMParserTokenManager], int), jjFillToken/-1048404936=([freemarker.core.FMParserTokenManager], freemarker.core.Token)}
; {var2886=freemarker.core.FMParserTokenManager, var2641=r0, var775=i37, var3979=freemarker.core.SimpleCharStream, var1054=$r21, var3347=$c38, var3398=$i44, var881=$r1, var2885=$r2, var3834=0, var3711=$i0, var82=$r15, var1558=java.io.IOException, var3290=$r19, var1580=java.lang.Exception, var1560=$r20, var2086=$i46, var1898=freemarker.core.Token, var2896=r22}
; {freemarker.core.FMParserTokenManager=var2886, r0=var2641, i37=var775, freemarker.core.SimpleCharStream=var3979, $r21=var1054, $c38=var3347, $i44=var3398, $r1=var881, $r2=var2885, 0=var3834, $i0=var3711, $r15=var82, java.io.IOException=var1558, $r19=var3290, java.lang.Exception=var1580, $r20=var1560, $i46=var2086, freemarker.core.Token=var1898, r22=var2896}
;seq <java.lang.StringBuilder: void setLength(int)>
;cnt {"<java.lang.StringBuilder: void setLength(int)>": 1}
;stmts r0 := @this: freemarker.core.FMParserTokenManager;	i37 = 0;	$r21 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream>;	$c38 = virtualinvoke $r21.<freemarker.core.SimpleCharStream: char BeginToken()>();	$i44 = (int) $c38;	r0.<freemarker.core.FMParserTokenManager: int curChar> = $i44;	goto [?= $r1 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder jjimage>];	$r1 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder jjimage>;	r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder image> = $r1;	$r2 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder image>;	virtualinvoke $r2.<java.lang.StringBuilder: void setLength(int)>(0);	r0.<freemarker.core.FMParserTokenManager: int jjimageLen> = 0;	$i0 = r0.<freemarker.core.FMParserTokenManager: int curLexState>;	tableswitch($i0) {     case 0: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 1: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 2: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 3: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 4: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 5: goto $r15 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream>;     case 6: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 7: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     default: goto $i39 = r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind>; };	$r15 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream>;	$r19 := @caughtexception;	goto [?= $r21 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream>];	$r20 := @caughtexception;	r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 0;	$i46 = (int) -1;	r0.<freemarker.core.FMParserTokenManager: int jjmatchedPos> = $i46;	r22 = virtualinvoke r0.<freemarker.core.FMParserTokenManager: freemarker.core.Token jjFillToken()>();	return r22
;block_num 10