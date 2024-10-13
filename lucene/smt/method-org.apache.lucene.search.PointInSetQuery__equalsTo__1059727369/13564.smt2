(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2053 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun field/-543217653 (var2053) String)
(declare-const null-var2053 var2053)
(declare-const var742 var2053) ; Statement: r1 := @this: org.apache.lucene.search.PointInSetQuery 
(assert (not (= var742 null-var2053)))
(declare-const var924 var2053) ; Statement: r0 := @parameter0: org.apache.lucene.search.PointInSetQuery 
(assert (not (= var924 null-var2053)))
(define-const var3605 String (field/-543217653 var924)) ; Statement: $r3 = r0.<org.apache.lucene.search.PointInSetQuery: java.lang.String field> 
(define-const var3952 String (field/-543217653 var742)) ; Statement: $r2 = r1.<org.apache.lucene.search.PointInSetQuery: java.lang.String field> 
(assert true)
(define-const var846 Bool (= var3605 var3952)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto $z2 = 0 
(assert (= (ite var846 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3680 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {field/-543217653=([org.apache.lucene.search.PointInSetQuery], java.lang.String)}
; {var2053=org.apache.lucene.search.PointInSetQuery, var742=r1, var924=r0, var3605=$r3, var3952=$r2, var846=$z0, var3680=$z2}
; {org.apache.lucene.search.PointInSetQuery=var2053, r1=var742, r0=var924, $r3=var3605, $r2=var3952, $z0=var846, $z2=var3680}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: org.apache.lucene.search.PointInSetQuery;	r0 := @parameter0: org.apache.lucene.search.PointInSetQuery;	$r3 = r0.<org.apache.lucene.search.PointInSetQuery: java.lang.String field>;	$r2 = r1.<org.apache.lucene.search.PointInSetQuery: java.lang.String field>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto $z2 = 0;	$z2 = 0;	return $z2
;block_num 3