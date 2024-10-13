(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1138 0)
(declare-sort var577 0)
(declare-sort var597 0)
(declare-sort var3339 0)
(declare-sort var2478 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun input_stream/929889025 (var1138) var577)
(declare-fun BeginToken/1565880212 (var577) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun curChar/929889025 (var1138) Int)
(declare-fun jjimage/929889025 (var1138) String)
(declare-fun image/929889025 (var1138) String)
(declare-fun setLength/1276735992 (String Int) void)
(declare-fun jjimageLen/929889025 (var1138) Int)
(declare-fun curLexState/929889025 (var1138) Int)
(declare-fun backup/-2036154631 (var577 Int) void)
(declare-fun jjmatchedKind/929889025 (var1138) Int)
(declare-fun jjmatchedPos/929889025 (var1138) Int)
(declare-fun jjFillToken/-1048404936 (var1138) var2478)
(declare-const null-var1138 var1138)
(declare-const null-var597 var597)
(declare-const null-var3339 var3339)
(declare-const var2887 var1138) ; Statement: r0 := @this: freemarker.core.FMParserTokenManager 
(assert (not (= var2887 null-var1138)))
(define-const var1563 Int 0) ; Statement: i37 = 0 
(assert true) ; Non Conditional
(define-const var1594 var577 (input_stream/929889025 var2887)) ; Statement: $r21 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream> 
(assert true) ; Non Conditional
(assert true)
(define-const var2279 Int (BeginToken/1565880212 var1594)) ; Statement: $c38 = virtualinvoke $r21.<freemarker.core.SimpleCharStream: char BeginToken()>() 
(assert true) ; Non Conditional
(define-const var320 Int (cast-from-Int-to-Int var2279)) ; Statement: $i44 = (int) $c38 
(assert true) ; Non Conditional
(declare-const var2887!1 var1138)
(assert (not (= var2887!1 null-var1138)))
(assert (= (curChar/929889025 var2887!1) var320)) ; Statement: r0.<freemarker.core.FMParserTokenManager: int curChar> = $i44 
(assert true) ; Non Conditional
 ; Statement: goto [?= $r1 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder jjimage>] 
(assert true) ; Non Conditional
(define-const var3387 String (jjimage/929889025 var2887!1)) ; Statement: $r1 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder jjimage> 
(declare-const var2887!2 var1138)
(assert (not (= var2887!2 null-var1138)))
(assert (= (image/929889025 var2887!2) var3387)) ; Statement: r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder image> = $r1 
(define-const var3616 String (image/929889025 var2887!2)) ; Statement: $r2 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder image> 
(assert true)
;(assert (setLength/1276735992 var3616 0)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: void setLength(int)>(0) 

(declare-const var3616!1 String)
(declare-const var2692 Int)
(declare-const var2887!3 var1138)
(assert (not (= var2887!3 null-var1138)))
(assert (= (jjimageLen/929889025 var2887!3) 0)) ; Statement: r0.<freemarker.core.FMParserTokenManager: int jjimageLen> = 0 
(define-const var3231 Int (curLexState/929889025 var2887!3)) ; Statement: $i0 = r0.<freemarker.core.FMParserTokenManager: int curLexState> 
 ; Statement: tableswitch($i0) {     case 0: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 1: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 2: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 3: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 4: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 5: goto $r15 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream>;     case 6: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 7: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     default: goto $i39 = r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind>; } 
(assert (and (= var3231 5) (and (not (= var3231 4)) (and (not (= var3231 3)) (and (not (= var3231 2)) (and (not (= var3231 1)) (and (not (= var3231 0)) true))))))) ; Intersect: Cond: $i0 == 5  and Intersect: Negate: Cond: $i0 == 4   and Intersect: Negate: Cond: $i0 == 3   and Intersect: Negate: Cond: $i0 == 2   and Intersect: Negate: Cond: $i0 == 1   and Intersect: Negate: Cond: $i0 == 0   and Non Conditional      
(define-const var2645 var577 (input_stream/929889025 var2887!3)) ; Statement: $r15 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream> 
(assert true) ; Non Conditional
(assert true)
;(assert (backup/-2036154631 var2645 0)) ; Statement: virtualinvoke $r15.<freemarker.core.SimpleCharStream: void backup(int)>(0) 

(declare-const var2645!1 var577)
(declare-const var2692!1 Int)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1643 var597) ; Statement: $r19 := @caughtexception 
(assert (not (= var1643 null-var597)))
 ; Statement: goto [?= $r21 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream>] 
