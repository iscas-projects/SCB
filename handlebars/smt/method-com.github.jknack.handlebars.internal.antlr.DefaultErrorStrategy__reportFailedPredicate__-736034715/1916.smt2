(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3344 0)
(declare-sort var1935 0)
(declare-sort var441 0)
(declare-sort var2836 0)
(declare-sort var266 0)
(declare-sort var1268 0)
(declare-sort var1795 0)
(declare-sort var3987 0)
(declare-sort var2397 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getRuleNames/-1557780812 (var2836) (Array Int String))
(declare-fun cast-from-var1935-to-var2836 (var1935) var2836)
(declare-fun _ctx/32912703 (var1935) var266)
(declare-fun getRuleIndex/1597393391 (var1268) Int)
(declare-fun cast-from-var266-to-var1268 (var266) var1268)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var1795) String)
(declare-fun cast-from-var441-to-var1795 (var441) var1795)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getOffendingToken/-1678522683 (var2397) var3987)
(declare-fun cast-from-var441-to-var2397 (var441) var2397)
(declare-fun notifyErrorListeners/-935134556 (var1935 var3987 String var2397) void)
(declare-const null-var3344 var3344)
(declare-const null-var1935 var1935)
(declare-const null-var441 var441)
(declare-const var408 var3344) ; Statement: r13 := @this: com.github.jknack.handlebars.internal.antlr.DefaultErrorStrategy 
(assert (not (= var408 null-var3344)))
(declare-const var434 var1935) ; Statement: r0 := @parameter0: com.github.jknack.handlebars.internal.antlr.Parser 
(assert (not (= var434 null-var1935)))
(declare-const var3511 var441) ; Statement: r7 := @parameter1: com.github.jknack.handlebars.internal.antlr.FailedPredicateException 
(assert (not (= var3511 null-var441)))
(assert true)
(define-const var3359 (Array Int String) (getRuleNames/-1557780812 (cast-from-var1935-to-var2836 var434))) ; Statement: $r2 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.Parser: java.lang.String[] getRuleNames()>() 
(define-const var1060 var266 (_ctx/32912703 var434)) ; Statement: $r1 = r0.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.ParserRuleContext _ctx> 
(assert true)
(define-const var1423 Int (getRuleIndex/1597393391 (cast-from-var266-to-var1268 var1060))) ; Statement: $i0 = virtualinvoke $r1.<com.github.jknack.handlebars.internal.antlr.ParserRuleContext: int getRuleIndex()>() 
(define-const var2850 String (select var3359 var1423)) ; Statement: r3 = $r2[$i0] 
(define-const var2907 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2907)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2907!1 String)
(assert (= var2907!1 ""))
(assert true)
(define-const var1682 String (append/672562846 var2907!1 "rule ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("rule ") 
(declare-const var2907!2 String)
(assert (= var2907!2 (str.++ var2907!1 "rule ")))
(assert true)
(define-const var2414 String (append/672562846 var1682 var2850)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1682!1 String)
(assert (= var1682!1 (str.++ var1682 var2850)))
(assert true)
(define-const var977 String (append/672562846 var2414 " ")) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var2414!1 String)
(assert (= var2414!1 (str.++ var2414 " ")))
(assert true)
(define-const var1749 String (getMessage/849299655 (cast-from-var441-to-var1795 var3511))) ; Statement: $r8 = virtualinvoke r7.<com.github.jknack.handlebars.internal.antlr.FailedPredicateException: java.lang.String getMessage()>() 
(assert true)
(define-const var2638 String (append/672562846 var977 var1749)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var977!1 String)
(assert (= var977!1 (str.++ var977 var1749)))
(assert true)
(define-const var2047 String (toString/-2075883882 var2638)) ; Statement: r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3954 var3987 (getOffendingToken/-1678522683 (cast-from-var441-to-var2397 var3511))) ; Statement: $r12 = virtualinvoke r7.<com.github.jknack.handlebars.internal.antlr.FailedPredicateException: com.github.jknack.handlebars.internal.antlr.Token getOffendingToken()>() 
(assert true)
;(assert (notifyErrorListeners/-935134556 var434 var3954 var2047 (cast-from-var441-to-var2397 var3511))) ; Statement: virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.Parser: void notifyErrorListeners(com.github.jknack.handlebars.internal.antlr.Token,java.lang.String,com.github.jknack.handlebars.internal.antlr.RecognitionException)>($r12, r11, r7) 

