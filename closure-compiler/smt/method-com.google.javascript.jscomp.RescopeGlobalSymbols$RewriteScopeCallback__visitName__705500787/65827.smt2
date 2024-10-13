(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1629 0)
(declare-sort var1136 0)
(declare-sort var2615 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getString/-897720134 (var2615) String)
(declare-fun isFunction/-1932469268 (var2615) Bool)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var1629 var1629)
(declare-const null-var1136 var1136)
(declare-const null-var2615 var2615)
(declare-const var1357 var1629) ; Statement: r3 := @this: com.google.javascript.jscomp.RescopeGlobalSymbols$RewriteScopeCallback 
(assert (not (= var1357 null-var1629)))
(declare-const var298 var1136) ; Statement: r4 := @parameter0: com.google.javascript.jscomp.NodeTraversal 
(assert (not (= var298 null-var1136)))
(declare-const var3553 var2615) ; Statement: r0 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var3553 null-var2615)))
(declare-const var91 var2615) ; Statement: r2 := @parameter2: com.google.javascript.rhino.Node 
(assert (not (= var91 null-var2615)))
(assert true)
(define-const var3507 String (getString/-897720134 var3553)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var517 Bool (isFunction/-1932469268 var91)) ; Statement: $z0 = virtualinvoke r2.<com.google.javascript.rhino.Node: boolean isFunction()>() 
 ; Statement: if $z0 == 0 goto $r5 = r3.<com.google.javascript.jscomp.RescopeGlobalSymbols$RewriteScopeCallback: com.google.javascript.jscomp.RescopeGlobalSymbols this$0> 
(assert (not (= (ite var517 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var3865 Bool (isEmpty/-1285796103 var3507)) ; Statement: $z6 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z6 == 0 goto $r5 = r3.<com.google.javascript.jscomp.RescopeGlobalSymbols$RewriteScopeCallback: com.google.javascript.jscomp.RescopeGlobalSymbols this$0> 
(assert (not (= (ite var3865 1 0) 0))) ; Negate: Cond: $z6 == 0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), isFunction/-1932469268=([com.google.javascript.rhino.Node], boolean), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var1629=com.google.javascript.jscomp.RescopeGlobalSymbols$RewriteScopeCallback, var1357=r3, var1136=com.google.javascript.jscomp.NodeTraversal, var298=r4, var2615=com.google.javascript.rhino.Node, var3553=r0, var91=r2, var3507=r1, var517=$z0, var3865=$z6}
; {com.google.javascript.jscomp.RescopeGlobalSymbols$RewriteScopeCallback=var1629, r3=var1357, com.google.javascript.jscomp.NodeTraversal=var1136, r4=var298, com.google.javascript.rhino.Node=var2615, r0=var3553, r2=var91, r1=var3507, $z0=var517, $z6=var3865}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.RescopeGlobalSymbols$RewriteScopeCallback;	r4 := @parameter0: com.google.javascript.jscomp.NodeTraversal;	r0 := @parameter1: com.google.javascript.rhino.Node;	r2 := @parameter2: com.google.javascript.rhino.Node;	r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$z0 = virtualinvoke r2.<com.google.javascript.rhino.Node: boolean isFunction()>();	if $z0 == 0 goto $r5 = r3.<com.google.javascript.jscomp.RescopeGlobalSymbols$RewriteScopeCallback: com.google.javascript.jscomp.RescopeGlobalSymbols this$0>;	$z6 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>();	if $z6 == 0 goto $r5 = r3.<com.google.javascript.jscomp.RescopeGlobalSymbols$RewriteScopeCallback: com.google.javascript.jscomp.RescopeGlobalSymbols this$0>;	return
;block_num 3