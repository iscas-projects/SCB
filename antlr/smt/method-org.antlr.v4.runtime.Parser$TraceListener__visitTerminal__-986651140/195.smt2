(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var365 0)
(declare-sort var303 0)
(declare-sort var736 0)
(declare-sort var1341 0)
(declare-sort var3854 0)
(declare-sort var3036 0)
(declare-sort var617 0)
(declare-sort var2942 0)
(declare-sort var2718 0)
(declare-sort var3583 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var303_getSymbol/-423442308 (var303) var3854)
(declare-fun append/-1031950772 (String var3036) String)
(declare-fun cast-from-var3854-to-var3036 (var3854) var3036)
(declare-fun this$0/1264186191 (var365) var617)
(declare-fun getRuleNames/1186755831 (var2942) (Array Int String))
(declare-fun cast-from-var617-to-var2942 (var617) var2942)
(declare-fun _ctx/1158644090 (var617) var2718)
(declare-fun getRuleIndex/-1178371726 (var3583) Int)
(declare-fun cast-from-var2718-to-var3583 (var2718) var3583)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var736 String) void)
(declare-const null-var365 var365)
(declare-const null-var303 var303)
(declare-const var1341-out var736)
(declare-const var2737 var365) ; Statement: r6 := @this: org.antlr.v4.runtime.Parser$TraceListener 
(assert (not (= var2737 null-var365)))
(declare-const var1919 var303) ; Statement: r2 := @parameter0: org.antlr.v4.runtime.tree.TerminalNode 
(assert (not (= var1919 null-var303)))
(define-const var2779 var736 var1341-out) ; Statement: $r1 = <java.lang.System: java.io.PrintStream out> 
(define-const var704 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var704)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var704!1 String)
(assert (= var704!1 ""))
(assert true)
(define-const var2799 String (append/672562846 var704!1 "consume ")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("consume ") 
(declare-const var704!2 String)
(assert (= var704!2 (str.++ var704!1 "consume ")))
(define-const var1311 var3854 (var303_getSymbol/-423442308 var1919)) ; Statement: $r3 = interfaceinvoke r2.<org.antlr.v4.runtime.tree.TerminalNode: org.antlr.v4.runtime.Token getSymbol()>() 
(assert true)
(define-const var2498 String (append/-1031950772 var2799 (cast-from-var3854-to-var3036 var1311))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var2799!1 String)
(assert (str.prefixof var2799 var2799!1))
(assert true)
(define-const var2124 String (append/672562846 var2498 " rule ")) ; Statement: $r12 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rule ") 
(declare-const var2498!1 String)
(assert (= var2498!1 (str.++ var2498 " rule ")))
(define-const var968 var617 (this$0/1264186191 var2737)) ; Statement: $r7 = r6.<org.antlr.v4.runtime.Parser$TraceListener: org.antlr.v4.runtime.Parser this$0> 
(assert true)
(define-const var1541 (Array Int String) (getRuleNames/1186755831 (cast-from-var617-to-var2942 var968))) ; Statement: $r10 = virtualinvoke $r7.<org.antlr.v4.runtime.Parser: java.lang.String[] getRuleNames()>() 
(define-const var3167 var617 (this$0/1264186191 var2737)) ; Statement: $r8 = r6.<org.antlr.v4.runtime.Parser$TraceListener: org.antlr.v4.runtime.Parser this$0> 
(define-const var443 var2718 (_ctx/1158644090 var3167)) ; Statement: $r9 = $r8.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.ParserRuleContext _ctx> 
(assert true)
(define-const var1895 Int (getRuleIndex/-1178371726 (cast-from-var2718-to-var3583 var443))) ; Statement: $i0 = virtualinvoke $r9.<org.antlr.v4.runtime.ParserRuleContext: int getRuleIndex()>() 
(define-const var1985 String (select var1541 var1895)) ; Statement: $r11 = $r10[$i0] 
(assert true)
(define-const var3052 String (append/672562846 var2124 var1985)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var2124!1 String)
(assert (= var2124!1 (str.++ var2124 var1985)))
(assert true)
(define-const var2772 String (toString/-2075883882 var3052)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var2779 var2772)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r14) 

