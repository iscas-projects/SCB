(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3570 0)
(declare-sort var750 0)
(declare-sort var1355 0)
(declare-sort var757 0)
(declare-sort var1516 0)
(declare-sort var525 0)
(declare-sort var2069 0)
(declare-sort var2660 0)
(declare-sort var3742 0)
(declare-sort var1330 0)
(declare-sort var3321 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var525_of/1114852800 (Int Int) var525)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3742) String)
(declare-fun cast-from-var757-to-var3742 (var757) var3742)
(declare-fun cast-from-var1516-to-var3742 (var1516) var3742)
(declare-fun parser/310440123 (var3570) var1330)
(declare-fun getTokenStream/1024418418 (var1330) var3321)
(declare-fun var3321_getText/1244185151 (var3321 var525) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var2069 String) void)
(declare-const null-var3570 var3570)
(declare-const null-var750 var750)
(declare-const null-var1355 var1355)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-var757 var757)
(declare-const null-var1516 var1516)
(declare-const var3570-debug Bool)
(declare-const var2660-out var2069)
(declare-const null-var1330 var1330)
(declare-const var3986 var3570) ; Statement: r8 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator 
(assert (not (= var3986 null-var3570)))
(declare-const var132 var750) ; Statement: r16 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA 
(assert (not (= var132 null-var750)))
(declare-const var3275 var1355) ; Statement: r20 := @parameter1: com.github.jknack.handlebars.internal.antlr.dfa.DFAState 
(assert (not (= var3275 null-var1355)))
(declare-const var2856 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var2856 null-Int)))
(declare-const var2231 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var2231 null-Int)))
(declare-const var2366 Bool) ; Statement: z1 := @parameter4: boolean 
(assert (not (= var2366 null-Bool)))
(declare-const var3341 var757) ; Statement: r2 := @parameter5: java.util.BitSet 
(assert (not (= var3341 null-var757)))
(declare-const var532 var1516) ; Statement: r5 := @parameter6: com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet 
(assert (not (= var532 null-var1516)))
(define-const var673 Bool var3570-debug) ; Statement: $z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 != 0 goto $r19 = staticinvoke <com.github.jknack.handlebars.internal.antlr.misc.Interval: com.github.jknack.handlebars.internal.antlr.misc.Interval of(int,int)>(i0, i1) 
(assert (not (= (ite var673 1 0) 0))) ; Cond: $z0 != 0 
(define-const var201 var525 (var525_of/1114852800 var2856 var2231)) ; Statement: $r19 = staticinvoke <com.github.jknack.handlebars.internal.antlr.misc.Interval: com.github.jknack.handlebars.internal.antlr.misc.Interval of(int,int)>(i0, i1) 
(define-const var1861 var2069 var2660-out) ; Statement: $r1 = <java.lang.System: java.io.PrintStream out> 
(define-const var1820 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1820)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1820!1 String)
(assert (= var1820!1 ""))
(assert true)
(define-const var2606 String (append/672562846 var1820!1 "reportAmbiguity ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("reportAmbiguity ") 
(declare-const var1820!2 String)
(assert (= var1820!2 (str.++ var1820!1 "reportAmbiguity ")))
(assert true)
(define-const var1753 String (append/-1031950772 var2606 (cast-from-var757-to-var3742 var3341))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var2606!1 String)
(assert (str.prefixof var2606 var2606!1))
(assert true)
(define-const var781 String (append/672562846 var1753 ":")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var1753!1 String)
(assert (= var1753!1 (str.++ var1753 ":")))
(assert true)
(define-const var2602 String (append/-1031950772 var781 (cast-from-var1516-to-var3742 var532))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5) 
(declare-const var781!1 String)
(assert (str.prefixof var781 var781!1))
(assert true)
(define-const var2291 String (append/672562846 var2602 ", input=")) ; Statement: $r12 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", input=") 
(declare-const var2602!1 String)
(assert (= var2602!1 (str.++ var2602 ", input=")))
(define-const var1668 var1330 (parser/310440123 var3986)) ; Statement: $r9 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
(assert true)
(define-const var1756 var3321 (getTokenStream/1024418418 var1668)) ; Statement: $r10 = virtualinvoke $r9.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.TokenStream getTokenStream()>() 
(define-const var2937 String (var3321_getText/1244185151 var1756 var201)) ; Statement: $r11 = interfaceinvoke $r10.<com.github.jknack.handlebars.internal.antlr.TokenStream: java.lang.String getText(com.github.jknack.handlebars.internal.antlr.misc.Interval)>($r19) 
(assert true)
(define-const var1804 String (append/672562846 var2291 var2937)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var2291!1 String)
(assert (= var2291!1 (str.++ var2291 var2937)))
(assert true)
(define-const var2142 String (toString/-2075883882 var1804)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var1861 var2142)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r14) 

