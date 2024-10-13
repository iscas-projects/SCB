(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var989 0)
(declare-sort var3813 0)
(declare-sort var3273 0)
(declare-sort var2080 0)
(declare-sort var610 0)
(declare-sort var3805 0)
(declare-sort var931 0)
(declare-sort var85 0)
(declare-sort var3201 0)
(declare-sort var779 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getLookaheadName/-375406071 (var989 var3813) String)
(declare-fun var3813_LT/-1699631322 (var3813 Int) var3805)
(declare-fun var3805_getLine/-1887331676 (var3805) Int)
(declare-fun var3805_getCharPositionInLine/969483936 (var3805) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var2080 String) void)
(declare-fun _input/145254134 (var989) var3813)
(declare-fun var931_index/-178705198 (var931) Int)
(declare-fun cast-from-var3813-to-var931 (var3813) var931)
(declare-fun _startIndex/145254134 (var989) Int)
(declare-fun _outerContext/145254134 (var989) var3273)
(declare-fun decisionToDFA/145254134 (var989) (Array Int var85))
(declare-fun _dfa/145254134 (var989) var85)
(declare-fun var931_mark/829797641 (var931) Int)
(declare-fun mergeCache/145254134 (var989) var779)
(declare-fun var931_seek/-362761590 (var931 Int) void)
(declare-fun var931_release/-324305555 (var931 Int) void)
(declare-const null-var989 var989)
(declare-const null-var3813 var3813)
(declare-const null-Int Int)
(declare-const null-var3273 var3273)
(declare-const var989-debug Bool)
(declare-const var610-out var2080)
(declare-const null-var3201 var3201)
(declare-const null-var779 var779)
(declare-const null-var85 var85)
(declare-const var3132 var989) ; Statement: r4 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator 
(assert (not (= var3132 null-var989)))
(declare-const var1869 var3813) ; Statement: r5 := @parameter0: org.antlr.v4.runtime.TokenStream 
(assert (not (= var1869 null-var3813)))
(declare-const var511 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var511 null-Int)))
(declare-const var1420 var3273) ; Statement: r33 := @parameter2: org.antlr.v4.runtime.ParserRuleContext 
(assert (not (= var1420 null-var3273)))
(define-const var1506 Bool var989-debug) ; Statement: $z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 != 0 goto $r1 = <java.lang.System: java.io.PrintStream out> 
(assert (not (= (ite var1506 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2527 var2080 var610-out) ; Statement: $r1 = <java.lang.System: java.io.PrintStream out> 
(define-const var3190 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3190)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3190!1 String)
(assert (= var3190!1 ""))
(assert true)
(define-const var3754 String (append/672562846 var3190!1 "adaptivePredict decision ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("adaptivePredict decision ") 
(declare-const var3190!2 String)
(assert (= var3190!2 (str.++ var3190!1 "adaptivePredict decision ")))
(assert true)
(define-const var1992 String (append/-1001720160 var3754 var511)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3754!1 String)
(assert (str.prefixof var3754 var3754!1))
(assert true)
(define-const var3167 String (append/672562846 var1992 " exec LA(1)==")) ; Statement: $r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" exec LA(1)==") 
(declare-const var1992!1 String)
(assert (= var1992!1 (str.++ var1992 " exec LA(1)==")))
(assert true)
(define-const var470 String (getLookaheadName/-375406071 var3132 var1869)) ; Statement: $r6 = virtualinvoke r4.<org.antlr.v4.runtime.atn.ParserATNSimulator: java.lang.String getLookaheadName(org.antlr.v4.runtime.TokenStream)>(r5) 
(assert true)
(define-const var3507 String (append/672562846 var3167 var470)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3167!1 String)
(assert (= var3167!1 (str.++ var3167 var470)))
(assert true)
(define-const var3291 String (append/672562846 var3507 " line ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" line ") 
(declare-const var3507!1 String)
(assert (= var3507!1 (str.++ var3507 " line ")))
(define-const var2549 var3805 (var3813_LT/-1699631322 var1869 1)) ; Statement: $r9 = interfaceinvoke r5.<org.antlr.v4.runtime.TokenStream: org.antlr.v4.runtime.Token LT(int)>(1) 
(define-const var3800 Int (var3805_getLine/-1887331676 var2549)) ; Statement: $i1 = interfaceinvoke $r9.<org.antlr.v4.runtime.Token: int getLine()>() 
(assert true)
(define-const var1873 String (append/-1001720160 var3291 var3800)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var3291!1 String)
(assert (str.prefixof var3291 var3291!1))
(assert true)
(define-const var1512 String (append/672562846 var1873 ":")) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var1873!1 String)
(assert (= var1873!1 (str.++ var1873 ":")))
(define-const var2648 var3805 (var3813_LT/-1699631322 var1869 1)) ; Statement: $r12 = interfaceinvoke r5.<org.antlr.v4.runtime.TokenStream: org.antlr.v4.runtime.Token LT(int)>(1) 
(define-const var640 Int (var3805_getCharPositionInLine/969483936 var2648)) ; Statement: $i2 = interfaceinvoke $r12.<org.antlr.v4.runtime.Token: int getCharPositionInLine()>() 
(assert true)
(define-const var3090 String (append/-1001720160 var1512 var640)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var1512!1 String)
(assert (str.prefixof var1512 var1512!1))
(assert true)
(define-const var1016 String (toString/-2075883882 var3090)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var2527 var1016)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r15) 

(declare-const var2527!1 var2080)
(declare-const var1016!1 String)
(assert true) ; Non Conditional
(declare-const var3132!1 var989)
(assert (not (= var3132!1 null-var989)))
(assert (= (_input/145254134 var3132!1) var1869)) ; Statement: r4.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.TokenStream _input> = r5 
(define-const var840 Int (var931_index/-178705198 (cast-from-var3813-to-var931 var1869))) ; Statement: $i5 = interfaceinvoke r5.<org.antlr.v4.runtime.TokenStream: int index()>() 
(declare-const var3132!2 var989)
(assert (not (= var3132!2 null-var989)))
(assert (= (_startIndex/145254134 var3132!2) var840)) ; Statement: r4.<org.antlr.v4.runtime.atn.ParserATNSimulator: int _startIndex> = $i5 
(declare-const var3132!3 var989)
(assert (not (= var3132!3 null-var989)))
(assert (= (_outerContext/145254134 var3132!3) var1420)) ; Statement: r4.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.ParserRuleContext _outerContext> = r33 
(define-const var2885 (Array Int var85) (decisionToDFA/145254134 var3132!3)) ; Statement: $r34 = r4.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFA[] decisionToDFA> 
(define-const var974 var85 (select var2885 var511)) ; Statement: $r35 = $r34[i0] 
(declare-const var3132!4 var989)
(assert (not (= var3132!4 null-var989)))
(assert (= (_dfa/145254134 var3132!4) var974)) ; Statement: r4.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFA _dfa> = $r35 
(define-const var3807 Int (var931_mark/829797641 (cast-from-var3813-to-var931 var1869))) ; Statement: $i6 = interfaceinvoke r5.<org.antlr.v4.runtime.TokenStream: int mark()>() 
(define-const var372 Int (_startIndex/145254134 var3132!4)) ; Statement: $i7 = r4.<org.antlr.v4.runtime.atn.ParserATNSimulator: int _startIndex> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3015 var3201) ; Statement: $r32 := @caughtexception 
(assert (not (= var3015 null-var3201)))
(assert true) ; Non Conditional
(declare-const var3132!5 var989)
(assert (not (= var3132!5 null-var989)))
(assert (= (mergeCache/145254134 var3132!5) null-var779)) ; Statement: r4.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.misc.DoubleKeyMap mergeCache> = null 
(declare-const var3132!6 var989)
(assert (not (= var3132!6 null-var989)))
(assert (= (_dfa/145254134 var3132!6) null-var85)) ; Statement: r4.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFA _dfa> = null 
;(assert (var931_seek/-362761590 (cast-from-var3813-to-var931 var1869) var372)) ; Statement: interfaceinvoke r5.<org.antlr.v4.runtime.TokenStream: void seek(int)>($i7) 

(declare-const var1869!1 var3813)
(declare-const var372!1 Int)
;(assert (var931_release/-324305555 (cast-from-var3813-to-var931 var1869!1) var3807)) ; Statement: interfaceinvoke r5.<org.antlr.v4.runtime.TokenStream: void release(int)>($i6) 

(declare-const var1869!2 var3813)
(declare-const var3807!1 Int)
 ; Statement: throw $r32 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getLookaheadName/-375406071=([org.antlr.v4.runtime.atn.ParserATNSimulator, org.antlr.v4.runtime.TokenStream], java.lang.String), var3813_LT/-1699631322=([org.antlr.v4.runtime.TokenStream, int], org.antlr.v4.runtime.Token), var3805_getLine/-1887331676=([org.antlr.v4.runtime.Token], int), var3805_getCharPositionInLine/969483936=([org.antlr.v4.runtime.Token], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), _input/145254134=([org.antlr.v4.runtime.atn.ParserATNSimulator], org.antlr.v4.runtime.TokenStream), var931_index/-178705198=([org.antlr.v4.runtime.IntStream], int), cast-from-var3813-to-var931=([org.antlr.v4.runtime.TokenStream], org.antlr.v4.runtime.IntStream), _startIndex/145254134=([org.antlr.v4.runtime.atn.ParserATNSimulator], int), _outerContext/145254134=([org.antlr.v4.runtime.atn.ParserATNSimulator], org.antlr.v4.runtime.ParserRuleContext), decisionToDFA/145254134=([org.antlr.v4.runtime.atn.ParserATNSimulator], org.antlr.v4.runtime.dfa.DFA[]), _dfa/145254134=([org.antlr.v4.runtime.atn.ParserATNSimulator], org.antlr.v4.runtime.dfa.DFA), var931_mark/829797641=([org.antlr.v4.runtime.IntStream], int), mergeCache/145254134=([org.antlr.v4.runtime.atn.ParserATNSimulator], org.antlr.v4.runtime.misc.DoubleKeyMap), var931_seek/-362761590=([org.antlr.v4.runtime.IntStream, int], void), var931_release/-324305555=([org.antlr.v4.runtime.IntStream, int], void)}
; {var989=org.antlr.v4.runtime.atn.ParserATNSimulator, var3132=r4, var3813=org.antlr.v4.runtime.TokenStream, var1869=r5, var511=i0, var3273=org.antlr.v4.runtime.ParserRuleContext, var1420=r33, var1506=$z0, var2080=java.io.PrintStream, var610=java.lang.System, var2527=$r1, var3190=$r0, var3754=$r2, var1992=$r3, var3167=$r7, var470=$r6, var3507=$r8, var3291=$r10, var3805=org.antlr.v4.runtime.Token, var2549=$r9, var3800=$i1, var1873=$r11, var1512=$r13, var2648=$r12, var640=$i2, var3090=$r14, var1016=$r15, var931=org.antlr.v4.runtime.IntStream, var840=$i5, var85=org.antlr.v4.runtime.dfa.DFA, var2885=$r34, var974=$r35, var3807=$i6, var372=$i7, var3201=java.lang.Throwable, var3015=$r32, var779=org.antlr.v4.runtime.misc.DoubleKeyMap}
; {org.antlr.v4.runtime.atn.ParserATNSimulator=var989, r4=var3132, org.antlr.v4.runtime.TokenStream=var3813, r5=var1869, i0=var511, org.antlr.v4.runtime.ParserRuleContext=var3273, r33=var1420, $z0=var1506, java.io.PrintStream=var2080, java.lang.System=var610, $r1=var2527, $r0=var3190, $r2=var3754, $r3=var1992, $r7=var3167, $r6=var470, $r8=var3507, $r10=var3291, org.antlr.v4.runtime.Token=var3805, $r9=var2549, $i1=var3800, $r11=var1873, $r13=var1512, $r12=var2648, $i2=var640, $r14=var3090, $r15=var1016, org.antlr.v4.runtime.IntStream=var931, $i5=var840, org.antlr.v4.runtime.dfa.DFA=var85, $r34=var2885, $r35=var974, $i6=var3807, $i7=var372, java.lang.Throwable=var3201, $r32=var3015, org.antlr.v4.runtime.misc.DoubleKeyMap=var779}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator;	r5 := @parameter0: org.antlr.v4.runtime.TokenStream;	i0 := @parameter1: int;	r33 := @parameter2: org.antlr.v4.runtime.ParserRuleContext;	$z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug>;	if $z0 != 0 goto $r1 = <java.lang.System: java.io.PrintStream out>;	$r1 = <java.lang.System: java.io.PrintStream out>;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("adaptivePredict decision ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" exec LA(1)==");	$r6 = virtualinvoke r4.<org.antlr.v4.runtime.atn.ParserATNSimulator: java.lang.String getLookaheadName(org.antlr.v4.runtime.TokenStream)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" line ");	$r9 = interfaceinvoke r5.<org.antlr.v4.runtime.TokenStream: org.antlr.v4.runtime.Token LT(int)>(1);	$i1 = interfaceinvoke $r9.<org.antlr.v4.runtime.Token: int getLine()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r12 = interfaceinvoke r5.<org.antlr.v4.runtime.TokenStream: org.antlr.v4.runtime.Token LT(int)>(1);	$i2 = interfaceinvoke $r12.<org.antlr.v4.runtime.Token: int getCharPositionInLine()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r15);	r4.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.TokenStream _input> = r5;	$i5 = interfaceinvoke r5.<org.antlr.v4.runtime.TokenStream: int index()>();	r4.<org.antlr.v4.runtime.atn.ParserATNSimulator: int _startIndex> = $i5;	r4.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.ParserRuleContext _outerContext> = r33;	$r34 = r4.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFA[] decisionToDFA>;	$r35 = $r34[i0];	r4.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFA _dfa> = $r35;	$i6 = interfaceinvoke r5.<org.antlr.v4.runtime.TokenStream: int mark()>();	$i7 = r4.<org.antlr.v4.runtime.atn.ParserATNSimulator: int _startIndex>;	$r32 := @caughtexception;	r4.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.misc.DoubleKeyMap mergeCache> = null;	r4.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFA _dfa> = null;	interfaceinvoke r5.<org.antlr.v4.runtime.TokenStream: void seek(int)>($i7);	interfaceinvoke r5.<org.antlr.v4.runtime.TokenStream: void release(int)>($i6);	throw $r32
;block_num 5