(declare-const var434!1 var1935)
(declare-const var3954!1 var3987)
(declare-const var2047!1 String)
(declare-const var3511!1 var441)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getRuleNames/-1557780812=([com.github.jknack.handlebars.internal.antlr.Recognizer], java.lang.String[]), cast-from-var1935-to-var2836=([com.github.jknack.handlebars.internal.antlr.Parser], com.github.jknack.handlebars.internal.antlr.Recognizer), _ctx/32912703=([com.github.jknack.handlebars.internal.antlr.Parser], com.github.jknack.handlebars.internal.antlr.ParserRuleContext), getRuleIndex/1597393391=([com.github.jknack.handlebars.internal.antlr.RuleContext], int), cast-from-var266-to-var1268=([com.github.jknack.handlebars.internal.antlr.ParserRuleContext], com.github.jknack.handlebars.internal.antlr.RuleContext), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var441-to-var1795=([com.github.jknack.handlebars.internal.antlr.FailedPredicateException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getOffendingToken/-1678522683=([com.github.jknack.handlebars.internal.antlr.RecognitionException], com.github.jknack.handlebars.internal.antlr.Token), cast-from-var441-to-var2397=([com.github.jknack.handlebars.internal.antlr.FailedPredicateException], com.github.jknack.handlebars.internal.antlr.RecognitionException), notifyErrorListeners/-935134556=([com.github.jknack.handlebars.internal.antlr.Parser, com.github.jknack.handlebars.internal.antlr.Token, java.lang.String, com.github.jknack.handlebars.internal.antlr.RecognitionException], void)}
; {var3344=com.github.jknack.handlebars.internal.antlr.DefaultErrorStrategy, var408=r13, var1935=com.github.jknack.handlebars.internal.antlr.Parser, var434=r0, var441=com.github.jknack.handlebars.internal.antlr.FailedPredicateException, var3511=r7, var2836=com.github.jknack.handlebars.internal.antlr.Recognizer, var3359=$r2, var266=com.github.jknack.handlebars.internal.antlr.ParserRuleContext, var1060=$r1, var1268=com.github.jknack.handlebars.internal.antlr.RuleContext, var1423=$i0, var2850=r3, var2907=$r4, var1682=$r5, var2414=$r6, var977=$r9, var1795=java.lang.Throwable, var1749=$r8, var2638=$r10, var2047=r11, var3987=com.github.jknack.handlebars.internal.antlr.Token, var2397=com.github.jknack.handlebars.internal.antlr.RecognitionException, var3954=$r12}
; {com.github.jknack.handlebars.internal.antlr.DefaultErrorStrategy=var3344, r13=var408, com.github.jknack.handlebars.internal.antlr.Parser=var1935, r0=var434, com.github.jknack.handlebars.internal.antlr.FailedPredicateException=var441, r7=var3511, com.github.jknack.handlebars.internal.antlr.Recognizer=var2836, $r2=var3359, com.github.jknack.handlebars.internal.antlr.ParserRuleContext=var266, $r1=var1060, com.github.jknack.handlebars.internal.antlr.RuleContext=var1268, $i0=var1423, r3=var2850, $r4=var2907, $r5=var1682, $r6=var2414, $r9=var977, java.lang.Throwable=var1795, $r8=var1749, $r10=var2638, r11=var2047, com.github.jknack.handlebars.internal.antlr.Token=var3987, com.github.jknack.handlebars.internal.antlr.RecognitionException=var2397, $r12=var3954}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r13 := @this: com.github.jknack.handlebars.internal.antlr.DefaultErrorStrategy;	r0 := @parameter0: com.github.jknack.handlebars.internal.antlr.Parser;	r7 := @parameter1: com.github.jknack.handlebars.internal.antlr.FailedPredicateException;	$r2 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.Parser: java.lang.String[] getRuleNames()>();	$r1 = r0.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.ParserRuleContext _ctx>;	$i0 = virtualinvoke $r1.<com.github.jknack.handlebars.internal.antlr.ParserRuleContext: int getRuleIndex()>();	r3 = $r2[$i0];	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("rule ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r8 = virtualinvoke r7.<com.github.jknack.handlebars.internal.antlr.FailedPredicateException: java.lang.String getMessage()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	$r12 = virtualinvoke r7.<com.github.jknack.handlebars.internal.antlr.FailedPredicateException: com.github.jknack.handlebars.internal.antlr.Token getOffendingToken()>();	virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.Parser: void notifyErrorListeners(com.github.jknack.handlebars.internal.antlr.Token,java.lang.String,com.github.jknack.handlebars.internal.antlr.RecognitionException)>($r12, r11, r7);	return
;block_num 1