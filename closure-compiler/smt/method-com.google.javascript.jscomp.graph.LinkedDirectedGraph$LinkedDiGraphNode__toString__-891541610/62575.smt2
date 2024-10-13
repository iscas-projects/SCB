(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2768 0)
(declare-sort var1118 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun value/-371786114 (var2768) var1118)
(declare-fun String_valueOf/-333372740 (var1118) String)
(declare-const null-var2768 var2768)
(declare-const var1415 var2768) ; Statement: r0 := @this: com.google.javascript.jscomp.graph.LinkedDirectedGraph$LinkedDiGraphNode 
(assert (not (= var1415 null-var2768)))
(define-const var1218 var1118 (value/-371786114 var1415)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.graph.LinkedDirectedGraph$LinkedDiGraphNode: java.lang.Object value> 
(define-const var2297 String (String_valueOf/-333372740 var1218)) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {value/-371786114=([com.google.javascript.jscomp.graph.LinkedDirectedGraph$LinkedDiGraphNode], java.lang.Object), String_valueOf/-333372740=([java.lang.Object], java.lang.String)}
; {var2768=com.google.javascript.jscomp.graph.LinkedDirectedGraph$LinkedDiGraphNode, var1415=r0, var1118=java.lang.Object, var1218=$r1, var2297=$r2}
; {com.google.javascript.jscomp.graph.LinkedDirectedGraph$LinkedDiGraphNode=var2768, r0=var1415, java.lang.Object=var1118, $r1=var1218, $r2=var2297}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.graph.LinkedDirectedGraph$LinkedDiGraphNode;	$r1 = r0.<com.google.javascript.jscomp.graph.LinkedDirectedGraph$LinkedDiGraphNode: java.lang.Object value>;	$r2 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r1);	return $r2
;block_num 1