(declare-const var1861!1 var2069)
(declare-const var2142!1 String)
(assert true) ; Non Conditional
(define-const var2122 var1330 (parser/310440123 var3986)) ; Statement: $r21 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
 ; Statement: if $r21 == null goto return 
(assert (= var2122 null-var1330)) ; Cond: $r21 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var525_of/1114852800=([int, int], com.github.jknack.handlebars.internal.antlr.misc.Interval), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var757-to-var3742=([java.util.BitSet], java.lang.Object), cast-from-var1516-to-var3742=([com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet], java.lang.Object), parser/310440123=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator], com.github.jknack.handlebars.internal.antlr.Parser), getTokenStream/1024418418=([com.github.jknack.handlebars.internal.antlr.Parser], com.github.jknack.handlebars.internal.antlr.TokenStream), var3321_getText/1244185151=([com.github.jknack.handlebars.internal.antlr.TokenStream, com.github.jknack.handlebars.internal.antlr.misc.Interval], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var3570=com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, var3986=r8, var750=com.github.jknack.handlebars.internal.antlr.dfa.DFA, var132=r16, var1355=com.github.jknack.handlebars.internal.antlr.dfa.DFAState, var3275=r20, var2856=i0, var2231=i1, var2366=z1, var757=java.util.BitSet, var3341=r2, var1516=com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet, var532=r5, var673=$z0, var525=com.github.jknack.handlebars.internal.antlr.misc.Interval, var201=$r19, var2069=java.io.PrintStream, var2660=java.lang.System, var1861=$r1, var1820=$r0, var2606=$r3, var3742=java.lang.Object, var1753=$r4, var781=$r6, var2602=$r7, var2291=$r12, var1330=com.github.jknack.handlebars.internal.antlr.Parser, var1668=$r9, var3321=com.github.jknack.handlebars.internal.antlr.TokenStream, var1756=$r10, var2937=$r11, var1804=$r13, var2142=$r14, var2122=$r21}
; {com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator=var3570, r8=var3986, com.github.jknack.handlebars.internal.antlr.dfa.DFA=var750, r16=var132, com.github.jknack.handlebars.internal.antlr.dfa.DFAState=var1355, r20=var3275, i0=var2856, i1=var2231, z1=var2366, java.util.BitSet=var757, r2=var3341, com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet=var1516, r5=var532, $z0=var673, com.github.jknack.handlebars.internal.antlr.misc.Interval=var525, $r19=var201, java.io.PrintStream=var2069, java.lang.System=var2660, $r1=var1861, $r0=var1820, $r3=var2606, java.lang.Object=var3742, $r4=var1753, $r6=var781, $r7=var2602, $r12=var2291, com.github.jknack.handlebars.internal.antlr.Parser=var1330, $r9=var1668, com.github.jknack.handlebars.internal.antlr.TokenStream=var3321, $r10=var1756, $r11=var2937, $r13=var1804, $r14=var2142, $r21=var2122}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator;	r16 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA;	r20 := @parameter1: com.github.jknack.handlebars.internal.antlr.dfa.DFAState;	i0 := @parameter2: int;	i1 := @parameter3: int;	z1 := @parameter4: boolean;	r2 := @parameter5: java.util.BitSet;	r5 := @parameter6: com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet;	$z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug>;	if $z0 != 0 goto $r19 = staticinvoke <com.github.jknack.handlebars.internal.antlr.misc.Interval: com.github.jknack.handlebars.internal.antlr.misc.Interval of(int,int)>(i0, i1);	$r19 = staticinvoke <com.github.jknack.handlebars.internal.antlr.misc.Interval: com.github.jknack.handlebars.internal.antlr.misc.Interval of(int,int)>(i0, i1);	$r1 = <java.lang.System: java.io.PrintStream out>;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("reportAmbiguity ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5);	$r12 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", input=");	$r9 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	$r10 = virtualinvoke $r9.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.TokenStream getTokenStream()>();	$r11 = interfaceinvoke $r10.<com.github.jknack.handlebars.internal.antlr.TokenStream: java.lang.String getText(com.github.jknack.handlebars.internal.antlr.misc.Interval)>($r19);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r14);	$r21 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	if $r21 == null goto return;	return
;block_num 4