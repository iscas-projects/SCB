(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3509 0)
(declare-sort var1974 0)
(declare-sort var2119 0)
(declare-sort var2065 0)
(declare-sort var1437 0)
(declare-sort var3814 0)
(declare-sort var1082 0)
(declare-sort var3525 0)
(declare-sort var2051 0)
(declare-sort var3763 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1437_of/-1711527236 (Int Int) var1437)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun decision/-2041177131 (var1974) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-1031950772 (String var3525) String)
(declare-fun cast-from-var2065-to-var3525 (var2065) var3525)
(declare-fun parser/145254134 (var3509) var2051)
(declare-fun getTokenStream/-211092484 (var2051) var3763)
(declare-fun var3763_getText/1167499073 (var3763 var1437) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var3814 String) void)
(declare-const null-var3509 var3509)
(declare-const null-var1974 var1974)
(declare-const null-var2119 var2119)
(declare-const null-var2065 var2065)
(declare-const null-Int Int)
(declare-const var3509-debug Bool)
(declare-const var1082-out var3814)
(declare-const null-var2051 var2051)
(declare-const var2037 var3509) ; Statement: r8 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator 
(assert (not (= var2037 null-var3509)))
(declare-const var3621 var1974) ; Statement: r2 := @parameter0: org.antlr.v4.runtime.dfa.DFA 
(assert (not (= var3621 null-var1974)))
(declare-const var281 var2119) ; Statement: r16 := @parameter1: java.util.BitSet 
(assert (not (= var281 null-var2119)))
(declare-const var987 var2065) ; Statement: r5 := @parameter2: org.antlr.v4.runtime.atn.ATNConfigSet 
(assert (not (= var987 null-var2065)))
(declare-const var1658 Int) ; Statement: i0 := @parameter3: int 
(assert (not (= var1658 null-Int)))
(declare-const var952 Int) ; Statement: i1 := @parameter4: int 
(assert (not (= var952 null-Int)))
(define-const var867 Bool var3509-debug) ; Statement: $z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 != 0 goto $r19 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1) 
(assert (not (= (ite var867 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2504 var1437 (var1437_of/-1711527236 var1658 var952)) ; Statement: $r19 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1) 
(define-const var567 var3814 var1082-out) ; Statement: $r1 = <java.lang.System: java.io.PrintStream out> 
(define-const var673 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var673)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var673!1 String)
(assert (= var673!1 ""))
(assert true)
(define-const var3817 String (append/672562846 var673!1 "reportAttemptingFullContext decision=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("reportAttemptingFullContext decision=") 
(declare-const var673!2 String)
(assert (= var673!2 (str.++ var673!1 "reportAttemptingFullContext decision=")))
(define-const var1777 Int (decision/-2041177131 var3621)) ; Statement: $i2 = r2.<org.antlr.v4.runtime.dfa.DFA: int decision> 
(assert true)
(define-const var1136 String (append/-1001720160 var3817 var1777)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var3817!1 String)
(assert (str.prefixof var3817 var3817!1))
(assert true)
(define-const var726 String (append/672562846 var1136 ":")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var1136!1 String)
(assert (= var1136!1 (str.++ var1136 ":")))
(assert true)
(define-const var254 String (append/-1031950772 var726 (cast-from-var2065-to-var3525 var987))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5) 
(declare-const var726!1 String)
(assert (str.prefixof var726 var726!1))
(assert true)
(define-const var3686 String (append/672562846 var254 ", input=")) ; Statement: $r12 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", input=") 
(declare-const var254!1 String)
(assert (= var254!1 (str.++ var254 ", input=")))
(define-const var890 var2051 (parser/145254134 var2037)) ; Statement: $r9 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
(assert true)
(define-const var2224 var3763 (getTokenStream/-211092484 var890)) ; Statement: $r10 = virtualinvoke $r9.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.TokenStream getTokenStream()>() 
(define-const var2511 String (var3763_getText/1167499073 var2224 var2504)) ; Statement: $r11 = interfaceinvoke $r10.<org.antlr.v4.runtime.TokenStream: java.lang.String getText(org.antlr.v4.runtime.misc.Interval)>($r19) 
(assert true)
(define-const var1630 String (append/672562846 var3686 var2511)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3686!1 String)
(assert (= var3686!1 (str.++ var3686 var2511)))
(assert true)
(define-const var2178 String (toString/-2075883882 var1630)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var567 var2178)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r14) 

(declare-const var567!1 var3814)
(declare-const var2178!1 String)
(assert true) ; Non Conditional
(define-const var482 var2051 (parser/145254134 var2037)) ; Statement: $r20 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
 ; Statement: if $r20 == null goto return 
(assert (= var482 null-var2051)) ; Cond: $r20 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1437_of/-1711527236=([int, int], org.antlr.v4.runtime.misc.Interval), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), decision/-2041177131=([org.antlr.v4.runtime.dfa.DFA], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2065-to-var3525=([org.antlr.v4.runtime.atn.ATNConfigSet], java.lang.Object), parser/145254134=([org.antlr.v4.runtime.atn.ParserATNSimulator], org.antlr.v4.runtime.Parser), getTokenStream/-211092484=([org.antlr.v4.runtime.Parser], org.antlr.v4.runtime.TokenStream), var3763_getText/1167499073=([org.antlr.v4.runtime.TokenStream, org.antlr.v4.runtime.misc.Interval], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var3509=org.antlr.v4.runtime.atn.ParserATNSimulator, var2037=r8, var1974=org.antlr.v4.runtime.dfa.DFA, var3621=r2, var2119=java.util.BitSet, var281=r16, var2065=org.antlr.v4.runtime.atn.ATNConfigSet, var987=r5, var1658=i0, var952=i1, var867=$z0, var1437=org.antlr.v4.runtime.misc.Interval, var2504=$r19, var3814=java.io.PrintStream, var1082=java.lang.System, var567=$r1, var673=$r0, var3817=$r3, var1777=$i2, var1136=$r4, var726=$r6, var3525=java.lang.Object, var254=$r7, var3686=$r12, var2051=org.antlr.v4.runtime.Parser, var890=$r9, var3763=org.antlr.v4.runtime.TokenStream, var2224=$r10, var2511=$r11, var1630=$r13, var2178=$r14, var482=$r20}
; {org.antlr.v4.runtime.atn.ParserATNSimulator=var3509, r8=var2037, org.antlr.v4.runtime.dfa.DFA=var1974, r2=var3621, java.util.BitSet=var2119, r16=var281, org.antlr.v4.runtime.atn.ATNConfigSet=var2065, r5=var987, i0=var1658, i1=var952, $z0=var867, org.antlr.v4.runtime.misc.Interval=var1437, $r19=var2504, java.io.PrintStream=var3814, java.lang.System=var1082, $r1=var567, $r0=var673, $r3=var3817, $i2=var1777, $r4=var1136, $r6=var726, java.lang.Object=var3525, $r7=var254, $r12=var3686, org.antlr.v4.runtime.Parser=var2051, $r9=var890, org.antlr.v4.runtime.TokenStream=var3763, $r10=var2224, $r11=var2511, $r13=var1630, $r14=var2178, $r20=var482}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator;	r2 := @parameter0: org.antlr.v4.runtime.dfa.DFA;	r16 := @parameter1: java.util.BitSet;	r5 := @parameter2: org.antlr.v4.runtime.atn.ATNConfigSet;	i0 := @parameter3: int;	i1 := @parameter4: int;	$z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug>;	if $z0 != 0 goto $r19 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1);	$r19 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1);	$r1 = <java.lang.System: java.io.PrintStream out>;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("reportAttemptingFullContext decision=");	$i2 = r2.<org.antlr.v4.runtime.dfa.DFA: int decision>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5);	$r12 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", input=");	$r9 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	$r10 = virtualinvoke $r9.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.TokenStream getTokenStream()>();	$r11 = interfaceinvoke $r10.<org.antlr.v4.runtime.TokenStream: java.lang.String getText(org.antlr.v4.runtime.misc.Interval)>($r19);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r14);	$r20 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	if $r20 == null goto return;	return
;block_num 4