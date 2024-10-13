(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2875 0)
(declare-sort var1941 0)
(declare-sort var1610 0)
(declare-sort var800 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun input_stream/1964309570 (var2875) var1610)
(declare-fun BeginToken/-1085822358 (var1610) Int)
(declare-fun curChar/1964309570 (var2875) Int)
(declare-fun jjimage/1964309570 (var2875) String)
(declare-fun image/1964309570 (var2875) String)
(declare-fun setLength/1276735992 (String Int) void)
(declare-fun jjimageLen/1964309570 (var2875) Int)
(declare-fun curLexState/1964309570 (var2875) Int)
(declare-fun jjmatchedKind/1964309570 (var2875) Int)
(declare-fun jjFillToken/-1355273761 (var2875) var1941)
(declare-fun specialToken/197050796 (var1941) var1941)
(declare-const null-var2875 var2875)
(declare-const null-var1941 var1941)
(declare-const null-var800 var800)
(declare-const var2525 var2875) ; Statement: r0 := @this: org.javacc.parser.JavaCCParserTokenManager 
(assert (not (= var2525 null-var2875)))
(define-const var427 var1941 null-var1941) ; Statement: r27 = null 
(define-const var2842 Int 0) ; Statement: i63 = 0 
(assert true) ; Non Conditional
(define-const var482 var1610 (input_stream/1964309570 var2525)) ; Statement: $r28 = r0.<org.javacc.parser.JavaCCParserTokenManager: org.javacc.parser.JavaCharStream input_stream> 
(assert true) ; Non Conditional
(assert true)
(define-const var3203 Int (BeginToken/-1085822358 var482)) ; Statement: $c64 = virtualinvoke $r28.<org.javacc.parser.JavaCharStream: char BeginToken()>() 
(assert true) ; Non Conditional
(declare-const var2525!1 var2875)
(assert (not (= var2525!1 null-var2875)))
(assert (= (curChar/1964309570 var2525!1) var3203)) ; Statement: r0.<org.javacc.parser.JavaCCParserTokenManager: char curChar> = $c64 
 ; Statement: goto [?= $r1 = r0.<org.javacc.parser.JavaCCParserTokenManager: java.lang.StringBuilder jjimage>] 
(assert true) ; Non Conditional
(define-const var2242 String (jjimage/1964309570 var2525!1)) ; Statement: $r1 = r0.<org.javacc.parser.JavaCCParserTokenManager: java.lang.StringBuilder jjimage> 
(declare-const var2525!2 var2875)
(assert (not (= var2525!2 null-var2875)))
(assert (= (image/1964309570 var2525!2) var2242)) ; Statement: r0.<org.javacc.parser.JavaCCParserTokenManager: java.lang.StringBuilder image> = $r1 
(define-const var2805 String (image/1964309570 var2525!2)) ; Statement: $r2 = r0.<org.javacc.parser.JavaCCParserTokenManager: java.lang.StringBuilder image> 
(assert true)
;(assert (setLength/1276735992 var2805 0)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: void setLength(int)>(0) 

(declare-const var2805!1 String)
(declare-const var2092 Int)
(declare-const var2525!3 var2875)
(assert (not (= var2525!3 null-var2875)))
(assert (= (jjimageLen/1964309570 var2525!3) 0)) ; Statement: r0.<org.javacc.parser.JavaCCParserTokenManager: int jjimageLen> = 0 
(assert true) ; Non Conditional
(define-const var3697 Int (curLexState/1964309570 var2525!3)) ; Statement: $i0 = r0.<org.javacc.parser.JavaCCParserTokenManager: int curLexState> 
 ; Statement: tableswitch($i0) {     case 0: goto $r20 = r0.<org.javacc.parser.JavaCCParserTokenManager: org.javacc.parser.JavaCharStream input_stream>;     case 1: goto r0.<org.javacc.parser.JavaCCParserTokenManager: int jjmatchedKind> = 2147483647;     case 2: goto r0.<org.javacc.parser.JavaCCParserTokenManager: int jjmatchedKind> = 2147483647;     case 3: goto r0.<org.javacc.parser.JavaCCParserTokenManager: int jjmatchedKind> = 2147483647;     case 4: goto r0.<org.javacc.parser.JavaCCParserTokenManager: int jjmatchedKind> = 2147483647;     default: goto $i65 = r0.<org.javacc.parser.JavaCCParserTokenManager: int jjmatchedKind>; } 
(assert (and (= var3697 0) true)) ; Intersect: Cond: $i0 == 0  and Non Conditional 
(define-const var1699 var1610 (input_stream/1964309570 var2525!3)) ; Statement: $r20 = r0.<org.javacc.parser.JavaCCParserTokenManager: org.javacc.parser.JavaCharStream input_stream> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2641 var800) ; Statement: $r25 := @caughtexception 
(assert (not (= var2641 null-var800)))
 ; Statement: goto [?= $r28 = r0.<org.javacc.parser.JavaCCParserTokenManager: org.javacc.parser.JavaCharStream input_stream>] 
(assert true) ; Non Conditional
(define-const var482!1 var1610 (input_stream/1964309570 var2525!3)) ; Statement: $r28 = r0.<org.javacc.parser.JavaCCParserTokenManager: org.javacc.parser.JavaCharStream input_stream> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2935 var800) ; Statement: $r26 := @caughtexception 
(assert (not (= var2935 null-var800)))
(declare-const var2525!4 var2875)
(assert (not (= var2525!4 null-var2875)))
(assert (= (jjmatchedKind/1964309570 var2525!4) 0)) ; Statement: r0.<org.javacc.parser.JavaCCParserTokenManager: int jjmatchedKind> = 0 
(assert true)
(define-const var2828 var1941 (jjFillToken/-1355273761 var2525!4)) ; Statement: r29 = virtualinvoke r0.<org.javacc.parser.JavaCCParserTokenManager: org.javacc.parser.Token jjFillToken()>() 
(declare-const var2828!1 var1941)
(assert (not (= var2828!1 null-var1941)))
(assert (= (specialToken/197050796 var2828!1) var427)) ; Statement: r29.<org.javacc.parser.Token: org.javacc.parser.Token specialToken> = r27 
 ; Statement: return r29 
