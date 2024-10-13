(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var34 0)
(declare-sort var2482 0)
(declare-sort var508 0)
(declare-sort var694 0)
(declare-sort var871 0)
(declare-sort var3633 0)
(declare-sort var3592 0)
(declare-sort var1258 0)
(declare-sort var2568 0)
(declare-sort var3958 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var871_of/-1711527236 (Int Int) var871)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun decision/-2041177131 (var2482) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-1031950772 (String var1258) String)
(declare-fun cast-from-var694-to-var1258 (var694) var1258)
(declare-fun parser/145254134 (var34) var2568)
(declare-fun getTokenStream/-211092484 (var2568) var3958)
(declare-fun var3958_getText/1167499073 (var3958 var871) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var3633 String) void)
(declare-const null-var34 var34)
(declare-const null-var2482 var2482)
(declare-const null-var508 var508)
(declare-const null-var694 var694)
(declare-const null-Int Int)
(declare-const var34-debug Bool)
(declare-const var34-retry_debug Bool)
(declare-const var3592-out var3633)
(declare-const null-var2568 var2568)
(declare-const var1465 var34) ; Statement: r8 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator 
(assert (not (= var1465 null-var34)))
(declare-const var3801 var2482) ; Statement: r2 := @parameter0: org.antlr.v4.runtime.dfa.DFA 
(assert (not (= var3801 null-var2482)))
(declare-const var3656 var508) ; Statement: r16 := @parameter1: java.util.BitSet 
(assert (not (= var3656 null-var508)))
(declare-const var3493 var694) ; Statement: r5 := @parameter2: org.antlr.v4.runtime.atn.ATNConfigSet 
(assert (not (= var3493 null-var694)))
(declare-const var3186 Int) ; Statement: i0 := @parameter3: int 
(assert (not (= var3186 null-Int)))
(declare-const var1548 Int) ; Statement: i1 := @parameter4: int 
(assert (not (= var1548 null-Int)))
(define-const var2844 Bool var34-debug) ; Statement: $z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 != 0 goto $r19 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1) 
(assert (not (not (= (ite var2844 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2299 Bool var34-retry_debug) ; Statement: $z1 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean retry_debug> 
 ; Statement: if $z1 == 0 goto $r20 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
(assert (not (= (ite var2299 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var266 var871 (var871_of/-1711527236 var3186 var1548)) ; Statement: $r19 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1) 
(define-const var1196 var3633 var3592-out) ; Statement: $r1 = <java.lang.System: java.io.PrintStream out> 
(define-const var201 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var201)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var201!1 String)
(assert (= var201!1 ""))
(assert true)
(define-const var1647 String (append/672562846 var201!1 "reportAttemptingFullContext decision=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("reportAttemptingFullContext decision=") 
(declare-const var201!2 String)
(assert (= var201!2 (str.++ var201!1 "reportAttemptingFullContext decision=")))
(define-const var3052 Int (decision/-2041177131 var3801)) ; Statement: $i2 = r2.<org.antlr.v4.runtime.dfa.DFA: int decision> 
(assert true)
(define-const var3647 String (append/-1001720160 var1647 var3052)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var1647!1 String)
(assert (str.prefixof var1647 var1647!1))
(assert true)
(define-const var1631 String (append/672562846 var3647 ":")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var3647!1 String)
(assert (= var3647!1 (str.++ var3647 ":")))
(assert true)
(define-const var3751 String (append/-1031950772 var1631 (cast-from-var694-to-var1258 var3493))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5) 
(declare-const var1631!1 String)
(assert (str.prefixof var1631 var1631!1))
(assert true)
(define-const var2315 String (append/672562846 var3751 ", input=")) ; Statement: $r12 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", input=") 
(declare-const var3751!1 String)
(assert (= var3751!1 (str.++ var3751 ", input=")))
(define-const var3853 var2568 (parser/145254134 var1465)) ; Statement: $r9 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
(assert true)
(define-const var2858 var3958 (getTokenStream/-211092484 var3853)) ; Statement: $r10 = virtualinvoke $r9.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.TokenStream getTokenStream()>() 
(define-const var2864 String (var3958_getText/1167499073 var2858 var266)) ; Statement: $r11 = interfaceinvoke $r10.<org.antlr.v4.runtime.TokenStream: java.lang.String getText(org.antlr.v4.runtime.misc.Interval)>($r19) 
(assert true)
(define-const var527 String (append/672562846 var2315 var2864)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var2315!1 String)
(assert (= var2315!1 (str.++ var2315 var2864)))
(assert true)
(define-const var1421 String (toString/-2075883882 var527)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var1196 var1421)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r14) 

(declare-const var1196!1 var3633)
(declare-const var1421!1 String)
(assert true) ; Non Conditional
(define-const var3820 var2568 (parser/145254134 var1465)) ; Statement: $r20 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
 ; Statement: if $r20 == null goto return 
(assert (= var3820 null-var2568)) ; Cond: $r20 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var871_of/-1711527236=([int, int], org.antlr.v4.runtime.misc.Interval), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), decision/-2041177131=([org.antlr.v4.runtime.dfa.DFA], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var694-to-var1258=([org.antlr.v4.runtime.atn.ATNConfigSet], java.lang.Object), parser/145254134=([org.antlr.v4.runtime.atn.ParserATNSimulator], org.antlr.v4.runtime.Parser), getTokenStream/-211092484=([org.antlr.v4.runtime.Parser], org.antlr.v4.runtime.TokenStream), var3958_getText/1167499073=([org.antlr.v4.runtime.TokenStream, org.antlr.v4.runtime.misc.Interval], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var34=org.antlr.v4.runtime.atn.ParserATNSimulator, var1465=r8, var2482=org.antlr.v4.runtime.dfa.DFA, var3801=r2, var508=java.util.BitSet, var3656=r16, var694=org.antlr.v4.runtime.atn.ATNConfigSet, var3493=r5, var3186=i0, var1548=i1, var2844=$z0, var2299=$z1, var871=org.antlr.v4.runtime.misc.Interval, var266=$r19, var3633=java.io.PrintStream, var3592=java.lang.System, var1196=$r1, var201=$r0, var1647=$r3, var3052=$i2, var3647=$r4, var1631=$r6, var1258=java.lang.Object, var3751=$r7, var2315=$r12, var2568=org.antlr.v4.runtime.Parser, var3853=$r9, var3958=org.antlr.v4.runtime.TokenStream, var2858=$r10, var2864=$r11, var527=$r13, var1421=$r14, var3820=$r20}
; {org.antlr.v4.runtime.atn.ParserATNSimulator=var34, r8=var1465, org.antlr.v4.runtime.dfa.DFA=var2482, r2=var3801, java.util.BitSet=var508, r16=var3656, org.antlr.v4.runtime.atn.ATNConfigSet=var694, r5=var3493, i0=var3186, i1=var1548, $z0=var2844, $z1=var2299, org.antlr.v4.runtime.misc.Interval=var871, $r19=var266, java.io.PrintStream=var3633, java.lang.System=var3592, $r1=var1196, $r0=var201, $r3=var1647, $i2=var3052, $r4=var3647, $r6=var1631, java.lang.Object=var1258, $r7=var3751, $r12=var2315, org.antlr.v4.runtime.Parser=var2568, $r9=var3853, org.antlr.v4.runtime.TokenStream=var3958, $r10=var2858, $r11=var2864, $r13=var527, $r14=var1421, $r20=var3820}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator;	r2 := @parameter0: org.antlr.v4.runtime.dfa.DFA;	r16 := @parameter1: java.util.BitSet;	r5 := @parameter2: org.antlr.v4.runtime.atn.ATNConfigSet;	i0 := @parameter3: int;	i1 := @parameter4: int;	$z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug>;	if $z0 != 0 goto $r19 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1);	$z1 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean retry_debug>;	if $z1 == 0 goto $r20 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	$r19 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1);	$r1 = <java.lang.System: java.io.PrintStream out>;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("reportAttemptingFullContext decision=");	$i2 = r2.<org.antlr.v4.runtime.dfa.DFA: int decision>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5);	$r12 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", input=");	$r9 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	$r10 = virtualinvoke $r9.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.TokenStream getTokenStream()>();	$r11 = interfaceinvoke $r10.<org.antlr.v4.runtime.TokenStream: java.lang.String getText(org.antlr.v4.runtime.misc.Interval)>($r19);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r14);	$r20 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	if $r20 == null goto return;	return
;block_num 5