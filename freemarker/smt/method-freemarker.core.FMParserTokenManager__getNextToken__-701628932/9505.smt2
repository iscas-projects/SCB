(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var609 0)
(declare-sort var3592 0)
(declare-sort var315 0)
(declare-sort var2864 0)
(declare-sort var783 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun input_stream/929889025 (var609) var3592)
(declare-fun BeginToken/1565880212 (var3592) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun curChar/929889025 (var609) Int)
(declare-fun jjimage/929889025 (var609) String)
(declare-fun image/929889025 (var609) String)
(declare-fun setLength/1276735992 (String Int) void)
(declare-fun jjimageLen/929889025 (var609) Int)
(declare-fun curLexState/929889025 (var609) Int)
(declare-fun jjmatchedKind/929889025 (var609) Int)
(declare-fun jjmatchedPos/929889025 (var609) Int)
(declare-fun jjFillToken/-1048404936 (var609) var783)
(declare-const null-var609 var609)
(declare-const null-var315 var315)
(declare-const null-var2864 var2864)
(declare-const var1103 var609) ; Statement: r0 := @this: freemarker.core.FMParserTokenManager 
(assert (not (= var1103 null-var609)))
(define-const var1943 Int 0) ; Statement: i37 = 0 
(assert true) ; Non Conditional
(define-const var2395 var3592 (input_stream/929889025 var1103)) ; Statement: $r21 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream> 
(assert true) ; Non Conditional
(assert true)
(define-const var1638 Int (BeginToken/1565880212 var2395)) ; Statement: $c38 = virtualinvoke $r21.<freemarker.core.SimpleCharStream: char BeginToken()>() 
(assert true) ; Non Conditional
(define-const var3295 Int (cast-from-Int-to-Int var1638)) ; Statement: $i44 = (int) $c38 
(assert true) ; Non Conditional
(declare-const var1103!1 var609)
(assert (not (= var1103!1 null-var609)))
(assert (= (curChar/929889025 var1103!1) var3295)) ; Statement: r0.<freemarker.core.FMParserTokenManager: int curChar> = $i44 
(assert true) ; Non Conditional
 ; Statement: goto [?= $r1 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder jjimage>] 
(assert true) ; Non Conditional
(define-const var659 String (jjimage/929889025 var1103!1)) ; Statement: $r1 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder jjimage> 
(declare-const var1103!2 var609)
(assert (not (= var1103!2 null-var609)))
(assert (= (image/929889025 var1103!2) var659)) ; Statement: r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder image> = $r1 
(define-const var1467 String (image/929889025 var1103!2)) ; Statement: $r2 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder image> 
(assert true)
;(assert (setLength/1276735992 var1467 0)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: void setLength(int)>(0) 

(declare-const var1467!1 String)
(declare-const var1991 Int)
(declare-const var1103!3 var609)
(assert (not (= var1103!3 null-var609)))
(assert (= (jjimageLen/929889025 var1103!3) 0)) ; Statement: r0.<freemarker.core.FMParserTokenManager: int jjimageLen> = 0 
(define-const var3064 Int (curLexState/929889025 var1103!3)) ; Statement: $i0 = r0.<freemarker.core.FMParserTokenManager: int curLexState> 
 ; Statement: tableswitch($i0) {     case 0: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 1: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 2: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 3: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 4: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 5: goto $r15 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream>;     case 6: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 7: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     default: goto $i39 = r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind>; } 
(assert (and (= var3064 5) (and (not (= var3064 4)) (and (not (= var3064 3)) (and (not (= var3064 2)) (and (not (= var3064 1)) (and (not (= var3064 0)) true))))))) ; Intersect: Cond: $i0 == 5  and Intersect: Negate: Cond: $i0 == 4   and Intersect: Negate: Cond: $i0 == 3   and Intersect: Negate: Cond: $i0 == 2   and Intersect: Negate: Cond: $i0 == 1   and Intersect: Negate: Cond: $i0 == 0   and Non Conditional      
(define-const var2151 var3592 (input_stream/929889025 var1103!3)) ; Statement: $r15 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2773 var315) ; Statement: $r19 := @caughtexception 
(assert (not (= var2773 null-var315)))
 ; Statement: goto [?= $r21 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream>] 
