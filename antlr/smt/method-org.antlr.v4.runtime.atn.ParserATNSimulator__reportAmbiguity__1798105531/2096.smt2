(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1204 0)
(declare-sort var1167 0)
(declare-sort var2412 0)
(declare-sort var3962 0)
(declare-sort var394 0)
(declare-sort var1885 0)
(declare-sort var2676 0)
(declare-sort var1244 0)
(declare-sort var1747 0)
(declare-sort var3529 0)
(declare-sort var1332 0)
(declare-sort var465 0)
(declare-sort var2826 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1885_of/-1711527236 (Int Int) var1885)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1747) String)
(declare-fun cast-from-var3962-to-var1747 (var3962) var1747)
(declare-fun cast-from-var394-to-var1747 (var394) var1747)
(declare-fun parser/145254134 (var1204) var3529)
(declare-fun getTokenStream/-211092484 (var3529) var1332)
(declare-fun var1332_getText/1167499073 (var1332 var1885) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var2676 String) void)
(declare-fun getErrorListenerDispatch/-1594005314 (var2826) var465)
(declare-fun cast-from-var3529-to-var2826 (var3529) var2826)
(declare-fun var465_reportAmbiguity/-1406905171 (var465 var3529 var1167 Int Int Bool var3962 var394) void)
(declare-const null-var1204 var1204)
(declare-const null-var1167 var1167)
(declare-const null-var2412 var2412)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-var3962 var3962)
(declare-const null-var394 var394)
(declare-const var1204-debug Bool)
(declare-const var1244-out var2676)
(declare-const null-var3529 var3529)
(declare-const var1522 var1204) ; Statement: r8 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator 
(assert (not (= var1522 null-var1204)))
(declare-const var3748 var1167) ; Statement: r16 := @parameter0: org.antlr.v4.runtime.dfa.DFA 
(assert (not (= var3748 null-var1167)))
(declare-const var3745 var2412) ; Statement: r20 := @parameter1: org.antlr.v4.runtime.dfa.DFAState 
(assert (not (= var3745 null-var2412)))
(declare-const var3219 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3219 null-Int)))
(declare-const var1858 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var1858 null-Int)))
(declare-const var1116 Bool) ; Statement: z1 := @parameter4: boolean 
(assert (not (= var1116 null-Bool)))
(declare-const var508 var3962) ; Statement: r2 := @parameter5: java.util.BitSet 
(assert (not (= var508 null-var3962)))
(declare-const var1689 var394) ; Statement: r5 := @parameter6: org.antlr.v4.runtime.atn.ATNConfigSet 
(assert (not (= var1689 null-var394)))
(define-const var1484 Bool var1204-debug) ; Statement: $z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 != 0 goto $r19 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1) 
(assert (not (= (ite var1484 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2988 var1885 (var1885_of/-1711527236 var3219 var1858)) ; Statement: $r19 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1) 
(define-const var1108 var2676 var1244-out) ; Statement: $r1 = <java.lang.System: java.io.PrintStream out> 
(define-const var1402 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1402)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1402!1 String)
(assert (= var1402!1 ""))
(assert true)
(define-const var1757 String (append/672562846 var1402!1 "reportAmbiguity ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("reportAmbiguity ") 
(declare-const var1402!2 String)
(assert (= var1402!2 (str.++ var1402!1 "reportAmbiguity ")))
(assert true)
(define-const var3020 String (append/-1031950772 var1757 (cast-from-var3962-to-var1747 var508))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var1757!1 String)
(assert (str.prefixof var1757 var1757!1))
(assert true)
(define-const var3916 String (append/672562846 var3020 ":")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var3020!1 String)
(assert (= var3020!1 (str.++ var3020 ":")))
(assert true)
(define-const var3885 String (append/-1031950772 var3916 (cast-from-var394-to-var1747 var1689))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5) 
(declare-const var3916!1 String)
(assert (str.prefixof var3916 var3916!1))
(assert true)
(define-const var43 String (append/672562846 var3885 ", input=")) ; Statement: $r12 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", input=") 
(declare-const var3885!1 String)
(assert (= var3885!1 (str.++ var3885 ", input=")))
(define-const var521 var3529 (parser/145254134 var1522)) ; Statement: $r9 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
(assert true)
(define-const var1765 var1332 (getTokenStream/-211092484 var521)) ; Statement: $r10 = virtualinvoke $r9.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.TokenStream getTokenStream()>() 
(define-const var2610 String (var1332_getText/1167499073 var1765 var2988)) ; Statement: $r11 = interfaceinvoke $r10.<org.antlr.v4.runtime.TokenStream: java.lang.String getText(org.antlr.v4.runtime.misc.Interval)>($r19) 
(assert true)
(define-const var3037 String (append/672562846 var43 var2610)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var43!1 String)
(assert (= var43!1 (str.++ var43 var2610)))
(assert true)
(define-const var2638 String (toString/-2075883882 var3037)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var1108 var2638)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r14) 

(declare-const var1108!1 var2676)
(declare-const var2638!1 String)
(assert true) ; Non Conditional
(define-const var930 var3529 (parser/145254134 var1522)) ; Statement: $r21 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
 ; Statement: if $r21 == null goto return 
(assert (not (= var930 null-var3529))) ; Negate: Cond: $r21 == null  
(define-const var868 var3529 (parser/145254134 var1522)) ; Statement: $r15 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
(assert true)
(define-const var2984 var465 (getErrorListenerDispatch/-1594005314 (cast-from-var3529-to-var2826 var868))) ; Statement: $r18 = virtualinvoke $r15.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.ANTLRErrorListener getErrorListenerDispatch()>() 
(define-const var2636 var3529 (parser/145254134 var1522)) ; Statement: $r17 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
;(assert (var465_reportAmbiguity/-1406905171 var2984 var2636 var3748 var3219 var1858 var1116 var508 var1689)) ; Statement: interfaceinvoke $r18.<org.antlr.v4.runtime.ANTLRErrorListener: void reportAmbiguity(org.antlr.v4.runtime.Parser,org.antlr.v4.runtime.dfa.DFA,int,int,boolean,java.util.BitSet,org.antlr.v4.runtime.atn.ATNConfigSet)>($r17, r16, i0, i1, z1, r2, r5) 

(declare-const var2984!1 var465)
(declare-const var2636!1 var3529)
(declare-const var3748!1 var1167)
(declare-const var3219!1 Int)
(declare-const var1858!1 Int)
(declare-const var1116!1 Bool)
(declare-const var508!1 var3962)
(declare-const var1689!1 var394)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1885_of/-1711527236=([int, int], org.antlr.v4.runtime.misc.Interval), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3962-to-var1747=([java.util.BitSet], java.lang.Object), cast-from-var394-to-var1747=([org.antlr.v4.runtime.atn.ATNConfigSet], java.lang.Object), parser/145254134=([org.antlr.v4.runtime.atn.ParserATNSimulator], org.antlr.v4.runtime.Parser), getTokenStream/-211092484=([org.antlr.v4.runtime.Parser], org.antlr.v4.runtime.TokenStream), var1332_getText/1167499073=([org.antlr.v4.runtime.TokenStream, org.antlr.v4.runtime.misc.Interval], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), getErrorListenerDispatch/-1594005314=([org.antlr.v4.runtime.Recognizer], org.antlr.v4.runtime.ANTLRErrorListener), cast-from-var3529-to-var2826=([org.antlr.v4.runtime.Parser], org.antlr.v4.runtime.Recognizer), var465_reportAmbiguity/-1406905171=([org.antlr.v4.runtime.ANTLRErrorListener, org.antlr.v4.runtime.Parser, org.antlr.v4.runtime.dfa.DFA, int, int, boolean, java.util.BitSet, org.antlr.v4.runtime.atn.ATNConfigSet], void)}
; {var1204=org.antlr.v4.runtime.atn.ParserATNSimulator, var1522=r8, var1167=org.antlr.v4.runtime.dfa.DFA, var3748=r16, var2412=org.antlr.v4.runtime.dfa.DFAState, var3745=r20, var3219=i0, var1858=i1, var1116=z1, var3962=java.util.BitSet, var508=r2, var394=org.antlr.v4.runtime.atn.ATNConfigSet, var1689=r5, var1484=$z0, var1885=org.antlr.v4.runtime.misc.Interval, var2988=$r19, var2676=java.io.PrintStream, var1244=java.lang.System, var1108=$r1, var1402=$r0, var1757=$r3, var1747=java.lang.Object, var3020=$r4, var3916=$r6, var3885=$r7, var43=$r12, var3529=org.antlr.v4.runtime.Parser, var521=$r9, var1332=org.antlr.v4.runtime.TokenStream, var1765=$r10, var2610=$r11, var3037=$r13, var2638=$r14, var930=$r21, var868=$r15, var465=org.antlr.v4.runtime.ANTLRErrorListener, var2826=org.antlr.v4.runtime.Recognizer, var2984=$r18, var2636=$r17}
; {org.antlr.v4.runtime.atn.ParserATNSimulator=var1204, r8=var1522, org.antlr.v4.runtime.dfa.DFA=var1167, r16=var3748, org.antlr.v4.runtime.dfa.DFAState=var2412, r20=var3745, i0=var3219, i1=var1858, z1=var1116, java.util.BitSet=var3962, r2=var508, org.antlr.v4.runtime.atn.ATNConfigSet=var394, r5=var1689, $z0=var1484, org.antlr.v4.runtime.misc.Interval=var1885, $r19=var2988, java.io.PrintStream=var2676, java.lang.System=var1244, $r1=var1108, $r0=var1402, $r3=var1757, java.lang.Object=var1747, $r4=var3020, $r6=var3916, $r7=var3885, $r12=var43, org.antlr.v4.runtime.Parser=var3529, $r9=var521, org.antlr.v4.runtime.TokenStream=var1332, $r10=var1765, $r11=var2610, $r13=var3037, $r14=var2638, $r21=var930, $r15=var868, org.antlr.v4.runtime.ANTLRErrorListener=var465, org.antlr.v4.runtime.Recognizer=var2826, $r18=var2984, $r17=var2636}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator;	r16 := @parameter0: org.antlr.v4.runtime.dfa.DFA;	r20 := @parameter1: org.antlr.v4.runtime.dfa.DFAState;	i0 := @parameter2: int;	i1 := @parameter3: int;	z1 := @parameter4: boolean;	r2 := @parameter5: java.util.BitSet;	r5 := @parameter6: org.antlr.v4.runtime.atn.ATNConfigSet;	$z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug>;	if $z0 != 0 goto $r19 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1);	$r19 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1);	$r1 = <java.lang.System: java.io.PrintStream out>;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("reportAmbiguity ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5);	$r12 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", input=");	$r9 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	$r10 = virtualinvoke $r9.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.TokenStream getTokenStream()>();	$r11 = interfaceinvoke $r10.<org.antlr.v4.runtime.TokenStream: java.lang.String getText(org.antlr.v4.runtime.misc.Interval)>($r19);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r14);	$r21 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	if $r21 == null goto return;	$r15 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	$r18 = virtualinvoke $r15.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.ANTLRErrorListener getErrorListenerDispatch()>();	$r17 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	interfaceinvoke $r18.<org.antlr.v4.runtime.ANTLRErrorListener: void reportAmbiguity(org.antlr.v4.runtime.Parser,org.antlr.v4.runtime.dfa.DFA,int,int,boolean,java.util.BitSet,org.antlr.v4.runtime.atn.ATNConfigSet)>($r17, r16, i0, i1, z1, r2, r5);	return
;block_num 5