(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2680 0)
(declare-sort var3301 0)
(declare-sort var1614 0)
(declare-sort var3623 0)
(declare-sort var3883 0)
(declare-sort var2350 0)
(declare-sort var1696 0)
(declare-sort var2475 0)
(declare-sort var539 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun this$0/1264186191 (var2680) var3883)
(declare-fun getRuleNames/1186755831 (var2350) (Array Int String))
(declare-fun cast-from-var3883-to-var2350 (var3883) var2350)
(declare-fun getRuleIndex/-1178371726 (var1696) Int)
(declare-fun cast-from-var3301-to-var1696 (var3301) var1696)
(declare-fun _input/1158644090 (var3883) var2475)
(declare-fun var2475_LT/-1699631322 (var2475 Int) var539)
(declare-fun var539_getText/-531335083 (var539) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var1614 String) void)
(declare-const null-var2680 var2680)
(declare-const null-var3301 var3301)
(declare-const var3623-out var1614)
(declare-const var2759 var2680) ; Statement: r2 := @this: org.antlr.v4.runtime.Parser$TraceListener 
(assert (not (= var2759 null-var2680)))
(declare-const var3836 var3301) ; Statement: r4 := @parameter0: org.antlr.v4.runtime.ParserRuleContext 
(assert (not (= var3836 null-var3301)))
(define-const var3641 var1614 var3623-out) ; Statement: $r1 = <java.lang.System: java.io.PrintStream out> 
(define-const var2169 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2169)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2169!1 String)
(assert (= var2169!1 ""))
(assert true)
(define-const var3134 String (append/672562846 var2169!1 "exit    ")) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("exit    ") 
(declare-const var2169!2 String)
(assert (= var2169!2 (str.++ var2169!1 "exit    ")))
(define-const var1937 var3883 (this$0/1264186191 var2759)) ; Statement: $r3 = r2.<org.antlr.v4.runtime.Parser$TraceListener: org.antlr.v4.runtime.Parser this$0> 
(assert true)
(define-const var2752 (Array Int String) (getRuleNames/1186755831 (cast-from-var3883-to-var2350 var1937))) ; Statement: $r5 = virtualinvoke $r3.<org.antlr.v4.runtime.Parser: java.lang.String[] getRuleNames()>() 
(assert true)
(define-const var3994 Int (getRuleIndex/-1178371726 (cast-from-var3301-to-var1696 var3836))) ; Statement: $i0 = virtualinvoke r4.<org.antlr.v4.runtime.ParserRuleContext: int getRuleIndex()>() 
(define-const var446 String (select var2752 var3994)) ; Statement: $r6 = $r5[$i0] 
(assert true)
(define-const var2988 String (append/672562846 var3134 var446)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3134!1 String)
(assert (= var3134!1 (str.++ var3134 var446)))
(assert true)
(define-const var2526 String (append/672562846 var2988 ", LT(1)=")) ; Statement: $r13 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", LT(1)=") 
(declare-const var2988!1 String)
(assert (= var2988!1 (str.++ var2988 ", LT(1)=")))
(define-const var2699 var3883 (this$0/1264186191 var2759)) ; Statement: $r9 = r2.<org.antlr.v4.runtime.Parser$TraceListener: org.antlr.v4.runtime.Parser this$0> 
(define-const var1084 var2475 (_input/1158644090 var2699)) ; Statement: $r10 = $r9.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.TokenStream _input> 
(define-const var2960 var539 (var2475_LT/-1699631322 var1084 1)) ; Statement: $r11 = interfaceinvoke $r10.<org.antlr.v4.runtime.TokenStream: org.antlr.v4.runtime.Token LT(int)>(1) 
(define-const var1854 String (var539_getText/-531335083 var2960)) ; Statement: $r12 = interfaceinvoke $r11.<org.antlr.v4.runtime.Token: java.lang.String getText()>() 
(assert true)
(define-const var2483 String (append/672562846 var2526 var1854)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var2526!1 String)
(assert (= var2526!1 (str.++ var2526 var1854)))
(assert true)
(define-const var2603 String (toString/-2075883882 var2483)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var3641 var2603)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r15) 

