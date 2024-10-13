(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1343 0)
(declare-sort var1255 0)
(declare-sort var1239 0)
(declare-sort var1926 0)
(declare-sort var863 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1239) void)
(declare-fun cast-from-var1343-to-var1239 (var1343) var1239)
(declare-fun debugStream/-1147029719 (var1343) var1926)
(declare-fun curLexState/-1147029719 (var1343) Int)
(declare-fun defaultLexState/-1147029719 (var1343) Int)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun jjrounds/-1147029719 (var1343) (Array Int Int))
(declare-fun jjstateSet/-1147029719 (var1343) (Array Int Int))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun jjimage/-1147029719 (var1343) String)
(declare-fun image/-1147029719 (var1343) String)
(declare-fun ReInit/-2087571777 (var1343 var1255) void)
(declare-fun SwitchTo/847914956 (var1343 Int) void)
(declare-const null-var1343 var1343)
(declare-const null-var1255 var1255)
(declare-const null-Int Int)
(declare-const var863-out var1926)
(declare-const var2978 var1343) ; Statement: r0 := @this: org.apache.tomcat.util.json.JSONParserTokenManager 
(assert (not (= var2978 null-var1343)))
(declare-const var1788 var1255) ; Statement: r6 := @parameter0: org.apache.tomcat.util.json.JavaCharStream 
(assert (not (= var1788 null-var1255)))
(declare-const var3628 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3628 null-Int)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1343-to-var1239 var2978))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2978!1 var1343)
(define-const var1862 var1926 var863-out) ; Statement: $r1 = <java.lang.System: java.io.PrintStream out> 
(declare-const var2978!2 var1343)
(assert (not (= var2978!2 null-var1343)))
(assert (= (debugStream/-1147029719 var2978!2) var1862)) ; Statement: r0.<org.apache.tomcat.util.json.JSONParserTokenManager: java.io.PrintStream debugStream> = $r1 
(declare-const var2978!3 var1343)
(assert (not (= var2978!3 null-var1343)))
(assert (= (curLexState/-1147029719 var2978!3) 0)) ; Statement: r0.<org.apache.tomcat.util.json.JSONParserTokenManager: int curLexState> = 0 
(declare-const var2978!4 var1343)
(assert (not (= var2978!4 null-var1343)))
(assert (= (defaultLexState/-1147029719 var2978!4) 0)) ; Statement: r0.<org.apache.tomcat.util.json.JSONParserTokenManager: int defaultLexState> = 0 
(define-const var46 (Array Int Int) arr-Int-init) ; Statement: $r2 = newarray (int)[38] 
(declare-const var2978!5 var1343)
(assert (not (= var2978!5 null-var1343)))
(assert (= (jjrounds/-1147029719 var2978!5) var46)) ; Statement: r0.<org.apache.tomcat.util.json.JSONParserTokenManager: int[] jjrounds> = $r2 
(define-const var2729 (Array Int Int) arr-Int-init) ; Statement: $r3 = newarray (int)[76] 
(declare-const var2978!6 var1343)
(assert (not (= var2978!6 null-var1343)))
(assert (= (jjstateSet/-1147029719 var2978!6) var2729)) ; Statement: r0.<org.apache.tomcat.util.json.JSONParserTokenManager: int[] jjstateSet> = $r3 
(define-const var726 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var726)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var726!1 String)
(assert (= var726!1 ""))
(declare-const var2978!7 var1343)
(assert (not (= var2978!7 null-var1343)))
(assert (= (jjimage/-1147029719 var2978!7) var726!1)) ; Statement: r0.<org.apache.tomcat.util.json.JSONParserTokenManager: java.lang.StringBuilder jjimage> = $r4 
(define-const var2780 String (jjimage/-1147029719 var2978!7)) ; Statement: $r5 = r0.<org.apache.tomcat.util.json.JSONParserTokenManager: java.lang.StringBuilder jjimage> 
(declare-const var2978!8 var1343)
(assert (not (= var2978!8 null-var1343)))
(assert (= (image/-1147029719 var2978!8) var2780)) ; Statement: r0.<org.apache.tomcat.util.json.JSONParserTokenManager: java.lang.StringBuilder image> = $r5 
(assert true)
;(assert (ReInit/-2087571777 var2978!8 var1788)) ; Statement: virtualinvoke r0.<org.apache.tomcat.util.json.JSONParserTokenManager: void ReInit(org.apache.tomcat.util.json.JavaCharStream)>(r6) 

