(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var339 0)
(declare-sort var2203 0)
(declare-sort var413 0)
(declare-sort var3590 0)
(declare-sort var2305 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var413) void)
(declare-fun cast-from-var339-to-var413 (var339) var413)
(declare-fun debugStream/-1450700737 (var339) var3590)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun jjrounds/-1450700737 (var339) (Array Int Int))
(declare-fun jjstateSet/-1450700737 (var339) (Array Int Int))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun jjimage/-1450700737 (var339) String)
(declare-fun image/-1450700737 (var339) String)
(declare-fun curLexState/-1450700737 (var339) Int)
(declare-fun defaultLexState/-1450700737 (var339) Int)
(declare-fun input_stream/-1450700737 (var339) var2203)
(declare-const null-var339 var339)
(declare-const null-var2203 var2203)
(declare-const var2305-out var3590)
(declare-const var758 var339) ; Statement: r0 := @this: org.javacc.jjtree.JJTreeParserTokenManager 
(assert (not (= var758 null-var339)))
(declare-const var1158 var2203) ; Statement: r6 := @parameter0: org.javacc.jjtree.JavaCharStream 
(assert (not (= var1158 null-var2203)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var339-to-var413 var758))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var758!1 var339)
(define-const var3085 var3590 var2305-out) ; Statement: $r1 = <java.lang.System: java.io.PrintStream out> 
(declare-const var758!2 var339)
(assert (not (= var758!2 null-var339)))
(assert (= (debugStream/-1450700737 var758!2) var3085)) ; Statement: r0.<org.javacc.jjtree.JJTreeParserTokenManager: java.io.PrintStream debugStream> = $r1 
(define-const var1002 (Array Int Int) arr-Int-init) ; Statement: $r2 = newarray (int)[65] 
(declare-const var758!3 var339)
(assert (not (= var758!3 null-var339)))
(assert (= (jjrounds/-1450700737 var758!3) var1002)) ; Statement: r0.<org.javacc.jjtree.JJTreeParserTokenManager: int[] jjrounds> = $r2 
(define-const var2095 (Array Int Int) arr-Int-init) ; Statement: $r3 = newarray (int)[130] 
(declare-const var758!4 var339)
(assert (not (= var758!4 null-var339)))
(assert (= (jjstateSet/-1450700737 var758!4) var2095)) ; Statement: r0.<org.javacc.jjtree.JJTreeParserTokenManager: int[] jjstateSet> = $r3 
(define-const var3481 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3481)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3481!1 String)
(assert (= var3481!1 ""))
(declare-const var758!5 var339)
(assert (not (= var758!5 null-var339)))
(assert (= (jjimage/-1450700737 var758!5) var3481!1)) ; Statement: r0.<org.javacc.jjtree.JJTreeParserTokenManager: java.lang.StringBuilder jjimage> = $r4 
(define-const var627 String (jjimage/-1450700737 var758!5)) ; Statement: $r5 = r0.<org.javacc.jjtree.JJTreeParserTokenManager: java.lang.StringBuilder jjimage> 
(declare-const var758!6 var339)
(assert (not (= var758!6 null-var339)))
(assert (= (image/-1450700737 var758!6) var627)) ; Statement: r0.<org.javacc.jjtree.JJTreeParserTokenManager: java.lang.StringBuilder image> = $r5 
(declare-const var758!7 var339)
(assert (not (= var758!7 null-var339)))
(assert (= (curLexState/-1450700737 var758!7) 0)) ; Statement: r0.<org.javacc.jjtree.JJTreeParserTokenManager: int curLexState> = 0 
(declare-const var758!8 var339)
(assert (not (= var758!8 null-var339)))
(assert (= (defaultLexState/-1450700737 var758!8) 0)) ; Statement: r0.<org.javacc.jjtree.JJTreeParserTokenManager: int defaultLexState> = 0 
(declare-const var758!9 var339)
(assert (not (= var758!9 null-var339)))
(assert (= (input_stream/-1450700737 var758!9) var1158)) ; Statement: r0.<org.javacc.jjtree.JJTreeParserTokenManager: org.javacc.jjtree.JavaCharStream input_stream> = r6 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var339-to-var413=([org.javacc.jjtree.JJTreeParserTokenManager], java.lang.Object), debugStream/-1450700737=([org.javacc.jjtree.JJTreeParserTokenManager], java.io.PrintStream), arr-Int-init=([], int[]), jjrounds/-1450700737=([org.javacc.jjtree.JJTreeParserTokenManager], int[]), jjstateSet/-1450700737=([org.javacc.jjtree.JJTreeParserTokenManager], int[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), jjimage/-1450700737=([org.javacc.jjtree.JJTreeParserTokenManager], java.lang.StringBuilder), image/-1450700737=([org.javacc.jjtree.JJTreeParserTokenManager], java.lang.StringBuilder), curLexState/-1450700737=([org.javacc.jjtree.JJTreeParserTokenManager], int), defaultLexState/-1450700737=([org.javacc.jjtree.JJTreeParserTokenManager], int), input_stream/-1450700737=([org.javacc.jjtree.JJTreeParserTokenManager], org.javacc.jjtree.JavaCharStream)}
; {var339=org.javacc.jjtree.JJTreeParserTokenManager, var758=r0, var2203=org.javacc.jjtree.JavaCharStream, var1158=r6, var413=java.lang.Object, var3590=java.io.PrintStream, var2305=java.lang.System, var3085=$r1, var1002=$r2, var2095=$r3, var3481=$r4, var627=$r5}
; {org.javacc.jjtree.JJTreeParserTokenManager=var339, r0=var758, org.javacc.jjtree.JavaCharStream=var2203, r6=var1158, java.lang.Object=var413, java.io.PrintStream=var3590, java.lang.System=var2305, $r1=var3085, $r2=var1002, $r3=var2095, $r4=var3481, $r5=var627}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r0 := @this: org.javacc.jjtree.JJTreeParserTokenManager;	r6 := @parameter0: org.javacc.jjtree.JavaCharStream;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = <java.lang.System: java.io.PrintStream out>;	r0.<org.javacc.jjtree.JJTreeParserTokenManager: java.io.PrintStream debugStream> = $r1;	$r2 = newarray (int)[65];	r0.<org.javacc.jjtree.JJTreeParserTokenManager: int[] jjrounds> = $r2;	$r3 = newarray (int)[130];	r0.<org.javacc.jjtree.JJTreeParserTokenManager: int[] jjstateSet> = $r3;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	r0.<org.javacc.jjtree.JJTreeParserTokenManager: java.lang.StringBuilder jjimage> = $r4;	$r5 = r0.<org.javacc.jjtree.JJTreeParserTokenManager: java.lang.StringBuilder jjimage>;	r0.<org.javacc.jjtree.JJTreeParserTokenManager: java.lang.StringBuilder image> = $r5;	r0.<org.javacc.jjtree.JJTreeParserTokenManager: int curLexState> = 0;	r0.<org.javacc.jjtree.JJTreeParserTokenManager: int defaultLexState> = 0;	r0.<org.javacc.jjtree.JJTreeParserTokenManager: org.javacc.jjtree.JavaCharStream input_stream> = r6;	return
;block_num 1