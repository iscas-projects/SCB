(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1476 0)
(declare-sort var2392 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun value/249025641 (var1476) var2392)
(declare-fun String_valueOf/-333372740 (var2392) String)
(declare-const null-var1476 var1476)
(declare-const var446 var1476) ; Statement: r0 := @this: com.google.javascript.jscomp.graph.LinkedUndirectedGraph$LinkedUndirectedGraphNode 
(assert (not (= var446 null-var1476)))
(define-const var2217 var2392 (value/249025641 var446)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.graph.LinkedUndirectedGraph$LinkedUndirectedGraphNode: java.lang.Object value> 
(define-const var1517 String (String_valueOf/-333372740 var2217)) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {value/249025641=([com.google.javascript.jscomp.graph.LinkedUndirectedGraph$LinkedUndirectedGraphNode], java.lang.Object), String_valueOf/-333372740=([java.lang.Object], java.lang.String)}
; {var1476=com.google.javascript.jscomp.graph.LinkedUndirectedGraph$LinkedUndirectedGraphNode, var446=r0, var2392=java.lang.Object, var2217=$r1, var1517=$r2}
; {com.google.javascript.jscomp.graph.LinkedUndirectedGraph$LinkedUndirectedGraphNode=var1476, r0=var446, java.lang.Object=var2392, $r1=var2217, $r2=var1517}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.graph.LinkedUndirectedGraph$LinkedUndirectedGraphNode;	$r1 = r0.<com.google.javascript.jscomp.graph.LinkedUndirectedGraph$LinkedUndirectedGraphNode: java.lang.Object value>;	$r2 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r1);	return $r2
;block_num 1