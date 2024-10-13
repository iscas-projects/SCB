(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2369 0)
(declare-sort var3464 0)
(declare-sort var1585 0)
(declare-sort var1982 0)
(declare-sort var3585 0)
(declare-sort var3938 0)
(declare-sort var421 0)
(declare-sort var945 0)
(declare-sort var3499 0)
(declare-sort var302 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3464_getSymbol/-1667894290 (var3464) var3585)
(declare-fun append/-1031950772 (String var3938) String)
(declare-fun cast-from-var3585-to-var3938 (var3585) var3938)
(declare-fun this$0/249834068 (var2369) var421)
(declare-fun getRuleNames/-1557780812 (var945) (Array Int String))
(declare-fun cast-from-var421-to-var945 (var421) var945)
(declare-fun _ctx/32912703 (var421) var3499)
(declare-fun getRuleIndex/1597393391 (var302) Int)
(declare-fun cast-from-var3499-to-var302 (var3499) var302)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var1585 String) void)
(declare-const null-var2369 var2369)
(declare-const null-var3464 var3464)
(declare-const var1982-out var1585)
(declare-const var485 var2369) ; Statement: r6 := @this: com.github.jknack.handlebars.internal.antlr.Parser$TraceListener 
(assert (not (= var485 null-var2369)))
(declare-const var1610 var3464) ; Statement: r2 := @parameter0: com.github.jknack.handlebars.internal.antlr.tree.TerminalNode 
(assert (not (= var1610 null-var3464)))
(define-const var3169 var1585 var1982-out) ; Statement: $r1 = <java.lang.System: java.io.PrintStream out> 
(define-const var3934 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3934)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3934!1 String)
(assert (= var3934!1 ""))
(assert true)
(define-const var3621 String (append/672562846 var3934!1 "consume ")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("consume ") 
(declare-const var3934!2 String)
(assert (= var3934!2 (str.++ var3934!1 "consume ")))
(define-const var2528 var3585 (var3464_getSymbol/-1667894290 var1610)) ; Statement: $r3 = interfaceinvoke r2.<com.github.jknack.handlebars.internal.antlr.tree.TerminalNode: com.github.jknack.handlebars.internal.antlr.Token getSymbol()>() 
(assert true)
(define-const var1097 String (append/-1031950772 var3621 (cast-from-var3585-to-var3938 var2528))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var3621!1 String)
(assert (str.prefixof var3621 var3621!1))
(assert true)
(define-const var852 String (append/672562846 var1097 " rule ")) ; Statement: $r12 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rule ") 
(declare-const var1097!1 String)
(assert (= var1097!1 (str.++ var1097 " rule ")))
(define-const var3962 var421 (this$0/249834068 var485)) ; Statement: $r7 = r6.<com.github.jknack.handlebars.internal.antlr.Parser$TraceListener: com.github.jknack.handlebars.internal.antlr.Parser this$0> 
(assert true)
(define-const var1689 (Array Int String) (getRuleNames/-1557780812 (cast-from-var421-to-var945 var3962))) ; Statement: $r10 = virtualinvoke $r7.<com.github.jknack.handlebars.internal.antlr.Parser: java.lang.String[] getRuleNames()>() 
(define-const var1146 var421 (this$0/249834068 var485)) ; Statement: $r8 = r6.<com.github.jknack.handlebars.internal.antlr.Parser$TraceListener: com.github.jknack.handlebars.internal.antlr.Parser this$0> 
(define-const var1185 var3499 (_ctx/32912703 var1146)) ; Statement: $r9 = $r8.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.ParserRuleContext _ctx> 
(assert true)
(define-const var368 Int (getRuleIndex/1597393391 (cast-from-var3499-to-var302 var1185))) ; Statement: $i0 = virtualinvoke $r9.<com.github.jknack.handlebars.internal.antlr.ParserRuleContext: int getRuleIndex()>() 
(define-const var3465 String (select var1689 var368)) ; Statement: $r11 = $r10[$i0] 
(assert true)
(define-const var1205 String (append/672562846 var852 var3465)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var852!1 String)
(assert (= var852!1 (str.++ var852 var3465)))
(assert true)
(define-const var1240 String (toString/-2075883882 var1205)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var3169 var1240)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r14) 

