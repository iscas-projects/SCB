(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2425 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun field/1318910271 (var2425) String)
(declare-const null-var2425 var2425)
(declare-const var1310 var2425) ; Statement: r0 := @this: org.apache.lucene.document.XYPointInGeometryQuery 
(assert (not (= var1310 null-var2425)))
(declare-const var2293 var2425) ; Statement: r1 := @parameter0: org.apache.lucene.document.XYPointInGeometryQuery 
(assert (not (= var2293 null-var2425)))
(define-const var3218 String (field/1318910271 var1310)) ; Statement: $r3 = r0.<org.apache.lucene.document.XYPointInGeometryQuery: java.lang.String field> 
(define-const var2130 String (field/1318910271 var2293)) ; Statement: $r2 = r1.<org.apache.lucene.document.XYPointInGeometryQuery: java.lang.String field> 
(assert true)
(define-const var3279 Bool (= var3218 var2130)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto $z2 = 0 
(assert (= (ite var3279 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3576 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {field/1318910271=([org.apache.lucene.document.XYPointInGeometryQuery], java.lang.String)}
; {var2425=org.apache.lucene.document.XYPointInGeometryQuery, var1310=r0, var2293=r1, var3218=$r3, var2130=$r2, var3279=$z0, var3576=$z2}
; {org.apache.lucene.document.XYPointInGeometryQuery=var2425, r0=var1310, r1=var2293, $r3=var3218, $r2=var2130, $z0=var3279, $z2=var3576}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.lucene.document.XYPointInGeometryQuery;	r1 := @parameter0: org.apache.lucene.document.XYPointInGeometryQuery;	$r3 = r0.<org.apache.lucene.document.XYPointInGeometryQuery: java.lang.String field>;	$r2 = r1.<org.apache.lucene.document.XYPointInGeometryQuery: java.lang.String field>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto $z2 = 0;	$z2 = 0;	return $z2
;block_num 3