(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2104 0)
(declare-sort var3984 0)
(declare-sort var2717 0)
(declare-sort var3155 0)
(declare-sort var3987 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var2717) void)
(declare-fun cast-from-var2104-to-var2717 (var2104) var2717)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun beginLine/1964309570 (var2104) (Array Int Int))
(declare-fun beginCol/1964309570 (var2104) (Array Int Int))
(declare-fun depth/1964309570 (var2104) Int)
(declare-fun size/1964309570 (var2104) Int)
(declare-fun debugStream/1964309570 (var2104) var3155)
(declare-fun jjrounds/1964309570 (var2104) (Array Int Int))
(declare-fun jjstateSet/1964309570 (var2104) (Array Int Int))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun jjimage/1964309570 (var2104) String)
(declare-fun image/1964309570 (var2104) String)
(declare-fun curLexState/1964309570 (var2104) Int)
(declare-fun defaultLexState/1964309570 (var2104) Int)
(declare-fun input_stream/1964309570 (var2104) var3984)
(declare-const null-var2104 var2104)
(declare-const null-var3984 var3984)
(declare-const var3987-out var3155)
(declare-const var3501 var2104) ; Statement: r0 := @this: org.javacc.parser.JavaCCParserTokenManager 
(assert (not (= var3501 null-var2104)))
(declare-const var320 var3984) ; Statement: r8 := @parameter0: org.javacc.parser.JavaCharStream 
(assert (not (= var320 null-var3984)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2104-to-var2717 var3501))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3501!1 var2104)
(define-const var3590 (Array Int Int) arr-Int-init) ; Statement: $r1 = newarray (int)[10] 
(declare-const var3501!2 var2104)
(assert (not (= var3501!2 null-var2104)))
(assert (= (beginLine/1964309570 var3501!2) var3590)) ; Statement: r0.<org.javacc.parser.JavaCCParserTokenManager: int[] beginLine> = $r1 
(define-const var3722 (Array Int Int) arr-Int-init) ; Statement: $r2 = newarray (int)[10] 
(declare-const var3501!3 var2104)
(assert (not (= var3501!3 null-var2104)))
(assert (= (beginCol/1964309570 var3501!3) var3722)) ; Statement: r0.<org.javacc.parser.JavaCCParserTokenManager: int[] beginCol> = $r2 
(declare-const var3501!4 var2104)
(assert (not (= var3501!4 null-var2104)))
(assert (= (depth/1964309570 var3501!4) 0)) ; Statement: r0.<org.javacc.parser.JavaCCParserTokenManager: int depth> = 0 
(declare-const var3501!5 var2104)
(assert (not (= var3501!5 null-var2104)))
(assert (= (size/1964309570 var3501!5) 10)) ; Statement: r0.<org.javacc.parser.JavaCCParserTokenManager: int size> = 10 
(define-const var1440 var3155 var3987-out) ; Statement: $r3 = <java.lang.System: java.io.PrintStream out> 
(declare-const var3501!6 var2104)
(assert (not (= var3501!6 null-var2104)))
(assert (= (debugStream/1964309570 var3501!6) var1440)) ; Statement: r0.<org.javacc.parser.JavaCCParserTokenManager: java.io.PrintStream debugStream> = $r3 
(define-const var2841 (Array Int Int) arr-Int-init) ; Statement: $r4 = newarray (int)[85] 
(declare-const var3501!7 var2104)
(assert (not (= var3501!7 null-var2104)))
(assert (= (jjrounds/1964309570 var3501!7) var2841)) ; Statement: r0.<org.javacc.parser.JavaCCParserTokenManager: int[] jjrounds> = $r4 
(define-const var3089 (Array Int Int) arr-Int-init) ; Statement: $r5 = newarray (int)[170] 
(declare-const var3501!8 var2104)
(assert (not (= var3501!8 null-var2104)))
(assert (= (jjstateSet/1964309570 var3501!8) var3089)) ; Statement: r0.<org.javacc.parser.JavaCCParserTokenManager: int[] jjstateSet> = $r5 
(define-const var2493 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2493)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2493!1 String)
(assert (= var2493!1 ""))
(declare-const var3501!9 var2104)
(assert (not (= var3501!9 null-var2104)))
(assert (= (jjimage/1964309570 var3501!9) var2493!1)) ; Statement: r0.<org.javacc.parser.JavaCCParserTokenManager: java.lang.StringBuilder jjimage> = $r6 
(define-const var1779 String (jjimage/1964309570 var3501!9)) ; Statement: $r7 = r0.<org.javacc.parser.JavaCCParserTokenManager: java.lang.StringBuilder jjimage> 
(declare-const var3501!10 var2104)
(assert (not (= var3501!10 null-var2104)))
(assert (= (image/1964309570 var3501!10) var1779)) ; Statement: r0.<org.javacc.parser.JavaCCParserTokenManager: java.lang.StringBuilder image> = $r7 
(declare-const var3501!11 var2104)
(assert (not (= var3501!11 null-var2104)))
(assert (= (curLexState/1964309570 var3501!11) 0)) ; Statement: r0.<org.javacc.parser.JavaCCParserTokenManager: int curLexState> = 0 
(declare-const var3501!12 var2104)
(assert (not (= var3501!12 null-var2104)))
(assert (= (defaultLexState/1964309570 var3501!12) 0)) ; Statement: r0.<org.javacc.parser.JavaCCParserTokenManager: int defaultLexState> = 0 
(declare-const var3501!13 var2104)
(assert (not (= var3501!13 null-var2104)))
(assert (= (input_stream/1964309570 var3501!13) var320)) ; Statement: r0.<org.javacc.parser.JavaCCParserTokenManager: org.javacc.parser.JavaCharStream input_stream> = r8 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2104-to-var2717=([org.javacc.parser.JavaCCParserTokenManager], java.lang.Object), arr-Int-init=([], int[]), beginLine/1964309570=([org.javacc.parser.JavaCCParserTokenManager], int[]), beginCol/1964309570=([org.javacc.parser.JavaCCParserTokenManager], int[]), depth/1964309570=([org.javacc.parser.JavaCCParserTokenManager], int), size/1964309570=([org.javacc.parser.JavaCCParserTokenManager], int), debugStream/1964309570=([org.javacc.parser.JavaCCParserTokenManager], java.io.PrintStream), jjrounds/1964309570=([org.javacc.parser.JavaCCParserTokenManager], int[]), jjstateSet/1964309570=([org.javacc.parser.JavaCCParserTokenManager], int[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), jjimage/1964309570=([org.javacc.parser.JavaCCParserTokenManager], java.lang.StringBuilder), image/1964309570=([org.javacc.parser.JavaCCParserTokenManager], java.lang.StringBuilder), curLexState/1964309570=([org.javacc.parser.JavaCCParserTokenManager], int), defaultLexState/1964309570=([org.javacc.parser.JavaCCParserTokenManager], int), input_stream/1964309570=([org.javacc.parser.JavaCCParserTokenManager], org.javacc.parser.JavaCharStream)}
; {var2104=org.javacc.parser.JavaCCParserTokenManager, var3501=r0, var3984=org.javacc.parser.JavaCharStream, var320=r8, var2717=java.lang.Object, var3590=$r1, var3722=$r2, var3155=java.io.PrintStream, var3987=java.lang.System, var1440=$r3, var2841=$r4, var3089=$r5, var2493=$r6, var1779=$r7}
; {org.javacc.parser.JavaCCParserTokenManager=var2104, r0=var3501, org.javacc.parser.JavaCharStream=var3984, r8=var320, java.lang.Object=var2717, $r1=var3590, $r2=var3722, java.io.PrintStream=var3155, java.lang.System=var3987, $r3=var1440, $r4=var2841, $r5=var3089, $r6=var2493, $r7=var1779}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r0 := @this: org.javacc.parser.JavaCCParserTokenManager;	r8 := @parameter0: org.javacc.parser.JavaCharStream;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = newarray (int)[10];	r0.<org.javacc.parser.JavaCCParserTokenManager: int[] beginLine> = $r1;	$r2 = newarray (int)[10];	r0.<org.javacc.parser.JavaCCParserTokenManager: int[] beginCol> = $r2;	r0.<org.javacc.parser.JavaCCParserTokenManager: int depth> = 0;	r0.<org.javacc.parser.JavaCCParserTokenManager: int size> = 10;	$r3 = <java.lang.System: java.io.PrintStream out>;	r0.<org.javacc.parser.JavaCCParserTokenManager: java.io.PrintStream debugStream> = $r3;	$r4 = newarray (int)[85];	r0.<org.javacc.parser.JavaCCParserTokenManager: int[] jjrounds> = $r4;	$r5 = newarray (int)[170];	r0.<org.javacc.parser.JavaCCParserTokenManager: int[] jjstateSet> = $r5;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	r0.<org.javacc.parser.JavaCCParserTokenManager: java.lang.StringBuilder jjimage> = $r6;	$r7 = r0.<org.javacc.parser.JavaCCParserTokenManager: java.lang.StringBuilder jjimage>;	r0.<org.javacc.parser.JavaCCParserTokenManager: java.lang.StringBuilder image> = $r7;	r0.<org.javacc.parser.JavaCCParserTokenManager: int curLexState> = 0;	r0.<org.javacc.parser.JavaCCParserTokenManager: int defaultLexState> = 0;	r0.<org.javacc.parser.JavaCCParserTokenManager: org.javacc.parser.JavaCharStream input_stream> = r8;	return
;block_num 1