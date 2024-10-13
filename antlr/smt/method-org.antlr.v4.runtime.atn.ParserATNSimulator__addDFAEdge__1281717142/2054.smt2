(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1293 0)
(declare-sort var2984 0)
(declare-sort var635 0)
(declare-sort var1211 0)
(declare-sort var1315 0)
(declare-sort var2085 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2085) String)
(declare-fun cast-from-var635-to-var2085 (var635) var2085)
(declare-fun getTokenName/-2026426139 (var1293 Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var1211 String) void)
(declare-const null-var1293 var1293)
(declare-const null-var2984 var2984)
(declare-const null-var635 var635)
(declare-const null-Int Int)
(declare-const var1293-debug Bool)
(declare-const var1315-out var1211)
(declare-const var3827 var1293) ; Statement: r0 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator 
(assert (not (= var3827 null-var1293)))
(declare-const var1844 var2984) ; Statement: r1 := @parameter0: org.antlr.v4.runtime.dfa.DFA 
(assert (not (= var1844 null-var2984)))
(declare-const var870 var635) ; Statement: r2 := @parameter1: org.antlr.v4.runtime.dfa.DFAState 
(assert (not (= var870 null-var635)))
(declare-const var2298 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var2298 null-Int)))
(declare-const var2342 var635) ; Statement: r27 := @parameter3: org.antlr.v4.runtime.dfa.DFAState 
(assert (not (= var2342 null-var635)))
(define-const var2558 Bool var1293-debug) ; Statement: $z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (not (= (ite var2558 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1233 var1211 var1315-out) ; Statement: $r17 = <java.lang.System: java.io.PrintStream out> 
(define-const var2050 String String-init) ; Statement: $r30 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2050)) ; Statement: specialinvoke $r30.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2050!1 String)
(assert (= var2050!1 ""))
(assert true)
(define-const var46 String (append/672562846 var2050!1 "EDGE ")) ; Statement: $r18 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("EDGE ") 
(declare-const var2050!2 String)
(assert (= var2050!2 (str.++ var2050!1 "EDGE ")))
(assert true)
(define-const var485 String (append/-1031950772 var46 (cast-from-var635-to-var2085 var870))) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var46!1 String)
(assert (str.prefixof var46 var46!1))
(assert true)
(define-const var2274 String (append/672562846 var485 " -> ")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -> ") 
(declare-const var485!1 String)
(assert (= var485!1 (str.++ var485 " -> ")))
(assert true)
(define-const var1875 String (append/-1031950772 var2274 (cast-from-var635-to-var2085 var2342))) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r27) 
(declare-const var2274!1 String)
(assert (str.prefixof var2274 var2274!1))
(assert true)
(define-const var1003 String (append/672562846 var1875 " upon ")) ; Statement: $r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" upon ") 
(declare-const var1875!1 String)
(assert (= var1875!1 (str.++ var1875 " upon ")))
(assert true)
(define-const var3268 String (getTokenName/-2026426139 var3827 var2298)) ; Statement: $r22 = virtualinvoke r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: java.lang.String getTokenName(int)>(i0) 
(assert true)
(define-const var2911 String (append/672562846 var1003 var3268)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var1003!1 String)
(assert (= var1003!1 (str.++ var1003 var3268)))
(assert true)
(define-const var1508 String (toString/-2075883882 var2911)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var1233 var1508)) ; Statement: virtualinvoke $r17.<java.io.PrintStream: void println(java.lang.String)>($r25) 

(declare-const var1233!1 var1211)
(declare-const var1508!1 String)
(assert true) ; Non Conditional
 ; Statement: if r27 != null goto r28 = virtualinvoke r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFAState addDFAState(org.antlr.v4.runtime.dfa.DFA,org.antlr.v4.runtime.dfa.DFAState)>(r1, r27) 
(assert (not (not (= var2342 null-var635)))) ; Negate: Cond: r27 != null  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var635-to-var2085=([org.antlr.v4.runtime.dfa.DFAState], java.lang.Object), getTokenName/-2026426139=([org.antlr.v4.runtime.atn.ParserATNSimulator, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var1293=org.antlr.v4.runtime.atn.ParserATNSimulator, var3827=r0, var2984=org.antlr.v4.runtime.dfa.DFA, var1844=r1, var635=org.antlr.v4.runtime.dfa.DFAState, var870=r2, var2298=i0, var2342=r27, var2558=$z0, var1211=java.io.PrintStream, var1315=java.lang.System, var1233=$r17, var2050=$r30, var46=$r18, var2085=java.lang.Object, var485=$r19, var2274=$r20, var1875=$r21, var1003=$r23, var3268=$r22, var2911=$r24, var1508=$r25}
; {org.antlr.v4.runtime.atn.ParserATNSimulator=var1293, r0=var3827, org.antlr.v4.runtime.dfa.DFA=var2984, r1=var1844, org.antlr.v4.runtime.dfa.DFAState=var635, r2=var870, i0=var2298, r27=var2342, $z0=var2558, java.io.PrintStream=var1211, java.lang.System=var1315, $r17=var1233, $r30=var2050, $r18=var46, java.lang.Object=var2085, $r19=var485, $r20=var2274, $r21=var1875, $r23=var1003, $r22=var3268, $r24=var2911, $r25=var1508}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator;	r1 := @parameter0: org.antlr.v4.runtime.dfa.DFA;	r2 := @parameter1: org.antlr.v4.runtime.dfa.DFAState;	i0 := @parameter2: int;	r27 := @parameter3: org.antlr.v4.runtime.dfa.DFAState;	$z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug>;	if $z0 == 0 goto (branch);	$r17 = <java.lang.System: java.io.PrintStream out>;	$r30 = new java.lang.StringBuilder;	specialinvoke $r30.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("EDGE ");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -> ");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r27);	$r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" upon ");	$r22 = virtualinvoke r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: java.lang.String getTokenName(int)>(i0);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r17.<java.io.PrintStream: void println(java.lang.String)>($r25);	if r27 != null goto r28 = virtualinvoke r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFAState addDFAState(org.antlr.v4.runtime.dfa.DFA,org.antlr.v4.runtime.dfa.DFAState)>(r1, r27);	return null
;block_num 4