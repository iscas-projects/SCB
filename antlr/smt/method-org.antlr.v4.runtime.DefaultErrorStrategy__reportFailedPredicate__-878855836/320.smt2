(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var66 0)
(declare-sort var3328 0)
(declare-sort var3566 0)
(declare-sort var848 0)
(declare-sort var1813 0)
(declare-sort var3008 0)
(declare-sort var2465 0)
(declare-sort var1223 0)
(declare-sort var558 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getRuleNames/1186755831 (var848) (Array Int String))
(declare-fun cast-from-var3328-to-var848 (var3328) var848)
(declare-fun _ctx/1158644090 (var3328) var1813)
(declare-fun getRuleIndex/-1178371726 (var3008) Int)
(declare-fun cast-from-var1813-to-var3008 (var1813) var3008)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var2465) String)
(declare-fun cast-from-var3566-to-var2465 (var3566) var2465)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getOffendingToken/-1021747607 (var558) var1223)
(declare-fun cast-from-var3566-to-var558 (var3566) var558)
(declare-fun notifyErrorListeners/-1265892977 (var3328 var1223 String var558) void)
(declare-const null-var66 var66)
(declare-const null-var3328 var3328)
(declare-const null-var3566 var3566)
(declare-const var2360 var66) ; Statement: r13 := @this: org.antlr.v4.runtime.DefaultErrorStrategy 
(assert (not (= var2360 null-var66)))
(declare-const var3627 var3328) ; Statement: r0 := @parameter0: org.antlr.v4.runtime.Parser 
(assert (not (= var3627 null-var3328)))
(declare-const var673 var3566) ; Statement: r7 := @parameter1: org.antlr.v4.runtime.FailedPredicateException 
(assert (not (= var673 null-var3566)))
(assert true)
(define-const var790 (Array Int String) (getRuleNames/1186755831 (cast-from-var3328-to-var848 var3627))) ; Statement: $r2 = virtualinvoke r0.<org.antlr.v4.runtime.Parser: java.lang.String[] getRuleNames()>() 
(define-const var3017 var1813 (_ctx/1158644090 var3627)) ; Statement: $r1 = r0.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.ParserRuleContext _ctx> 
(assert true)
(define-const var1702 Int (getRuleIndex/-1178371726 (cast-from-var1813-to-var3008 var3017))) ; Statement: $i0 = virtualinvoke $r1.<org.antlr.v4.runtime.ParserRuleContext: int getRuleIndex()>() 
(define-const var618 String (select var790 var1702)) ; Statement: r3 = $r2[$i0] 
(define-const var2750 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2750)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2750!1 String)
(assert (= var2750!1 ""))
(assert true)
(define-const var3587 String (append/672562846 var2750!1 "rule ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("rule ") 
(declare-const var2750!2 String)
(assert (= var2750!2 (str.++ var2750!1 "rule ")))
(assert true)
(define-const var3574 String (append/672562846 var3587 var618)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3587!1 String)
(assert (= var3587!1 (str.++ var3587 var618)))
(assert true)
(define-const var1076 String (append/672562846 var3574 " ")) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var3574!1 String)
(assert (= var3574!1 (str.++ var3574 " ")))
(assert true)
(define-const var3333 String (getMessage/849299655 (cast-from-var3566-to-var2465 var673))) ; Statement: $r8 = virtualinvoke r7.<org.antlr.v4.runtime.FailedPredicateException: java.lang.String getMessage()>() 
(assert true)
(define-const var3205 String (append/672562846 var1076 var3333)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1076!1 String)
(assert (= var1076!1 (str.++ var1076 var3333)))
(assert true)
(define-const var3162 String (toString/-2075883882 var3205)) ; Statement: r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1425 var1223 (getOffendingToken/-1021747607 (cast-from-var3566-to-var558 var673))) ; Statement: $r12 = virtualinvoke r7.<org.antlr.v4.runtime.FailedPredicateException: org.antlr.v4.runtime.Token getOffendingToken()>() 
(assert true)
;(assert (notifyErrorListeners/-1265892977 var3627 var1425 var3162 (cast-from-var3566-to-var558 var673))) ; Statement: virtualinvoke r0.<org.antlr.v4.runtime.Parser: void notifyErrorListeners(org.antlr.v4.runtime.Token,java.lang.String,org.antlr.v4.runtime.RecognitionException)>($r12, r11, r7) 

