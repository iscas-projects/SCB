(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1040 0)
(declare-sort var3597 0)
(declare-sort var563 0)
(declare-sort var1194 0)
(declare-sort var771 0)
(declare-sort var1136 0)
(declare-sort var1075 0)
(declare-sort var578 0)
(declare-sort var2428 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun this$0/249834068 (var1040) var771)
(declare-fun getRuleNames/-1557780812 (var1136) (Array Int String))
(declare-fun cast-from-var771-to-var1136 (var771) var1136)
(declare-fun getRuleIndex/1597393391 (var1075) Int)
(declare-fun cast-from-var3597-to-var1075 (var3597) var1075)
(declare-fun _input/32912703 (var771) var578)
(declare-fun var578_LT/-1327699634 (var578 Int) var2428)
(declare-fun var2428_getText/-195748462 (var2428) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var563 String) void)
(declare-const null-var1040 var1040)
(declare-const null-var3597 var3597)
(declare-const var1194-out var563)
(declare-const var1031 var1040) ; Statement: r2 := @this: com.github.jknack.handlebars.internal.antlr.Parser$TraceListener 
(assert (not (= var1031 null-var1040)))
(declare-const var313 var3597) ; Statement: r4 := @parameter0: com.github.jknack.handlebars.internal.antlr.ParserRuleContext 
(assert (not (= var313 null-var3597)))
(define-const var1969 var563 var1194-out) ; Statement: $r1 = <java.lang.System: java.io.PrintStream out> 
(define-const var1357 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1357)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1357!1 String)
(assert (= var1357!1 ""))
(assert true)
(define-const var1300 String (append/672562846 var1357!1 "exit    ")) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("exit    ") 
(declare-const var1357!2 String)
(assert (= var1357!2 (str.++ var1357!1 "exit    ")))
(define-const var2477 var771 (this$0/249834068 var1031)) ; Statement: $r3 = r2.<com.github.jknack.handlebars.internal.antlr.Parser$TraceListener: com.github.jknack.handlebars.internal.antlr.Parser this$0> 
(assert true)
(define-const var3475 (Array Int String) (getRuleNames/-1557780812 (cast-from-var771-to-var1136 var2477))) ; Statement: $r5 = virtualinvoke $r3.<com.github.jknack.handlebars.internal.antlr.Parser: java.lang.String[] getRuleNames()>() 
(assert true)
(define-const var1 Int (getRuleIndex/1597393391 (cast-from-var3597-to-var1075 var313))) ; Statement: $i0 = virtualinvoke r4.<com.github.jknack.handlebars.internal.antlr.ParserRuleContext: int getRuleIndex()>() 
(define-const var280 String (select var3475 var1)) ; Statement: $r6 = $r5[$i0] 
(assert true)
(define-const var140 String (append/672562846 var1300 var280)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1300!1 String)
(assert (= var1300!1 (str.++ var1300 var280)))
(assert true)
(define-const var3993 String (append/672562846 var140 ", LT(1)=")) ; Statement: $r13 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", LT(1)=") 
(declare-const var140!1 String)
(assert (= var140!1 (str.++ var140 ", LT(1)=")))
(define-const var2457 var771 (this$0/249834068 var1031)) ; Statement: $r9 = r2.<com.github.jknack.handlebars.internal.antlr.Parser$TraceListener: com.github.jknack.handlebars.internal.antlr.Parser this$0> 
(define-const var2921 var578 (_input/32912703 var2457)) ; Statement: $r10 = $r9.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.TokenStream _input> 
(define-const var1109 var2428 (var578_LT/-1327699634 var2921 1)) ; Statement: $r11 = interfaceinvoke $r10.<com.github.jknack.handlebars.internal.antlr.TokenStream: com.github.jknack.handlebars.internal.antlr.Token LT(int)>(1) 
(define-const var1102 String (var2428_getText/-195748462 var1109)) ; Statement: $r12 = interfaceinvoke $r11.<com.github.jknack.handlebars.internal.antlr.Token: java.lang.String getText()>() 
(assert true)
(define-const var2822 String (append/672562846 var3993 var1102)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var3993!1 String)
(assert (= var3993!1 (str.++ var3993 var1102)))
(assert true)
(define-const var1381 String (toString/-2075883882 var2822)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var1969 var1381)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r15) 

