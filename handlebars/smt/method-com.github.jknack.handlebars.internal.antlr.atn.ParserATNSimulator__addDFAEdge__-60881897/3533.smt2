(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2861 0)
(declare-sort var2793 0)
(declare-sort var3863 0)
(declare-sort var1262 0)
(declare-sort var3246 0)
(declare-sort var2618 0)
(declare-sort var3967 0)
(declare-sort var3417 0)
(declare-sort var1126 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2618) String)
(declare-fun cast-from-var3863-to-var2618 (var3863) var2618)
(declare-fun getTokenName/1989343816 (var2861 Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var1262 String) void)
(declare-fun addDFAState/95005385 (var2861 var2793 var3863) var3863)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun atn/1088573756 (var3417) var3967)
(declare-fun cast-from-var2861-to-var3417 (var2861) var3417)
(declare-fun maxTokenType/-533844056 (var3967) Int)
(declare-const null-var2861 var2861)
(declare-const null-var2793 var2793)
(declare-const null-var3863 var3863)
(declare-const null-Int Int)
(declare-const var2861-debug Bool)
(declare-const var3246-out var1262)
(declare-const null-var1126 var1126)
(declare-const var832 var2861) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator 
(assert (not (= var832 null-var2861)))
(declare-const var3077 var2793) ; Statement: r1 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA 
(assert (not (= var3077 null-var2793)))
(declare-const var390 var3863) ; Statement: r2 := @parameter1: com.github.jknack.handlebars.internal.antlr.dfa.DFAState 
(assert (not (= var390 null-var3863)))
(declare-const var379 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var379 null-Int)))
(declare-const var935 var3863) ; Statement: r27 := @parameter3: com.github.jknack.handlebars.internal.antlr.dfa.DFAState 
(assert (not (= var935 null-var3863)))
(define-const var3691 Bool var2861-debug) ; Statement: $z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (not (= (ite var3691 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1274 var1262 var3246-out) ; Statement: $r17 = <java.lang.System: java.io.PrintStream out> 
(define-const var1 String String-init) ; Statement: $r30 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1)) ; Statement: specialinvoke $r30.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1!1 String)
(assert (= var1!1 ""))
(assert true)
(define-const var1643 String (append/672562846 var1!1 "EDGE ")) ; Statement: $r18 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("EDGE ") 
(declare-const var1!2 String)
(assert (= var1!2 (str.++ var1!1 "EDGE ")))
(assert true)
(define-const var3265 String (append/-1031950772 var1643 (cast-from-var3863-to-var2618 var390))) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var1643!1 String)
(assert (str.prefixof var1643 var1643!1))
(assert true)
(define-const var1269 String (append/672562846 var3265 " -> ")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -> ") 
(declare-const var3265!1 String)
(assert (= var3265!1 (str.++ var3265 " -> ")))
(assert true)
(define-const var3922 String (append/-1031950772 var1269 (cast-from-var3863-to-var2618 var935))) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r27) 
(declare-const var1269!1 String)
(assert (str.prefixof var1269 var1269!1))
(assert true)
(define-const var3868 String (append/672562846 var3922 " upon ")) ; Statement: $r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" upon ") 
(declare-const var3922!1 String)
(assert (= var3922!1 (str.++ var3922 " upon ")))
(assert true)
(define-const var2742 String (getTokenName/1989343816 var832 var379)) ; Statement: $r22 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: java.lang.String getTokenName(int)>(i0) 
(assert true)
(define-const var2560 String (append/672562846 var3868 var2742)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var3868!1 String)
(assert (= var3868!1 (str.++ var3868 var2742)))
(assert true)
(define-const var1194 String (toString/-2075883882 var2560)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var1274 var1194)) ; Statement: virtualinvoke $r17.<java.io.PrintStream: void println(java.lang.String)>($r25) 

(declare-const var1274!1 var1262)
(declare-const var1194!1 String)
(assert true) ; Non Conditional
 ; Statement: if r27 != null goto r28 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFAState addDFAState(com.github.jknack.handlebars.internal.antlr.dfa.DFA,com.github.jknack.handlebars.internal.antlr.dfa.DFAState)>(r1, r27) 
(assert (not (= var935 null-var3863))) ; Cond: r27 != null 
(assert true)
(define-const var1129 var3863 (addDFAState/95005385 var832 var3077 var935)) ; Statement: r28 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFAState addDFAState(com.github.jknack.handlebars.internal.antlr.dfa.DFA,com.github.jknack.handlebars.internal.antlr.dfa.DFAState)>(r1, r27) 
 ; Statement: if r2 == null goto return r28 