(declare-const var3627!1 var3328)
(declare-const var1425!1 var1223)
(declare-const var3162!1 String)
(declare-const var673!1 var3566)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getRuleNames/1186755831=([org.antlr.v4.runtime.Recognizer], java.lang.String[]), cast-from-var3328-to-var848=([org.antlr.v4.runtime.Parser], org.antlr.v4.runtime.Recognizer), _ctx/1158644090=([org.antlr.v4.runtime.Parser], org.antlr.v4.runtime.ParserRuleContext), getRuleIndex/-1178371726=([org.antlr.v4.runtime.RuleContext], int), cast-from-var1813-to-var3008=([org.antlr.v4.runtime.ParserRuleContext], org.antlr.v4.runtime.RuleContext), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var3566-to-var2465=([org.antlr.v4.runtime.FailedPredicateException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getOffendingToken/-1021747607=([org.antlr.v4.runtime.RecognitionException], org.antlr.v4.runtime.Token), cast-from-var3566-to-var558=([org.antlr.v4.runtime.FailedPredicateException], org.antlr.v4.runtime.RecognitionException), notifyErrorListeners/-1265892977=([org.antlr.v4.runtime.Parser, org.antlr.v4.runtime.Token, java.lang.String, org.antlr.v4.runtime.RecognitionException], void)}
; {var66=org.antlr.v4.runtime.DefaultErrorStrategy, var2360=r13, var3328=org.antlr.v4.runtime.Parser, var3627=r0, var3566=org.antlr.v4.runtime.FailedPredicateException, var673=r7, var848=org.antlr.v4.runtime.Recognizer, var790=$r2, var1813=org.antlr.v4.runtime.ParserRuleContext, var3017=$r1, var3008=org.antlr.v4.runtime.RuleContext, var1702=$i0, var618=r3, var2750=$r4, var3587=$r5, var3574=$r6, var1076=$r9, var2465=java.lang.Throwable, var3333=$r8, var3205=$r10, var3162=r11, var1223=org.antlr.v4.runtime.Token, var558=org.antlr.v4.runtime.RecognitionException, var1425=$r12}
; {org.antlr.v4.runtime.DefaultErrorStrategy=var66, r13=var2360, org.antlr.v4.runtime.Parser=var3328, r0=var3627, org.antlr.v4.runtime.FailedPredicateException=var3566, r7=var673, org.antlr.v4.runtime.Recognizer=var848, $r2=var790, org.antlr.v4.runtime.ParserRuleContext=var1813, $r1=var3017, org.antlr.v4.runtime.RuleContext=var3008, $i0=var1702, r3=var618, $r4=var2750, $r5=var3587, $r6=var3574, $r9=var1076, java.lang.Throwable=var2465, $r8=var3333, $r10=var3205, r11=var3162, org.antlr.v4.runtime.Token=var1223, org.antlr.v4.runtime.RecognitionException=var558, $r12=var1425}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r13 := @this: org.antlr.v4.runtime.DefaultErrorStrategy;	r0 := @parameter0: org.antlr.v4.runtime.Parser;	r7 := @parameter1: org.antlr.v4.runtime.FailedPredicateException;	$r2 = virtualinvoke r0.<org.antlr.v4.runtime.Parser: java.lang.String[] getRuleNames()>();	$r1 = r0.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.ParserRuleContext _ctx>;	$i0 = virtualinvoke $r1.<org.antlr.v4.runtime.ParserRuleContext: int getRuleIndex()>();	r3 = $r2[$i0];	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("rule ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r8 = virtualinvoke r7.<org.antlr.v4.runtime.FailedPredicateException: java.lang.String getMessage()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	$r12 = virtualinvoke r7.<org.antlr.v4.runtime.FailedPredicateException: org.antlr.v4.runtime.Token getOffendingToken()>();	virtualinvoke r0.<org.antlr.v4.runtime.Parser: void notifyErrorListeners(org.antlr.v4.runtime.Token,java.lang.String,org.antlr.v4.runtime.RecognitionException)>($r12, r11, r7);	return
;block_num 1