(assert true) ; Non Conditional
(define-const var2395!1 var3592 (input_stream/929889025 var1103!3)) ; Statement: $r21 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream> 
(assert true) ; Non Conditional
(assert true)
(define-const var1638!1 Int (BeginToken/1565880212 var2395!1)) ; Statement: $c38 = virtualinvoke $r21.<freemarker.core.SimpleCharStream: char BeginToken()>() 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2266 var2864) ; Statement: $r20 := @caughtexception 
(assert (not (= var2266 null-var2864)))
(declare-const var1103!4 var609)
(assert (not (= var1103!4 null-var609)))
(assert (= (jjmatchedKind/929889025 var1103!4) 0)) ; Statement: r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 0 
(define-const var1988 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i46 = (int) -1 
(declare-const var1103!5 var609)
(assert (not (= var1103!5 null-var609)))
(assert (= (jjmatchedPos/929889025 var1103!5) var1988)) ; Statement: r0.<freemarker.core.FMParserTokenManager: int jjmatchedPos> = $i46 
(assert true)
(define-const var2124 var783 (jjFillToken/-1048404936 var1103!5)) ; Statement: r22 = virtualinvoke r0.<freemarker.core.FMParserTokenManager: freemarker.core.Token jjFillToken()>() 
 ; Statement: return r22 
(check-sat)
(get-model)
(get-unsat-core)
; {input_stream/929889025=([freemarker.core.FMParserTokenManager], freemarker.core.SimpleCharStream), BeginToken/1565880212=([freemarker.core.SimpleCharStream], char), cast-from-Int-to-Int=([char], int), curChar/929889025=([freemarker.core.FMParserTokenManager], int), jjimage/929889025=([freemarker.core.FMParserTokenManager], java.lang.StringBuilder), image/929889025=([freemarker.core.FMParserTokenManager], java.lang.StringBuilder), setLength/1276735992=([java.lang.StringBuilder, int], void), jjimageLen/929889025=([freemarker.core.FMParserTokenManager], int), curLexState/929889025=([freemarker.core.FMParserTokenManager], int), jjmatchedKind/929889025=([freemarker.core.FMParserTokenManager], int), jjmatchedPos/929889025=([freemarker.core.FMParserTokenManager], int), jjFillToken/-1048404936=([freemarker.core.FMParserTokenManager], freemarker.core.Token)}
; {var609=freemarker.core.FMParserTokenManager, var1103=r0, var1943=i37, var3592=freemarker.core.SimpleCharStream, var2395=$r21, var1638=$c38, var3295=$i44, var659=$r1, var1467=$r2, var1991=0, var3064=$i0, var2151=$r15, var315=java.io.IOException, var2773=$r19, var2864=java.lang.Exception, var2266=$r20, var1988=$i46, var783=freemarker.core.Token, var2124=r22}
; {freemarker.core.FMParserTokenManager=var609, r0=var1103, i37=var1943, freemarker.core.SimpleCharStream=var3592, $r21=var2395, $c38=var1638, $i44=var3295, $r1=var659, $r2=var1467, 0=var1991, $i0=var3064, $r15=var2151, java.io.IOException=var315, $r19=var2773, java.lang.Exception=var2864, $r20=var2266, $i46=var1988, freemarker.core.Token=var783, r22=var2124}
;seq <java.lang.StringBuilder: void setLength(int)>
;cnt {"<java.lang.StringBuilder: void setLength(int)>": 1}
;stmts r0 := @this: freemarker.core.FMParserTokenManager;	i37 = 0;	$r21 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream>;	$c38 = virtualinvoke $r21.<freemarker.core.SimpleCharStream: char BeginToken()>();	$i44 = (int) $c38;	r0.<freemarker.core.FMParserTokenManager: int curChar> = $i44;	goto [?= $r1 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder jjimage>];	$r1 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder jjimage>;	r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder image> = $r1;	$r2 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder image>;	virtualinvoke $r2.<java.lang.StringBuilder: void setLength(int)>(0);	r0.<freemarker.core.FMParserTokenManager: int jjimageLen> = 0;	$i0 = r0.<freemarker.core.FMParserTokenManager: int curLexState>;	tableswitch($i0) {     case 0: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 1: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 2: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 3: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 4: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 5: goto $r15 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream>;     case 6: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 7: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     default: goto $i39 = r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind>; };	$r15 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream>;	$r19 := @caughtexception;	goto [?= $r21 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream>];	$r21 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream>;	$c38 = virtualinvoke $r21.<freemarker.core.SimpleCharStream: char BeginToken()>();	$r20 := @caughtexception;	r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 0;	$i46 = (int) -1;	r0.<freemarker.core.FMParserTokenManager: int jjmatchedPos> = $i46;	r22 = virtualinvoke r0.<freemarker.core.FMParserTokenManager: freemarker.core.Token jjFillToken()>();	return r22
;block_num 12