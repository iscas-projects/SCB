(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3415 0)
(declare-sort var14 0)
(declare-sort var3592 0)
(declare-sort var1195 0)
(declare-sort var3204 0)
(declare-sort var2185 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2185) String)
(declare-fun cast-from-var3592-to-var2185 (var3592) var2185)
(declare-fun getTokenName/1989343816 (var3415 Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var1195 String) void)
(declare-fun addDFAState/95005385 (var3415 var14 var3592) var3592)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var3415 var3415)
(declare-const null-var14 var14)
(declare-const null-var3592 var3592)
(declare-const null-Int Int)
(declare-const var3415-debug Bool)
(declare-const var3204-out var1195)
(declare-const var1591 var3415) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator 
(assert (not (= var1591 null-var3415)))
(declare-const var3942 var14) ; Statement: r1 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA 
(assert (not (= var3942 null-var14)))
(declare-const var1905 var3592) ; Statement: r2 := @parameter1: com.github.jknack.handlebars.internal.antlr.dfa.DFAState 
(assert (not (= var1905 null-var3592)))
(declare-const var3502 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3502 null-Int)))
(declare-const var3023 var3592) ; Statement: r27 := @parameter3: com.github.jknack.handlebars.internal.antlr.dfa.DFAState 
(assert (not (= var3023 null-var3592)))
(define-const var2487 Bool var3415-debug) ; Statement: $z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (not (= (ite var2487 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var667 var1195 var3204-out) ; Statement: $r17 = <java.lang.System: java.io.PrintStream out> 
(define-const var403 String String-init) ; Statement: $r30 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var403)) ; Statement: specialinvoke $r30.<java.lang.StringBuilder: void <init>()>() 
(declare-const var403!1 String)
(assert (= var403!1 ""))
(assert true)
(define-const var2787 String (append/672562846 var403!1 "EDGE ")) ; Statement: $r18 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("EDGE ") 
(declare-const var403!2 String)
(assert (= var403!2 (str.++ var403!1 "EDGE ")))
(assert true)
(define-const var2291 String (append/-1031950772 var2787 (cast-from-var3592-to-var2185 var1905))) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var2787!1 String)
(assert (str.prefixof var2787 var2787!1))
(assert true)
(define-const var66 String (append/672562846 var2291 " -> ")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -> ") 
(declare-const var2291!1 String)
(assert (= var2291!1 (str.++ var2291 " -> ")))
(assert true)
(define-const var1472 String (append/-1031950772 var66 (cast-from-var3592-to-var2185 var3023))) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r27) 
(declare-const var66!1 String)
(assert (str.prefixof var66 var66!1))
(assert true)
(define-const var2412 String (append/672562846 var1472 " upon ")) ; Statement: $r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" upon ") 
(declare-const var1472!1 String)
(assert (= var1472!1 (str.++ var1472 " upon ")))
(assert true)
(define-const var868 String (getTokenName/1989343816 var1591 var3502)) ; Statement: $r22 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: java.lang.String getTokenName(int)>(i0) 
(assert true)
(define-const var3278 String (append/672562846 var2412 var868)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var2412!1 String)
(assert (= var2412!1 (str.++ var2412 var868)))
(assert true)
(define-const var672 String (toString/-2075883882 var3278)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var667 var672)) ; Statement: virtualinvoke $r17.<java.io.PrintStream: void println(java.lang.String)>($r25) 

(declare-const var667!1 var1195)
(declare-const var672!1 String)
(assert true) ; Non Conditional
 ; Statement: if r27 != null goto r28 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFAState addDFAState(com.github.jknack.handlebars.internal.antlr.dfa.DFA,com.github.jknack.handlebars.internal.antlr.dfa.DFAState)>(r1, r27) 
(assert (not (= var3023 null-var3592))) ; Cond: r27 != null 
(assert true)
(define-const var2257 var3592 (addDFAState/95005385 var1591 var3942 var3023)) ; Statement: r28 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFAState addDFAState(com.github.jknack.handlebars.internal.antlr.dfa.DFA,com.github.jknack.handlebars.internal.antlr.dfa.DFAState)>(r1, r27) 
 ; Statement: if r2 == null goto return r28 
(assert (not (= var1905 null-var3592))) ; Negate: Cond: r2 == null  
(define-const var2147 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if i0 < $i7 goto return r28 
(assert (< var3502 var2147)) ; Cond: i0 < $i7 
 ; Statement: return r28 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3592-to-var2185=([com.github.jknack.handlebars.internal.antlr.dfa.DFAState], java.lang.Object), getTokenName/1989343816=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), addDFAState/95005385=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, com.github.jknack.handlebars.internal.antlr.dfa.DFA, com.github.jknack.handlebars.internal.antlr.dfa.DFAState], com.github.jknack.handlebars.internal.antlr.dfa.DFAState), cast-from-Int-to-Int=([int], int)}
; {var3415=com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, var1591=r0, var14=com.github.jknack.handlebars.internal.antlr.dfa.DFA, var3942=r1, var3592=com.github.jknack.handlebars.internal.antlr.dfa.DFAState, var1905=r2, var3502=i0, var3023=r27, var2487=$z0, var1195=java.io.PrintStream, var3204=java.lang.System, var667=$r17, var403=$r30, var2787=$r18, var2185=java.lang.Object, var2291=$r19, var66=$r20, var1472=$r21, var2412=$r23, var868=$r22, var3278=$r24, var672=$r25, var2257=r28, var2147=$i7}
; {com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator=var3415, r0=var1591, com.github.jknack.handlebars.internal.antlr.dfa.DFA=var14, r1=var3942, com.github.jknack.handlebars.internal.antlr.dfa.DFAState=var3592, r2=var1905, i0=var3502, r27=var3023, $z0=var2487, java.io.PrintStream=var1195, java.lang.System=var3204, $r17=var667, $r30=var403, $r18=var2787, java.lang.Object=var2185, $r19=var2291, $r20=var66, $r21=var1472, $r23=var2412, $r22=var868, $r24=var3278, $r25=var672, r28=var2257, $i7=var2147}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator;	r1 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA;	r2 := @parameter1: com.github.jknack.handlebars.internal.antlr.dfa.DFAState;	i0 := @parameter2: int;	r27 := @parameter3: com.github.jknack.handlebars.internal.antlr.dfa.DFAState;	$z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug>;	if $z0 == 0 goto (branch);	$r17 = <java.lang.System: java.io.PrintStream out>;	$r30 = new java.lang.StringBuilder;	specialinvoke $r30.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("EDGE ");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -> ");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r27);	$r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" upon ");	$r22 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: java.lang.String getTokenName(int)>(i0);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r17.<java.io.PrintStream: void println(java.lang.String)>($r25);	if r27 != null goto r28 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFAState addDFAState(com.github.jknack.handlebars.internal.antlr.dfa.DFA,com.github.jknack.handlebars.internal.antlr.dfa.DFAState)>(r1, r27);	r28 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFAState addDFAState(com.github.jknack.handlebars.internal.antlr.dfa.DFA,com.github.jknack.handlebars.internal.antlr.dfa.DFAState)>(r1, r27);	if r2 == null goto return r28;	$i7 = (int) -1;	if i0 < $i7 goto return r28;	return r28
;block_num 6