(check-sat)
(get-model)
(get-unsat-core)
; {input_stream/1964309570=([org.javacc.parser.JavaCCParserTokenManager], org.javacc.parser.JavaCharStream), BeginToken/-1085822358=([org.javacc.parser.JavaCharStream], char), curChar/1964309570=([org.javacc.parser.JavaCCParserTokenManager], char), jjimage/1964309570=([org.javacc.parser.JavaCCParserTokenManager], java.lang.StringBuilder), image/1964309570=([org.javacc.parser.JavaCCParserTokenManager], java.lang.StringBuilder), setLength/1276735992=([java.lang.StringBuilder, int], void), jjimageLen/1964309570=([org.javacc.parser.JavaCCParserTokenManager], int), curLexState/1964309570=([org.javacc.parser.JavaCCParserTokenManager], int), jjmatchedKind/1964309570=([org.javacc.parser.JavaCCParserTokenManager], int), jjFillToken/-1355273761=([org.javacc.parser.JavaCCParserTokenManager], org.javacc.parser.Token), specialToken/197050796=([org.javacc.parser.Token], org.javacc.parser.Token)}
; {var2875=org.javacc.parser.JavaCCParserTokenManager, var2525=r0, var1941=org.javacc.parser.Token, var427=r27, var2842=i63, var1610=org.javacc.parser.JavaCharStream, var482=$r28, var3203=$c64, var2242=$r1, var2805=$r2, var2092=0, var3697=$i0, var1699=$r20, var800=java.io.IOException, var2641=$r25, var2935=$r26, var2828=r29}
; {org.javacc.parser.JavaCCParserTokenManager=var2875, r0=var2525, org.javacc.parser.Token=var1941, r27=var427, i63=var2842, org.javacc.parser.JavaCharStream=var1610, $r28=var482, $c64=var3203, $r1=var2242, $r2=var2805, 0=var2092, $i0=var3697, $r20=var1699, java.io.IOException=var800, $r25=var2641, $r26=var2935, r29=var2828}
;seq <java.lang.StringBuilder: void setLength(int)>
;cnt {"<java.lang.StringBuilder: void setLength(int)>": 1}
;stmts r0 := @this: org.javacc.parser.JavaCCParserTokenManager;	r27 = null;	i63 = 0;	$r28 = r0.<org.javacc.parser.JavaCCParserTokenManager: org.javacc.parser.JavaCharStream input_stream>;	$c64 = virtualinvoke $r28.<org.javacc.parser.JavaCharStream: char BeginToken()>();	r0.<org.javacc.parser.JavaCCParserTokenManager: char curChar> = $c64;	goto [?= $r1 = r0.<org.javacc.parser.JavaCCParserTokenManager: java.lang.StringBuilder jjimage>];	$r1 = r0.<org.javacc.parser.JavaCCParserTokenManager: java.lang.StringBuilder jjimage>;	r0.<org.javacc.parser.JavaCCParserTokenManager: java.lang.StringBuilder image> = $r1;	$r2 = r0.<org.javacc.parser.JavaCCParserTokenManager: java.lang.StringBuilder image>;	virtualinvoke $r2.<java.lang.StringBuilder: void setLength(int)>(0);	r0.<org.javacc.parser.JavaCCParserTokenManager: int jjimageLen> = 0;	$i0 = r0.<org.javacc.parser.JavaCCParserTokenManager: int curLexState>;	tableswitch($i0) {     case 0: goto $r20 = r0.<org.javacc.parser.JavaCCParserTokenManager: org.javacc.parser.JavaCharStream input_stream>;     case 1: goto r0.<org.javacc.parser.JavaCCParserTokenManager: int jjmatchedKind> = 2147483647;     case 2: goto r0.<org.javacc.parser.JavaCCParserTokenManager: int jjmatchedKind> = 2147483647;     case 3: goto r0.<org.javacc.parser.JavaCCParserTokenManager: int jjmatchedKind> = 2147483647;     case 4: goto r0.<org.javacc.parser.JavaCCParserTokenManager: int jjmatchedKind> = 2147483647;     default: goto $i65 = r0.<org.javacc.parser.JavaCCParserTokenManager: int jjmatchedKind>; };	$r20 = r0.<org.javacc.parser.JavaCCParserTokenManager: org.javacc.parser.JavaCharStream input_stream>;	$r25 := @caughtexception;	goto [?= $r28 = r0.<org.javacc.parser.JavaCCParserTokenManager: org.javacc.parser.JavaCharStream input_stream>];	$r28 = r0.<org.javacc.parser.JavaCCParserTokenManager: org.javacc.parser.JavaCharStream input_stream>;	$r26 := @caughtexception;	r0.<org.javacc.parser.JavaCCParserTokenManager: int jjmatchedKind> = 0;	r29 = virtualinvoke r0.<org.javacc.parser.JavaCCParserTokenManager: org.javacc.parser.Token jjFillToken()>();	r29.<org.javacc.parser.Token: org.javacc.parser.Token specialToken> = r27;	return r29
;block_num 10