(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1593 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun field/1476262732 (var1593) String)
(declare-const null-var1593 var1593)
(declare-const var1377 var1593) ; Statement: r0 := @this: org.apache.lucene.document.LatLonPointDistanceQuery 
(assert (not (= var1377 null-var1593)))
(declare-const var1118 var1593) ; Statement: r1 := @parameter0: org.apache.lucene.document.LatLonPointDistanceQuery 
(assert (not (= var1118 null-var1593)))
(define-const var1555 String (field/1476262732 var1377)) ; Statement: $r3 = r0.<org.apache.lucene.document.LatLonPointDistanceQuery: java.lang.String field> 
(define-const var3905 String (field/1476262732 var1118)) ; Statement: $r2 = r1.<org.apache.lucene.document.LatLonPointDistanceQuery: java.lang.String field> 
(assert true)
(define-const var2713 Bool (= var1555 var3905)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto $z1 = 0 
(assert (= (ite var2713 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2009 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {field/1476262732=([org.apache.lucene.document.LatLonPointDistanceQuery], java.lang.String)}
; {var1593=org.apache.lucene.document.LatLonPointDistanceQuery, var1377=r0, var1118=r1, var1555=$r3, var3905=$r2, var2713=$z0, var2009=$z1}
; {org.apache.lucene.document.LatLonPointDistanceQuery=var1593, r0=var1377, r1=var1118, $r3=var1555, $r2=var3905, $z0=var2713, $z1=var2009}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.lucene.document.LatLonPointDistanceQuery;	r1 := @parameter0: org.apache.lucene.document.LatLonPointDistanceQuery;	$r3 = r0.<org.apache.lucene.document.LatLonPointDistanceQuery: java.lang.String field>;	$r2 = r1.<org.apache.lucene.document.LatLonPointDistanceQuery: java.lang.String field>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto $z1 = 0;	$z1 = 0;	return $z1
;block_num 3