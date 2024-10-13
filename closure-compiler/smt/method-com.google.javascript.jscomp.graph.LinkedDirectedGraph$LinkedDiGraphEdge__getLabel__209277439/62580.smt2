(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3690 0)
(declare-sort var466 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun value/-372064711 (var3690) var466)
(declare-fun String_valueOf/-333372740 (var466) String)
(declare-const null-var3690 var3690)
(declare-const var2595 var3690) ; Statement: r0 := @this: com.google.javascript.jscomp.graph.LinkedDirectedGraph$LinkedDiGraphEdge 
(assert (not (= var2595 null-var3690)))
(define-const var2926 var466 (value/-372064711 var2595)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.graph.LinkedDirectedGraph$LinkedDiGraphEdge: java.lang.Object value> 
(define-const var2367 String (String_valueOf/-333372740 var2926)) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {value/-372064711=([com.google.javascript.jscomp.graph.LinkedDirectedGraph$LinkedDiGraphEdge], java.lang.Object), String_valueOf/-333372740=([java.lang.Object], java.lang.String)}
; {var3690=com.google.javascript.jscomp.graph.LinkedDirectedGraph$LinkedDiGraphEdge, var2595=r0, var466=java.lang.Object, var2926=$r1, var2367=$r2}
; {com.google.javascript.jscomp.graph.LinkedDirectedGraph$LinkedDiGraphEdge=var3690, r0=var2595, java.lang.Object=var466, $r1=var2926, $r2=var2367}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.graph.LinkedDirectedGraph$LinkedDiGraphEdge;	$r1 = r0.<com.google.javascript.jscomp.graph.LinkedDirectedGraph$LinkedDiGraphEdge: java.lang.Object value>;	$r2 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r1);	return $r2
;block_num 1