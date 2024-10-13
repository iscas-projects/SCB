(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var38 0)
(declare-sort var1076 0)
(declare-sort var1498 0)
(declare-sort var960 0)
(declare-sort var815 0)
(declare-sort var1999 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1999) String)
(declare-fun cast-from-var1498-to-var1999 (var1498) var1999)
(declare-fun getTokenName/-2026426139 (var38 Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var960 String) void)
(declare-fun addDFAState/638134899 (var38 var1076 var1498) var1498)
(declare-const null-var38 var38)
(declare-const null-var1076 var1076)
(declare-const null-var1498 var1498)
(declare-const null-Int Int)
(declare-const var38-debug Bool)
(declare-const var815-out var960)
(declare-const var2318 var38) ; Statement: r0 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator 
(assert (not (= var2318 null-var38)))
(declare-const var953 var1076) ; Statement: r1 := @parameter0: org.antlr.v4.runtime.dfa.DFA 
(assert (not (= var953 null-var1076)))
(declare-const var518 var1498) ; Statement: r2 := @parameter1: org.antlr.v4.runtime.dfa.DFAState 
(assert (not (= var518 null-var1498)))
(declare-const var605 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var605 null-Int)))
(declare-const var2777 var1498) ; Statement: r27 := @parameter3: org.antlr.v4.runtime.dfa.DFAState 
(assert (not (= var2777 null-var1498)))
(define-const var816 Bool var38-debug) ; Statement: $z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (not (= (ite var816 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3538 var960 var815-out) ; Statement: $r17 = <java.lang.System: java.io.PrintStream out> 
(define-const var1189 String String-init) ; Statement: $r30 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1189)) ; Statement: specialinvoke $r30.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1189!1 String)
(assert (= var1189!1 ""))
(assert true)
(define-const var832 String (append/672562846 var1189!1 "EDGE ")) ; Statement: $r18 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("EDGE ") 
(declare-const var1189!2 String)
(assert (= var1189!2 (str.++ var1189!1 "EDGE ")))
(assert true)
(define-const var2854 String (append/-1031950772 var832 (cast-from-var1498-to-var1999 var518))) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var832!1 String)
(assert (str.prefixof var832 var832!1))
(assert true)
(define-const var2765 String (append/672562846 var2854 " -> ")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -> ") 
(declare-const var2854!1 String)
(assert (= var2854!1 (str.++ var2854 " -> ")))
(assert true)
(define-const var3825 String (append/-1031950772 var2765 (cast-from-var1498-to-var1999 var2777))) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r27) 
(declare-const var2765!1 String)
(assert (str.prefixof var2765 var2765!1))
(assert true)
(define-const var333 String (append/672562846 var3825 " upon ")) ; Statement: $r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" upon ") 
(declare-const var3825!1 String)
(assert (= var3825!1 (str.++ var3825 " upon ")))
(assert true)
(define-const var2751 String (getTokenName/-2026426139 var2318 var605)) ; Statement: $r22 = virtualinvoke r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: java.lang.String getTokenName(int)>(i0) 
(assert true)
(define-const var1810 String (append/672562846 var333 var2751)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var333!1 String)
(assert (= var333!1 (str.++ var333 var2751)))
(assert true)
(define-const var3186 String (toString/-2075883882 var1810)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var3538 var3186)) ; Statement: virtualinvoke $r17.<java.io.PrintStream: void println(java.lang.String)>($r25) 

(declare-const var3538!1 var960)
(declare-const var3186!1 String)
(assert true) ; Non Conditional
 ; Statement: if r27 != null goto r28 = virtualinvoke r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFAState addDFAState(org.antlr.v4.runtime.dfa.DFA,org.antlr.v4.runtime.dfa.DFAState)>(r1, r27) 
(assert (not (= var2777 null-var1498))) ; Cond: r27 != null 
(assert true)
(define-const var1531 var1498 (addDFAState/638134899 var2318 var953 var2777)) ; Statement: r28 = virtualinvoke r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFAState addDFAState(org.antlr.v4.runtime.dfa.DFA,org.antlr.v4.runtime.dfa.DFAState)>(r1, r27) 
 ; Statement: if r2 == null goto return r28 
(assert (= var518 null-var1498)) ; Cond: r2 == null 
 ; Statement: return r28 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1498-to-var1999=([org.antlr.v4.runtime.dfa.DFAState], java.lang.Object), getTokenName/-2026426139=([org.antlr.v4.runtime.atn.ParserATNSimulator, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), addDFAState/638134899=([org.antlr.v4.runtime.atn.ParserATNSimulator, org.antlr.v4.runtime.dfa.DFA, org.antlr.v4.runtime.dfa.DFAState], org.antlr.v4.runtime.dfa.DFAState)}
; {var38=org.antlr.v4.runtime.atn.ParserATNSimulator, var2318=r0, var1076=org.antlr.v4.runtime.dfa.DFA, var953=r1, var1498=org.antlr.v4.runtime.dfa.DFAState, var518=r2, var605=i0, var2777=r27, var816=$z0, var960=java.io.PrintStream, var815=java.lang.System, var3538=$r17, var1189=$r30, var832=$r18, var1999=java.lang.Object, var2854=$r19, var2765=$r20, var3825=$r21, var333=$r23, var2751=$r22, var1810=$r24, var3186=$r25, var1531=r28}
; {org.antlr.v4.runtime.atn.ParserATNSimulator=var38, r0=var2318, org.antlr.v4.runtime.dfa.DFA=var1076, r1=var953, org.antlr.v4.runtime.dfa.DFAState=var1498, r2=var518, i0=var605, r27=var2777, $z0=var816, java.io.PrintStream=var960, java.lang.System=var815, $r17=var3538, $r30=var1189, $r18=var832, java.lang.Object=var1999, $r19=var2854, $r20=var2765, $r21=var3825, $r23=var333, $r22=var2751, $r24=var1810, $r25=var3186, r28=var1531}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator;	r1 := @parameter0: org.antlr.v4.runtime.dfa.DFA;	r2 := @parameter1: org.antlr.v4.runtime.dfa.DFAState;	i0 := @parameter2: int;	r27 := @parameter3: org.antlr.v4.runtime.dfa.DFAState;	$z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug>;	if $z0 == 0 goto (branch);	$r17 = <java.lang.System: java.io.PrintStream out>;	$r30 = new java.lang.StringBuilder;	specialinvoke $r30.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("EDGE ");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -> ");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r27);	$r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" upon ");	$r22 = virtualinvoke r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: java.lang.String getTokenName(int)>(i0);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r17.<java.io.PrintStream: void println(java.lang.String)>($r25);	if r27 != null goto r28 = virtualinvoke r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFAState addDFAState(org.antlr.v4.runtime.dfa.DFA,org.antlr.v4.runtime.dfa.DFAState)>(r1, r27);	r28 = virtualinvoke r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFAState addDFAState(org.antlr.v4.runtime.dfa.DFA,org.antlr.v4.runtime.dfa.DFAState)>(r1, r27);	if r2 == null goto return r28;	return r28
;block_num 5