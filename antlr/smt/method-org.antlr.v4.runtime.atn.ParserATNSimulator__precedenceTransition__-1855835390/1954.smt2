(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var904 0)
(declare-sort var75 0)
(declare-sort var917 0)
(declare-sort var1665 0)
(declare-sort var598 0)
(declare-sort var3262 0)
(declare-sort var2973 0)
(declare-sort var3348 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var75-init () var75)
(declare-fun target/104774883 (var598) var1665)
(declare-fun cast-from-var917-to-var598 (var917) var598)
(declare-fun <init>/-1611607817 (var75 var75 var1665) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3348) String)
(declare-fun cast-from-var75-to-var3348 (var75) var3348)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var3262 String) void)
(declare-const null-var904 var904)
(declare-const null-var75 var75)
(declare-const null-var917 var917)
(declare-const null-Bool Bool)
(declare-const var904-debug Bool)
(declare-const var2973-out var3262)
(declare-const var3793 var904) ; Statement: r13 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator 
(assert (not (= var3793 null-var904)))
(declare-const var1607 var75) ; Statement: r1 := @parameter0: org.antlr.v4.runtime.atn.ATNConfig 
(assert (not (= var1607 null-var75)))
(declare-const var611 var917) ; Statement: r2 := @parameter1: org.antlr.v4.runtime.atn.PrecedencePredicateTransition 
(assert (not (= var611 null-var917)))
(declare-const var3613 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var3613 null-Bool)))
(declare-const var2607 Bool) ; Statement: z2 := @parameter3: boolean 
(assert (not (= var2607 null-Bool)))
(declare-const var1387 Bool) ; Statement: z3 := @parameter4: boolean 
(assert (not (= var1387 null-Bool)))
(define-const var660 Bool var904-debug) ; Statement: $z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 == 0 goto r37 = null 
(assert (= (ite var660 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3523 var75 null-var75) ; Statement: r37 = null 
 ; Statement: if z1 == 0 goto $r0 = new org.antlr.v4.runtime.atn.ATNConfig 
(assert (= (ite var3613 1 0) 0)) ; Cond: z1 == 0 
(define-const var887 var75 var75-init) ; Statement: $r0 = new org.antlr.v4.runtime.atn.ATNConfig 
(define-const var2725 var1665 (target/104774883 (cast-from-var917-to-var598 var611))) ; Statement: $r3 = r2.<org.antlr.v4.runtime.atn.PrecedencePredicateTransition: org.antlr.v4.runtime.atn.ATNState target> 
(assert true)
;(assert (<init>/-1611607817 var887 var1607 var2725)) ; Statement: specialinvoke $r0.<org.antlr.v4.runtime.atn.ATNConfig: void <init>(org.antlr.v4.runtime.atn.ATNConfig,org.antlr.v4.runtime.atn.ATNState)>(r1, $r3) 

(declare-const var887!1 var75)
(declare-const var1607!1 var75)
(declare-const var2725!1 var1665)
(define-const var3523!1 var75 var887!1) ; Statement: r37 = $r0 
(assert true) ; Non Conditional
(define-const var1749 Bool var904-debug) ; Statement: $z5 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z5 == 0 goto return r37 
(assert (not (= (ite var1749 1 0) 0))) ; Negate: Cond: $z5 == 0  
(define-const var2018 var3262 var2973-out) ; Statement: $r5 = <java.lang.System: java.io.PrintStream out> 
(define-const var2347 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2347)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2347!1 String)
(assert (= var2347!1 ""))
(assert true)
(define-const var3915 String (append/672562846 var2347!1 "config from pred transition=")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("config from pred transition=") 
(declare-const var2347!2 String)
(assert (= var2347!2 (str.++ var2347!1 "config from pred transition=")))
(assert true)
(define-const var3049 String (append/-1031950772 var3915 (cast-from-var75-to-var3348 var3523!1))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r37) 
(declare-const var3915!1 String)
(assert (str.prefixof var3915 var3915!1))
(assert true)
(define-const var3127 String (toString/-2075883882 var3049)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var2018 var3127)) ; Statement: virtualinvoke $r5.<java.io.PrintStream: void println(java.lang.String)>($r8) 

(declare-const var2018!1 var3262)
(declare-const var3127!1 String)
(assert true) ; Non Conditional
 ; Statement: return r37 
(check-sat)
(get-model)
(get-unsat-core)
; {var75-init=([], org.antlr.v4.runtime.atn.ATNConfig), target/104774883=([org.antlr.v4.runtime.atn.Transition], org.antlr.v4.runtime.atn.ATNState), cast-from-var917-to-var598=([org.antlr.v4.runtime.atn.PrecedencePredicateTransition], org.antlr.v4.runtime.atn.Transition), <init>/-1611607817=([org.antlr.v4.runtime.atn.ATNConfig, org.antlr.v4.runtime.atn.ATNConfig, org.antlr.v4.runtime.atn.ATNState], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var75-to-var3348=([org.antlr.v4.runtime.atn.ATNConfig], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var904=org.antlr.v4.runtime.atn.ParserATNSimulator, var3793=r13, var75=org.antlr.v4.runtime.atn.ATNConfig, var1607=r1, var917=org.antlr.v4.runtime.atn.PrecedencePredicateTransition, var611=r2, var3613=z1, var2607=z2, var1387=z3, var660=$z0, var3523=r37, var887=$r0, var1665=org.antlr.v4.runtime.atn.ATNState, var598=org.antlr.v4.runtime.atn.Transition, var2725=$r3, var1749=$z5, var3262=java.io.PrintStream, var2973=java.lang.System, var2018=$r5, var2347=$r4, var3915=$r6, var3348=java.lang.Object, var3049=$r7, var3127=$r8}
; {org.antlr.v4.runtime.atn.ParserATNSimulator=var904, r13=var3793, org.antlr.v4.runtime.atn.ATNConfig=var75, r1=var1607, org.antlr.v4.runtime.atn.PrecedencePredicateTransition=var917, r2=var611, z1=var3613, z2=var2607, z3=var1387, $z0=var660, r37=var3523, $r0=var887, org.antlr.v4.runtime.atn.ATNState=var1665, org.antlr.v4.runtime.atn.Transition=var598, $r3=var2725, $z5=var1749, java.io.PrintStream=var3262, java.lang.System=var2973, $r5=var2018, $r4=var2347, $r6=var3915, java.lang.Object=var3348, $r7=var3049, $r8=var3127}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r13 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator;	r1 := @parameter0: org.antlr.v4.runtime.atn.ATNConfig;	r2 := @parameter1: org.antlr.v4.runtime.atn.PrecedencePredicateTransition;	z1 := @parameter2: boolean;	z2 := @parameter3: boolean;	z3 := @parameter4: boolean;	$z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug>;	if $z0 == 0 goto r37 = null;	r37 = null;	if z1 == 0 goto $r0 = new org.antlr.v4.runtime.atn.ATNConfig;	$r0 = new org.antlr.v4.runtime.atn.ATNConfig;	$r3 = r2.<org.antlr.v4.runtime.atn.PrecedencePredicateTransition: org.antlr.v4.runtime.atn.ATNState target>;	specialinvoke $r0.<org.antlr.v4.runtime.atn.ATNConfig: void <init>(org.antlr.v4.runtime.atn.ATNConfig,org.antlr.v4.runtime.atn.ATNState)>(r1, $r3);	r37 = $r0;	$z5 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug>;	if $z5 == 0 goto return r37;	$r5 = <java.lang.System: java.io.PrintStream out>;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("config from pred transition=");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r37);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r5.<java.io.PrintStream: void println(java.lang.String)>($r8);	return r37
;block_num 6