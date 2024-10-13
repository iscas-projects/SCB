(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1456 0)
(declare-sort var3596 0)
(declare-sort var2052 0)
(declare-sort var3509 0)
(declare-sort var2620 0)
(declare-sort var2122 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2122) String)
(declare-fun cast-from-var2052-to-var2122 (var2052) var2122)
(declare-fun getTokenName/1989343816 (var1456 Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var3509 String) void)
(declare-const null-var1456 var1456)
(declare-const null-var3596 var3596)
(declare-const null-var2052 var2052)
(declare-const null-Int Int)
(declare-const var1456-debug Bool)
(declare-const var2620-out var3509)
(declare-const var247 var1456) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator 
(assert (not (= var247 null-var1456)))
(declare-const var3264 var3596) ; Statement: r1 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA 
(assert (not (= var3264 null-var3596)))
(declare-const var1950 var2052) ; Statement: r2 := @parameter1: com.github.jknack.handlebars.internal.antlr.dfa.DFAState 
(assert (not (= var1950 null-var2052)))
(declare-const var1327 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var1327 null-Int)))
(declare-const var477 var2052) ; Statement: r27 := @parameter3: com.github.jknack.handlebars.internal.antlr.dfa.DFAState 
(assert (not (= var477 null-var2052)))
(define-const var3006 Bool var1456-debug) ; Statement: $z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (not (= (ite var3006 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3193 var3509 var2620-out) ; Statement: $r17 = <java.lang.System: java.io.PrintStream out> 
(define-const var3224 String String-init) ; Statement: $r30 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3224)) ; Statement: specialinvoke $r30.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3224!1 String)
(assert (= var3224!1 ""))
(assert true)
(define-const var640 String (append/672562846 var3224!1 "EDGE ")) ; Statement: $r18 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("EDGE ") 
(declare-const var3224!2 String)
(assert (= var3224!2 (str.++ var3224!1 "EDGE ")))
(assert true)
(define-const var2688 String (append/-1031950772 var640 (cast-from-var2052-to-var2122 var1950))) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var640!1 String)
(assert (str.prefixof var640 var640!1))
(assert true)
(define-const var1772 String (append/672562846 var2688 " -> ")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -> ") 
(declare-const var2688!1 String)
(assert (= var2688!1 (str.++ var2688 " -> ")))
(assert true)
(define-const var63 String (append/-1031950772 var1772 (cast-from-var2052-to-var2122 var477))) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r27) 
(declare-const var1772!1 String)
(assert (str.prefixof var1772 var1772!1))
(assert true)
(define-const var1704 String (append/672562846 var63 " upon ")) ; Statement: $r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" upon ") 
(declare-const var63!1 String)
(assert (= var63!1 (str.++ var63 " upon ")))
(assert true)
(define-const var782 String (getTokenName/1989343816 var247 var1327)) ; Statement: $r22 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: java.lang.String getTokenName(int)>(i0) 
(assert true)
(define-const var1362 String (append/672562846 var1704 var782)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var1704!1 String)
(assert (= var1704!1 (str.++ var1704 var782)))
(assert true)
(define-const var944 String (toString/-2075883882 var1362)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var3193 var944)) ; Statement: virtualinvoke $r17.<java.io.PrintStream: void println(java.lang.String)>($r25) 

(declare-const var3193!1 var3509)
(declare-const var944!1 String)
(assert true) ; Non Conditional
 ; Statement: if r27 != null goto r28 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFAState addDFAState(com.github.jknack.handlebars.internal.antlr.dfa.DFA,com.github.jknack.handlebars.internal.antlr.dfa.DFAState)>(r1, r27) 
(assert (not (not (= var477 null-var2052)))) ; Negate: Cond: r27 != null  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2052-to-var2122=([com.github.jknack.handlebars.internal.antlr.dfa.DFAState], java.lang.Object), getTokenName/1989343816=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var1456=com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, var247=r0, var3596=com.github.jknack.handlebars.internal.antlr.dfa.DFA, var3264=r1, var2052=com.github.jknack.handlebars.internal.antlr.dfa.DFAState, var1950=r2, var1327=i0, var477=r27, var3006=$z0, var3509=java.io.PrintStream, var2620=java.lang.System, var3193=$r17, var3224=$r30, var640=$r18, var2122=java.lang.Object, var2688=$r19, var1772=$r20, var63=$r21, var1704=$r23, var782=$r22, var1362=$r24, var944=$r25}
; {com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator=var1456, r0=var247, com.github.jknack.handlebars.internal.antlr.dfa.DFA=var3596, r1=var3264, com.github.jknack.handlebars.internal.antlr.dfa.DFAState=var2052, r2=var1950, i0=var1327, r27=var477, $z0=var3006, java.io.PrintStream=var3509, java.lang.System=var2620, $r17=var3193, $r30=var3224, $r18=var640, java.lang.Object=var2122, $r19=var2688, $r20=var1772, $r21=var63, $r23=var1704, $r22=var782, $r24=var1362, $r25=var944}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator;	r1 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA;	r2 := @parameter1: com.github.jknack.handlebars.internal.antlr.dfa.DFAState;	i0 := @parameter2: int;	r27 := @parameter3: com.github.jknack.handlebars.internal.antlr.dfa.DFAState;	$z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug>;	if $z0 == 0 goto (branch);	$r17 = <java.lang.System: java.io.PrintStream out>;	$r30 = new java.lang.StringBuilder;	specialinvoke $r30.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("EDGE ");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -> ");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r27);	$r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" upon ");	$r22 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: java.lang.String getTokenName(int)>(i0);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r17.<java.io.PrintStream: void println(java.lang.String)>($r25);	if r27 != null goto r28 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFAState addDFAState(com.github.jknack.handlebars.internal.antlr.dfa.DFA,com.github.jknack.handlebars.internal.antlr.dfa.DFAState)>(r1, r27);	return null
;block_num 4