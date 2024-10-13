(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1301 0)
(declare-sort var2113 0)
(declare-sort var453 0)
(declare-sort var359 0)
(declare-sort var1453 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2113-init () var2113)
(declare-fun target/1869339560 (var1453) var359)
(declare-fun cast-from-var453-to-var1453 (var453) var1453)
(declare-fun <init>/-1127165186 (var2113 var2113 var359) void)
(declare-const null-var1301 var1301)
(declare-const null-var2113 var2113)
(declare-const null-var453 var453)
(declare-const null-Bool Bool)
(declare-const var1301-debug Bool)
(declare-const var1338 var1301) ; Statement: r13 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator 
(assert (not (= var1338 null-var1301)))
(declare-const var1413 var2113) ; Statement: r1 := @parameter0: com.github.jknack.handlebars.internal.antlr.atn.ATNConfig 
(assert (not (= var1413 null-var2113)))
(declare-const var341 var453) ; Statement: r2 := @parameter1: com.github.jknack.handlebars.internal.antlr.atn.PrecedencePredicateTransition 
(assert (not (= var341 null-var453)))
(declare-const var1639 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var1639 null-Bool)))
(declare-const var2782 Bool) ; Statement: z2 := @parameter3: boolean 
(assert (not (= var2782 null-Bool)))
(declare-const var1117 Bool) ; Statement: z3 := @parameter4: boolean 
(assert (not (= var1117 null-Bool)))
(define-const var1052 Bool var1301-debug) ; Statement: $z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 == 0 goto r37 = null 
(assert (= (ite var1052 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2057 var2113 null-var2113) ; Statement: r37 = null 
 ; Statement: if z1 == 0 goto $r0 = new com.github.jknack.handlebars.internal.antlr.atn.ATNConfig 
(assert (not (= (ite var1639 1 0) 0))) ; Negate: Cond: z1 == 0  
 ; Statement: if z2 == 0 goto $r0 = new com.github.jknack.handlebars.internal.antlr.atn.ATNConfig 
(assert (= (ite var2782 1 0) 0)) ; Cond: z2 == 0 
(define-const var2596 var2113 var2113-init) ; Statement: $r0 = new com.github.jknack.handlebars.internal.antlr.atn.ATNConfig 
(define-const var1090 var359 (target/1869339560 (cast-from-var453-to-var1453 var341))) ; Statement: $r3 = r2.<com.github.jknack.handlebars.internal.antlr.atn.PrecedencePredicateTransition: com.github.jknack.handlebars.internal.antlr.atn.ATNState target> 
(assert true)
;(assert (<init>/-1127165186 var2596 var1413 var1090)) ; Statement: specialinvoke $r0.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfig: void <init>(com.github.jknack.handlebars.internal.antlr.atn.ATNConfig,com.github.jknack.handlebars.internal.antlr.atn.ATNState)>(r1, $r3) 

(declare-const var2596!1 var2113)
(declare-const var1413!1 var2113)
(declare-const var1090!1 var359)
(define-const var2057!1 var2113 var2596!1) ; Statement: r37 = $r0 
(assert true) ; Non Conditional
(define-const var354 Bool var1301-debug) ; Statement: $z5 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z5 == 0 goto return r37 
(assert (= (ite var354 1 0) 0)) ; Cond: $z5 == 0 
 ; Statement: return r37 
(check-sat)
(get-model)
(get-unsat-core)
; {var2113-init=([], com.github.jknack.handlebars.internal.antlr.atn.ATNConfig), target/1869339560=([com.github.jknack.handlebars.internal.antlr.atn.Transition], com.github.jknack.handlebars.internal.antlr.atn.ATNState), cast-from-var453-to-var1453=([com.github.jknack.handlebars.internal.antlr.atn.PrecedencePredicateTransition], com.github.jknack.handlebars.internal.antlr.atn.Transition), <init>/-1127165186=([com.github.jknack.handlebars.internal.antlr.atn.ATNConfig, com.github.jknack.handlebars.internal.antlr.atn.ATNConfig, com.github.jknack.handlebars.internal.antlr.atn.ATNState], void)}
; {var1301=com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, var1338=r13, var2113=com.github.jknack.handlebars.internal.antlr.atn.ATNConfig, var1413=r1, var453=com.github.jknack.handlebars.internal.antlr.atn.PrecedencePredicateTransition, var341=r2, var1639=z1, var2782=z2, var1117=z3, var1052=$z0, var2057=r37, var2596=$r0, var359=com.github.jknack.handlebars.internal.antlr.atn.ATNState, var1453=com.github.jknack.handlebars.internal.antlr.atn.Transition, var1090=$r3, var354=$z5}
; {com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator=var1301, r13=var1338, com.github.jknack.handlebars.internal.antlr.atn.ATNConfig=var2113, r1=var1413, com.github.jknack.handlebars.internal.antlr.atn.PrecedencePredicateTransition=var453, r2=var341, z1=var1639, z2=var2782, z3=var1117, $z0=var1052, r37=var2057, $r0=var2596, com.github.jknack.handlebars.internal.antlr.atn.ATNState=var359, com.github.jknack.handlebars.internal.antlr.atn.Transition=var1453, $r3=var1090, $z5=var354}
;seq 
;cnt {}
;stmts r13 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator;	r1 := @parameter0: com.github.jknack.handlebars.internal.antlr.atn.ATNConfig;	r2 := @parameter1: com.github.jknack.handlebars.internal.antlr.atn.PrecedencePredicateTransition;	z1 := @parameter2: boolean;	z2 := @parameter3: boolean;	z3 := @parameter4: boolean;	$z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug>;	if $z0 == 0 goto r37 = null;	r37 = null;	if z1 == 0 goto $r0 = new com.github.jknack.handlebars.internal.antlr.atn.ATNConfig;	if z2 == 0 goto $r0 = new com.github.jknack.handlebars.internal.antlr.atn.ATNConfig;	$r0 = new com.github.jknack.handlebars.internal.antlr.atn.ATNConfig;	$r3 = r2.<com.github.jknack.handlebars.internal.antlr.atn.PrecedencePredicateTransition: com.github.jknack.handlebars.internal.antlr.atn.ATNState target>;	specialinvoke $r0.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfig: void <init>(com.github.jknack.handlebars.internal.antlr.atn.ATNConfig,com.github.jknack.handlebars.internal.antlr.atn.ATNState)>(r1, $r3);	r37 = $r0;	$z5 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug>;	if $z5 == 0 goto return r37;	return r37
;block_num 6