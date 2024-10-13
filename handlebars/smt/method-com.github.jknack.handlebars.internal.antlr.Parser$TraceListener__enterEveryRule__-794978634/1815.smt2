(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2801 0)
(declare-sort var3810 0)
(declare-sort var3066 0)
(declare-sort var557 0)
(declare-sort var1222 0)
(declare-sort var3267 0)
(declare-sort var580 0)
(declare-sort var1668 0)
(declare-sort var2980 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun this$0/249834068 (var2801) var1222)
(declare-fun getRuleNames/-1557780812 (var3267) (Array Int String))
(declare-fun cast-from-var1222-to-var3267 (var1222) var3267)
(declare-fun getRuleIndex/1597393391 (var580) Int)
(declare-fun cast-from-var3810-to-var580 (var3810) var580)
(declare-fun _input/32912703 (var1222) var1668)
(declare-fun var1668_LT/-1327699634 (var1668 Int) var2980)
(declare-fun var2980_getText/-195748462 (var2980) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var3066 String) void)
(declare-const null-var2801 var2801)
(declare-const null-var3810 var3810)
(declare-const var557-out var3066)
(declare-const var2889 var2801) ; Statement: r2 := @this: com.github.jknack.handlebars.internal.antlr.Parser$TraceListener 
(assert (not (= var2889 null-var2801)))
(declare-const var773 var3810) ; Statement: r4 := @parameter0: com.github.jknack.handlebars.internal.antlr.ParserRuleContext 
(assert (not (= var773 null-var3810)))
(define-const var1785 var3066 var557-out) ; Statement: $r1 = <java.lang.System: java.io.PrintStream out> 
(define-const var970 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var970)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var970!1 String)
(assert (= var970!1 ""))
(assert true)
(define-const var3239 String (append/672562846 var970!1 "enter   ")) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("enter   ") 
(declare-const var970!2 String)
(assert (= var970!2 (str.++ var970!1 "enter   ")))
(define-const var663 var1222 (this$0/249834068 var2889)) ; Statement: $r3 = r2.<com.github.jknack.handlebars.internal.antlr.Parser$TraceListener: com.github.jknack.handlebars.internal.antlr.Parser this$0> 
(assert true)
(define-const var3348 (Array Int String) (getRuleNames/-1557780812 (cast-from-var1222-to-var3267 var663))) ; Statement: $r5 = virtualinvoke $r3.<com.github.jknack.handlebars.internal.antlr.Parser: java.lang.String[] getRuleNames()>() 
(assert true)
(define-const var1706 Int (getRuleIndex/1597393391 (cast-from-var3810-to-var580 var773))) ; Statement: $i0 = virtualinvoke r4.<com.github.jknack.handlebars.internal.antlr.ParserRuleContext: int getRuleIndex()>() 
(define-const var1013 String (select var3348 var1706)) ; Statement: $r6 = $r5[$i0] 
(assert true)
(define-const var95 String (append/672562846 var3239 var1013)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3239!1 String)
(assert (= var3239!1 (str.++ var3239 var1013)))
(assert true)
(define-const var220 String (append/672562846 var95 ", LT(1)=")) ; Statement: $r13 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", LT(1)=") 
(declare-const var95!1 String)
(assert (= var95!1 (str.++ var95 ", LT(1)=")))
(define-const var2939 var1222 (this$0/249834068 var2889)) ; Statement: $r9 = r2.<com.github.jknack.handlebars.internal.antlr.Parser$TraceListener: com.github.jknack.handlebars.internal.antlr.Parser this$0> 
(define-const var2333 var1668 (_input/32912703 var2939)) ; Statement: $r10 = $r9.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.TokenStream _input> 
(define-const var2259 var2980 (var1668_LT/-1327699634 var2333 1)) ; Statement: $r11 = interfaceinvoke $r10.<com.github.jknack.handlebars.internal.antlr.TokenStream: com.github.jknack.handlebars.internal.antlr.Token LT(int)>(1) 
(define-const var1823 String (var2980_getText/-195748462 var2259)) ; Statement: $r12 = interfaceinvoke $r11.<com.github.jknack.handlebars.internal.antlr.Token: java.lang.String getText()>() 
(assert true)
(define-const var2735 String (append/672562846 var220 var1823)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var220!1 String)
(assert (= var220!1 (str.++ var220 var1823)))
(assert true)
(define-const var569 String (toString/-2075883882 var2735)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var1785 var569)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r15) 

