(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1602 0)
(declare-sort var118 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun value/248747044 (var1602) var118)
(declare-fun String_valueOf/-333372740 (var118) String)
(declare-const null-var1602 var1602)
(declare-const var2676 var1602) ; Statement: r0 := @this: com.google.javascript.jscomp.graph.LinkedUndirectedGraph$LinkedUndirectedGraphEdge 
(assert (not (= var2676 null-var1602)))
(define-const var1669 var118 (value/248747044 var2676)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.graph.LinkedUndirectedGraph$LinkedUndirectedGraphEdge: java.lang.Object value> 
(define-const var2350 String (String_valueOf/-333372740 var1669)) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {value/248747044=([com.google.javascript.jscomp.graph.LinkedUndirectedGraph$LinkedUndirectedGraphEdge], java.lang.Object), String_valueOf/-333372740=([java.lang.Object], java.lang.String)}
; {var1602=com.google.javascript.jscomp.graph.LinkedUndirectedGraph$LinkedUndirectedGraphEdge, var2676=r0, var118=java.lang.Object, var1669=$r1, var2350=$r2}
; {com.google.javascript.jscomp.graph.LinkedUndirectedGraph$LinkedUndirectedGraphEdge=var1602, r0=var2676, java.lang.Object=var118, $r1=var1669, $r2=var2350}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.graph.LinkedUndirectedGraph$LinkedUndirectedGraphEdge;	$r1 = r0.<com.google.javascript.jscomp.graph.LinkedUndirectedGraph$LinkedUndirectedGraphEdge: java.lang.Object value>;	$r2 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r1);	return $r2
;block_num 1