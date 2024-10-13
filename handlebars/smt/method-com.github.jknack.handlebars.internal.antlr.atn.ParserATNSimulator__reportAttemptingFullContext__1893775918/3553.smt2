(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2489 0)
(declare-sort var1074 0)
(declare-sort var1052 0)
(declare-sort var1224 0)
(declare-sort var1497 0)
(declare-sort var819 0)
(declare-sort var3256 0)
(declare-sort var2679 0)
(declare-sort var414 0)
(declare-sort var1495 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1497_of/1114852800 (Int Int) var1497)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun decision/1715855536 (var1074) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-1031950772 (String var2679) String)
(declare-fun cast-from-var1224-to-var2679 (var1224) var2679)
(declare-fun parser/310440123 (var2489) var414)
(declare-fun getTokenStream/1024418418 (var414) var1495)
(declare-fun var1495_getText/1244185151 (var1495 var1497) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var819 String) void)
(declare-const null-var2489 var2489)
(declare-const null-var1074 var1074)
(declare-const null-var1052 var1052)
(declare-const null-var1224 var1224)
(declare-const null-Int Int)
(declare-const var2489-debug Bool)
(declare-const var2489-retry_debug Bool)
(declare-const var3256-out var819)
(declare-const null-var414 var414)
(declare-const var1701 var2489) ; Statement: r8 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator 
(assert (not (= var1701 null-var2489)))
(declare-const var251 var1074) ; Statement: r2 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA 
(assert (not (= var251 null-var1074)))
(declare-const var2708 var1052) ; Statement: r16 := @parameter1: java.util.BitSet 
(assert (not (= var2708 null-var1052)))
(declare-const var3215 var1224) ; Statement: r5 := @parameter2: com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet 
(assert (not (= var3215 null-var1224)))
(declare-const var2219 Int) ; Statement: i0 := @parameter3: int 
(assert (not (= var2219 null-Int)))
(declare-const var3606 Int) ; Statement: i1 := @parameter4: int 
(assert (not (= var3606 null-Int)))
(define-const var3845 Bool var2489-debug) ; Statement: $z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 != 0 goto $r19 = staticinvoke <com.github.jknack.handlebars.internal.antlr.misc.Interval: com.github.jknack.handlebars.internal.antlr.misc.Interval of(int,int)>(i0, i1) 
(assert (not (not (= (ite var3845 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var156 Bool var2489-retry_debug) ; Statement: $z1 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean retry_debug> 
 ; Statement: if $z1 == 0 goto $r20 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
(assert (not (= (ite var156 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2551 var1497 (var1497_of/1114852800 var2219 var3606)) ; Statement: $r19 = staticinvoke <com.github.jknack.handlebars.internal.antlr.misc.Interval: com.github.jknack.handlebars.internal.antlr.misc.Interval of(int,int)>(i0, i1) 
(define-const var3267 var819 var3256-out) ; Statement: $r1 = <java.lang.System: java.io.PrintStream out> 
(define-const var513 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var513)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var513!1 String)
(assert (= var513!1 ""))
(assert true)
(define-const var761 String (append/672562846 var513!1 "reportAttemptingFullContext decision=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("reportAttemptingFullContext decision=") 
(declare-const var513!2 String)
(assert (= var513!2 (str.++ var513!1 "reportAttemptingFullContext decision=")))
(define-const var607 Int (decision/1715855536 var251)) ; Statement: $i2 = r2.<com.github.jknack.handlebars.internal.antlr.dfa.DFA: int decision> 
(assert true)
(define-const var1212 String (append/-1001720160 var761 var607)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var761!1 String)
(assert (str.prefixof var761 var761!1))
(assert true)
(define-const var976 String (append/672562846 var1212 ":")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var1212!1 String)
(assert (= var1212!1 (str.++ var1212 ":")))
(assert true)
(define-const var132 String (append/-1031950772 var976 (cast-from-var1224-to-var2679 var3215))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5) 
(declare-const var976!1 String)
(assert (str.prefixof var976 var976!1))
(assert true)
(define-const var2264 String (append/672562846 var132 ", input=")) ; Statement: $r12 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", input=") 
(declare-const var132!1 String)
(assert (= var132!1 (str.++ var132 ", input=")))
(define-const var1142 var414 (parser/310440123 var1701)) ; Statement: $r9 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
(assert true)
(define-const var3407 var1495 (getTokenStream/1024418418 var1142)) ; Statement: $r10 = virtualinvoke $r9.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.TokenStream getTokenStream()>() 
(define-const var500 String (var1495_getText/1244185151 var3407 var2551)) ; Statement: $r11 = interfaceinvoke $r10.<com.github.jknack.handlebars.internal.antlr.TokenStream: java.lang.String getText(com.github.jknack.handlebars.internal.antlr.misc.Interval)>($r19) 
(assert true)
(define-const var2379 String (append/672562846 var2264 var500)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var2264!1 String)
(assert (= var2264!1 (str.++ var2264 var500)))
(assert true)
(define-const var19 String (toString/-2075883882 var2379)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var3267 var19)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r14) 

(declare-const var3267!1 var819)
(declare-const var19!1 String)
(assert true) ; Non Conditional
(define-const var3879 var414 (parser/310440123 var1701)) ; Statement: $r20 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
 ; Statement: if $r20 == null goto return 
(assert (= var3879 null-var414)) ; Cond: $r20 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1497_of/1114852800=([int, int], com.github.jknack.handlebars.internal.antlr.misc.Interval), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), decision/1715855536=([com.github.jknack.handlebars.internal.antlr.dfa.DFA], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1224-to-var2679=([com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet], java.lang.Object), parser/310440123=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator], com.github.jknack.handlebars.internal.antlr.Parser), getTokenStream/1024418418=([com.github.jknack.handlebars.internal.antlr.Parser], com.github.jknack.handlebars.internal.antlr.TokenStream), var1495_getText/1244185151=([com.github.jknack.handlebars.internal.antlr.TokenStream, com.github.jknack.handlebars.internal.antlr.misc.Interval], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var2489=com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, var1701=r8, var1074=com.github.jknack.handlebars.internal.antlr.dfa.DFA, var251=r2, var1052=java.util.BitSet, var2708=r16, var1224=com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet, var3215=r5, var2219=i0, var3606=i1, var3845=$z0, var156=$z1, var1497=com.github.jknack.handlebars.internal.antlr.misc.Interval, var2551=$r19, var819=java.io.PrintStream, var3256=java.lang.System, var3267=$r1, var513=$r0, var761=$r3, var607=$i2, var1212=$r4, var976=$r6, var2679=java.lang.Object, var132=$r7, var2264=$r12, var414=com.github.jknack.handlebars.internal.antlr.Parser, var1142=$r9, var1495=com.github.jknack.handlebars.internal.antlr.TokenStream, var3407=$r10, var500=$r11, var2379=$r13, var19=$r14, var3879=$r20}
; {com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator=var2489, r8=var1701, com.github.jknack.handlebars.internal.antlr.dfa.DFA=var1074, r2=var251, java.util.BitSet=var1052, r16=var2708, com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet=var1224, r5=var3215, i0=var2219, i1=var3606, $z0=var3845, $z1=var156, com.github.jknack.handlebars.internal.antlr.misc.Interval=var1497, $r19=var2551, java.io.PrintStream=var819, java.lang.System=var3256, $r1=var3267, $r0=var513, $r3=var761, $i2=var607, $r4=var1212, $r6=var976, java.lang.Object=var2679, $r7=var132, $r12=var2264, com.github.jknack.handlebars.internal.antlr.Parser=var414, $r9=var1142, com.github.jknack.handlebars.internal.antlr.TokenStream=var1495, $r10=var3407, $r11=var500, $r13=var2379, $r14=var19, $r20=var3879}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator;	r2 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA;	r16 := @parameter1: java.util.BitSet;	r5 := @parameter2: com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet;	i0 := @parameter3: int;	i1 := @parameter4: int;	$z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug>;	if $z0 != 0 goto $r19 = staticinvoke <com.github.jknack.handlebars.internal.antlr.misc.Interval: com.github.jknack.handlebars.internal.antlr.misc.Interval of(int,int)>(i0, i1);	$z1 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean retry_debug>;	if $z1 == 0 goto $r20 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	$r19 = staticinvoke <com.github.jknack.handlebars.internal.antlr.misc.Interval: com.github.jknack.handlebars.internal.antlr.misc.Interval of(int,int)>(i0, i1);	$r1 = <java.lang.System: java.io.PrintStream out>;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("reportAttemptingFullContext decision=");	$i2 = r2.<com.github.jknack.handlebars.internal.antlr.dfa.DFA: int decision>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5);	$r12 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", input=");	$r9 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	$r10 = virtualinvoke $r9.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.TokenStream getTokenStream()>();	$r11 = interfaceinvoke $r10.<com.github.jknack.handlebars.internal.antlr.TokenStream: java.lang.String getText(com.github.jknack.handlebars.internal.antlr.misc.Interval)>($r19);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r14);	$r20 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	if $r20 == null goto return;	return
;block_num 5