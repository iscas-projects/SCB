(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1605 0)
(declare-sort var3897 0)
(declare-sort var3064 0)
(declare-sort var1712 0)
(declare-sort var2272 0)
(declare-sort var3412 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3412) String)
(declare-fun cast-from-var3064-to-var3412 (var3064) var3412)
(declare-fun getTokenName/-2026426139 (var1605 Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var1712 String) void)
(declare-fun addDFAState/638134899 (var1605 var3897 var3064) var3064)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var1605 var1605)
(declare-const null-var3897 var3897)
(declare-const null-var3064 var3064)
(declare-const null-Int Int)
(declare-const var1605-debug Bool)
(declare-const var2272-out var1712)
(declare-const var1838 var1605) ; Statement: r0 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator 
(assert (not (= var1838 null-var1605)))
(declare-const var2793 var3897) ; Statement: r1 := @parameter0: org.antlr.v4.runtime.dfa.DFA 
(assert (not (= var2793 null-var3897)))
(declare-const var255 var3064) ; Statement: r2 := @parameter1: org.antlr.v4.runtime.dfa.DFAState 
(assert (not (= var255 null-var3064)))
(declare-const var2697 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var2697 null-Int)))
(declare-const var1707 var3064) ; Statement: r27 := @parameter3: org.antlr.v4.runtime.dfa.DFAState 
(assert (not (= var1707 null-var3064)))
(define-const var898 Bool var1605-debug) ; Statement: $z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (not (= (ite var898 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3274 var1712 var2272-out) ; Statement: $r17 = <java.lang.System: java.io.PrintStream out> 
(define-const var697 String String-init) ; Statement: $r30 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var697)) ; Statement: specialinvoke $r30.<java.lang.StringBuilder: void <init>()>() 
(declare-const var697!1 String)
(assert (= var697!1 ""))
(assert true)
(define-const var3749 String (append/672562846 var697!1 "EDGE ")) ; Statement: $r18 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("EDGE ") 
(declare-const var697!2 String)
(assert (= var697!2 (str.++ var697!1 "EDGE ")))
(assert true)
(define-const var1948 String (append/-1031950772 var3749 (cast-from-var3064-to-var3412 var255))) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var3749!1 String)
(assert (str.prefixof var3749 var3749!1))
(assert true)
(define-const var575 String (append/672562846 var1948 " -> ")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -> ") 
(declare-const var1948!1 String)
(assert (= var1948!1 (str.++ var1948 " -> ")))
(assert true)
(define-const var1840 String (append/-1031950772 var575 (cast-from-var3064-to-var3412 var1707))) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r27) 
(declare-const var575!1 String)
(assert (str.prefixof var575 var575!1))
(assert true)
(define-const var3298 String (append/672562846 var1840 " upon ")) ; Statement: $r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" upon ") 
(declare-const var1840!1 String)
(assert (= var1840!1 (str.++ var1840 " upon ")))
(assert true)
(define-const var1772 String (getTokenName/-2026426139 var1838 var2697)) ; Statement: $r22 = virtualinvoke r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: java.lang.String getTokenName(int)>(i0) 
(assert true)
(define-const var3675 String (append/672562846 var3298 var1772)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var3298!1 String)
(assert (= var3298!1 (str.++ var3298 var1772)))
(assert true)
(define-const var2085 String (toString/-2075883882 var3675)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var3274 var2085)) ; Statement: virtualinvoke $r17.<java.io.PrintStream: void println(java.lang.String)>($r25) 

(declare-const var3274!1 var1712)
(declare-const var2085!1 String)
(assert true) ; Non Conditional
 ; Statement: if r27 != null goto r28 = virtualinvoke r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFAState addDFAState(org.antlr.v4.runtime.dfa.DFA,org.antlr.v4.runtime.dfa.DFAState)>(r1, r27) 
(assert (not (= var1707 null-var3064))) ; Cond: r27 != null 
(assert true)
(define-const var3280 var3064 (addDFAState/638134899 var1838 var2793 var1707)) ; Statement: r28 = virtualinvoke r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFAState addDFAState(org.antlr.v4.runtime.dfa.DFA,org.antlr.v4.runtime.dfa.DFAState)>(r1, r27) 
 ; Statement: if r2 == null goto return r28 
(assert (not (= var255 null-var3064))) ; Negate: Cond: r2 == null  
(define-const var289 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if i0 < $i7 goto return r28 
(assert (< var2697 var289)) ; Cond: i0 < $i7 
 ; Statement: return r28 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3064-to-var3412=([org.antlr.v4.runtime.dfa.DFAState], java.lang.Object), getTokenName/-2026426139=([org.antlr.v4.runtime.atn.ParserATNSimulator, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), addDFAState/638134899=([org.antlr.v4.runtime.atn.ParserATNSimulator, org.antlr.v4.runtime.dfa.DFA, org.antlr.v4.runtime.dfa.DFAState], org.antlr.v4.runtime.dfa.DFAState), cast-from-Int-to-Int=([int], int)}
; {var1605=org.antlr.v4.runtime.atn.ParserATNSimulator, var1838=r0, var3897=org.antlr.v4.runtime.dfa.DFA, var2793=r1, var3064=org.antlr.v4.runtime.dfa.DFAState, var255=r2, var2697=i0, var1707=r27, var898=$z0, var1712=java.io.PrintStream, var2272=java.lang.System, var3274=$r17, var697=$r30, var3749=$r18, var3412=java.lang.Object, var1948=$r19, var575=$r20, var1840=$r21, var3298=$r23, var1772=$r22, var3675=$r24, var2085=$r25, var3280=r28, var289=$i7}
; {org.antlr.v4.runtime.atn.ParserATNSimulator=var1605, r0=var1838, org.antlr.v4.runtime.dfa.DFA=var3897, r1=var2793, org.antlr.v4.runtime.dfa.DFAState=var3064, r2=var255, i0=var2697, r27=var1707, $z0=var898, java.io.PrintStream=var1712, java.lang.System=var2272, $r17=var3274, $r30=var697, $r18=var3749, java.lang.Object=var3412, $r19=var1948, $r20=var575, $r21=var1840, $r23=var3298, $r22=var1772, $r24=var3675, $r25=var2085, r28=var3280, $i7=var289}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator;	r1 := @parameter0: org.antlr.v4.runtime.dfa.DFA;	r2 := @parameter1: org.antlr.v4.runtime.dfa.DFAState;	i0 := @parameter2: int;	r27 := @parameter3: org.antlr.v4.runtime.dfa.DFAState;	$z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug>;	if $z0 == 0 goto (branch);	$r17 = <java.lang.System: java.io.PrintStream out>;	$r30 = new java.lang.StringBuilder;	specialinvoke $r30.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("EDGE ");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -> ");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r27);	$r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" upon ");	$r22 = virtualinvoke r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: java.lang.String getTokenName(int)>(i0);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r17.<java.io.PrintStream: void println(java.lang.String)>($r25);	if r27 != null goto r28 = virtualinvoke r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFAState addDFAState(org.antlr.v4.runtime.dfa.DFA,org.antlr.v4.runtime.dfa.DFAState)>(r1, r27);	r28 = virtualinvoke r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFAState addDFAState(org.antlr.v4.runtime.dfa.DFA,org.antlr.v4.runtime.dfa.DFAState)>(r1, r27);	if r2 == null goto return r28;	$i7 = (int) -1;	if i0 < $i7 goto return r28;	return r28
;block_num 6