(declare-const var2978!9 var1343)
(declare-const var1788!1 var1255)
(assert true)
;(assert (SwitchTo/847914956 var2978!9 var3628)) ; Statement: virtualinvoke r0.<org.apache.tomcat.util.json.JSONParserTokenManager: void SwitchTo(int)>(i0) 

(declare-const var2978!10 var1343)
(declare-const var3628!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1343-to-var1239=([org.apache.tomcat.util.json.JSONParserTokenManager], java.lang.Object), debugStream/-1147029719=([org.apache.tomcat.util.json.JSONParserTokenManager], java.io.PrintStream), curLexState/-1147029719=([org.apache.tomcat.util.json.JSONParserTokenManager], int), defaultLexState/-1147029719=([org.apache.tomcat.util.json.JSONParserTokenManager], int), arr-Int-init=([], int[]), jjrounds/-1147029719=([org.apache.tomcat.util.json.JSONParserTokenManager], int[]), jjstateSet/-1147029719=([org.apache.tomcat.util.json.JSONParserTokenManager], int[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), jjimage/-1147029719=([org.apache.tomcat.util.json.JSONParserTokenManager], java.lang.StringBuilder), image/-1147029719=([org.apache.tomcat.util.json.JSONParserTokenManager], java.lang.StringBuilder), ReInit/-2087571777=([org.apache.tomcat.util.json.JSONParserTokenManager, org.apache.tomcat.util.json.JavaCharStream], void), SwitchTo/847914956=([org.apache.tomcat.util.json.JSONParserTokenManager, int], void)}
; {var1343=org.apache.tomcat.util.json.JSONParserTokenManager, var2978=r0, var1255=org.apache.tomcat.util.json.JavaCharStream, var1788=r6, var3628=i0, var1239=java.lang.Object, var1926=java.io.PrintStream, var863=java.lang.System, var1862=$r1, var46=$r2, var2729=$r3, var726=$r4, var2780=$r5}
; {org.apache.tomcat.util.json.JSONParserTokenManager=var1343, r0=var2978, org.apache.tomcat.util.json.JavaCharStream=var1255, r6=var1788, i0=var3628, java.lang.Object=var1239, java.io.PrintStream=var1926, java.lang.System=var863, $r1=var1862, $r2=var46, $r3=var2729, $r4=var726, $r5=var2780}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r0 := @this: org.apache.tomcat.util.json.JSONParserTokenManager;	r6 := @parameter0: org.apache.tomcat.util.json.JavaCharStream;	i0 := @parameter1: int;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = <java.lang.System: java.io.PrintStream out>;	r0.<org.apache.tomcat.util.json.JSONParserTokenManager: java.io.PrintStream debugStream> = $r1;	r0.<org.apache.tomcat.util.json.JSONParserTokenManager: int curLexState> = 0;	r0.<org.apache.tomcat.util.json.JSONParserTokenManager: int defaultLexState> = 0;	$r2 = newarray (int)[38];	r0.<org.apache.tomcat.util.json.JSONParserTokenManager: int[] jjrounds> = $r2;	$r3 = newarray (int)[76];	r0.<org.apache.tomcat.util.json.JSONParserTokenManager: int[] jjstateSet> = $r3;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	r0.<org.apache.tomcat.util.json.JSONParserTokenManager: java.lang.StringBuilder jjimage> = $r4;	$r5 = r0.<org.apache.tomcat.util.json.JSONParserTokenManager: java.lang.StringBuilder jjimage>;	r0.<org.apache.tomcat.util.json.JSONParserTokenManager: java.lang.StringBuilder image> = $r5;	virtualinvoke r0.<org.apache.tomcat.util.json.JSONParserTokenManager: void ReInit(org.apache.tomcat.util.json.JavaCharStream)>(r6);	virtualinvoke r0.<org.apache.tomcat.util.json.JSONParserTokenManager: void SwitchTo(int)>(i0);	return
;block_num 1