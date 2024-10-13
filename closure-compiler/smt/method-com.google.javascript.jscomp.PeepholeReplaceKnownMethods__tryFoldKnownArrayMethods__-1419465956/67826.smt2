(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2748 0)
(declare-sort var3393 0)
(declare-sort var2139 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isCall/1872284454 (var3393) Bool)
(declare-fun var2139_checkArgument/1735511034 (Bool) void)
(declare-fun getString/-897720134 (var3393) String)
(declare-const null-var2748 var2748)
(declare-const null-var3393 var3393)
(declare-const var662 var2748) ; Statement: r5 := @this: com.google.javascript.jscomp.PeepholeReplaceKnownMethods 
(assert (not (= var662 null-var2748)))
(declare-const var278 var3393) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var278 null-var3393)))
(declare-const var3099 var3393) ; Statement: r1 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var3099 null-var3393)))
(assert true)
(define-const var1354 Bool (isCall/1872284454 var278)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isCall()>() 
 ; Statement: if $z0 == 0 goto $z2 = 0 
(assert (= (ite var1354 1 0) 0)) ; Cond: $z0 == 0 
(define-const var380 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
;(assert (var2139_checkArgument/1735511034 var380)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z2) 

(declare-const var380!1 Bool)
(assert true)
(define-const var2934 String (getString/-897720134 var3099)) ; Statement: $r6 = virtualinvoke r1.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var335 Bool (= var2934 "of")) ; Statement: $z3 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("of") 
 ; Statement: if $z3 != 0 goto virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node removeFirstChild()>() 
(assert (not (not (= (ite var335 1 0) 0)))) ; Negate: Cond: $z3 != 0  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {isCall/1872284454=([com.google.javascript.rhino.Node], boolean), var2139_checkArgument/1735511034=([boolean], void), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String)}
; {var2748=com.google.javascript.jscomp.PeepholeReplaceKnownMethods, var662=r5, var3393=com.google.javascript.rhino.Node, var278=r0, var3099=r1, var1354=$z0, var380=$z2, var2139=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2934=$r6, var335=$z3}
; {com.google.javascript.jscomp.PeepholeReplaceKnownMethods=var2748, r5=var662, com.google.javascript.rhino.Node=var3393, r0=var278, r1=var3099, $z0=var1354, $z2=var380, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2139, $r6=var2934, $z3=var335}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r5 := @this: com.google.javascript.jscomp.PeepholeReplaceKnownMethods;	r0 := @parameter0: com.google.javascript.rhino.Node;	r1 := @parameter1: com.google.javascript.rhino.Node;	$z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isCall()>();	if $z0 == 0 goto $z2 = 0;	$z2 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z2);	$r6 = virtualinvoke r1.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$z3 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("of");	if $z3 != 0 goto virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node removeFirstChild()>();	return r0
;block_num 4