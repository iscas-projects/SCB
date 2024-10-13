(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3430 0)
(declare-sort var1145 0)
(declare-sort var1936 0)
(declare-sort var1982 0)
(declare-sort var3411 0)
(declare-sort var1854 0)
(declare-sort var738 0)
(declare-sort var915 0)
(declare-sort var816 0)
(declare-sort var2830 0)
(declare-sort var764 0)
(declare-sort var1899 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3411_of/-1711527236 (Int Int) var3411)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun decision/-2041177131 (var1145) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-1031950772 (String var915) String)
(declare-fun cast-from-var1982-to-var915 (var1982) var915)
(declare-fun parser/145254134 (var3430) var816)
(declare-fun getTokenStream/-211092484 (var816) var2830)
(declare-fun var2830_getText/1167499073 (var2830 var3411) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var1854 String) void)
(declare-fun getErrorListenerDispatch/-1594005314 (var1899) var764)
(declare-fun cast-from-var816-to-var1899 (var816) var1899)
(declare-fun var764_reportAttemptingFullContext/486845351 (var764 var816 var1145 Int Int var1936 var1982) void)
(declare-const null-var3430 var3430)
(declare-const null-var1145 var1145)
(declare-const null-var1936 var1936)
(declare-const null-var1982 var1982)
(declare-const null-Int Int)
(declare-const var3430-debug Bool)
(declare-const var738-out var1854)
(declare-const null-var816 var816)
(declare-const var2847 var3430) ; Statement: r8 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator 
(assert (not (= var2847 null-var3430)))
(declare-const var2460 var1145) ; Statement: r2 := @parameter0: org.antlr.v4.runtime.dfa.DFA 
(assert (not (= var2460 null-var1145)))
(declare-const var3101 var1936) ; Statement: r16 := @parameter1: java.util.BitSet 
(assert (not (= var3101 null-var1936)))
(declare-const var949 var1982) ; Statement: r5 := @parameter2: org.antlr.v4.runtime.atn.ATNConfigSet 
(assert (not (= var949 null-var1982)))
(declare-const var1136 Int) ; Statement: i0 := @parameter3: int 
(assert (not (= var1136 null-Int)))
(declare-const var3191 Int) ; Statement: i1 := @parameter4: int 
(assert (not (= var3191 null-Int)))
(define-const var109 Bool var3430-debug) ; Statement: $z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 != 0 goto $r19 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1) 
(assert (not (= (ite var109 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2085 var3411 (var3411_of/-1711527236 var1136 var3191)) ; Statement: $r19 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1) 
(define-const var1193 var1854 var738-out) ; Statement: $r1 = <java.lang.System: java.io.PrintStream out> 
(define-const var1238 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1238)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1238!1 String)
(assert (= var1238!1 ""))
(assert true)
(define-const var1350 String (append/672562846 var1238!1 "reportAttemptingFullContext decision=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("reportAttemptingFullContext decision=") 
(declare-const var1238!2 String)
(assert (= var1238!2 (str.++ var1238!1 "reportAttemptingFullContext decision=")))
(define-const var1048 Int (decision/-2041177131 var2460)) ; Statement: $i2 = r2.<org.antlr.v4.runtime.dfa.DFA: int decision> 
(assert true)
(define-const var2087 String (append/-1001720160 var1350 var1048)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var1350!1 String)
(assert (str.prefixof var1350 var1350!1))
(assert true)
(define-const var926 String (append/672562846 var2087 ":")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var2087!1 String)
(assert (= var2087!1 (str.++ var2087 ":")))
(assert true)
(define-const var581 String (append/-1031950772 var926 (cast-from-var1982-to-var915 var949))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5) 
(declare-const var926!1 String)
(assert (str.prefixof var926 var926!1))
(assert true)
(define-const var3037 String (append/672562846 var581 ", input=")) ; Statement: $r12 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", input=") 
(declare-const var581!1 String)
(assert (= var581!1 (str.++ var581 ", input=")))
(define-const var1171 var816 (parser/145254134 var2847)) ; Statement: $r9 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
(assert true)
(define-const var2929 var2830 (getTokenStream/-211092484 var1171)) ; Statement: $r10 = virtualinvoke $r9.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.TokenStream getTokenStream()>() 
(define-const var3791 String (var2830_getText/1167499073 var2929 var2085)) ; Statement: $r11 = interfaceinvoke $r10.<org.antlr.v4.runtime.TokenStream: java.lang.String getText(org.antlr.v4.runtime.misc.Interval)>($r19) 
(assert true)
(define-const var3714 String (append/672562846 var3037 var3791)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3037!1 String)
(assert (= var3037!1 (str.++ var3037 var3791)))
(assert true)
(define-const var2966 String (toString/-2075883882 var3714)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var1193 var2966)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r14) 

(declare-const var1193!1 var1854)
(declare-const var2966!1 String)
(assert true) ; Non Conditional
(define-const var759 var816 (parser/145254134 var2847)) ; Statement: $r20 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
 ; Statement: if $r20 == null goto return 
(assert (not (= var759 null-var816))) ; Negate: Cond: $r20 == null  
(define-const var3926 var816 (parser/145254134 var2847)) ; Statement: $r15 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
(assert true)
(define-const var688 var764 (getErrorListenerDispatch/-1594005314 (cast-from-var816-to-var1899 var3926))) ; Statement: $r18 = virtualinvoke $r15.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.ANTLRErrorListener getErrorListenerDispatch()>() 
(define-const var1604 var816 (parser/145254134 var2847)) ; Statement: $r17 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
;(assert (var764_reportAttemptingFullContext/486845351 var688 var1604 var2460 var1136 var3191 var3101 var949)) ; Statement: interfaceinvoke $r18.<org.antlr.v4.runtime.ANTLRErrorListener: void reportAttemptingFullContext(org.antlr.v4.runtime.Parser,org.antlr.v4.runtime.dfa.DFA,int,int,java.util.BitSet,org.antlr.v4.runtime.atn.ATNConfigSet)>($r17, r2, i0, i1, r16, r5) 

(declare-const var688!1 var764)
(declare-const var1604!1 var816)
(declare-const var2460!1 var1145)
(declare-const var1136!1 Int)
(declare-const var3191!1 Int)
(declare-const var3101!1 var1936)
(declare-const var949!1 var1982)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3411_of/-1711527236=([int, int], org.antlr.v4.runtime.misc.Interval), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), decision/-2041177131=([org.antlr.v4.runtime.dfa.DFA], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1982-to-var915=([org.antlr.v4.runtime.atn.ATNConfigSet], java.lang.Object), parser/145254134=([org.antlr.v4.runtime.atn.ParserATNSimulator], org.antlr.v4.runtime.Parser), getTokenStream/-211092484=([org.antlr.v4.runtime.Parser], org.antlr.v4.runtime.TokenStream), var2830_getText/1167499073=([org.antlr.v4.runtime.TokenStream, org.antlr.v4.runtime.misc.Interval], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), getErrorListenerDispatch/-1594005314=([org.antlr.v4.runtime.Recognizer], org.antlr.v4.runtime.ANTLRErrorListener), cast-from-var816-to-var1899=([org.antlr.v4.runtime.Parser], org.antlr.v4.runtime.Recognizer), var764_reportAttemptingFullContext/486845351=([org.antlr.v4.runtime.ANTLRErrorListener, org.antlr.v4.runtime.Parser, org.antlr.v4.runtime.dfa.DFA, int, int, java.util.BitSet, org.antlr.v4.runtime.atn.ATNConfigSet], void)}
; {var3430=org.antlr.v4.runtime.atn.ParserATNSimulator, var2847=r8, var1145=org.antlr.v4.runtime.dfa.DFA, var2460=r2, var1936=java.util.BitSet, var3101=r16, var1982=org.antlr.v4.runtime.atn.ATNConfigSet, var949=r5, var1136=i0, var3191=i1, var109=$z0, var3411=org.antlr.v4.runtime.misc.Interval, var2085=$r19, var1854=java.io.PrintStream, var738=java.lang.System, var1193=$r1, var1238=$r0, var1350=$r3, var1048=$i2, var2087=$r4, var926=$r6, var915=java.lang.Object, var581=$r7, var3037=$r12, var816=org.antlr.v4.runtime.Parser, var1171=$r9, var2830=org.antlr.v4.runtime.TokenStream, var2929=$r10, var3791=$r11, var3714=$r13, var2966=$r14, var759=$r20, var3926=$r15, var764=org.antlr.v4.runtime.ANTLRErrorListener, var1899=org.antlr.v4.runtime.Recognizer, var688=$r18, var1604=$r17}
; {org.antlr.v4.runtime.atn.ParserATNSimulator=var3430, r8=var2847, org.antlr.v4.runtime.dfa.DFA=var1145, r2=var2460, java.util.BitSet=var1936, r16=var3101, org.antlr.v4.runtime.atn.ATNConfigSet=var1982, r5=var949, i0=var1136, i1=var3191, $z0=var109, org.antlr.v4.runtime.misc.Interval=var3411, $r19=var2085, java.io.PrintStream=var1854, java.lang.System=var738, $r1=var1193, $r0=var1238, $r3=var1350, $i2=var1048, $r4=var2087, $r6=var926, java.lang.Object=var915, $r7=var581, $r12=var3037, org.antlr.v4.runtime.Parser=var816, $r9=var1171, org.antlr.v4.runtime.TokenStream=var2830, $r10=var2929, $r11=var3791, $r13=var3714, $r14=var2966, $r20=var759, $r15=var3926, org.antlr.v4.runtime.ANTLRErrorListener=var764, org.antlr.v4.runtime.Recognizer=var1899, $r18=var688, $r17=var1604}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator;	r2 := @parameter0: org.antlr.v4.runtime.dfa.DFA;	r16 := @parameter1: java.util.BitSet;	r5 := @parameter2: org.antlr.v4.runtime.atn.ATNConfigSet;	i0 := @parameter3: int;	i1 := @parameter4: int;	$z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug>;	if $z0 != 0 goto $r19 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1);	$r19 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1);	$r1 = <java.lang.System: java.io.PrintStream out>;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("reportAttemptingFullContext decision=");	$i2 = r2.<org.antlr.v4.runtime.dfa.DFA: int decision>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5);	$r12 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", input=");	$r9 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	$r10 = virtualinvoke $r9.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.TokenStream getTokenStream()>();	$r11 = interfaceinvoke $r10.<org.antlr.v4.runtime.TokenStream: java.lang.String getText(org.antlr.v4.runtime.misc.Interval)>($r19);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r14);	$r20 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	if $r20 == null goto return;	$r15 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	$r18 = virtualinvoke $r15.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.ANTLRErrorListener getErrorListenerDispatch()>();	$r17 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	interfaceinvoke $r18.<org.antlr.v4.runtime.ANTLRErrorListener: void reportAttemptingFullContext(org.antlr.v4.runtime.Parser,org.antlr.v4.runtime.dfa.DFA,int,int,java.util.BitSet,org.antlr.v4.runtime.atn.ATNConfigSet)>($r17, r2, i0, i1, r16, r5);	return
;block_num 5