(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3623 0)
(declare-sort var3169 0)
(declare-sort var1521 0)
(declare-sort var1027 0)
(declare-sort var11 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1521) void)
(declare-fun cast-from-var3623-to-var1521 (var3623) var1521)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun postInterpolationLexState/929889025 (var3623) Int)
(declare-fun debugStream/929889025 (var3623) var1027)
(declare-fun curLexState/929889025 (var3623) Int)
(declare-fun defaultLexState/929889025 (var3623) Int)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun jjrounds/929889025 (var3623) (Array Int Int))
(declare-fun jjstateSet/929889025 (var3623) (Array Int Int))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun jjimage/929889025 (var3623) String)
(declare-fun image/929889025 (var3623) String)
(declare-fun ReInit/-1123371744 (var3623 var3169) void)
(declare-fun SwitchTo/-1839513100 (var3623 Int) void)
(declare-const null-var3623 var3623)
(declare-const null-var3169 var3169)
(declare-const null-Int Int)
(declare-const var11-out var1027)
(declare-const var734 var3623) ; Statement: r0 := @this: freemarker.core.FMParserTokenManager 
(assert (not (= var734 null-var3623)))
(declare-const var3289 var3169) ; Statement: r6 := @parameter0: freemarker.core.SimpleCharStream 
(assert (not (= var3289 null-var3169)))
(declare-const var724 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var724 null-Int)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3623-to-var1521 var734))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var734!1 var3623)
(define-const var3607 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
(declare-const var734!2 var3623)
(assert (not (= var734!2 null-var3623)))
(assert (= (postInterpolationLexState/929889025 var734!2) var3607)) ; Statement: r0.<freemarker.core.FMParserTokenManager: int postInterpolationLexState> = $i2 
(define-const var2159 var1027 var11-out) ; Statement: $r1 = <java.lang.System: java.io.PrintStream out> 
(declare-const var734!3 var3623)
(assert (not (= var734!3 null-var3623)))
(assert (= (debugStream/929889025 var734!3) var2159)) ; Statement: r0.<freemarker.core.FMParserTokenManager: java.io.PrintStream debugStream> = $r1 
(declare-const var734!4 var3623)
(assert (not (= var734!4 null-var3623)))
(assert (= (curLexState/929889025 var734!4) 0)) ; Statement: r0.<freemarker.core.FMParserTokenManager: int curLexState> = 0 
(declare-const var734!5 var3623)
(assert (not (= var734!5 null-var3623)))
(assert (= (defaultLexState/929889025 var734!5) 0)) ; Statement: r0.<freemarker.core.FMParserTokenManager: int defaultLexState> = 0 
(define-const var2814 (Array Int Int) arr-Int-init) ; Statement: $r2 = newarray (int)[713] 
(declare-const var734!6 var3623)
(assert (not (= var734!6 null-var3623)))
(assert (= (jjrounds/929889025 var734!6) var2814)) ; Statement: r0.<freemarker.core.FMParserTokenManager: int[] jjrounds> = $r2 
(define-const var739 (Array Int Int) arr-Int-init) ; Statement: $r3 = newarray (int)[1426] 
(declare-const var734!7 var3623)
(assert (not (= var734!7 null-var3623)))
(assert (= (jjstateSet/929889025 var734!7) var739)) ; Statement: r0.<freemarker.core.FMParserTokenManager: int[] jjstateSet> = $r3 
(define-const var2858 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2858)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2858!1 String)
(assert (= var2858!1 ""))
(declare-const var734!8 var3623)
(assert (not (= var734!8 null-var3623)))
(assert (= (jjimage/929889025 var734!8) var2858!1)) ; Statement: r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder jjimage> = $r7 
(define-const var2251 String (jjimage/929889025 var734!8)) ; Statement: $r5 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder jjimage> 
(declare-const var734!9 var3623)
(assert (not (= var734!9 null-var3623)))
(assert (= (image/929889025 var734!9) var2251)) ; Statement: r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder image> = $r5 
(assert true)
;(assert (ReInit/-1123371744 var734!9 var3289)) ; Statement: virtualinvoke r0.<freemarker.core.FMParserTokenManager: void ReInit(freemarker.core.SimpleCharStream)>(r6) 

