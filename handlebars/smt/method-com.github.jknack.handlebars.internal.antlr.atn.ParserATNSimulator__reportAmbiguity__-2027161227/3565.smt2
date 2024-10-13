(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var188 0)
(declare-sort var2657 0)
(declare-sort var2662 0)
(declare-sort var2722 0)
(declare-sort var1148 0)
(declare-sort var17 0)
(declare-sort var304 0)
(declare-sort var322 0)
(declare-sort var1915 0)
(declare-sort var3432 0)
(declare-sort var1606 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var17_of/1114852800 (Int Int) var17)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1915) String)
(declare-fun cast-from-var2722-to-var1915 (var2722) var1915)
(declare-fun cast-from-var1148-to-var1915 (var1148) var1915)
(declare-fun parser/310440123 (var188) var3432)
(declare-fun getTokenStream/1024418418 (var3432) var1606)
(declare-fun var1606_getText/1244185151 (var1606 var17) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var304 String) void)
(declare-const null-var188 var188)
(declare-const null-var2657 var2657)
(declare-const null-var2662 var2662)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-var2722 var2722)
(declare-const null-var1148 var1148)
(declare-const var188-debug Bool)
(declare-const var188-retry_debug Bool)
(declare-const var322-out var304)
(declare-const null-var3432 var3432)
(declare-const var2792 var188) ; Statement: r8 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator 
(assert (not (= var2792 null-var188)))
(declare-const var2390 var2657) ; Statement: r16 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA 
(assert (not (= var2390 null-var2657)))
(declare-const var157 var2662) ; Statement: r20 := @parameter1: com.github.jknack.handlebars.internal.antlr.dfa.DFAState 
(assert (not (= var157 null-var2662)))
(declare-const var3782 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3782 null-Int)))
(declare-const var1808 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var1808 null-Int)))
(declare-const var2655 Bool) ; Statement: z1 := @parameter4: boolean 
(assert (not (= var2655 null-Bool)))
(declare-const var1032 var2722) ; Statement: r2 := @parameter5: java.util.BitSet 
(assert (not (= var1032 null-var2722)))
(declare-const var1894 var1148) ; Statement: r5 := @parameter6: com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet 
(assert (not (= var1894 null-var1148)))
(define-const var2955 Bool var188-debug) ; Statement: $z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 != 0 goto $r19 = staticinvoke <com.github.jknack.handlebars.internal.antlr.misc.Interval: com.github.jknack.handlebars.internal.antlr.misc.Interval of(int,int)>(i0, i1) 
(assert (not (not (= (ite var2955 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2135 Bool var188-retry_debug) ; Statement: $z2 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean retry_debug> 
 ; Statement: if $z2 == 0 goto $r21 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
(assert (not (= (ite var2135 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var695 var17 (var17_of/1114852800 var3782 var1808)) ; Statement: $r19 = staticinvoke <com.github.jknack.handlebars.internal.antlr.misc.Interval: com.github.jknack.handlebars.internal.antlr.misc.Interval of(int,int)>(i0, i1) 
(define-const var2008 var304 var322-out) ; Statement: $r1 = <java.lang.System: java.io.PrintStream out> 
(define-const var2787 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2787)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2787!1 String)
(assert (= var2787!1 ""))
(assert true)
(define-const var3388 String (append/672562846 var2787!1 "reportAmbiguity ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("reportAmbiguity ") 
(declare-const var2787!2 String)
(assert (= var2787!2 (str.++ var2787!1 "reportAmbiguity ")))
(assert true)
(define-const var429 String (append/-1031950772 var3388 (cast-from-var2722-to-var1915 var1032))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var3388!1 String)
(assert (str.prefixof var3388 var3388!1))
(assert true)
(define-const var1861 String (append/672562846 var429 ":")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var429!1 String)
(assert (= var429!1 (str.++ var429 ":")))
(assert true)
(define-const var3956 String (append/-1031950772 var1861 (cast-from-var1148-to-var1915 var1894))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5) 
(declare-const var1861!1 String)
(assert (str.prefixof var1861 var1861!1))
(assert true)
(define-const var2247 String (append/672562846 var3956 ", input=")) ; Statement: $r12 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", input=") 
(declare-const var3956!1 String)
(assert (= var3956!1 (str.++ var3956 ", input=")))
(define-const var2879 var3432 (parser/310440123 var2792)) ; Statement: $r9 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
(assert true)
(define-const var1492 var1606 (getTokenStream/1024418418 var2879)) ; Statement: $r10 = virtualinvoke $r9.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.TokenStream getTokenStream()>() 
(define-const var535 String (var1606_getText/1244185151 var1492 var695)) ; Statement: $r11 = interfaceinvoke $r10.<com.github.jknack.handlebars.internal.antlr.TokenStream: java.lang.String getText(com.github.jknack.handlebars.internal.antlr.misc.Interval)>($r19) 
(assert true)
(define-const var281 String (append/672562846 var2247 var535)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var2247!1 String)
(assert (= var2247!1 (str.++ var2247 var535)))
(assert true)
(define-const var3548 String (toString/-2075883882 var281)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var2008 var3548)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r14) 

(declare-const var2008!1 var304)
(declare-const var3548!1 String)
(assert true) ; Non Conditional
(define-const var1611 var3432 (parser/310440123 var2792)) ; Statement: $r21 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
 ; Statement: if $r21 == null goto return 
(assert (= var1611 null-var3432)) ; Cond: $r21 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var17_of/1114852800=([int, int], com.github.jknack.handlebars.internal.antlr.misc.Interval), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2722-to-var1915=([java.util.BitSet], java.lang.Object), cast-from-var1148-to-var1915=([com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet], java.lang.Object), parser/310440123=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator], com.github.jknack.handlebars.internal.antlr.Parser), getTokenStream/1024418418=([com.github.jknack.handlebars.internal.antlr.Parser], com.github.jknack.handlebars.internal.antlr.TokenStream), var1606_getText/1244185151=([com.github.jknack.handlebars.internal.antlr.TokenStream, com.github.jknack.handlebars.internal.antlr.misc.Interval], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var188=com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, var2792=r8, var2657=com.github.jknack.handlebars.internal.antlr.dfa.DFA, var2390=r16, var2662=com.github.jknack.handlebars.internal.antlr.dfa.DFAState, var157=r20, var3782=i0, var1808=i1, var2655=z1, var2722=java.util.BitSet, var1032=r2, var1148=com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet, var1894=r5, var2955=$z0, var2135=$z2, var17=com.github.jknack.handlebars.internal.antlr.misc.Interval, var695=$r19, var304=java.io.PrintStream, var322=java.lang.System, var2008=$r1, var2787=$r0, var3388=$r3, var1915=java.lang.Object, var429=$r4, var1861=$r6, var3956=$r7, var2247=$r12, var3432=com.github.jknack.handlebars.internal.antlr.Parser, var2879=$r9, var1606=com.github.jknack.handlebars.internal.antlr.TokenStream, var1492=$r10, var535=$r11, var281=$r13, var3548=$r14, var1611=$r21}
; {com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator=var188, r8=var2792, com.github.jknack.handlebars.internal.antlr.dfa.DFA=var2657, r16=var2390, com.github.jknack.handlebars.internal.antlr.dfa.DFAState=var2662, r20=var157, i0=var3782, i1=var1808, z1=var2655, java.util.BitSet=var2722, r2=var1032, com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet=var1148, r5=var1894, $z0=var2955, $z2=var2135, com.github.jknack.handlebars.internal.antlr.misc.Interval=var17, $r19=var695, java.io.PrintStream=var304, java.lang.System=var322, $r1=var2008, $r0=var2787, $r3=var3388, java.lang.Object=var1915, $r4=var429, $r6=var1861, $r7=var3956, $r12=var2247, com.github.jknack.handlebars.internal.antlr.Parser=var3432, $r9=var2879, com.github.jknack.handlebars.internal.antlr.TokenStream=var1606, $r10=var1492, $r11=var535, $r13=var281, $r14=var3548, $r21=var1611}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator;	r16 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA;	r20 := @parameter1: com.github.jknack.handlebars.internal.antlr.dfa.DFAState;	i0 := @parameter2: int;	i1 := @parameter3: int;	z1 := @parameter4: boolean;	r2 := @parameter5: java.util.BitSet;	r5 := @parameter6: com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet;	$z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug>;	if $z0 != 0 goto $r19 = staticinvoke <com.github.jknack.handlebars.internal.antlr.misc.Interval: com.github.jknack.handlebars.internal.antlr.misc.Interval of(int,int)>(i0, i1);	$z2 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean retry_debug>;	if $z2 == 0 goto $r21 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	$r19 = staticinvoke <com.github.jknack.handlebars.internal.antlr.misc.Interval: com.github.jknack.handlebars.internal.antlr.misc.Interval of(int,int)>(i0, i1);	$r1 = <java.lang.System: java.io.PrintStream out>;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("reportAmbiguity ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5);	$r12 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", input=");	$r9 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	$r10 = virtualinvoke $r9.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.TokenStream getTokenStream()>();	$r11 = interfaceinvoke $r10.<com.github.jknack.handlebars.internal.antlr.TokenStream: java.lang.String getText(com.github.jknack.handlebars.internal.antlr.misc.Interval)>($r19);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r14);	$r21 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	if $r21 == null goto return;	return
;block_num 5