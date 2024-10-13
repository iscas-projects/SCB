(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var479 0)
(declare-sort var1452 0)
(declare-sort var13 0)
(declare-sort var1978 0)
(declare-sort var1577 0)
(declare-sort var1409 0)
(declare-sort var2065 0)
(declare-sort var2781 0)
(declare-sort var3639 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun this$0/1264186191 (var479) var1577)
(declare-fun getRuleNames/1186755831 (var1409) (Array Int String))
(declare-fun cast-from-var1577-to-var1409 (var1577) var1409)
(declare-fun getRuleIndex/-1178371726 (var2065) Int)
(declare-fun cast-from-var1452-to-var2065 (var1452) var2065)
(declare-fun _input/1158644090 (var1577) var2781)
(declare-fun var2781_LT/-1699631322 (var2781 Int) var3639)
(declare-fun var3639_getText/-531335083 (var3639) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var13 String) void)
(declare-const null-var479 var479)
(declare-const null-var1452 var1452)
(declare-const var1978-out var13)
(declare-const var2223 var479) ; Statement: r2 := @this: org.antlr.v4.runtime.Parser$TraceListener 
(assert (not (= var2223 null-var479)))
(declare-const var1050 var1452) ; Statement: r4 := @parameter0: org.antlr.v4.runtime.ParserRuleContext 
(assert (not (= var1050 null-var1452)))
(define-const var3863 var13 var1978-out) ; Statement: $r1 = <java.lang.System: java.io.PrintStream out> 
(define-const var1616 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1616)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1616!1 String)
(assert (= var1616!1 ""))
(assert true)
(define-const var2388 String (append/672562846 var1616!1 "enter   ")) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("enter   ") 
(declare-const var1616!2 String)
(assert (= var1616!2 (str.++ var1616!1 "enter   ")))
(define-const var874 var1577 (this$0/1264186191 var2223)) ; Statement: $r3 = r2.<org.antlr.v4.runtime.Parser$TraceListener: org.antlr.v4.runtime.Parser this$0> 
(assert true)
(define-const var3776 (Array Int String) (getRuleNames/1186755831 (cast-from-var1577-to-var1409 var874))) ; Statement: $r5 = virtualinvoke $r3.<org.antlr.v4.runtime.Parser: java.lang.String[] getRuleNames()>() 
(assert true)
(define-const var3591 Int (getRuleIndex/-1178371726 (cast-from-var1452-to-var2065 var1050))) ; Statement: $i0 = virtualinvoke r4.<org.antlr.v4.runtime.ParserRuleContext: int getRuleIndex()>() 
(define-const var500 String (select var3776 var3591)) ; Statement: $r6 = $r5[$i0] 
(assert true)
(define-const var581 String (append/672562846 var2388 var500)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2388!1 String)
(assert (= var2388!1 (str.++ var2388 var500)))
(assert true)
(define-const var1285 String (append/672562846 var581 ", LT(1)=")) ; Statement: $r13 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", LT(1)=") 
(declare-const var581!1 String)
(assert (= var581!1 (str.++ var581 ", LT(1)=")))
(define-const var449 var1577 (this$0/1264186191 var2223)) ; Statement: $r9 = r2.<org.antlr.v4.runtime.Parser$TraceListener: org.antlr.v4.runtime.Parser this$0> 
(define-const var2297 var2781 (_input/1158644090 var449)) ; Statement: $r10 = $r9.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.TokenStream _input> 
(define-const var2283 var3639 (var2781_LT/-1699631322 var2297 1)) ; Statement: $r11 = interfaceinvoke $r10.<org.antlr.v4.runtime.TokenStream: org.antlr.v4.runtime.Token LT(int)>(1) 
(define-const var3126 String (var3639_getText/-531335083 var2283)) ; Statement: $r12 = interfaceinvoke $r11.<org.antlr.v4.runtime.Token: java.lang.String getText()>() 
(assert true)
(define-const var635 String (append/672562846 var1285 var3126)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var1285!1 String)
(assert (= var1285!1 (str.++ var1285 var3126)))
(assert true)
(define-const var3083 String (toString/-2075883882 var635)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var3863 var3083)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r15) 