(declare-const var734!10 var3623)
(declare-const var3289!1 var3169)
(assert true)
;(assert (SwitchTo/-1839513100 var734!10 var724)) ; Statement: virtualinvoke r0.<freemarker.core.FMParserTokenManager: void SwitchTo(int)>(i0) 

(declare-const var734!11 var3623)
(declare-const var724!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3623-to-var1521=([freemarker.core.FMParserTokenManager], java.lang.Object), cast-from-Int-to-Int=([int], int), postInterpolationLexState/929889025=([freemarker.core.FMParserTokenManager], int), debugStream/929889025=([freemarker.core.FMParserTokenManager], java.io.PrintStream), curLexState/929889025=([freemarker.core.FMParserTokenManager], int), defaultLexState/929889025=([freemarker.core.FMParserTokenManager], int), arr-Int-init=([], int[]), jjrounds/929889025=([freemarker.core.FMParserTokenManager], int[]), jjstateSet/929889025=([freemarker.core.FMParserTokenManager], int[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), jjimage/929889025=([freemarker.core.FMParserTokenManager], java.lang.StringBuilder), image/929889025=([freemarker.core.FMParserTokenManager], java.lang.StringBuilder), ReInit/-1123371744=([freemarker.core.FMParserTokenManager, freemarker.core.SimpleCharStream], void), SwitchTo/-1839513100=([freemarker.core.FMParserTokenManager, int], void)}
; {var3623=freemarker.core.FMParserTokenManager, var734=r0, var3169=freemarker.core.SimpleCharStream, var3289=r6, var724=i0, var1521=java.lang.Object, var3607=$i2, var1027=java.io.PrintStream, var11=java.lang.System, var2159=$r1, var2814=$r2, var739=$r3, var2858=$r7, var2251=$r5}
; {freemarker.core.FMParserTokenManager=var3623, r0=var734, freemarker.core.SimpleCharStream=var3169, r6=var3289, i0=var724, java.lang.Object=var1521, $i2=var3607, java.io.PrintStream=var1027, java.lang.System=var11, $r1=var2159, $r2=var2814, $r3=var739, $r7=var2858, $r5=var2251}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r0 := @this: freemarker.core.FMParserTokenManager;	r6 := @parameter0: freemarker.core.SimpleCharStream;	i0 := @parameter1: int;	specialinvoke r0.<java.lang.Object: void <init>()>();	$i2 = (int) -1;	r0.<freemarker.core.FMParserTokenManager: int postInterpolationLexState> = $i2;	$r1 = <java.lang.System: java.io.PrintStream out>;	r0.<freemarker.core.FMParserTokenManager: java.io.PrintStream debugStream> = $r1;	r0.<freemarker.core.FMParserTokenManager: int curLexState> = 0;	r0.<freemarker.core.FMParserTokenManager: int defaultLexState> = 0;	$r2 = newarray (int)[713];	r0.<freemarker.core.FMParserTokenManager: int[] jjrounds> = $r2;	$r3 = newarray (int)[1426];	r0.<freemarker.core.FMParserTokenManager: int[] jjstateSet> = $r3;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder jjimage> = $r7;	$r5 = r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder jjimage>;	r0.<freemarker.core.FMParserTokenManager: java.lang.StringBuilder image> = $r5;	virtualinvoke r0.<freemarker.core.FMParserTokenManager: void ReInit(freemarker.core.SimpleCharStream)>(r6);	virtualinvoke r0.<freemarker.core.FMParserTokenManager: void SwitchTo(int)>(i0);	return
;block_num 1