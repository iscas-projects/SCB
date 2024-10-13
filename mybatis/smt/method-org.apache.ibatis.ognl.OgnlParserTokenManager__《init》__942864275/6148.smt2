(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2019 0)
(declare-sort var2799 0)
(declare-sort var1932 0)
(declare-sort var2753 0)
(declare-sort var1544 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1932) void)
(declare-fun cast-from-var2019-to-var1932 (var2019) var1932)
(declare-fun debugStream/1370455615 (var2019) var2753)
(declare-fun curLexState/1370455615 (var2019) Int)
(declare-fun defaultLexState/1370455615 (var2019) Int)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun jjrounds/1370455615 (var2019) (Array Int Int))
(declare-fun jjstateSet/1370455615 (var2019) (Array Int Int))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun jjimage/1370455615 (var2019) String)
(declare-fun image/1370455615 (var2019) String)
(declare-fun ReInit/118547489 (var2019 var2799) void)
(declare-fun SwitchTo/1375954798 (var2019 Int) void)
(declare-const null-var2019 var2019)
(declare-const null-var2799 var2799)
(declare-const null-Int Int)
(declare-const var1544-out var2753)
(declare-const var2032 var2019) ; Statement: r0 := @this: org.apache.ibatis.ognl.OgnlParserTokenManager 
(assert (not (= var2032 null-var2019)))
(declare-const var128 var2799) ; Statement: r6 := @parameter0: org.apache.ibatis.ognl.JavaCharStream 
(assert (not (= var128 null-var2799)))
(declare-const var3360 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3360 null-Int)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2019-to-var1932 var2032))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2032!1 var2019)
(define-const var3979 var2753 var1544-out) ; Statement: $r1 = <java.lang.System: java.io.PrintStream out> 
(declare-const var2032!2 var2019)
(assert (not (= var2032!2 null-var2019)))
(assert (= (debugStream/1370455615 var2032!2) var3979)) ; Statement: r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.io.PrintStream debugStream> = $r1 
(declare-const var2032!3 var2019)
(assert (not (= var2032!3 null-var2019)))
(assert (= (curLexState/1370455615 var2032!3) 0)) ; Statement: r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: int curLexState> = 0 
(declare-const var2032!4 var2019)
(assert (not (= var2032!4 null-var2019)))
(assert (= (defaultLexState/1370455615 var2032!4) 0)) ; Statement: r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: int defaultLexState> = 0 
(define-const var693 (Array Int Int) arr-Int-init) ; Statement: $r2 = newarray (int)[27] 
(declare-const var2032!5 var2019)
(assert (not (= var2032!5 null-var2019)))
(assert (= (jjrounds/1370455615 var2032!5) var693)) ; Statement: r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: int[] jjrounds> = $r2 
(define-const var3574 (Array Int Int) arr-Int-init) ; Statement: $r3 = newarray (int)[54] 
(declare-const var2032!6 var2019)
(assert (not (= var2032!6 null-var2019)))
(assert (= (jjstateSet/1370455615 var2032!6) var3574)) ; Statement: r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: int[] jjstateSet> = $r3 
(define-const var3686 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3686)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3686!1 String)
(assert (= var3686!1 ""))
(declare-const var2032!7 var2019)
(assert (not (= var2032!7 null-var2019)))
(assert (= (jjimage/1370455615 var2032!7) var3686!1)) ; Statement: r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder jjimage> = $r4 
(define-const var752 String (jjimage/1370455615 var2032!7)) ; Statement: $r5 = r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder jjimage> 
(declare-const var2032!8 var2019)
(assert (not (= var2032!8 null-var2019)))
(assert (= (image/1370455615 var2032!8) var752)) ; Statement: r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder image> = $r5 
(assert true)
;(assert (ReInit/118547489 var2032!8 var128)) ; Statement: virtualinvoke r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: void ReInit(org.apache.ibatis.ognl.JavaCharStream)>(r6) 

(declare-const var2032!9 var2019)
(declare-const var128!1 var2799)
(assert true)
;(assert (SwitchTo/1375954798 var2032!9 var3360)) ; Statement: virtualinvoke r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: void SwitchTo(int)>(i0) 

(declare-const var2032!10 var2019)
(declare-const var3360!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2019-to-var1932=([org.apache.ibatis.ognl.OgnlParserTokenManager], java.lang.Object), debugStream/1370455615=([org.apache.ibatis.ognl.OgnlParserTokenManager], java.io.PrintStream), curLexState/1370455615=([org.apache.ibatis.ognl.OgnlParserTokenManager], int), defaultLexState/1370455615=([org.apache.ibatis.ognl.OgnlParserTokenManager], int), arr-Int-init=([], int[]), jjrounds/1370455615=([org.apache.ibatis.ognl.OgnlParserTokenManager], int[]), jjstateSet/1370455615=([org.apache.ibatis.ognl.OgnlParserTokenManager], int[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), jjimage/1370455615=([org.apache.ibatis.ognl.OgnlParserTokenManager], java.lang.StringBuilder), image/1370455615=([org.apache.ibatis.ognl.OgnlParserTokenManager], java.lang.StringBuilder), ReInit/118547489=([org.apache.ibatis.ognl.OgnlParserTokenManager, org.apache.ibatis.ognl.JavaCharStream], void), SwitchTo/1375954798=([org.apache.ibatis.ognl.OgnlParserTokenManager, int], void)}
; {var2019=org.apache.ibatis.ognl.OgnlParserTokenManager, var2032=r0, var2799=org.apache.ibatis.ognl.JavaCharStream, var128=r6, var3360=i0, var1932=java.lang.Object, var2753=java.io.PrintStream, var1544=java.lang.System, var3979=$r1, var693=$r2, var3574=$r3, var3686=$r4, var752=$r5}
; {org.apache.ibatis.ognl.OgnlParserTokenManager=var2019, r0=var2032, org.apache.ibatis.ognl.JavaCharStream=var2799, r6=var128, i0=var3360, java.lang.Object=var1932, java.io.PrintStream=var2753, java.lang.System=var1544, $r1=var3979, $r2=var693, $r3=var3574, $r4=var3686, $r5=var752}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r0 := @this: org.apache.ibatis.ognl.OgnlParserTokenManager;	r6 := @parameter0: org.apache.ibatis.ognl.JavaCharStream;	i0 := @parameter1: int;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = <java.lang.System: java.io.PrintStream out>;	r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.io.PrintStream debugStream> = $r1;	r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: int curLexState> = 0;	r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: int defaultLexState> = 0;	$r2 = newarray (int)[27];	r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: int[] jjrounds> = $r2;	$r3 = newarray (int)[54];	r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: int[] jjstateSet> = $r3;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder jjimage> = $r4;	$r5 = r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder jjimage>;	r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: java.lang.StringBuilder image> = $r5;	virtualinvoke r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: void ReInit(org.apache.ibatis.ognl.JavaCharStream)>(r6);	virtualinvoke r0.<org.apache.ibatis.ognl.OgnlParserTokenManager: void SwitchTo(int)>(i0);	return
;block_num 1