(declare-const var1785!1 var3066)
(declare-const var569!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), this$0/249834068=([com.github.jknack.handlebars.internal.antlr.Parser$TraceListener], com.github.jknack.handlebars.internal.antlr.Parser), getRuleNames/-1557780812=([com.github.jknack.handlebars.internal.antlr.Recognizer], java.lang.String[]), cast-from-var1222-to-var3267=([com.github.jknack.handlebars.internal.antlr.Parser], com.github.jknack.handlebars.internal.antlr.Recognizer), getRuleIndex/1597393391=([com.github.jknack.handlebars.internal.antlr.RuleContext], int), cast-from-var3810-to-var580=([com.github.jknack.handlebars.internal.antlr.ParserRuleContext], com.github.jknack.handlebars.internal.antlr.RuleContext), _input/32912703=([com.github.jknack.handlebars.internal.antlr.Parser], com.github.jknack.handlebars.internal.antlr.TokenStream), var1668_LT/-1327699634=([com.github.jknack.handlebars.internal.antlr.TokenStream, int], com.github.jknack.handlebars.internal.antlr.Token), var2980_getText/-195748462=([com.github.jknack.handlebars.internal.antlr.Token], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var2801=com.github.jknack.handlebars.internal.antlr.Parser$TraceListener, var2889=r2, var3810=com.github.jknack.handlebars.internal.antlr.ParserRuleContext, var773=r4, var3066=java.io.PrintStream, var557=java.lang.System, var1785=$r1, var970=$r0, var3239=$r7, var1222=com.github.jknack.handlebars.internal.antlr.Parser, var663=$r3, var3267=com.github.jknack.handlebars.internal.antlr.Recognizer, var3348=$r5, var580=com.github.jknack.handlebars.internal.antlr.RuleContext, var1706=$i0, var1013=$r6, var95=$r8, var220=$r13, var2939=$r9, var1668=com.github.jknack.handlebars.internal.antlr.TokenStream, var2333=$r10, var2980=com.github.jknack.handlebars.internal.antlr.Token, var2259=$r11, var1823=$r12, var2735=$r14, var569=$r15}
; {com.github.jknack.handlebars.internal.antlr.Parser$TraceListener=var2801, r2=var2889, com.github.jknack.handlebars.internal.antlr.ParserRuleContext=var3810, r4=var773, java.io.PrintStream=var3066, java.lang.System=var557, $r1=var1785, $r0=var970, $r7=var3239, com.github.jknack.handlebars.internal.antlr.Parser=var1222, $r3=var663, com.github.jknack.handlebars.internal.antlr.Recognizer=var3267, $r5=var3348, com.github.jknack.handlebars.internal.antlr.RuleContext=var580, $i0=var1706, $r6=var1013, $r8=var95, $r13=var220, $r9=var2939, com.github.jknack.handlebars.internal.antlr.TokenStream=var1668, $r10=var2333, com.github.jknack.handlebars.internal.antlr.Token=var2980, $r11=var2259, $r12=var1823, $r14=var2735, $r15=var569}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.github.jknack.handlebars.internal.antlr.Parser$TraceListener;	r4 := @parameter0: com.github.jknack.handlebars.internal.antlr.ParserRuleContext;	$r1 = <java.lang.System: java.io.PrintStream out>;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("enter   ");	$r3 = r2.<com.github.jknack.handlebars.internal.antlr.Parser$TraceListener: com.github.jknack.handlebars.internal.antlr.Parser this$0>;	$r5 = virtualinvoke $r3.<com.github.jknack.handlebars.internal.antlr.Parser: java.lang.String[] getRuleNames()>();	$i0 = virtualinvoke r4.<com.github.jknack.handlebars.internal.antlr.ParserRuleContext: int getRuleIndex()>();	$r6 = $r5[$i0];	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r13 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", LT(1)=");	$r9 = r2.<com.github.jknack.handlebars.internal.antlr.Parser$TraceListener: com.github.jknack.handlebars.internal.antlr.Parser this$0>;	$r10 = $r9.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.TokenStream _input>;	$r11 = interfaceinvoke $r10.<com.github.jknack.handlebars.internal.antlr.TokenStream: com.github.jknack.handlebars.internal.antlr.Token LT(int)>(1);	$r12 = interfaceinvoke $r11.<com.github.jknack.handlebars.internal.antlr.Token: java.lang.String getText()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r15);	return
;block_num 1