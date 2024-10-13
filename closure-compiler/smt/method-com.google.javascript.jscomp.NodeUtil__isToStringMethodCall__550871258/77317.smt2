(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3314 0)
(declare-sort var3530 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getFirstChild/2090828207 (var3314) var3314)
(declare-fun var3530_isNormalOrOptChainGetProp/-1716624290 (var3314) Bool)
(declare-fun var3530_isNormalOrOptChainGet/-2123201983 (var3314) Bool)
(declare-const null-var3314 var3314)
(declare-const var859 var3314) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var859 null-var3314)))
(assert true)
(define-const var2699 var3314 (getFirstChild/2090828207 var859)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>() 
(define-const var1868 Bool (var3530_isNormalOrOptChainGetProp/-1716624290 var2699)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.NodeUtil: boolean isNormalOrOptChainGetProp(com.google.javascript.rhino.Node)>(r1) 
 ; Statement: if $z0 == 0 goto $z1 = staticinvoke <com.google.javascript.jscomp.NodeUtil: boolean isNormalOrOptChainGet(com.google.javascript.rhino.Node)>(r1) 
(assert (= (ite var1868 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2382 Bool (var3530_isNormalOrOptChainGet/-2123201983 var2699)) ; Statement: $z1 = staticinvoke <com.google.javascript.jscomp.NodeUtil: boolean isNormalOrOptChainGet(com.google.javascript.rhino.Node)>(r1) 
 ; Statement: if $z1 == 0 goto return 0 
(assert (= (ite var2382 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {getFirstChild/2090828207=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), var3530_isNormalOrOptChainGetProp/-1716624290=([com.google.javascript.rhino.Node], boolean), var3530_isNormalOrOptChainGet/-2123201983=([com.google.javascript.rhino.Node], boolean)}
; {var3314=com.google.javascript.rhino.Node, var859=r0, var2699=r1, var3530=com.google.javascript.jscomp.NodeUtil, var1868=$z0, var2382=$z1}
; {com.google.javascript.rhino.Node=var3314, r0=var859, r1=var2699, com.google.javascript.jscomp.NodeUtil=var3530, $z0=var1868, $z1=var2382}
;seq 
;cnt {}
;stmts r0 := @parameter0: com.google.javascript.rhino.Node;	r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();	$z0 = staticinvoke <com.google.javascript.jscomp.NodeUtil: boolean isNormalOrOptChainGetProp(com.google.javascript.rhino.Node)>(r1);	if $z0 == 0 goto $z1 = staticinvoke <com.google.javascript.jscomp.NodeUtil: boolean isNormalOrOptChainGet(com.google.javascript.rhino.Node)>(r1);	$z1 = staticinvoke <com.google.javascript.jscomp.NodeUtil: boolean isNormalOrOptChainGet(com.google.javascript.rhino.Node)>(r1);	if $z1 == 0 goto return 0;	return 0
;block_num 3