(declare-const var2779!1 var736)
(declare-const var2772!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var303_getSymbol/-423442308=([org.antlr.v4.runtime.tree.TerminalNode], org.antlr.v4.runtime.Token), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3854-to-var3036=([org.antlr.v4.runtime.Token], java.lang.Object), this$0/1264186191=([org.antlr.v4.runtime.Parser$TraceListener], org.antlr.v4.runtime.Parser), getRuleNames/1186755831=([org.antlr.v4.runtime.Recognizer], java.lang.String[]), cast-from-var617-to-var2942=([org.antlr.v4.runtime.Parser], org.antlr.v4.runtime.Recognizer), _ctx/1158644090=([org.antlr.v4.runtime.Parser], org.antlr.v4.runtime.ParserRuleContext), getRuleIndex/-1178371726=([org.antlr.v4.runtime.RuleContext], int), cast-from-var2718-to-var3583=([org.antlr.v4.runtime.ParserRuleContext], org.antlr.v4.runtime.RuleContext), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var365=org.antlr.v4.runtime.Parser$TraceListener, var2737=r6, var303=org.antlr.v4.runtime.tree.TerminalNode, var1919=r2, var736=java.io.PrintStream, var1341=java.lang.System, var2779=$r1, var704=$r0, var2799=$r4, var3854=org.antlr.v4.runtime.Token, var1311=$r3, var3036=java.lang.Object, var2498=$r5, var2124=$r12, var617=org.antlr.v4.runtime.Parser, var968=$r7, var2942=org.antlr.v4.runtime.Recognizer, var1541=$r10, var3167=$r8, var2718=org.antlr.v4.runtime.ParserRuleContext, var443=$r9, var3583=org.antlr.v4.runtime.RuleContext, var1895=$i0, var1985=$r11, var3052=$r13, var2772=$r14}
; {org.antlr.v4.runtime.Parser$TraceListener=var365, r6=var2737, org.antlr.v4.runtime.tree.TerminalNode=var303, r2=var1919, java.io.PrintStream=var736, java.lang.System=var1341, $r1=var2779, $r0=var704, $r4=var2799, org.antlr.v4.runtime.Token=var3854, $r3=var1311, java.lang.Object=var3036, $r5=var2498, $r12=var2124, org.antlr.v4.runtime.Parser=var617, $r7=var968, org.antlr.v4.runtime.Recognizer=var2942, $r10=var1541, $r8=var3167, org.antlr.v4.runtime.ParserRuleContext=var2718, $r9=var443, org.antlr.v4.runtime.RuleContext=var3583, $i0=var1895, $r11=var1985, $r13=var3052, $r14=var2772}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.antlr.v4.runtime.Parser$TraceListener;	r2 := @parameter0: org.antlr.v4.runtime.tree.TerminalNode;	$r1 = <java.lang.System: java.io.PrintStream out>;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("consume ");	$r3 = interfaceinvoke r2.<org.antlr.v4.runtime.tree.TerminalNode: org.antlr.v4.runtime.Token getSymbol()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r12 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rule ");	$r7 = r6.<org.antlr.v4.runtime.Parser$TraceListener: org.antlr.v4.runtime.Parser this$0>;	$r10 = virtualinvoke $r7.<org.antlr.v4.runtime.Parser: java.lang.String[] getRuleNames()>();	$r8 = r6.<org.antlr.v4.runtime.Parser$TraceListener: org.antlr.v4.runtime.Parser this$0>;	$r9 = $r8.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.ParserRuleContext _ctx>;	$i0 = virtualinvoke $r9.<org.antlr.v4.runtime.ParserRuleContext: int getRuleIndex()>();	$r11 = $r10[$i0];	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r14);	return
;block_num 1