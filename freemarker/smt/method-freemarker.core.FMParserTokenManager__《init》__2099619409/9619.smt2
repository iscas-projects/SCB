(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var835 0)
(declare-sort var1561 0)
(declare-sort var963 0)
(declare-sort var3953 0)
(declare-sort var1992 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var963) void)
(declare-fun cast-from-var835-to-var963 (var835) var963)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun postInterpolationLexState/929889025 (var835) Int)
(declare-fun debugStream/929889025 (var835) var3953)
(declare-fun curLexState/929889025 (var835) Int)
(declare-fun defaultLexState/929889025 (var835) Int)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun jjrounds/929889025 (var835) (Array Int Int))
(declare-fun jjstateSet/929889025 (var835) (Array Int Int))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun jjimage/929889025 (var835) String)
(declare-fun image/929889025 (var835) String)
(declare-fun input_stream/929889025 (var835) var1561)
(declare-const null-var835 var835)
(declare-const null-var1561 var1561)
(declare-const var1992-out var3953)
(declare-const var896 var835) ; Statement: r0 := @this: freemarker.core.FMParserTokenManager 
(assert (not (= var896 null-var835)))
(declare-const var3858 var1561) ; Statement: r6 := @parameter0: freemarker.core.SimpleCharStream 
(assert (not (= var3858 null-var1561)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var835-to-var963 var896))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var896!1 var835)
(define-const var722 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i1 = (int) -1 
(declare-const var896!2 var835)
(assert (not (= var896!2 null-var835)))
(assert (= (postInterpolationLexState/929889025 var896!2) var722)) ; Statement: r0.<freemarker.core.FMParserTokenManager: int postInterpolationLexState> = $i1 
(define-const var3627 var3953 var1992-out) ; Statement: $r1 = <java.lang.System: java.io.PrintStream out> 
(declare-const var896!3 var835)
(assert (not (= var896!3 null-var835)))
(assert (= (debugStream/929889025 var896!3) var3627)) ; Statement: r0.<freemarker.core.FMParserTokenManager: java.io.PrintStream debugStream> = $r1 
(declare-const var896!4 var835)
(assert (not (= var896!4 null-var835)))
(assert (= (curLexState/929889025 var896!4) 0)) ; Statement: r0.<freemarker.core.FMParserTokenManager: int curLexState> = 0 
(declare-const var896!5 var835)
(assert (not (= var896!5 null-var835)))
(assert (= (defaultLexState/929889025 var896!5) 0)) ; Statement: r0.<freemarker.core.FMParserTokenManager: int defaultLexState> = 0 
(define-const var1628 (Array Int Int) arr-Int-init) ; Statement: $r2 = newarray (int)[713] 
(declare-const var896!6 var835)
(assert (not (= var896!6 null-var835)))
(assert (= (jjrounds/929889025 var896!6) var1628)) ; Statement: r0.<freemarker.core.FMParserTokenManager: int[] jjrounds> = $r2 
(define-const var1169 (Array Int Int) arr-Int-init) ; Statement: $r3 = newarray (int)[1426] 
(declare-const var896!7 var835)
(assert (not (= var896!7 null-var835)))
(assert (= (jjstateSet/929889025 var896!7) var1169)) ; Statement: r0.<freemarker.core.FMParserTokenManager: int[] jjstateSet> = $r3 
(define-const var1871 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1871)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1871!1 String)
(assert (= var1871!1 ""))
(declare-const var896!8 var835)
(assert (not (= var896!8 null-var835)))
(assert (= (jjimage/929889025 var896!8) var1871!1)) ; Statement: r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder jjimage> = $r7 
(define-const var2382 String (jjimage/929889025 var896!8)) ; Statement: $r5 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder jjimage> 
(declare-const var896!9 var835)
(assert (not (= var896!9 null-var835)))
(assert (= (image/929889025 var896!9) var2382)) ; Statement: r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder image> = $r5 
(declare-const var896!10 var835)
(assert (not (= var896!10 null-var835)))
(assert (= (input_stream/929889025 var896!10) var3858)) ; Statement: r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream> = r6 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var835-to-var963=([freemarker.core.FMParserTokenManager], java.lang.Object), cast-from-Int-to-Int=([int], int), postInterpolationLexState/929889025=([freemarker.core.FMParserTokenManager], int), debugStream/929889025=([freemarker.core.FMParserTokenManager], java.io.PrintStream), curLexState/929889025=([freemarker.core.FMParserTokenManager], int), defaultLexState/929889025=([freemarker.core.FMParserTokenManager], int), arr-Int-init=([], int[]), jjrounds/929889025=([freemarker.core.FMParserTokenManager], int[]), jjstateSet/929889025=([freemarker.core.FMParserTokenManager], int[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), jjimage/929889025=([freemarker.core.FMParserTokenManager], java.lang.StringBuilder), image/929889025=([freemarker.core.FMParserTokenManager], java.lang.StringBuilder), input_stream/929889025=([freemarker.core.FMParserTokenManager], freemarker.core.SimpleCharStream)}
; {var835=freemarker.core.FMParserTokenManager, var896=r0, var1561=freemarker.core.SimpleCharStream, var3858=r6, var963=java.lang.Object, var722=$i1, var3953=java.io.PrintStream, var1992=java.lang.System, var3627=$r1, var1628=$r2, var1169=$r3, var1871=$r7, var2382=$r5}
; {freemarker.core.FMParserTokenManager=var835, r0=var896, freemarker.core.SimpleCharStream=var1561, r6=var3858, java.lang.Object=var963, $i1=var722, java.io.PrintStream=var3953, java.lang.System=var1992, $r1=var3627, $r2=var1628, $r3=var1169, $r7=var1871, $r5=var2382}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r0 := @this: freemarker.core.FMParserTokenManager;	r6 := @parameter0: freemarker.core.SimpleCharStream;	specialinvoke r0.<java.lang.Object: void <init>()>();	$i1 = (int) -1;	r0.<freemarker.core.FMParserTokenManager: int postInterpolationLexState> = $i1;	$r1 = <java.lang.System: java.io.PrintStream out>;	r0.<freemarker.core.FMParserTokenManager: java.io.PrintStream debugStream> = $r1;	r0.<freemarker.core.FMParserTokenManager: int curLexState> = 0;	r0.<freemarker.core.FMParserTokenManager: int defaultLexState> = 0;	$r2 = newarray (int)[713];	r0.<freemarker.core.FMParserTokenManager: int[] jjrounds> = $r2;	$r3 = newarray (int)[1426];	r0.<freemarker.core.FMParserTokenManager: int[] jjstateSet> = $r3;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder jjimage> = $r7;	$r5 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder jjimage>;	r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder image> = $r5;	r0.<freemarker.core.FMParserTokenManager: freemarker.core.SimpleCharStream input_stream> = r6;	return
;block_num 1