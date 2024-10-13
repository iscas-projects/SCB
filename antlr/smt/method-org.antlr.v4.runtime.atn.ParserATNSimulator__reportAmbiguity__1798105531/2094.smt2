(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1131 0)
(declare-sort var859 0)
(declare-sort var1923 0)
(declare-sort var2498 0)
(declare-sort var3778 0)
(declare-sort var2848 0)
(declare-sort var2810 0)
(declare-sort var566 0)
(declare-sort var1348 0)
(declare-sort var1862 0)
(declare-sort var123 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2848_of/-1711527236 (Int Int) var2848)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1348) String)
(declare-fun cast-from-var2498-to-var1348 (var2498) var1348)
(declare-fun cast-from-var3778-to-var1348 (var3778) var1348)
(declare-fun parser/145254134 (var1131) var1862)
(declare-fun getTokenStream/-211092484 (var1862) var123)
(declare-fun var123_getText/1167499073 (var123 var2848) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var2810 String) void)
(declare-const null-var1131 var1131)
(declare-const null-var859 var859)
(declare-const null-var1923 var1923)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-var2498 var2498)
(declare-const null-var3778 var3778)
(declare-const var1131-debug Bool)
(declare-const var1131-retry_debug Bool)
(declare-const var566-out var2810)
(declare-const null-var1862 var1862)
(declare-const var3792 var1131) ; Statement: r8 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator 
(assert (not (= var3792 null-var1131)))
(declare-const var30 var859) ; Statement: r16 := @parameter0: org.antlr.v4.runtime.dfa.DFA 
(assert (not (= var30 null-var859)))
(declare-const var1661 var1923) ; Statement: r20 := @parameter1: org.antlr.v4.runtime.dfa.DFAState 
(assert (not (= var1661 null-var1923)))
(declare-const var2452 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var2452 null-Int)))
(declare-const var2016 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var2016 null-Int)))
(declare-const var3155 Bool) ; Statement: z1 := @parameter4: boolean 
(assert (not (= var3155 null-Bool)))
(declare-const var3647 var2498) ; Statement: r2 := @parameter5: java.util.BitSet 
(assert (not (= var3647 null-var2498)))
(declare-const var1286 var3778) ; Statement: r5 := @parameter6: org.antlr.v4.runtime.atn.ATNConfigSet 
(assert (not (= var1286 null-var3778)))
(define-const var1864 Bool var1131-debug) ; Statement: $z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 != 0 goto $r19 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1) 
(assert (not (not (= (ite var1864 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3983 Bool var1131-retry_debug) ; Statement: $z2 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean retry_debug> 
 ; Statement: if $z2 == 0 goto $r21 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
(assert (not (= (ite var3983 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var3648 var2848 (var2848_of/-1711527236 var2452 var2016)) ; Statement: $r19 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1) 
(define-const var1972 var2810 var566-out) ; Statement: $r1 = <java.lang.System: java.io.PrintStream out> 
(define-const var3906 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3906)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3906!1 String)
(assert (= var3906!1 ""))
(assert true)
(define-const var925 String (append/672562846 var3906!1 "reportAmbiguity ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("reportAmbiguity ") 
(declare-const var3906!2 String)
(assert (= var3906!2 (str.++ var3906!1 "reportAmbiguity ")))
(assert true)
(define-const var695 String (append/-1031950772 var925 (cast-from-var2498-to-var1348 var3647))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var925!1 String)
(assert (str.prefixof var925 var925!1))
(assert true)
(define-const var513 String (append/672562846 var695 ":")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var695!1 String)
(assert (= var695!1 (str.++ var695 ":")))
(assert true)
(define-const var2934 String (append/-1031950772 var513 (cast-from-var3778-to-var1348 var1286))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5) 
(declare-const var513!1 String)
(assert (str.prefixof var513 var513!1))
(assert true)
(define-const var2244 String (append/672562846 var2934 ", input=")) ; Statement: $r12 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", input=") 
(declare-const var2934!1 String)
(assert (= var2934!1 (str.++ var2934 ", input=")))
(define-const var1946 var1862 (parser/145254134 var3792)) ; Statement: $r9 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
(assert true)
(define-const var3974 var123 (getTokenStream/-211092484 var1946)) ; Statement: $r10 = virtualinvoke $r9.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.TokenStream getTokenStream()>() 
(define-const var3952 String (var123_getText/1167499073 var3974 var3648)) ; Statement: $r11 = interfaceinvoke $r10.<org.antlr.v4.runtime.TokenStream: java.lang.String getText(org.antlr.v4.runtime.misc.Interval)>($r19) 
(assert true)
(define-const var820 String (append/672562846 var2244 var3952)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var2244!1 String)
(assert (= var2244!1 (str.++ var2244 var3952)))
(assert true)
(define-const var2433 String (toString/-2075883882 var820)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var1972 var2433)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r14) 

(declare-const var1972!1 var2810)
(declare-const var2433!1 String)
(assert true) ; Non Conditional
(define-const var3494 var1862 (parser/145254134 var3792)) ; Statement: $r21 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
 ; Statement: if $r21 == null goto return 
(assert (= var3494 null-var1862)) ; Cond: $r21 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2848_of/-1711527236=([int, int], org.antlr.v4.runtime.misc.Interval), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2498-to-var1348=([java.util.BitSet], java.lang.Object), cast-from-var3778-to-var1348=([org.antlr.v4.runtime.atn.ATNConfigSet], java.lang.Object), parser/145254134=([org.antlr.v4.runtime.atn.ParserATNSimulator], org.antlr.v4.runtime.Parser), getTokenStream/-211092484=([org.antlr.v4.runtime.Parser], org.antlr.v4.runtime.TokenStream), var123_getText/1167499073=([org.antlr.v4.runtime.TokenStream, org.antlr.v4.runtime.misc.Interval], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var1131=org.antlr.v4.runtime.atn.ParserATNSimulator, var3792=r8, var859=org.antlr.v4.runtime.dfa.DFA, var30=r16, var1923=org.antlr.v4.runtime.dfa.DFAState, var1661=r20, var2452=i0, var2016=i1, var3155=z1, var2498=java.util.BitSet, var3647=r2, var3778=org.antlr.v4.runtime.atn.ATNConfigSet, var1286=r5, var1864=$z0, var3983=$z2, var2848=org.antlr.v4.runtime.misc.Interval, var3648=$r19, var2810=java.io.PrintStream, var566=java.lang.System, var1972=$r1, var3906=$r0, var925=$r3, var1348=java.lang.Object, var695=$r4, var513=$r6, var2934=$r7, var2244=$r12, var1862=org.antlr.v4.runtime.Parser, var1946=$r9, var123=org.antlr.v4.runtime.TokenStream, var3974=$r10, var3952=$r11, var820=$r13, var2433=$r14, var3494=$r21}
; {org.antlr.v4.runtime.atn.ParserATNSimulator=var1131, r8=var3792, org.antlr.v4.runtime.dfa.DFA=var859, r16=var30, org.antlr.v4.runtime.dfa.DFAState=var1923, r20=var1661, i0=var2452, i1=var2016, z1=var3155, java.util.BitSet=var2498, r2=var3647, org.antlr.v4.runtime.atn.ATNConfigSet=var3778, r5=var1286, $z0=var1864, $z2=var3983, org.antlr.v4.runtime.misc.Interval=var2848, $r19=var3648, java.io.PrintStream=var2810, java.lang.System=var566, $r1=var1972, $r0=var3906, $r3=var925, java.lang.Object=var1348, $r4=var695, $r6=var513, $r7=var2934, $r12=var2244, org.antlr.v4.runtime.Parser=var1862, $r9=var1946, org.antlr.v4.runtime.TokenStream=var123, $r10=var3974, $r11=var3952, $r13=var820, $r14=var2433, $r21=var3494}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator;	r16 := @parameter0: org.antlr.v4.runtime.dfa.DFA;	r20 := @parameter1: org.antlr.v4.runtime.dfa.DFAState;	i0 := @parameter2: int;	i1 := @parameter3: int;	z1 := @parameter4: boolean;	r2 := @parameter5: java.util.BitSet;	r5 := @parameter6: org.antlr.v4.runtime.atn.ATNConfigSet;	$z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug>;	if $z0 != 0 goto $r19 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1);	$z2 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean retry_debug>;	if $z2 == 0 goto $r21 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	$r19 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1);	$r1 = <java.lang.System: java.io.PrintStream out>;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("reportAmbiguity ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5);	$r12 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", input=");	$r9 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	$r10 = virtualinvoke $r9.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.TokenStream getTokenStream()>();	$r11 = interfaceinvoke $r10.<org.antlr.v4.runtime.TokenStream: java.lang.String getText(org.antlr.v4.runtime.misc.Interval)>($r19);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r14);	$r21 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	if $r21 == null goto return;	return
;block_num 5