(assert (not (= var390 null-var3863))) ; Negate: Cond: r2 == null  
(define-const var3295 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if i0 < $i7 goto return r28 
(assert (not (< var379 var3295))) ; Negate: Cond: i0 < $i7  
(define-const var1535 var3967 (atn/1088573756 (cast-from-var2861-to-var3417 var832))) ; Statement: $r3 = r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.atn.ATN atn> 
(define-const var3818 Int (maxTokenType/-533844056 var1535)) ; Statement: $i1 = $r3.<com.github.jknack.handlebars.internal.antlr.atn.ATN: int maxTokenType> 
 ; Statement: if i0 <= $i1 goto entermonitor r2 
(assert (<= var379 var3818)) ; Cond: i0 <= $i1 
 ; Statement: entermonitor r2 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2827 var1126) ; Statement: $r26 := @caughtexception 
(assert (not (= var2827 null-var1126)))
(assert true) ; Non Conditional
 ; Statement: exitmonitor r2 
(assert true) ; Non Conditional
 ; Statement: throw $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3863-to-var2618=([com.github.jknack.handlebars.internal.antlr.dfa.DFAState], java.lang.Object), getTokenName/1989343816=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), addDFAState/95005385=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, com.github.jknack.handlebars.internal.antlr.dfa.DFA, com.github.jknack.handlebars.internal.antlr.dfa.DFAState], com.github.jknack.handlebars.internal.antlr.dfa.DFAState), cast-from-Int-to-Int=([int], int), atn/1088573756=([com.github.jknack.handlebars.internal.antlr.atn.ATNSimulator], com.github.jknack.handlebars.internal.antlr.atn.ATN), cast-from-var2861-to-var3417=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator], com.github.jknack.handlebars.internal.antlr.atn.ATNSimulator), maxTokenType/-533844056=([com.github.jknack.handlebars.internal.antlr.atn.ATN], int)}
; {var2861=com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, var832=r0, var2793=com.github.jknack.handlebars.internal.antlr.dfa.DFA, var3077=r1, var3863=com.github.jknack.handlebars.internal.antlr.dfa.DFAState, var390=r2, var379=i0, var935=r27, var3691=$z0, var1262=java.io.PrintStream, var3246=java.lang.System, var1274=$r17, var1=$r30, var1643=$r18, var2618=java.lang.Object, var3265=$r19, var1269=$r20, var3922=$r21, var3868=$r23, var2742=$r22, var2560=$r24, var1194=$r25, var1129=r28, var3295=$i7, var3967=com.github.jknack.handlebars.internal.antlr.atn.ATN, var3417=com.github.jknack.handlebars.internal.antlr.atn.ATNSimulator, var1535=$r3, var3818=$i1, var1126=java.lang.Throwable, var2827=$r26}
; {com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator=var2861, r0=var832, com.github.jknack.handlebars.internal.antlr.dfa.DFA=var2793, r1=var3077, com.github.jknack.handlebars.internal.antlr.dfa.DFAState=var3863, r2=var390, i0=var379, r27=var935, $z0=var3691, java.io.PrintStream=var1262, java.lang.System=var3246, $r17=var1274, $r30=var1, $r18=var1643, java.lang.Object=var2618, $r19=var3265, $r20=var1269, $r21=var3922, $r23=var3868, $r22=var2742, $r24=var2560, $r25=var1194, r28=var1129, $i7=var3295, com.github.jknack.handlebars.internal.antlr.atn.ATN=var3967, com.github.jknack.handlebars.internal.antlr.atn.ATNSimulator=var3417, $r3=var1535, $i1=var3818, java.lang.Throwable=var1126, $r26=var2827}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator;	r1 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA;	r2 := @parameter1: com.github.jknack.handlebars.internal.antlr.dfa.DFAState;	i0 := @parameter2: int;	r27 := @parameter3: com.github.jknack.handlebars.internal.antlr.dfa.DFAState;	$z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug>;	if $z0 == 0 goto (branch);	$r17 = <java.lang.System: java.io.PrintStream out>;	$r30 = new java.lang.StringBuilder;	specialinvoke $r30.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("EDGE ");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -> ");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r27);	$r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" upon ");	$r22 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: java.lang.String getTokenName(int)>(i0);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r17.<java.io.PrintStream: void println(java.lang.String)>($r25);	if r27 != null goto r28 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFAState addDFAState(com.github.jknack.handlebars.internal.antlr.dfa.DFA,com.github.jknack.handlebars.internal.antlr.dfa.DFAState)>(r1, r27);	r28 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFAState addDFAState(com.github.jknack.handlebars.internal.antlr.dfa.DFA,com.github.jknack.handlebars.internal.antlr.dfa.DFAState)>(r1, r27);	if r2 == null goto return r28;	$i7 = (int) -1;	if i0 < $i7 goto return r28;	$r3 = r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.atn.ATN atn>;	$i1 = $r3.<com.github.jknack.handlebars.internal.antlr.atn.ATN: int maxTokenType>;	if i0 <= $i1 goto entermonitor r2;	entermonitor r2;	$r26 := @caughtexception;	exitmonitor r2;	throw $r26
;block_num 10