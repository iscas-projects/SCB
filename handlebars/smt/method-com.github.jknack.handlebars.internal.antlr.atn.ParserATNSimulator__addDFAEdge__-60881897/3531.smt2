(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3634 0)
(declare-sort var2074 0)
(declare-sort var1595 0)
(declare-sort var443 0)
(declare-sort var2355 0)
(declare-sort var3524 0)
(declare-sort var3124 0)
(declare-sort var2610 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3524) String)
(declare-fun cast-from-var1595-to-var3524 (var1595) var3524)
(declare-fun getTokenName/1989343816 (var3634 Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var443 String) void)
(declare-fun addDFAState/95005385 (var3634 var2074 var1595) var1595)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun atn/1088573756 (var2610) var3124)
(declare-fun cast-from-var3634-to-var2610 (var3634) var2610)
(declare-fun maxTokenType/-533844056 (var3124) Int)
(declare-const null-var3634 var3634)
(declare-const null-var2074 var2074)
(declare-const null-var1595 var1595)
(declare-const null-Int Int)
(declare-const var3634-debug Bool)
(declare-const var2355-out var443)
(declare-const var416 var3634) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator 
(assert (not (= var416 null-var3634)))
(declare-const var2261 var2074) ; Statement: r1 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA 
(assert (not (= var2261 null-var2074)))
(declare-const var420 var1595) ; Statement: r2 := @parameter1: com.github.jknack.handlebars.internal.antlr.dfa.DFAState 
(assert (not (= var420 null-var1595)))
(declare-const var1881 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var1881 null-Int)))
(declare-const var1351 var1595) ; Statement: r27 := @parameter3: com.github.jknack.handlebars.internal.antlr.dfa.DFAState 
(assert (not (= var1351 null-var1595)))
(define-const var2098 Bool var3634-debug) ; Statement: $z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (not (= (ite var2098 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3308 var443 var2355-out) ; Statement: $r17 = <java.lang.System: java.io.PrintStream out> 
(define-const var423 String String-init) ; Statement: $r30 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var423)) ; Statement: specialinvoke $r30.<java.lang.StringBuilder: void <init>()>() 
(declare-const var423!1 String)
(assert (= var423!1 ""))
(assert true)
(define-const var697 String (append/672562846 var423!1 "EDGE ")) ; Statement: $r18 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("EDGE ") 
(declare-const var423!2 String)
(assert (= var423!2 (str.++ var423!1 "EDGE ")))
(assert true)
(define-const var532 String (append/-1031950772 var697 (cast-from-var1595-to-var3524 var420))) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var697!1 String)
(assert (str.prefixof var697 var697!1))
(assert true)
(define-const var753 String (append/672562846 var532 " -> ")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -> ") 
(declare-const var532!1 String)
(assert (= var532!1 (str.++ var532 " -> ")))
(assert true)
(define-const var2467 String (append/-1031950772 var753 (cast-from-var1595-to-var3524 var1351))) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r27) 
(declare-const var753!1 String)
(assert (str.prefixof var753 var753!1))
(assert true)
(define-const var1653 String (append/672562846 var2467 " upon ")) ; Statement: $r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" upon ") 
(declare-const var2467!1 String)
(assert (= var2467!1 (str.++ var2467 " upon ")))
(assert true)
(define-const var3915 String (getTokenName/1989343816 var416 var1881)) ; Statement: $r22 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: java.lang.String getTokenName(int)>(i0) 
(assert true)
(define-const var2061 String (append/672562846 var1653 var3915)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var1653!1 String)
(assert (= var1653!1 (str.++ var1653 var3915)))
(assert true)
(define-const var2771 String (toString/-2075883882 var2061)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var3308 var2771)) ; Statement: virtualinvoke $r17.<java.io.PrintStream: void println(java.lang.String)>($r25) 

(declare-const var3308!1 var443)
(declare-const var2771!1 String)
(assert true) ; Non Conditional
 ; Statement: if r27 != null goto r28 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFAState addDFAState(com.github.jknack.handlebars.internal.antlr.dfa.DFA,com.github.jknack.handlebars.internal.antlr.dfa.DFAState)>(r1, r27) 
(assert (not (= var1351 null-var1595))) ; Cond: r27 != null 
(assert true)
(define-const var1396 var1595 (addDFAState/95005385 var416 var2261 var1351)) ; Statement: r28 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFAState addDFAState(com.github.jknack.handlebars.internal.antlr.dfa.DFA,com.github.jknack.handlebars.internal.antlr.dfa.DFAState)>(r1, r27) 
 ; Statement: if r2 == null goto return r28 
