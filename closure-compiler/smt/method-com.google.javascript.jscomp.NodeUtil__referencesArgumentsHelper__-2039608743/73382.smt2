(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1922 0)
(declare-sort var697 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isName/-1249361959 (var1922) Bool)
(declare-fun var697_isNonArrowFunction/-1144142287 (var1922) Bool)
(declare-const null-var1922 var1922)
(declare-const var1739 var1922) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var1739 null-var1922)))
(assert true)
(define-const var3316 Bool (isName/-1249361959 var1739)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isName()>() 
 ; Statement: if $z0 == 0 goto $z1 = staticinvoke <com.google.javascript.jscomp.NodeUtil: boolean isNonArrowFunction(com.google.javascript.rhino.Node)>(r0) 
(assert (= (ite var3316 1 0) 0)) ; Cond: $z0 == 0 
(define-const var808 Bool (var697_isNonArrowFunction/-1144142287 var1739)) ; Statement: $z1 = staticinvoke <com.google.javascript.jscomp.NodeUtil: boolean isNonArrowFunction(com.google.javascript.rhino.Node)>(r0) 
 ; Statement: if $z1 == 0 goto r2 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>() 
(assert (not (= (ite var808 1 0) 0))) ; Negate: Cond: $z1 == 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {isName/-1249361959=([com.google.javascript.rhino.Node], boolean), var697_isNonArrowFunction/-1144142287=([com.google.javascript.rhino.Node], boolean)}
; {var1922=com.google.javascript.rhino.Node, var1739=r0, var3316=$z0, var697=com.google.javascript.jscomp.NodeUtil, var808=$z1}
; {com.google.javascript.rhino.Node=var1922, r0=var1739, $z0=var3316, com.google.javascript.jscomp.NodeUtil=var697, $z1=var808}
;seq 
;cnt {}
;stmts r0 := @parameter0: com.google.javascript.rhino.Node;	$z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isName()>();	if $z0 == 0 goto $z1 = staticinvoke <com.google.javascript.jscomp.NodeUtil: boolean isNonArrowFunction(com.google.javascript.rhino.Node)>(r0);	$z1 = staticinvoke <com.google.javascript.jscomp.NodeUtil: boolean isNonArrowFunction(com.google.javascript.rhino.Node)>(r0);	if $z1 == 0 goto r2 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();	return 0
;block_num 3