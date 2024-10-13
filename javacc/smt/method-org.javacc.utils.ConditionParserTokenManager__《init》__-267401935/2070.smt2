(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1260 0)
(declare-sort var3862 0)
(declare-sort var3156 0)
(declare-sort var1014 0)
(declare-sort var2294 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3156) void)
(declare-fun cast-from-var1260-to-var3156 (var1260) var3156)
(declare-fun debugStream/1944280239 (var1260) var1014)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun jjrounds/1944280239 (var1260) (Array Int Int))
(declare-fun jjstateSet/1944280239 (var1260) (Array Int Int))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun jjimage/1944280239 (var1260) String)
(declare-fun image/1944280239 (var1260) String)
(declare-fun curLexState/1944280239 (var1260) Int)
(declare-fun defaultLexState/1944280239 (var1260) Int)
(declare-fun input_stream/1944280239 (var1260) var3862)
(declare-const null-var1260 var1260)
(declare-const null-var3862 var3862)
(declare-const var2294-out var1014)
(declare-const var2422 var1260) ; Statement: r0 := @this: org.javacc.utils.ConditionParserTokenManager 
(assert (not (= var2422 null-var1260)))
(declare-const var1323 var3862) ; Statement: r6 := @parameter0: org.javacc.utils.JavaCharStream 
(assert (not (= var1323 null-var3862)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1260-to-var3156 var2422))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2422!1 var1260)
(define-const var2986 var1014 var2294-out) ; Statement: $r1 = <java.lang.System: java.io.PrintStream out> 
(declare-const var2422!2 var1260)
(assert (not (= var2422!2 null-var1260)))
(assert (= (debugStream/1944280239 var2422!2) var2986)) ; Statement: r0.<org.javacc.utils.ConditionParserTokenManager: java.io.PrintStream debugStream> = $r1 
(define-const var2941 (Array Int Int) arr-Int-init) ; Statement: $r2 = newarray (int)[6] 
(declare-const var2422!3 var1260)
(assert (not (= var2422!3 null-var1260)))
(assert (= (jjrounds/1944280239 var2422!3) var2941)) ; Statement: r0.<org.javacc.utils.ConditionParserTokenManager: int[] jjrounds> = $r2 
(define-const var3351 (Array Int Int) arr-Int-init) ; Statement: $r3 = newarray (int)[12] 
(declare-const var2422!4 var1260)
(assert (not (= var2422!4 null-var1260)))
(assert (= (jjstateSet/1944280239 var2422!4) var3351)) ; Statement: r0.<org.javacc.utils.ConditionParserTokenManager: int[] jjstateSet> = $r3 
(define-const var1628 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1628)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1628!1 String)
(assert (= var1628!1 ""))
(declare-const var2422!5 var1260)
(assert (not (= var2422!5 null-var1260)))
(assert (= (jjimage/1944280239 var2422!5) var1628!1)) ; Statement: r0.<org.javacc.utils.ConditionParserTokenManager: java.lang.StringBuilder jjimage> = $r4 
(define-const var1004 String (jjimage/1944280239 var2422!5)) ; Statement: $r5 = r0.<org.javacc.utils.ConditionParserTokenManager: java.lang.StringBuilder jjimage> 
(declare-const var2422!6 var1260)
(assert (not (= var2422!6 null-var1260)))
(assert (= (image/1944280239 var2422!6) var1004)) ; Statement: r0.<org.javacc.utils.ConditionParserTokenManager: java.lang.StringBuilder image> = $r5 
(declare-const var2422!7 var1260)
(assert (not (= var2422!7 null-var1260)))
(assert (= (curLexState/1944280239 var2422!7) 0)) ; Statement: r0.<org.javacc.utils.ConditionParserTokenManager: int curLexState> = 0 
(declare-const var2422!8 var1260)
(assert (not (= var2422!8 null-var1260)))
(assert (= (defaultLexState/1944280239 var2422!8) 0)) ; Statement: r0.<org.javacc.utils.ConditionParserTokenManager: int defaultLexState> = 0 
(declare-const var2422!9 var1260)
(assert (not (= var2422!9 null-var1260)))
(assert (= (input_stream/1944280239 var2422!9) var1323)) ; Statement: r0.<org.javacc.utils.ConditionParserTokenManager: org.javacc.utils.JavaCharStream input_stream> = r6 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1260-to-var3156=([org.javacc.utils.ConditionParserTokenManager], java.lang.Object), debugStream/1944280239=([org.javacc.utils.ConditionParserTokenManager], java.io.PrintStream), arr-Int-init=([], int[]), jjrounds/1944280239=([org.javacc.utils.ConditionParserTokenManager], int[]), jjstateSet/1944280239=([org.javacc.utils.ConditionParserTokenManager], int[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), jjimage/1944280239=([org.javacc.utils.ConditionParserTokenManager], java.lang.StringBuilder), image/1944280239=([org.javacc.utils.ConditionParserTokenManager], java.lang.StringBuilder), curLexState/1944280239=([org.javacc.utils.ConditionParserTokenManager], int), defaultLexState/1944280239=([org.javacc.utils.ConditionParserTokenManager], int), input_stream/1944280239=([org.javacc.utils.ConditionParserTokenManager], org.javacc.utils.JavaCharStream)}
; {var1260=org.javacc.utils.ConditionParserTokenManager, var2422=r0, var3862=org.javacc.utils.JavaCharStream, var1323=r6, var3156=java.lang.Object, var1014=java.io.PrintStream, var2294=java.lang.System, var2986=$r1, var2941=$r2, var3351=$r3, var1628=$r4, var1004=$r5}
; {org.javacc.utils.ConditionParserTokenManager=var1260, r0=var2422, org.javacc.utils.JavaCharStream=var3862, r6=var1323, java.lang.Object=var3156, java.io.PrintStream=var1014, java.lang.System=var2294, $r1=var2986, $r2=var2941, $r3=var3351, $r4=var1628, $r5=var1004}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r0 := @this: org.javacc.utils.ConditionParserTokenManager;	r6 := @parameter0: org.javacc.utils.JavaCharStream;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = <java.lang.System: java.io.PrintStream out>;	r0.<org.javacc.utils.ConditionParserTokenManager: java.io.PrintStream debugStream> = $r1;	$r2 = newarray (int)[6];	r0.<org.javacc.utils.ConditionParserTokenManager: int[] jjrounds> = $r2;	$r3 = newarray (int)[12];	r0.<org.javacc.utils.ConditionParserTokenManager: int[] jjstateSet> = $r3;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	r0.<org.javacc.utils.ConditionParserTokenManager: java.lang.StringBuilder jjimage> = $r4;	$r5 = r0.<org.javacc.utils.ConditionParserTokenManager: java.lang.StringBuilder jjimage>;	r0.<org.javacc.utils.ConditionParserTokenManager: java.lang.StringBuilder image> = $r5;	r0.<org.javacc.utils.ConditionParserTokenManager: int curLexState> = 0;	r0.<org.javacc.utils.ConditionParserTokenManager: int defaultLexState> = 0;	r0.<org.javacc.utils.ConditionParserTokenManager: org.javacc.utils.JavaCharStream input_stream> = r6;	return
;block_num 1