(assert (not (= var420 null-var1595))) ; Negate: Cond: r2 == null  
(define-const var3923 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if i0 < $i7 goto return r28 
(assert (not (< var1881 var3923))) ; Negate: Cond: i0 < $i7  
(define-const var1816 var3124 (atn/1088573756 (cast-from-var3634-to-var2610 var416))) ; Statement: $r3 = r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.atn.ATN atn> 
(define-const var1165 Int (maxTokenType/-533844056 var1816)) ; Statement: $i1 = $r3.<com.github.jknack.handlebars.internal.antlr.atn.ATN: int maxTokenType> 
 ; Statement: if i0 <= $i1 goto entermonitor r2 
(assert (not (<= var1881 var1165))) ; Negate: Cond: i0 <= $i1  
 ; Statement: return r28 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1595-to-var3524=([com.github.jknack.handlebars.internal.antlr.dfa.DFAState], java.lang.Object), getTokenName/1989343816=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), addDFAState/95005385=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, com.github.jknack.handlebars.internal.antlr.dfa.DFA, com.github.jknack.handlebars.internal.antlr.dfa.DFAState], com.github.jknack.handlebars.internal.antlr.dfa.DFAState), cast-from-Int-to-Int=([int], int), atn/1088573756=([com.github.jknack.handlebars.internal.antlr.atn.ATNSimulator], com.github.jknack.handlebars.internal.antlr.atn.ATN), cast-from-var3634-to-var2610=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator], com.github.jknack.handlebars.internal.antlr.atn.ATNSimulator), maxTokenType/-533844056=([com.github.jknack.handlebars.internal.antlr.atn.ATN], int)}
; {var3634=com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, var416=r0, var2074=com.github.jknack.handlebars.internal.antlr.dfa.DFA, var2261=r1, var1595=com.github.jknack.handlebars.internal.antlr.dfa.DFAState, var420=r2, var1881=i0, var1351=r27, var2098=$z0, var443=java.io.PrintStream, var2355=java.lang.System, var3308=$r17, var423=$r30, var697=$r18, var3524=java.lang.Object, var532=$r19, var753=$r20, var2467=$r21, var1653=$r23, var3915=$r22, var2061=$r24, var2771=$r25, var1396=r28, var3923=$i7, var3124=com.github.jknack.handlebars.internal.antlr.atn.ATN, var2610=com.github.jknack.handlebars.internal.antlr.atn.ATNSimulator, var1816=$r3, var1165=$i1}
; {com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator=var3634, r0=var416, com.github.jknack.handlebars.internal.antlr.dfa.DFA=var2074, r1=var2261, com.github.jknack.handlebars.internal.antlr.dfa.DFAState=var1595, r2=var420, i0=var1881, r27=var1351, $z0=var2098, java.io.PrintStream=var443, java.lang.System=var2355, $r17=var3308, $r30=var423, $r18=var697, java.lang.Object=var3524, $r19=var532, $r20=var753, $r21=var2467, $r23=var1653, $r22=var3915, $r24=var2061, $r25=var2771, r28=var1396, $i7=var3923, com.github.jknack.handlebars.internal.antlr.atn.ATN=var3124, com.github.jknack.handlebars.internal.antlr.atn.ATNSimulator=var2610, $r3=var1816, $i1=var1165}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator;	r1 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA;	r2 := @parameter1: com.github.jknack.handlebars.internal.antlr.dfa.DFAState;	i0 := @parameter2: int;	r27 := @parameter3: com.github.jknack.handlebars.internal.antlr.dfa.DFAState;	$z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug>;	if $z0 == 0 goto (branch);	$r17 = <java.lang.System: java.io.PrintStream out>;	$r30 = new java.lang.StringBuilder;	specialinvoke $r30.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("EDGE ");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -> ");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r27);	$r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" upon ");	$r22 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: java.lang.String getTokenName(int)>(i0);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r17.<java.io.PrintStream: void println(java.lang.String)>($r25);	if r27 != null goto r28 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFAState addDFAState(com.github.jknack.handlebars.internal.antlr.dfa.DFA,com.github.jknack.handlebars.internal.antlr.dfa.DFAState)>(r1, r27);	r28 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFAState addDFAState(com.github.jknack.handlebars.internal.antlr.dfa.DFA,com.github.jknack.handlebars.internal.antlr.dfa.DFAState)>(r1, r27);	if r2 == null goto return r28;	$i7 = (int) -1;	if i0 < $i7 goto return r28;	$r3 = r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.atn.ATN atn>;	$i1 = $r3.<com.github.jknack.handlebars.internal.antlr.atn.ATN: int maxTokenType>;	if i0 <= $i1 goto entermonitor r2;	return r28
;block_num 7