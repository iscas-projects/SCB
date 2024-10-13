(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2257 0)
(declare-sort var1484 0)
(declare-sort var642 0)
(declare-sort var3370 0)
(declare-sort var1519 0)
(declare-sort var2896 0)
(declare-sort var509 0)
(declare-sort var3439 0)
(declare-sort var2091 0)
(declare-sort var1033 0)
(declare-sort var2012 0)
(declare-sort var3651 0)
(declare-sort var1301 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2896_of/-1711527236 (Int Int) var2896)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2091) String)
(declare-fun cast-from-var3370-to-var2091 (var3370) var2091)
(declare-fun cast-from-var1519-to-var2091 (var1519) var2091)
(declare-fun parser/145254134 (var2257) var1033)
(declare-fun getTokenStream/-211092484 (var1033) var2012)
(declare-fun var2012_getText/1167499073 (var2012 var2896) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var509 String) void)
(declare-fun getErrorListenerDispatch/-1594005314 (var1301) var3651)
(declare-fun cast-from-var1033-to-var1301 (var1033) var1301)
(declare-fun var3651_reportAmbiguity/-1406905171 (var3651 var1033 var1484 Int Int Bool var3370 var1519) void)
(declare-const null-var2257 var2257)
(declare-const null-var1484 var1484)
(declare-const null-var642 var642)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-var3370 var3370)
(declare-const null-var1519 var1519)
(declare-const var2257-debug Bool)
(declare-const var2257-retry_debug Bool)
(declare-const var3439-out var509)
(declare-const null-var1033 var1033)
(declare-const var1758 var2257) ; Statement: r8 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator 
(assert (not (= var1758 null-var2257)))
(declare-const var2164 var1484) ; Statement: r16 := @parameter0: org.antlr.v4.runtime.dfa.DFA 
(assert (not (= var2164 null-var1484)))
(declare-const var3131 var642) ; Statement: r20 := @parameter1: org.antlr.v4.runtime.dfa.DFAState 
(assert (not (= var3131 null-var642)))
(declare-const var3843 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3843 null-Int)))
(declare-const var128 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var128 null-Int)))
(declare-const var3751 Bool) ; Statement: z1 := @parameter4: boolean 
(assert (not (= var3751 null-Bool)))
(declare-const var2731 var3370) ; Statement: r2 := @parameter5: java.util.BitSet 
(assert (not (= var2731 null-var3370)))
(declare-const var2007 var1519) ; Statement: r5 := @parameter6: org.antlr.v4.runtime.atn.ATNConfigSet 
(assert (not (= var2007 null-var1519)))
(define-const var3555 Bool var2257-debug) ; Statement: $z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 != 0 goto $r19 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1) 
(assert (not (not (= (ite var3555 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3005 Bool var2257-retry_debug) ; Statement: $z2 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean retry_debug> 
 ; Statement: if $z2 == 0 goto $r21 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
(assert (not (= (ite var3005 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var3094 var2896 (var2896_of/-1711527236 var3843 var128)) ; Statement: $r19 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1) 
(define-const var3083 var509 var3439-out) ; Statement: $r1 = <java.lang.System: java.io.PrintStream out> 
(define-const var1790 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1790)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1790!1 String)
(assert (= var1790!1 ""))
(assert true)
(define-const var3325 String (append/672562846 var1790!1 "reportAmbiguity ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("reportAmbiguity ") 
(declare-const var1790!2 String)
(assert (= var1790!2 (str.++ var1790!1 "reportAmbiguity ")))
(assert true)
(define-const var2547 String (append/-1031950772 var3325 (cast-from-var3370-to-var2091 var2731))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var3325!1 String)
(assert (str.prefixof var3325 var3325!1))
(assert true)
(define-const var40 String (append/672562846 var2547 ":")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var2547!1 String)
(assert (= var2547!1 (str.++ var2547 ":")))
(assert true)
(define-const var2848 String (append/-1031950772 var40 (cast-from-var1519-to-var2091 var2007))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5) 
(declare-const var40!1 String)
(assert (str.prefixof var40 var40!1))
(assert true)
(define-const var3773 String (append/672562846 var2848 ", input=")) ; Statement: $r12 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", input=") 
(declare-const var2848!1 String)
(assert (= var2848!1 (str.++ var2848 ", input=")))
(define-const var3886 var1033 (parser/145254134 var1758)) ; Statement: $r9 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
(assert true)
(define-const var1892 var2012 (getTokenStream/-211092484 var3886)) ; Statement: $r10 = virtualinvoke $r9.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.TokenStream getTokenStream()>() 
(define-const var467 String (var2012_getText/1167499073 var1892 var3094)) ; Statement: $r11 = interfaceinvoke $r10.<org.antlr.v4.runtime.TokenStream: java.lang.String getText(org.antlr.v4.runtime.misc.Interval)>($r19) 
(assert true)
(define-const var1201 String (append/672562846 var3773 var467)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3773!1 String)
(assert (= var3773!1 (str.++ var3773 var467)))
(assert true)
(define-const var2434 String (toString/-2075883882 var1201)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var3083 var2434)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r14) 

(declare-const var3083!1 var509)
(declare-const var2434!1 String)
(assert true) ; Non Conditional
(define-const var835 var1033 (parser/145254134 var1758)) ; Statement: $r21 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
 ; Statement: if $r21 == null goto return 
(assert (not (= var835 null-var1033))) ; Negate: Cond: $r21 == null  
(define-const var2702 var1033 (parser/145254134 var1758)) ; Statement: $r15 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
(assert true)
(define-const var3109 var3651 (getErrorListenerDispatch/-1594005314 (cast-from-var1033-to-var1301 var2702))) ; Statement: $r18 = virtualinvoke $r15.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.ANTLRErrorListener getErrorListenerDispatch()>() 
(define-const var3377 var1033 (parser/145254134 var1758)) ; Statement: $r17 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
;(assert (var3651_reportAmbiguity/-1406905171 var3109 var3377 var2164 var3843 var128 var3751 var2731 var2007)) ; Statement: interfaceinvoke $r18.<org.antlr.v4.runtime.ANTLRErrorListener: void reportAmbiguity(org.antlr.v4.runtime.Parser,org.antlr.v4.runtime.dfa.DFA,int,int,boolean,java.util.BitSet,org.antlr.v4.runtime.atn.ATNConfigSet)>($r17, r16, i0, i1, z1, r2, r5) 

(declare-const var3109!1 var3651)
(declare-const var3377!1 var1033)
(declare-const var2164!1 var1484)
(declare-const var3843!1 Int)
(declare-const var128!1 Int)
(declare-const var3751!1 Bool)
(declare-const var2731!1 var3370)
(declare-const var2007!1 var1519)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2896_of/-1711527236=([int, int], org.antlr.v4.runtime.misc.Interval), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3370-to-var2091=([java.util.BitSet], java.lang.Object), cast-from-var1519-to-var2091=([org.antlr.v4.runtime.atn.ATNConfigSet], java.lang.Object), parser/145254134=([org.antlr.v4.runtime.atn.ParserATNSimulator], org.antlr.v4.runtime.Parser), getTokenStream/-211092484=([org.antlr.v4.runtime.Parser], org.antlr.v4.runtime.TokenStream), var2012_getText/1167499073=([org.antlr.v4.runtime.TokenStream, org.antlr.v4.runtime.misc.Interval], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), getErrorListenerDispatch/-1594005314=([org.antlr.v4.runtime.Recognizer], org.antlr.v4.runtime.ANTLRErrorListener), cast-from-var1033-to-var1301=([org.antlr.v4.runtime.Parser], org.antlr.v4.runtime.Recognizer), var3651_reportAmbiguity/-1406905171=([org.antlr.v4.runtime.ANTLRErrorListener, org.antlr.v4.runtime.Parser, org.antlr.v4.runtime.dfa.DFA, int, int, boolean, java.util.BitSet, org.antlr.v4.runtime.atn.ATNConfigSet], void)}
; {var2257=org.antlr.v4.runtime.atn.ParserATNSimulator, var1758=r8, var1484=org.antlr.v4.runtime.dfa.DFA, var2164=r16, var642=org.antlr.v4.runtime.dfa.DFAState, var3131=r20, var3843=i0, var128=i1, var3751=z1, var3370=java.util.BitSet, var2731=r2, var1519=org.antlr.v4.runtime.atn.ATNConfigSet, var2007=r5, var3555=$z0, var3005=$z2, var2896=org.antlr.v4.runtime.misc.Interval, var3094=$r19, var509=java.io.PrintStream, var3439=java.lang.System, var3083=$r1, var1790=$r0, var3325=$r3, var2091=java.lang.Object, var2547=$r4, var40=$r6, var2848=$r7, var3773=$r12, var1033=org.antlr.v4.runtime.Parser, var3886=$r9, var2012=org.antlr.v4.runtime.TokenStream, var1892=$r10, var467=$r11, var1201=$r13, var2434=$r14, var835=$r21, var2702=$r15, var3651=org.antlr.v4.runtime.ANTLRErrorListener, var1301=org.antlr.v4.runtime.Recognizer, var3109=$r18, var3377=$r17}
; {org.antlr.v4.runtime.atn.ParserATNSimulator=var2257, r8=var1758, org.antlr.v4.runtime.dfa.DFA=var1484, r16=var2164, org.antlr.v4.runtime.dfa.DFAState=var642, r20=var3131, i0=var3843, i1=var128, z1=var3751, java.util.BitSet=var3370, r2=var2731, org.antlr.v4.runtime.atn.ATNConfigSet=var1519, r5=var2007, $z0=var3555, $z2=var3005, org.antlr.v4.runtime.misc.Interval=var2896, $r19=var3094, java.io.PrintStream=var509, java.lang.System=var3439, $r1=var3083, $r0=var1790, $r3=var3325, java.lang.Object=var2091, $r4=var2547, $r6=var40, $r7=var2848, $r12=var3773, org.antlr.v4.runtime.Parser=var1033, $r9=var3886, org.antlr.v4.runtime.TokenStream=var2012, $r10=var1892, $r11=var467, $r13=var1201, $r14=var2434, $r21=var835, $r15=var2702, org.antlr.v4.runtime.ANTLRErrorListener=var3651, org.antlr.v4.runtime.Recognizer=var1301, $r18=var3109, $r17=var3377}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator;	r16 := @parameter0: org.antlr.v4.runtime.dfa.DFA;	r20 := @parameter1: org.antlr.v4.runtime.dfa.DFAState;	i0 := @parameter2: int;	i1 := @parameter3: int;	z1 := @parameter4: boolean;	r2 := @parameter5: java.util.BitSet;	r5 := @parameter6: org.antlr.v4.runtime.atn.ATNConfigSet;	$z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug>;	if $z0 != 0 goto $r19 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1);	$z2 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean retry_debug>;	if $z2 == 0 goto $r21 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	$r19 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1);	$r1 = <java.lang.System: java.io.PrintStream out>;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("reportAmbiguity ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5);	$r12 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", input=");	$r9 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	$r10 = virtualinvoke $r9.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.TokenStream getTokenStream()>();	$r11 = interfaceinvoke $r10.<org.antlr.v4.runtime.TokenStream: java.lang.String getText(org.antlr.v4.runtime.misc.Interval)>($r19);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r14);	$r21 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	if $r21 == null goto return;	$r15 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	$r18 = virtualinvoke $r15.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.ANTLRErrorListener getErrorListenerDispatch()>();	$r17 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	interfaceinvoke $r18.<org.antlr.v4.runtime.ANTLRErrorListener: void reportAmbiguity(org.antlr.v4.runtime.Parser,org.antlr.v4.runtime.dfa.DFA,int,int,boolean,java.util.BitSet,org.antlr.v4.runtime.atn.ATNConfigSet)>($r17, r16, i0, i1, z1, r2, r5);	return
;block_num 6