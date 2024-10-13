(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var712 0)
(declare-sort var2438 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2438_getMulti/-1858061690 () Bool)
(declare-const null-var712 var712)
(declare-const var1778 var712) ; Statement: r2 := @this: org.javacc.jjtree.ASTNodeDescriptor 
(assert (not (= var1778 null-var712)))
(define-const var1278 Bool var2438_getMulti/-1858061690) ; Statement: $z0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getMulti()>() 
 ; Statement: if $z0 == 0 goto return "SimpleNode" 
(assert (= (ite var1278 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return "SimpleNode" 
(check-sat)
(get-model)
(get-unsat-core)
; {var2438_getMulti/-1858061690=([], boolean)}
; {var712=org.javacc.jjtree.ASTNodeDescriptor, var1778=r2, var2438=org.javacc.jjtree.JJTreeOptions, var1278=$z0}
; {org.javacc.jjtree.ASTNodeDescriptor=var712, r2=var1778, org.javacc.jjtree.JJTreeOptions=var2438, $z0=var1278}
;seq 
;cnt {}
;stmts r2 := @this: org.javacc.jjtree.ASTNodeDescriptor;	$z0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getMulti()>();	if $z0 == 0 goto return "SimpleNode";	return "SimpleNode"
;block_num 2