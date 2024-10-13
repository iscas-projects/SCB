(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3043 0)
(declare-sort var3180 0)
(declare-sort var643 0)
(declare-sort var3062 0)
(declare-sort var1914 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var643) void)
(declare-fun cast-from-var3043-to-var643 (var3043) var643)
(declare-fun debugStream/-1147029719 (var3043) var3062)
(declare-fun curLexState/-1147029719 (var3043) Int)
(declare-fun defaultLexState/-1147029719 (var3043) Int)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun jjrounds/-1147029719 (var3043) (Array Int Int))
(declare-fun jjstateSet/-1147029719 (var3043) (Array Int Int))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun jjimage/-1147029719 (var3043) String)
(declare-fun image/-1147029719 (var3043) String)
(declare-fun input_stream/-1147029719 (var3043) var3180)
(declare-const null-var3043 var3043)
(declare-const null-var3180 var3180)
(declare-const var1914-out var3062)
(declare-const var3400 var3043) ; Statement: r0 := @this: org.apache.tomcat.util.json.JSONParserTokenManager 
(assert (not (= var3400 null-var3043)))
(declare-const var428 var3180) ; Statement: r6 := @parameter0: org.apache.tomcat.util.json.JavaCharStream 
(assert (not (= var428 null-var3180)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3043-to-var643 var3400))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3400!1 var3043)
(define-const var2025 var3062 var1914-out) ; Statement: $r1 = <java.lang.System: java.io.PrintStream out> 
(declare-const var3400!2 var3043)
(assert (not (= var3400!2 null-var3043)))
(assert (= (debugStream/-1147029719 var3400!2) var2025)) ; Statement: r0.<org.apache.tomcat.util.json.JSONParserTokenManager: java.io.PrintStream debugStream> = $r1 
(declare-const var3400!3 var3043)
(assert (not (= var3400!3 null-var3043)))
(assert (= (curLexState/-1147029719 var3400!3) 0)) ; Statement: r0.<org.apache.tomcat.util.json.JSONParserTokenManager: int curLexState> = 0 
(declare-const var3400!4 var3043)
(assert (not (= var3400!4 null-var3043)))
(assert (= (defaultLexState/-1147029719 var3400!4) 0)) ; Statement: r0.<org.apache.tomcat.util.json.JSONParserTokenManager: int defaultLexState> = 0 
(define-const var2049 (Array Int Int) arr-Int-init) ; Statement: $r2 = newarray (int)[38] 
(declare-const var3400!5 var3043)
(assert (not (= var3400!5 null-var3043)))
(assert (= (jjrounds/-1147029719 var3400!5) var2049)) ; Statement: r0.<org.apache.tomcat.util.json.JSONParserTokenManager: int[] jjrounds> = $r2 
(define-const var1007 (Array Int Int) arr-Int-init) ; Statement: $r3 = newarray (int)[76] 
(declare-const var3400!6 var3043)
(assert (not (= var3400!6 null-var3043)))
(assert (= (jjstateSet/-1147029719 var3400!6) var1007)) ; Statement: r0.<org.apache.tomcat.util.json.JSONParserTokenManager: int[] jjstateSet> = $r3 
(define-const var256 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var256)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var256!1 String)
(assert (= var256!1 ""))
(declare-const var3400!7 var3043)
(assert (not (= var3400!7 null-var3043)))
(assert (= (jjimage/-1147029719 var3400!7) var256!1)) ; Statement: r0.<org.apache.tomcat.util.json.JSONParserTokenManager: java.lang.StringBuilder jjimage> = $r4 
(define-const var3326 String (jjimage/-1147029719 var3400!7)) ; Statement: $r5 = r0.<org.apache.tomcat.util.json.JSONParserTokenManager: java.lang.StringBuilder jjimage> 
(declare-const var3400!8 var3043)
(assert (not (= var3400!8 null-var3043)))
(assert (= (image/-1147029719 var3400!8) var3326)) ; Statement: r0.<org.apache.tomcat.util.json.JSONParserTokenManager: java.lang.StringBuilder image> = $r5 
(declare-const var3400!9 var3043)
(assert (not (= var3400!9 null-var3043)))
(assert (= (input_stream/-1147029719 var3400!9) var428)) ; Statement: r0.<org.apache.tomcat.util.json.JSONParserTokenManager: org.apache.tomcat.util.json.JavaCharStream input_stream> = r6 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3043-to-var643=([org.apache.tomcat.util.json.JSONParserTokenManager], java.lang.Object), debugStream/-1147029719=([org.apache.tomcat.util.json.JSONParserTokenManager], java.io.PrintStream), curLexState/-1147029719=([org.apache.tomcat.util.json.JSONParserTokenManager], int), defaultLexState/-1147029719=([org.apache.tomcat.util.json.JSONParserTokenManager], int), arr-Int-init=([], int[]), jjrounds/-1147029719=([org.apache.tomcat.util.json.JSONParserTokenManager], int[]), jjstateSet/-1147029719=([org.apache.tomcat.util.json.JSONParserTokenManager], int[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), jjimage/-1147029719=([org.apache.tomcat.util.json.JSONParserTokenManager], java.lang.StringBuilder), image/-1147029719=([org.apache.tomcat.util.json.JSONParserTokenManager], java.lang.StringBuilder), input_stream/-1147029719=([org.apache.tomcat.util.json.JSONParserTokenManager], org.apache.tomcat.util.json.JavaCharStream)}
; {var3043=org.apache.tomcat.util.json.JSONParserTokenManager, var3400=r0, var3180=org.apache.tomcat.util.json.JavaCharStream, var428=r6, var643=java.lang.Object, var3062=java.io.PrintStream, var1914=java.lang.System, var2025=$r1, var2049=$r2, var1007=$r3, var256=$r4, var3326=$r5}
; {org.apache.tomcat.util.json.JSONParserTokenManager=var3043, r0=var3400, org.apache.tomcat.util.json.JavaCharStream=var3180, r6=var428, java.lang.Object=var643, java.io.PrintStream=var3062, java.lang.System=var1914, $r1=var2025, $r2=var2049, $r3=var1007, $r4=var256, $r5=var3326}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r0 := @this: org.apache.tomcat.util.json.JSONParserTokenManager;	r6 := @parameter0: org.apache.tomcat.util.json.JavaCharStream;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = <java.lang.System: java.io.PrintStream out>;	r0.<org.apache.tomcat.util.json.JSONParserTokenManager: java.io.PrintStream debugStream> = $r1;	r0.<org.apache.tomcat.util.json.JSONParserTokenManager: int curLexState> = 0;	r0.<org.apache.tomcat.util.json.JSONParserTokenManager: int defaultLexState> = 0;	$r2 = newarray (int)[38];	r0.<org.apache.tomcat.util.json.JSONParserTokenManager: int[] jjrounds> = $r2;	$r3 = newarray (int)[76];	r0.<org.apache.tomcat.util.json.JSONParserTokenManager: int[] jjstateSet> = $r3;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	r0.<org.apache.tomcat.util.json.JSONParserTokenManager: java.lang.StringBuilder jjimage> = $r4;	$r5 = r0.<org.apache.tomcat.util.json.JSONParserTokenManager: java.lang.StringBuilder jjimage>;	r0.<org.apache.tomcat.util.json.JSONParserTokenManager: java.lang.StringBuilder image> = $r5;	r0.<org.apache.tomcat.util.json.JSONParserTokenManager: org.apache.tomcat.util.json.JavaCharStream input_stream> = r6;	return
;block_num 1