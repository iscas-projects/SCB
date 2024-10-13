(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2124 0)
(declare-sort var1901 0)
(declare-sort var3623 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isName/-1249361959 (var1901) Bool)
(declare-fun var3623_isAssignmentOp/1058219287 (var1901) Bool)
(declare-const null-var2124 var2124)
(declare-const null-var1901 var1901)
(declare-const var2251 var2124) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.Var 
(assert (not (= var2251 null-var2124)))
(declare-const var238 var1901) ; Statement: r0 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var238 null-var1901)))
(declare-const var1455 var1901) ; Statement: r5 := @parameter2: com.google.javascript.rhino.Node 
(assert (not (= var1455 null-var1901)))
(assert true)
(define-const var201 Bool (isName/-1249361959 var238)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isName()>() 
 ; Statement: if $z0 == 0 goto $z1 = staticinvoke <com.google.javascript.jscomp.NodeUtil: boolean isAssignmentOp(com.google.javascript.rhino.Node)>(r0) 
(assert (= (ite var201 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3947 Bool (var3623_isAssignmentOp/1058219287 var238)) ; Statement: $z1 = staticinvoke <com.google.javascript.jscomp.NodeUtil: boolean isAssignmentOp(com.google.javascript.rhino.Node)>(r0) 
 ; Statement: if $z1 == 0 goto return 0 
(assert (= (ite var3947 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {isName/-1249361959=([com.google.javascript.rhino.Node], boolean), var3623_isAssignmentOp/1058219287=([com.google.javascript.rhino.Node], boolean)}
; {var2124=com.google.javascript.jscomp.Var, var2251=r2, var1901=com.google.javascript.rhino.Node, var238=r0, var1455=r5, var201=$z0, var3623=com.google.javascript.jscomp.NodeUtil, var3947=$z1}
; {com.google.javascript.jscomp.Var=var2124, r2=var2251, com.google.javascript.rhino.Node=var1901, r0=var238, r5=var1455, $z0=var201, com.google.javascript.jscomp.NodeUtil=var3623, $z1=var3947}
;seq 
;cnt {}
;stmts r2 := @parameter0: com.google.javascript.jscomp.Var;	r0 := @parameter1: com.google.javascript.rhino.Node;	r5 := @parameter2: com.google.javascript.rhino.Node;	$z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isName()>();	if $z0 == 0 goto $z1 = staticinvoke <com.google.javascript.jscomp.NodeUtil: boolean isAssignmentOp(com.google.javascript.rhino.Node)>(r0);	$z1 = staticinvoke <com.google.javascript.jscomp.NodeUtil: boolean isAssignmentOp(com.google.javascript.rhino.Node)>(r0);	if $z1 == 0 goto return 0;	return 0
;block_num 3