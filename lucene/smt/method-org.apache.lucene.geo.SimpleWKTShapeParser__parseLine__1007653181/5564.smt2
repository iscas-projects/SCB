(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var329 0)
(declare-sort var1933 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1933_nextEmptyOrOpen/751675547 (var329) String)
(declare-const null-var329 var329)
(declare-const var692 var329) ; Statement: r0 := @parameter0: java.io.StreamTokenizer 
(assert (not (= var692 null-var329)))
(define-const var1213 String (var1933_nextEmptyOrOpen/751675547 var692)) ; Statement: r1 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String nextEmptyOrOpen(java.io.StreamTokenizer)>(r0) 
(assert true)
(define-const var1200 Bool (= var1213 "EMPTY")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("EMPTY") 
 ; Statement: if $z0 == 0 goto $r2 = new java.util.ArrayList 
(assert (not (= (ite var1200 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var1933_nextEmptyOrOpen/751675547=([java.io.StreamTokenizer], java.lang.String)}
; {var329=java.io.StreamTokenizer, var692=r0, var1933=org.apache.lucene.geo.SimpleWKTShapeParser, var1213=r1, var1200=$z0}
; {java.io.StreamTokenizer=var329, r0=var692, org.apache.lucene.geo.SimpleWKTShapeParser=var1933, r1=var1213, $z0=var1200}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.io.StreamTokenizer;	r1 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String nextEmptyOrOpen(java.io.StreamTokenizer)>(r0);	$z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("EMPTY");	if $z0 == 0 goto $r2 = new java.util.ArrayList;	return null
;block_num 2