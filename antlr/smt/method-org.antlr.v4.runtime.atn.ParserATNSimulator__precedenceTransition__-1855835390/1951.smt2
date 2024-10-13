(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2028 0)
(declare-sort var1184 0)
(declare-sort var2666 0)
(declare-sort var1252 0)
(declare-sort var2708 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1184-init () var1184)
(declare-fun target/104774883 (var2708) var1252)
(declare-fun cast-from-var2666-to-var2708 (var2666) var2708)
(declare-fun <init>/-1611607817 (var1184 var1184 var1252) void)
(declare-const null-var2028 var2028)
(declare-const null-var1184 var1184)
(declare-const null-var2666 var2666)
(declare-const null-Bool Bool)
(declare-const var2028-debug Bool)
(declare-const var547 var2028) ; Statement: r13 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator 
(assert (not (= var547 null-var2028)))
(declare-const var154 var1184) ; Statement: r1 := @parameter0: org.antlr.v4.runtime.atn.ATNConfig 
(assert (not (= var154 null-var1184)))
(declare-const var2675 var2666) ; Statement: r2 := @parameter1: org.antlr.v4.runtime.atn.PrecedencePredicateTransition 
(assert (not (= var2675 null-var2666)))
(declare-const var751 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var751 null-Bool)))
(declare-const var1471 Bool) ; Statement: z2 := @parameter3: boolean 
(assert (not (= var1471 null-Bool)))
(declare-const var1045 Bool) ; Statement: z3 := @parameter4: boolean 
(assert (not (= var1045 null-Bool)))
(define-const var2071 Bool var2028-debug) ; Statement: $z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 == 0 goto r37 = null 
(assert (= (ite var2071 1 0) 0)) ; Cond: $z0 == 0 
(define-const var38 var1184 null-var1184) ; Statement: r37 = null 
 ; Statement: if z1 == 0 goto $r0 = new org.antlr.v4.runtime.atn.ATNConfig 
(assert (not (= (ite var751 1 0) 0))) ; Negate: Cond: z1 == 0  
 ; Statement: if z2 == 0 goto $r0 = new org.antlr.v4.runtime.atn.ATNConfig 
(assert (= (ite var1471 1 0) 0)) ; Cond: z2 == 0 
(define-const var421 var1184 var1184-init) ; Statement: $r0 = new org.antlr.v4.runtime.atn.ATNConfig 
(define-const var2311 var1252 (target/104774883 (cast-from-var2666-to-var2708 var2675))) ; Statement: $r3 = r2.<org.antlr.v4.runtime.atn.PrecedencePredicateTransition: org.antlr.v4.runtime.atn.ATNState target> 
(assert true)
;(assert (<init>/-1611607817 var421 var154 var2311)) ; Statement: specialinvoke $r0.<org.antlr.v4.runtime.atn.ATNConfig: void <init>(org.antlr.v4.runtime.atn.ATNConfig,org.antlr.v4.runtime.atn.ATNState)>(r1, $r3) 

(declare-const var421!1 var1184)
(declare-const var154!1 var1184)
(declare-const var2311!1 var1252)
(define-const var38!1 var1184 var421!1) ; Statement: r37 = $r0 
(assert true) ; Non Conditional
(define-const var2782 Bool var2028-debug) ; Statement: $z5 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z5 == 0 goto return r37 
(assert (= (ite var2782 1 0) 0)) ; Cond: $z5 == 0 
 ; Statement: return r37 
(check-sat)
(get-model)
(get-unsat-core)
; {var1184-init=([], org.antlr.v4.runtime.atn.ATNConfig), target/104774883=([org.antlr.v4.runtime.atn.Transition], org.antlr.v4.runtime.atn.ATNState), cast-from-var2666-to-var2708=([org.antlr.v4.runtime.atn.PrecedencePredicateTransition], org.antlr.v4.runtime.atn.Transition), <init>/-1611607817=([org.antlr.v4.runtime.atn.ATNConfig, org.antlr.v4.runtime.atn.ATNConfig, org.antlr.v4.runtime.atn.ATNState], void)}
; {var2028=org.antlr.v4.runtime.atn.ParserATNSimulator, var547=r13, var1184=org.antlr.v4.runtime.atn.ATNConfig, var154=r1, var2666=org.antlr.v4.runtime.atn.PrecedencePredicateTransition, var2675=r2, var751=z1, var1471=z2, var1045=z3, var2071=$z0, var38=r37, var421=$r0, var1252=org.antlr.v4.runtime.atn.ATNState, var2708=org.antlr.v4.runtime.atn.Transition, var2311=$r3, var2782=$z5}
; {org.antlr.v4.runtime.atn.ParserATNSimulator=var2028, r13=var547, org.antlr.v4.runtime.atn.ATNConfig=var1184, r1=var154, org.antlr.v4.runtime.atn.PrecedencePredicateTransition=var2666, r2=var2675, z1=var751, z2=var1471, z3=var1045, $z0=var2071, r37=var38, $r0=var421, org.antlr.v4.runtime.atn.ATNState=var1252, org.antlr.v4.runtime.atn.Transition=var2708, $r3=var2311, $z5=var2782}
;seq 
;cnt {}
;stmts r13 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator;	r1 := @parameter0: org.antlr.v4.runtime.atn.ATNConfig;	r2 := @parameter1: org.antlr.v4.runtime.atn.PrecedencePredicateTransition;	z1 := @parameter2: boolean;	z2 := @parameter3: boolean;	z3 := @parameter4: boolean;	$z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug>;	if $z0 == 0 goto r37 = null;	r37 = null;	if z1 == 0 goto $r0 = new org.antlr.v4.runtime.atn.ATNConfig;	if z2 == 0 goto $r0 = new org.antlr.v4.runtime.atn.ATNConfig;	$r0 = new org.antlr.v4.runtime.atn.ATNConfig;	$r3 = r2.<org.antlr.v4.runtime.atn.PrecedencePredicateTransition: org.antlr.v4.runtime.atn.ATNState target>;	specialinvoke $r0.<org.antlr.v4.runtime.atn.ATNConfig: void <init>(org.antlr.v4.runtime.atn.ATNConfig,org.antlr.v4.runtime.atn.ATNState)>(r1, $r3);	r37 = $r0;	$z5 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug>;	if $z5 == 0 goto return r37;	return r37
;block_num 6