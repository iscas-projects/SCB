(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3215 0)
(declare-sort var3169 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3169_nextEmptyOrOpen/751675547 (var3215) String)
(declare-const null-var3215 var3215)
(declare-const var870 var3215) ; Statement: r0 := @parameter0: java.io.StreamTokenizer 
(assert (not (= var870 null-var3215)))
(define-const var485 String (var3169_nextEmptyOrOpen/751675547 var870)) ; Statement: r1 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String nextEmptyOrOpen(java.io.StreamTokenizer)>(r0) 
(assert true)
(define-const var3745 Bool (= var485 "EMPTY")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("EMPTY") 
 ; Statement: if $z0 == 0 goto $r2 = new java.util.ArrayList 
(assert (not (= (ite var3745 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var3169_nextEmptyOrOpen/751675547=([java.io.StreamTokenizer], java.lang.String)}
; {var3215=java.io.StreamTokenizer, var870=r0, var3169=org.apache.lucene.geo.SimpleWKTShapeParser, var485=r1, var3745=$z0}
; {java.io.StreamTokenizer=var3215, r0=var870, org.apache.lucene.geo.SimpleWKTShapeParser=var3169, r1=var485, $z0=var3745}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.io.StreamTokenizer;	r1 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String nextEmptyOrOpen(java.io.StreamTokenizer)>(r0);	$z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("EMPTY");	if $z0 == 0 goto $r2 = new java.util.ArrayList;	return null
;block_num 2