(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1510 0)
(declare-sort var197 0)
(declare-sort var2035 0)
(declare-sort var3233 0)
(declare-sort var3624 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var2035) void)
(declare-fun cast-from-var1510-to-var2035 (var1510) var2035)
(declare-fun debugStream/1370455615 (var1510) var3233)
(declare-fun curLexState/1370455615 (var1510) Int)
(declare-fun defaultLexState/1370455615 (var1510) Int)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun jjrounds/1370455615 (var1510) (Array Int Int))
(declare-fun jjstateSet/1370455615 (var1510) (Array Int Int))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun jjimage/1370455615 (var1510) String)
(declare-fun image/1370455615 (var1510) String)
(declare-fun input_stream/1370455615 (var1510) var197)
(declare-const null-var1510 var1510)
(declare-const null-var197 var197)
(declare-const var3624-out var3233)
(declare-const var3013 var1510) ; Statement: r0 := @this: org.apache.ibatis.ognl.OgnlParserTokenManager 
(assert (not (= var3013 null-var1510)))
(declare-const var3822 var197) ; Statement: r6 := @parameter0: org.apache.ibatis.ognl.JavaCharStream 
(assert (not (= var3822 null-var197)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1510-to-var2035 var3013))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3013!1 var1510)
(define-const var2699 var3233 var3624-out) ; Statement: $r1 = <java.lang.System: java.io.PrintStream out> 
(declare-const var3013!2 var1510)
(assert (not (= var3013!2 null-var1510)))
(assert (= (debugStream/1370455615 var3013!2) var2699)) ; Statement: r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.io.PrintStream debugStream> = $r1 
(declare-const var3013!3 var1510)
(assert (not (= var3013!3 null-var1510)))
(assert (= (curLexState/1370455615 var3013!3) 0)) ; Statement: r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: int curLexState> = 0 
(declare-const var3013!4 var1510)
(assert (not (= var3013!4 null-var1510)))
(assert (= (defaultLexState/1370455615 var3013!4) 0)) ; Statement: r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: int defaultLexState> = 0 
(define-const var2056 (Array Int Int) arr-Int-init) ; Statement: $r2 = newarray (int)[27] 
(declare-const var3013!5 var1510)
(assert (not (= var3013!5 null-var1510)))
(assert (= (jjrounds/1370455615 var3013!5) var2056)) ; Statement: r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: int[] jjrounds> = $r2 
(define-const var3635 (Array Int Int) arr-Int-init) ; Statement: $r3 = newarray (int)[54] 
(declare-const var3013!6 var1510)
(assert (not (= var3013!6 null-var1510)))
(assert (= (jjstateSet/1370455615 var3013!6) var3635)) ; Statement: r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: int[] jjstateSet> = $r3 
(define-const var3080 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3080)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3080!1 String)
(assert (= var3080!1 ""))
(declare-const var3013!7 var1510)
(assert (not (= var3013!7 null-var1510)))
(assert (= (jjimage/1370455615 var3013!7) var3080!1)) ; Statement: r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder jjimage> = $r4 
(define-const var1950 String (jjimage/1370455615 var3013!7)) ; Statement: $r5 = r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder jjimage> 
(declare-const var3013!8 var1510)
(assert (not (= var3013!8 null-var1510)))
(assert (= (image/1370455615 var3013!8) var1950)) ; Statement: r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder image> = $r5 
(declare-const var3013!9 var1510)
(assert (not (= var3013!9 null-var1510)))
(assert (= (input_stream/1370455615 var3013!9) var3822)) ; Statement: r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: org.apache.ibatis.ognl.JavaCharStream input_stream> = r6 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1510-to-var2035=([org.apache.ibatis.ognl.OgnlParserTokenManager], java.lang.Object), debugStream/1370455615=([org.apache.ibatis.ognl.OgnlParserTokenManager], java.io.PrintStream), curLexState/1370455615=([org.apache.ibatis.ognl.OgnlParserTokenManager], int), defaultLexState/1370455615=([org.apache.ibatis.ognl.OgnlParserTokenManager], int), arr-Int-init=([], int[]), jjrounds/1370455615=([org.apache.ibatis.ognl.OgnlParserTokenManager], int[]), jjstateSet/1370455615=([org.apache.ibatis.ognl.OgnlParserTokenManager], int[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), jjimage/1370455615=([org.apache.ibatis.ognl.OgnlParserTokenManager], java.lang.StringBuilder), image/1370455615=([org.apache.ibatis.ognl.OgnlParserTokenManager], java.lang.StringBuilder), input_stream/1370455615=([org.apache.ibatis.ognl.OgnlParserTokenManager], org.apache.ibatis.ognl.JavaCharStream)}
; {var1510=org.apache.ibatis.ognl.OgnlParserTokenManager, var3013=r0, var197=org.apache.ibatis.ognl.JavaCharStream, var3822=r6, var2035=java.lang.Object, var3233=java.io.PrintStream, var3624=java.lang.System, var2699=$r1, var2056=$r2, var3635=$r3, var3080=$r4, var1950=$r5}
; {org.apache.ibatis.ognl.OgnlParserTokenManager=var1510, r0=var3013, org.apache.ibatis.ognl.JavaCharStream=var197, r6=var3822, java.lang.Object=var2035, java.io.PrintStream=var3233, java.lang.System=var3624, $r1=var2699, $r2=var2056, $r3=var3635, $r4=var3080, $r5=var1950}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r0 := @this: org.apache.ibatis.ognl.OgnlParserTokenManager;	r6 := @parameter0: org.apache.ibatis.ognl.JavaCharStream;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = <java.lang.System: java.io.PrintStream out>;	r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.io.PrintStream debugStream> = $r1;	r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: int curLexState> = 0;	r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: int defaultLexState> = 0;	$r2 = newarray (int)[27];	r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: int[] jjrounds> = $r2;	$r3 = newarray (int)[54];	r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: int[] jjstateSet> = $r3;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder jjimage> = $r4;	$r5 = r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder jjimage>;	r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder image> = $r5;	r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: org.apache.ibatis.ognl.JavaCharStream input_stream> = r6;	return
;block_num 1