(declare-const var3641!1 var1614)
(declare-const var2603!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), this$0/1264186191=([org.antlr.v4.runtime.Parser$TraceListener], org.antlr.v4.runtime.Parser), getRuleNames/1186755831=([org.antlr.v4.runtime.Recognizer], java.lang.String[]), cast-from-var3883-to-var2350=([org.antlr.v4.runtime.Parser], org.antlr.v4.runtime.Recognizer), getRuleIndex/-1178371726=([org.antlr.v4.runtime.RuleContext], int), cast-from-var3301-to-var1696=([org.antlr.v4.runtime.ParserRuleContext], org.antlr.v4.runtime.RuleContext), _input/1158644090=([org.antlr.v4.runtime.Parser], org.antlr.v4.runtime.TokenStream), var2475_LT/-1699631322=([org.antlr.v4.runtime.TokenStream, int], org.antlr.v4.runtime.Token), var539_getText/-531335083=([org.antlr.v4.runtime.Token], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var2680=org.antlr.v4.runtime.Parser$TraceListener, var2759=r2, var3301=org.antlr.v4.runtime.ParserRuleContext, var3836=r4, var1614=java.io.PrintStream, var3623=java.lang.System, var3641=$r1, var2169=$r0, var3134=$r7, var3883=org.antlr.v4.runtime.Parser, var1937=$r3, var2350=org.antlr.v4.runtime.Recognizer, var2752=$r5, var1696=org.antlr.v4.runtime.RuleContext, var3994=$i0, var446=$r6, var2988=$r8, var2526=$r13, var2699=$r9, var2475=org.antlr.v4.runtime.TokenStream, var1084=$r10, var539=org.antlr.v4.runtime.Token, var2960=$r11, var1854=$r12, var2483=$r14, var2603=$r15}
; {org.antlr.v4.runtime.Parser$TraceListener=var2680, r2=var2759, org.antlr.v4.runtime.ParserRuleContext=var3301, r4=var3836, java.io.PrintStream=var1614, java.lang.System=var3623, $r1=var3641, $r0=var2169, $r7=var3134, org.antlr.v4.runtime.Parser=var3883, $r3=var1937, org.antlr.v4.runtime.Recognizer=var2350, $r5=var2752, org.antlr.v4.runtime.RuleContext=var1696, $i0=var3994, $r6=var446, $r8=var2988, $r13=var2526, $r9=var2699, org.antlr.v4.runtime.TokenStream=var2475, $r10=var1084, org.antlr.v4.runtime.Token=var539, $r11=var2960, $r12=var1854, $r14=var2483, $r15=var2603}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.antlr.v4.runtime.Parser$TraceListener;	r4 := @parameter0: org.antlr.v4.runtime.ParserRuleContext;	$r1 = <java.lang.System: java.io.PrintStream out>;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("exit    ");	$r3 = r2.<org.antlr.v4.runtime.Parser$TraceListener: org.antlr.v4.runtime.Parser this$0>;	$r5 = virtualinvoke $r3.<org.antlr.v4.runtime.Parser: java.lang.String[] getRuleNames()>();	$i0 = virtualinvoke r4.<org.antlr.v4.runtime.ParserRuleContext: int getRuleIndex()>();	$r6 = $r5[$i0];	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r13 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", LT(1)=");	$r9 = r2.<org.antlr.v4.runtime.Parser$TraceListener: org.antlr.v4.runtime.Parser this$0>;	$r10 = $r9.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.TokenStream _input>;	$r11 = interfaceinvoke $r10.<org.antlr.v4.runtime.TokenStream: org.antlr.v4.runtime.Token LT(int)>(1);	$r12 = interfaceinvoke $r11.<org.antlr.v4.runtime.Token: java.lang.String getText()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r15);	return
;block_num 1