(declare-const var3863!1 var13)
(declare-const var3083!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), this$0/1264186191=([org.antlr.v4.runtime.Parser$TraceListener], org.antlr.v4.runtime.Parser), getRuleNames/1186755831=([org.antlr.v4.runtime.Recognizer], java.lang.String[]), cast-from-var1577-to-var1409=([org.antlr.v4.runtime.Parser], org.antlr.v4.runtime.Recognizer), getRuleIndex/-1178371726=([org.antlr.v4.runtime.RuleContext], int), cast-from-var1452-to-var2065=([org.antlr.v4.runtime.ParserRuleContext], org.antlr.v4.runtime.RuleContext), _input/1158644090=([org.antlr.v4.runtime.Parser], org.antlr.v4.runtime.TokenStream), var2781_LT/-1699631322=([org.antlr.v4.runtime.TokenStream, int], org.antlr.v4.runtime.Token), var3639_getText/-531335083=([org.antlr.v4.runtime.Token], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var479=org.antlr.v4.runtime.Parser$TraceListener, var2223=r2, var1452=org.antlr.v4.runtime.ParserRuleContext, var1050=r4, var13=java.io.PrintStream, var1978=java.lang.System, var3863=$r1, var1616=$r0, var2388=$r7, var1577=org.antlr.v4.runtime.Parser, var874=$r3, var1409=org.antlr.v4.runtime.Recognizer, var3776=$r5, var2065=org.antlr.v4.runtime.RuleContext, var3591=$i0, var500=$r6, var581=$r8, var1285=$r13, var449=$r9, var2781=org.antlr.v4.runtime.TokenStream, var2297=$r10, var3639=org.antlr.v4.runtime.Token, var2283=$r11, var3126=$r12, var635=$r14, var3083=$r15}
; {org.antlr.v4.runtime.Parser$TraceListener=var479, r2=var2223, org.antlr.v4.runtime.ParserRuleContext=var1452, r4=var1050, java.io.PrintStream=var13, java.lang.System=var1978, $r1=var3863, $r0=var1616, $r7=var2388, org.antlr.v4.runtime.Parser=var1577, $r3=var874, org.antlr.v4.runtime.Recognizer=var1409, $r5=var3776, org.antlr.v4.runtime.RuleContext=var2065, $i0=var3591, $r6=var500, $r8=var581, $r13=var1285, $r9=var449, org.antlr.v4.runtime.TokenStream=var2781, $r10=var2297, org.antlr.v4.runtime.Token=var3639, $r11=var2283, $r12=var3126, $r14=var635, $r15=var3083}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.antlr.v4.runtime.Parser$TraceListener;	r4 := @parameter0: org.antlr.v4.runtime.ParserRuleContext;	$r1 = <java.lang.System: java.io.PrintStream out>;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("enter   ");	$r3 = r2.<org.antlr.v4.runtime.Parser$TraceListener: org.antlr.v4.runtime.Parser this$0>;	$r5 = virtualinvoke $r3.<org.antlr.v4.runtime.Parser: java.lang.String[] getRuleNames()>();	$i0 = virtualinvoke r4.<org.antlr.v4.runtime.ParserRuleContext: int getRuleIndex()>();	$r6 = $r5[$i0];	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r13 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", LT(1)=");	$r9 = r2.<org.antlr.v4.runtime.Parser$TraceListener: org.antlr.v4.runtime.Parser this$0>;	$r10 = $r9.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.TokenStream _input>;	$r11 = interfaceinvoke $r10.<org.antlr.v4.runtime.TokenStream: org.antlr.v4.runtime.Token LT(int)>(1);	$r12 = interfaceinvoke $r11.<org.antlr.v4.runtime.Token: java.lang.String getText()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r15);	return
;block_num 1