(assert true) ; Non Conditional
(define-const var1594!1 var577 (input_stream/929889025 var2887!3)) ; Statement: $r21 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var378 var3339) ; Statement: $r20 := @caughtexception 
(assert (not (= var378 null-var3339)))
(declare-const var2887!4 var1138)
(assert (not (= var2887!4 null-var1138)))
(assert (= (jjmatchedKind/929889025 var2887!4) 0)) ; Statement: r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 0 
(define-const var2936 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i46 = (int) -1 
(declare-const var2887!5 var1138)
(assert (not (= var2887!5 null-var1138)))
(assert (= (jjmatchedPos/929889025 var2887!5) var2936)) ; Statement: r0.<freemarker.core.FMParserTokenManager: int jjmatchedPos> = $i46 
(assert true)
(define-const var1048 var2478 (jjFillToken/-1048404936 var2887!5)) ; Statement: r22 = virtualinvoke r0.<freemarker.core.FMParserTokenManager: freemarker.core.Token jjFillToken()>() 
 ; Statement: return r22 
(check-sat)
(get-model)
(get-unsat-core)
; {input_stream/929889025=([freemarker.core.FMParserTokenManager], freemarker.core.SimpleCharStream), BeginToken/1565880212=([freemarker.core.SimpleCharStream], char), cast-from-Int-to-Int=([char], int), curChar/929889025=([freemarker.core.FMParserTokenManager], int), jjimage/929889025=([freemarker.core.FMParserTokenManager], java.lang.StringBuilder), image/929889025=([freemarker.core.FMParserTokenManager], java.lang.StringBuilder), setLength/1276735992=([java.lang.StringBuilder, int], void), jjimageLen/929889025=([freemarker.core.FMParserTokenManager], int), curLexState/929889025=([freemarker.core.FMParserTokenManager], int), backup/-2036154631=([freemarker.core.SimpleCharStream, int], void), jjmatchedKind/929889025=([freemarker.core.FMParserTokenManager], int), jjmatchedPos/929889025=([freemarker.core.FMParserTokenManager], int), jjFillToken/-1048404936=([freemarker.core.FMParserTokenManager], freemarker.core.Token)}
; {var1138=freemarker.core.FMParserTokenManager, var2887=r0, var1563=i37, var577=freemarker.core.SimpleCharStream, var1594=$r21, var2279=$c38, var320=$i44, var3387=$r1, var3616=$r2, var2692=0, var3231=$i0, var2645=$r15, var597=java.io.IOException, var1643=$r19, var3339=java.lang.Exception, var378=$r20, var2936=$i46, var2478=freemarker.core.Token, var1048=r22}
; {freemarker.core.FMParserTokenManager=var1138, r0=var2887, i37=var1563, freemarker.core.SimpleCharStream=var577, $r21=var1594, $c38=var2279, $i44=var320, $r1=var3387, $r2=var3616, 0=var2692, $i0=var3231, $r15=var2645, java.io.IOException=var597, $r19=var1643, java.lang.Exception=var3339, $r20=var378, $i46=var2936, freemarker.core.Token=var2478, r22=var1048}
;seq <java.lang.StringBuilder: void setLength(int)>
;cnt {"<java.lang.StringBuilder: void setLength(int)>": 1}
;stmts r0 := @this: freemarker.core.FMParserTokenManager;	i37 = 0;	$r21 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream>;	$c38 = virtualinvoke $r21.<freemarker.core.SimpleCharStream: char BeginToken()>();	$i44 = (int) $c38;	r0.<freemarker.core.FMParserTokenManager: int curChar> = $i44;	goto [?= $r1 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder jjimage>];	$r1 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder jjimage>;	r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder image> = $r1;	$r2 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder image>;	virtualinvoke $r2.<java.lang.StringBuilder: void setLength(int)>(0);	r0.<freemarker.core.FMParserTokenManager: int jjimageLen> = 0;	$i0 = r0.<freemarker.core.FMParserTokenManager: int curLexState>;	tableswitch($i0) {     case 0: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 1: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 2: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 3: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 4: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 5: goto $r15 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream>;     case 6: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     case 7: goto r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 2147483647;     default: goto $i39 = r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind>; };	$r15 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream>;	virtualinvoke $r15.<freemarker.core.SimpleCharStream: void backup(int)>(0);	$r19 := @caughtexception;	goto [?= $r21 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream>];	$r21 = r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream>;	$r20 := @caughtexception;	r0.<freemarker.core.FMParserTokenManager: int jjmatchedKind> = 0;	$i46 = (int) -1;	r0.<freemarker.core.FMParserTokenManager: int jjmatchedPos> = $i46;	r22 = virtualinvoke r0.<freemarker.core.FMParserTokenManager: freemarker.core.Token jjFillToken()>();	return r22
;block_num 12