(declare-const var1969!1 var563)
(declare-const var1381!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), this$0/249834068=([com.github.jknack.handlebars.internal.antlr.Parser$TraceListener], com.github.jknack.handlebars.internal.antlr.Parser), getRuleNames/-1557780812=([com.github.jknack.handlebars.internal.antlr.Recognizer], java.lang.String[]), cast-from-var771-to-var1136=([com.github.jknack.handlebars.internal.antlr.Parser], com.github.jknack.handlebars.internal.antlr.Recognizer), getRuleIndex/1597393391=([com.github.jknack.handlebars.internal.antlr.RuleContext], int), cast-from-var3597-to-var1075=([com.github.jknack.handlebars.internal.antlr.ParserRuleContext], com.github.jknack.handlebars.internal.antlr.RuleContext), _input/32912703=([com.github.jknack.handlebars.internal.antlr.Parser], com.github.jknack.handlebars.internal.antlr.TokenStream), var578_LT/-1327699634=([com.github.jknack.handlebars.internal.antlr.TokenStream, int], com.github.jknack.handlebars.internal.antlr.Token), var2428_getText/-195748462=([com.github.jknack.handlebars.internal.antlr.Token], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var1040=com.github.jknack.handlebars.internal.antlr.Parser$TraceListener, var1031=r2, var3597=com.github.jknack.handlebars.internal.antlr.ParserRuleContext, var313=r4, var563=java.io.PrintStream, var1194=java.lang.System, var1969=$r1, var1357=$r0, var1300=$r7, var771=com.github.jknack.handlebars.internal.antlr.Parser, var2477=$r3, var1136=com.github.jknack.handlebars.internal.antlr.Recognizer, var3475=$r5, var1075=com.github.jknack.handlebars.internal.antlr.RuleContext, var1=$i0, var280=$r6, var140=$r8, var3993=$r13, var2457=$r9, var578=com.github.jknack.handlebars.internal.antlr.TokenStream, var2921=$r10, var2428=com.github.jknack.handlebars.internal.antlr.Token, var1109=$r11, var1102=$r12, var2822=$r14, var1381=$r15}
; {com.github.jknack.handlebars.internal.antlr.Parser$TraceListener=var1040, r2=var1031, com.github.jknack.handlebars.internal.antlr.ParserRuleContext=var3597, r4=var313, java.io.PrintStream=var563, java.lang.System=var1194, $r1=var1969, $r0=var1357, $r7=var1300, com.github.jknack.handlebars.internal.antlr.Parser=var771, $r3=var2477, com.github.jknack.handlebars.internal.antlr.Recognizer=var1136, $r5=var3475, com.github.jknack.handlebars.internal.antlr.RuleContext=var1075, $i0=var1, $r6=var280, $r8=var140, $r13=var3993, $r9=var2457, com.github.jknack.handlebars.internal.antlr.TokenStream=var578, $r10=var2921, com.github.jknack.handlebars.internal.antlr.Token=var2428, $r11=var1109, $r12=var1102, $r14=var2822, $r15=var1381}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.github.jknack.handlebars.internal.antlr.Parser$TraceListener;	r4 := @parameter0: com.github.jknack.handlebars.internal.antlr.ParserRuleContext;	$r1 = <java.lang.System: java.io.PrintStream out>;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("exit    ");	$r3 = r2.<com.github.jknack.handlebars.internal.antlr.Parser$TraceListener: com.github.jknack.handlebars.internal.antlr.Parser this$0>;	$r5 = virtualinvoke $r3.<com.github.jknack.handlebars.internal.antlr.Parser: java.lang.String[] getRuleNames()>();	$i0 = virtualinvoke r4.<com.github.jknack.handlebars.internal.antlr.ParserRuleContext: int getRuleIndex()>();	$r6 = $r5[$i0];	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r13 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", LT(1)=");	$r9 = r2.<com.github.jknack.handlebars.internal.antlr.Parser$TraceListener: com.github.jknack.handlebars.internal.antlr.Parser this$0>;	$r10 = $r9.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.TokenStream _input>;	$r11 = interfaceinvoke $r10.<com.github.jknack.handlebars.internal.antlr.TokenStream: com.github.jknack.handlebars.internal.antlr.Token LT(int)>(1);	$r12 = interfaceinvoke $r11.<com.github.jknack.handlebars.internal.antlr.Token: java.lang.String getText()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r15);	return
;block_num 1