(declare-const var3169!1 var1585)
(declare-const var1240!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3464_getSymbol/-1667894290=([com.github.jknack.handlebars.internal.antlr.tree.TerminalNode], com.github.jknack.handlebars.internal.antlr.Token), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3585-to-var3938=([com.github.jknack.handlebars.internal.antlr.Token], java.lang.Object), this$0/249834068=([com.github.jknack.handlebars.internal.antlr.Parser$TraceListener], com.github.jknack.handlebars.internal.antlr.Parser), getRuleNames/-1557780812=([com.github.jknack.handlebars.internal.antlr.Recognizer], java.lang.String[]), cast-from-var421-to-var945=([com.github.jknack.handlebars.internal.antlr.Parser], com.github.jknack.handlebars.internal.antlr.Recognizer), _ctx/32912703=([com.github.jknack.handlebars.internal.antlr.Parser], com.github.jknack.handlebars.internal.antlr.ParserRuleContext), getRuleIndex/1597393391=([com.github.jknack.handlebars.internal.antlr.RuleContext], int), cast-from-var3499-to-var302=([com.github.jknack.handlebars.internal.antlr.ParserRuleContext], com.github.jknack.handlebars.internal.antlr.RuleContext), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var2369=com.github.jknack.handlebars.internal.antlr.Parser$TraceListener, var485=r6, var3464=com.github.jknack.handlebars.internal.antlr.tree.TerminalNode, var1610=r2, var1585=java.io.PrintStream, var1982=java.lang.System, var3169=$r1, var3934=$r0, var3621=$r4, var3585=com.github.jknack.handlebars.internal.antlr.Token, var2528=$r3, var3938=java.lang.Object, var1097=$r5, var852=$r12, var421=com.github.jknack.handlebars.internal.antlr.Parser, var3962=$r7, var945=com.github.jknack.handlebars.internal.antlr.Recognizer, var1689=$r10, var1146=$r8, var3499=com.github.jknack.handlebars.internal.antlr.ParserRuleContext, var1185=$r9, var302=com.github.jknack.handlebars.internal.antlr.RuleContext, var368=$i0, var3465=$r11, var1205=$r13, var1240=$r14}
; {com.github.jknack.handlebars.internal.antlr.Parser$TraceListener=var2369, r6=var485, com.github.jknack.handlebars.internal.antlr.tree.TerminalNode=var3464, r2=var1610, java.io.PrintStream=var1585, java.lang.System=var1982, $r1=var3169, $r0=var3934, $r4=var3621, com.github.jknack.handlebars.internal.antlr.Token=var3585, $r3=var2528, java.lang.Object=var3938, $r5=var1097, $r12=var852, com.github.jknack.handlebars.internal.antlr.Parser=var421, $r7=var3962, com.github.jknack.handlebars.internal.antlr.Recognizer=var945, $r10=var1689, $r8=var1146, com.github.jknack.handlebars.internal.antlr.ParserRuleContext=var3499, $r9=var1185, com.github.jknack.handlebars.internal.antlr.RuleContext=var302, $i0=var368, $r11=var3465, $r13=var1205, $r14=var1240}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: com.github.jknack.handlebars.internal.antlr.Parser$TraceListener;	r2 := @parameter0: com.github.jknack.handlebars.internal.antlr.tree.TerminalNode;	$r1 = <java.lang.System: java.io.PrintStream out>;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("consume ");	$r3 = interfaceinvoke r2.<com.github.jknack.handlebars.internal.antlr.tree.TerminalNode: com.github.jknack.handlebars.internal.antlr.Token getSymbol()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r12 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rule ");	$r7 = r6.<com.github.jknack.handlebars.internal.antlr.Parser$TraceListener: com.github.jknack.handlebars.internal.antlr.Parser this$0>;	$r10 = virtualinvoke $r7.<com.github.jknack.handlebars.internal.antlr.Parser: java.lang.String[] getRuleNames()>();	$r8 = r6.<com.github.jknack.handlebars.internal.antlr.Parser$TraceListener: com.github.jknack.handlebars.internal.antlr.Parser this$0>;	$r9 = $r8.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.ParserRuleContext _ctx>;	$i0 = virtualinvoke $r9.<com.github.jknack.handlebars.internal.antlr.ParserRuleContext: int getRuleIndex()>();	$r11 = $r10[$i0];	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r14);	return
;block_num 1