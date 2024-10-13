(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2644 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2644_getNodeType/-368491152 (var2644) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var2644 var2644)
(declare-const var3994 var2644) ; Statement: r0 := @parameter0: org.w3c.dom.Node 
(assert (not (= var3994 null-var2644)))
(define-const var1588 Int (var2644_getNodeType/-368491152 var3994)) ; Statement: s0 = interfaceinvoke r0.<org.w3c.dom.Node: short getNodeType()>() 
(define-const var394 Int (cast-from-Int-to-Int var1588)) ; Statement: $i1 = (int) s0 
 ; Statement: if $i1 != 2 goto return 0 
(assert (not (= var394 2))) ; Cond: $i1 != 2 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2644_getNodeType/-368491152=([org.w3c.dom.Node], short), cast-from-Int-to-Int=([short], int)}
; {var2644=org.w3c.dom.Node, var3994=r0, var1588=s0, var394=$i1}
; {org.w3c.dom.Node=var2644, r0=var3994, s0=var1588, $i1=var394}
;seq 
;cnt {}
;stmts r0 := @parameter0: org.w3c.dom.Node;	s0 = interfaceinvoke r0.<org.w3c.dom.Node: short getNodeType()>();	$i1 = (int) s0;	if $i1 != 2 goto return 0;	return 0
;block_num 2