(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3757 0)
(declare-sort var751 0)
(declare-sort var1160 0)
(declare-sort var1990 0)
(declare-sort var3288 0)
(declare-sort var243 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var243) String)
(declare-fun cast-from-var1160-to-var243 (var1160) var243)
(declare-fun getTokenName/1989343816 (var3757 Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var1990 String) void)
(declare-fun addDFAState/95005385 (var3757 var751 var1160) var1160)
(declare-const null-var3757 var3757)
(declare-const null-var751 var751)
(declare-const null-var1160 var1160)
(declare-const null-Int Int)
(declare-const var3757-debug Bool)
(declare-const var3288-out var1990)
(declare-const var2098 var3757) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator 
(assert (not (= var2098 null-var3757)))
(declare-const var3712 var751) ; Statement: r1 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA 
(assert (not (= var3712 null-var751)))
(declare-const var689 var1160) ; Statement: r2 := @parameter1: com.github.jknack.handlebars.internal.antlr.dfa.DFAState 
(assert (not (= var689 null-var1160)))
(declare-const var1615 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var1615 null-Int)))
(declare-const var3605 var1160) ; Statement: r27 := @parameter3: com.github.jknack.handlebars.internal.antlr.dfa.DFAState 
(assert (not (= var3605 null-var1160)))
(define-const var2285 Bool var3757-debug) ; Statement: $z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (not (= (ite var2285 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2227 var1990 var3288-out) ; Statement: $r17 = <java.lang.System: java.io.PrintStream out> 
(define-const var376 String String-init) ; Statement: $r30 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var376)) ; Statement: specialinvoke $r30.<java.lang.StringBuilder: void <init>()>() 
(declare-const var376!1 String)
(assert (= var376!1 ""))
(assert true)
(define-const var3815 String (append/672562846 var376!1 "EDGE ")) ; Statement: $r18 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("EDGE ") 
(declare-const var376!2 String)
(assert (= var376!2 (str.++ var376!1 "EDGE ")))
(assert true)
(define-const var423 String (append/-1031950772 var3815 (cast-from-var1160-to-var243 var689))) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var3815!1 String)
(assert (str.prefixof var3815 var3815!1))
(assert true)
(define-const var2643 String (append/672562846 var423 " -> ")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -> ") 
(declare-const var423!1 String)
(assert (= var423!1 (str.++ var423 " -> ")))
(assert true)
(define-const var2892 String (append/-1031950772 var2643 (cast-from-var1160-to-var243 var3605))) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r27) 
(declare-const var2643!1 String)
(assert (str.prefixof var2643 var2643!1))
(assert true)
(define-const var1078 String (append/672562846 var2892 " upon ")) ; Statement: $r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" upon ") 
(declare-const var2892!1 String)
(assert (= var2892!1 (str.++ var2892 " upon ")))
(assert true)
(define-const var3498 String (getTokenName/1989343816 var2098 var1615)) ; Statement: $r22 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: java.lang.String getTokenName(int)>(i0) 
(assert true)
(define-const var1249 String (append/672562846 var1078 var3498)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var1078!1 String)
(assert (= var1078!1 (str.++ var1078 var3498)))
(assert true)
(define-const var1586 String (toString/-2075883882 var1249)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var2227 var1586)) ; Statement: virtualinvoke $r17.<java.io.PrintStream: void println(java.lang.String)>($r25) 

(declare-const var2227!1 var1990)
(declare-const var1586!1 String)
(assert true) ; Non Conditional
 ; Statement: if r27 != null goto r28 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFAState addDFAState(com.github.jknack.handlebars.internal.antlr.dfa.DFA,com.github.jknack.handlebars.internal.antlr.dfa.DFAState)>(r1, r27) 
(assert (not (= var3605 null-var1160))) ; Cond: r27 != null 
(assert true)
(define-const var2077 var1160 (addDFAState/95005385 var2098 var3712 var3605)) ; Statement: r28 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFAState addDFAState(com.github.jknack.handlebars.internal.antlr.dfa.DFA,com.github.jknack.handlebars.internal.antlr.dfa.DFAState)>(r1, r27) 
 ; Statement: if r2 == null goto return r28 
(assert (= var689 null-var1160)) ; Cond: r2 == null 
 ; Statement: return r28 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1160-to-var243=([com.github.jknack.handlebars.internal.antlr.dfa.DFAState], java.lang.Object), getTokenName/1989343816=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), addDFAState/95005385=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, com.github.jknack.handlebars.internal.antlr.dfa.DFA, com.github.jknack.handlebars.internal.antlr.dfa.DFAState], com.github.jknack.handlebars.internal.antlr.dfa.DFAState)}
; {var3757=com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, var2098=r0, var751=com.github.jknack.handlebars.internal.antlr.dfa.DFA, var3712=r1, var1160=com.github.jknack.handlebars.internal.antlr.dfa.DFAState, var689=r2, var1615=i0, var3605=r27, var2285=$z0, var1990=java.io.PrintStream, var3288=java.lang.System, var2227=$r17, var376=$r30, var3815=$r18, var243=java.lang.Object, var423=$r19, var2643=$r20, var2892=$r21, var1078=$r23, var3498=$r22, var1249=$r24, var1586=$r25, var2077=r28}
; {com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator=var3757, r0=var2098, com.github.jknack.handlebars.internal.antlr.dfa.DFA=var751, r1=var3712, com.github.jknack.handlebars.internal.antlr.dfa.DFAState=var1160, r2=var689, i0=var1615, r27=var3605, $z0=var2285, java.io.PrintStream=var1990, java.lang.System=var3288, $r17=var2227, $r30=var376, $r18=var3815, java.lang.Object=var243, $r19=var423, $r20=var2643, $r21=var2892, $r23=var1078, $r22=var3498, $r24=var1249, $r25=var1586, r28=var2077}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator;	r1 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA;	r2 := @parameter1: com.github.jknack.handlebars.internal.antlr.dfa.DFAState;	i0 := @parameter2: int;	r27 := @parameter3: com.github.jknack.handlebars.internal.antlr.dfa.DFAState;	$z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug>;	if $z0 == 0 goto (branch);	$r17 = <java.lang.System: java.io.PrintStream out>;	$r30 = new java.lang.StringBuilder;	specialinvoke $r30.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("EDGE ");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -> ");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r27);	$r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" upon ");	$r22 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: java.lang.String getTokenName(int)>(i0);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r17.<java.io.PrintStream: void println(java.lang.String)>($r25);	if r27 != null goto r28 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFAState addDFAState(com.github.jknack.handlebars.internal.antlr.dfa.DFA,com.github.jknack.handlebars.internal.antlr.dfa.DFAState)>(r1, r27);	r28 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFAState addDFAState(com.github.jknack.handlebars.internal.antlr.dfa.DFA,com.github.jknack.handlebars.internal.antlr.dfa.DFAState)>(r1, r27);	if r2 == null goto return r28;	return r28
;block_num 5