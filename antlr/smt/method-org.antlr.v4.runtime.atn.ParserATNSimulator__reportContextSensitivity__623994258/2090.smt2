(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3269 0)
(declare-sort var1489 0)
(declare-sort var2955 0)
(declare-sort var3869 0)
(declare-sort var3372 0)
(declare-sort var2320 0)
(declare-sort var2632 0)
(declare-sort var1012 0)
(declare-sort var3405 0)
(declare-sort var3224 0)
(declare-sort var2484 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3869_of/-1711527236 (Int Int) var3869)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun decision/-2041177131 (var1489) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-1031950772 (String var2632) String)
(declare-fun cast-from-var2955-to-var2632 (var2955) var2632)
(declare-fun parser/145254134 (var3269) var1012)
(declare-fun getTokenStream/-211092484 (var1012) var3405)
(declare-fun var3405_getText/1167499073 (var3405 var3869) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var3372 String) void)
(declare-fun getErrorListenerDispatch/-1594005314 (var2484) var3224)
(declare-fun cast-from-var1012-to-var2484 (var1012) var2484)
(declare-fun var3224_reportContextSensitivity/-1392569832 (var3224 var1012 var1489 Int Int Int var2955) void)
(declare-const null-var3269 var3269)
(declare-const null-var1489 var1489)
(declare-const null-Int Int)
(declare-const null-var2955 var2955)
(declare-const var3269-debug Bool)
(declare-const var2320-out var3372)
(declare-const null-var1012 var1012)
(declare-const var355 var3269) ; Statement: r8 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator 
(assert (not (= var355 null-var3269)))
(declare-const var216 var1489) ; Statement: r2 := @parameter0: org.antlr.v4.runtime.dfa.DFA 
(assert (not (= var216 null-var1489)))
(declare-const var112 Int) ; Statement: i3 := @parameter1: int 
(assert (not (= var112 null-Int)))
(declare-const var1337 var2955) ; Statement: r5 := @parameter2: org.antlr.v4.runtime.atn.ATNConfigSet 
(assert (not (= var1337 null-var2955)))
(declare-const var1265 Int) ; Statement: i0 := @parameter3: int 
(assert (not (= var1265 null-Int)))
(declare-const var2343 Int) ; Statement: i1 := @parameter4: int 
(assert (not (= var2343 null-Int)))
(define-const var1192 Bool var3269-debug) ; Statement: $z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 != 0 goto $r18 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1) 
(assert (not (= (ite var1192 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1139 var3869 (var3869_of/-1711527236 var1265 var2343)) ; Statement: $r18 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1) 
(define-const var1827 var3372 var2320-out) ; Statement: $r1 = <java.lang.System: java.io.PrintStream out> 
(define-const var3615 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3615)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3615!1 String)
(assert (= var3615!1 ""))
(assert true)
(define-const var3551 String (append/672562846 var3615!1 "reportContextSensitivity decision=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("reportContextSensitivity decision=") 
(declare-const var3615!2 String)
(assert (= var3615!2 (str.++ var3615!1 "reportContextSensitivity decision=")))
(define-const var3456 Int (decision/-2041177131 var216)) ; Statement: $i2 = r2.<org.antlr.v4.runtime.dfa.DFA: int decision> 
(assert true)
(define-const var3554 String (append/-1001720160 var3551 var3456)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var3551!1 String)
(assert (str.prefixof var3551 var3551!1))
(assert true)
(define-const var3657 String (append/672562846 var3554 ":")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var3554!1 String)
(assert (= var3554!1 (str.++ var3554 ":")))
(assert true)
(define-const var3346 String (append/-1031950772 var3657 (cast-from-var2955-to-var2632 var1337))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5) 
(declare-const var3657!1 String)
(assert (str.prefixof var3657 var3657!1))
(assert true)
(define-const var3454 String (append/672562846 var3346 ", input=")) ; Statement: $r12 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", input=") 
(declare-const var3346!1 String)
(assert (= var3346!1 (str.++ var3346 ", input=")))
(define-const var2222 var1012 (parser/145254134 var355)) ; Statement: $r9 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
(assert true)
(define-const var1958 var3405 (getTokenStream/-211092484 var2222)) ; Statement: $r10 = virtualinvoke $r9.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.TokenStream getTokenStream()>() 
(define-const var1530 String (var3405_getText/1167499073 var1958 var1139)) ; Statement: $r11 = interfaceinvoke $r10.<org.antlr.v4.runtime.TokenStream: java.lang.String getText(org.antlr.v4.runtime.misc.Interval)>($r18) 
(assert true)
(define-const var3209 String (append/672562846 var3454 var1530)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3454!1 String)
(assert (= var3454!1 (str.++ var3454 var1530)))
(assert true)
(define-const var2627 String (toString/-2075883882 var3209)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var1827 var2627)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r14) 

(declare-const var1827!1 var3372)
(declare-const var2627!1 String)
(assert true) ; Non Conditional
(define-const var2872 var1012 (parser/145254134 var355)) ; Statement: $r19 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
 ; Statement: if $r19 == null goto return 
(assert (not (= var2872 null-var1012))) ; Negate: Cond: $r19 == null  
(define-const var2811 var1012 (parser/145254134 var355)) ; Statement: $r15 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
(assert true)
(define-const var1169 var3224 (getErrorListenerDispatch/-1594005314 (cast-from-var1012-to-var2484 var2811))) ; Statement: $r17 = virtualinvoke $r15.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.ANTLRErrorListener getErrorListenerDispatch()>() 
(define-const var3870 var1012 (parser/145254134 var355)) ; Statement: $r16 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
;(assert (var3224_reportContextSensitivity/-1392569832 var1169 var3870 var216 var1265 var2343 var112 var1337)) ; Statement: interfaceinvoke $r17.<org.antlr.v4.runtime.ANTLRErrorListener: void reportContextSensitivity(org.antlr.v4.runtime.Parser,org.antlr.v4.runtime.dfa.DFA,int,int,int,org.antlr.v4.runtime.atn.ATNConfigSet)>($r16, r2, i0, i1, i3, r5) 

(declare-const var1169!1 var3224)
(declare-const var3870!1 var1012)
(declare-const var216!1 var1489)
(declare-const var1265!1 Int)
(declare-const var2343!1 Int)
(declare-const var112!1 Int)
(declare-const var1337!1 var2955)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3869_of/-1711527236=([int, int], org.antlr.v4.runtime.misc.Interval), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), decision/-2041177131=([org.antlr.v4.runtime.dfa.DFA], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2955-to-var2632=([org.antlr.v4.runtime.atn.ATNConfigSet], java.lang.Object), parser/145254134=([org.antlr.v4.runtime.atn.ParserATNSimulator], org.antlr.v4.runtime.Parser), getTokenStream/-211092484=([org.antlr.v4.runtime.Parser], org.antlr.v4.runtime.TokenStream), var3405_getText/1167499073=([org.antlr.v4.runtime.TokenStream, org.antlr.v4.runtime.misc.Interval], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), getErrorListenerDispatch/-1594005314=([org.antlr.v4.runtime.Recognizer], org.antlr.v4.runtime.ANTLRErrorListener), cast-from-var1012-to-var2484=([org.antlr.v4.runtime.Parser], org.antlr.v4.runtime.Recognizer), var3224_reportContextSensitivity/-1392569832=([org.antlr.v4.runtime.ANTLRErrorListener, org.antlr.v4.runtime.Parser, org.antlr.v4.runtime.dfa.DFA, int, int, int, org.antlr.v4.runtime.atn.ATNConfigSet], void)}
; {var3269=org.antlr.v4.runtime.atn.ParserATNSimulator, var355=r8, var1489=org.antlr.v4.runtime.dfa.DFA, var216=r2, var112=i3, var2955=org.antlr.v4.runtime.atn.ATNConfigSet, var1337=r5, var1265=i0, var2343=i1, var1192=$z0, var3869=org.antlr.v4.runtime.misc.Interval, var1139=$r18, var3372=java.io.PrintStream, var2320=java.lang.System, var1827=$r1, var3615=$r0, var3551=$r3, var3456=$i2, var3554=$r4, var3657=$r6, var2632=java.lang.Object, var3346=$r7, var3454=$r12, var1012=org.antlr.v4.runtime.Parser, var2222=$r9, var3405=org.antlr.v4.runtime.TokenStream, var1958=$r10, var1530=$r11, var3209=$r13, var2627=$r14, var2872=$r19, var2811=$r15, var3224=org.antlr.v4.runtime.ANTLRErrorListener, var2484=org.antlr.v4.runtime.Recognizer, var1169=$r17, var3870=$r16}
; {org.antlr.v4.runtime.atn.ParserATNSimulator=var3269, r8=var355, org.antlr.v4.runtime.dfa.DFA=var1489, r2=var216, i3=var112, org.antlr.v4.runtime.atn.ATNConfigSet=var2955, r5=var1337, i0=var1265, i1=var2343, $z0=var1192, org.antlr.v4.runtime.misc.Interval=var3869, $r18=var1139, java.io.PrintStream=var3372, java.lang.System=var2320, $r1=var1827, $r0=var3615, $r3=var3551, $i2=var3456, $r4=var3554, $r6=var3657, java.lang.Object=var2632, $r7=var3346, $r12=var3454, org.antlr.v4.runtime.Parser=var1012, $r9=var2222, org.antlr.v4.runtime.TokenStream=var3405, $r10=var1958, $r11=var1530, $r13=var3209, $r14=var2627, $r19=var2872, $r15=var2811, org.antlr.v4.runtime.ANTLRErrorListener=var3224, org.antlr.v4.runtime.Recognizer=var2484, $r17=var1169, $r16=var3870}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator;	r2 := @parameter0: org.antlr.v4.runtime.dfa.DFA;	i3 := @parameter1: int;	r5 := @parameter2: org.antlr.v4.runtime.atn.ATNConfigSet;	i0 := @parameter3: int;	i1 := @parameter4: int;	$z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug>;	if $z0 != 0 goto $r18 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1);	$r18 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1);	$r1 = <java.lang.System: java.io.PrintStream out>;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("reportContextSensitivity decision=");	$i2 = r2.<org.antlr.v4.runtime.dfa.DFA: int decision>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5);	$r12 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", input=");	$r9 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	$r10 = virtualinvoke $r9.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.TokenStream getTokenStream()>();	$r11 = interfaceinvoke $r10.<org.antlr.v4.runtime.TokenStream: java.lang.String getText(org.antlr.v4.runtime.misc.Interval)>($r18);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r14);	$r19 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	if $r19 == null goto return;	$r15 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	$r17 = virtualinvoke $r15.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.ANTLRErrorListener getErrorListenerDispatch()>();	$r16 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	interfaceinvoke $r17.<org.antlr.v4.runtime.ANTLRErrorListener: void reportContextSensitivity(org.antlr.v4.runtime.Parser,org.antlr.v4.runtime.dfa.DFA,int,int,int,org.antlr.v4.runtime.atn.ATNConfigSet)>($r16, r2, i0, i1, i3, r5);	return
;block_num 5