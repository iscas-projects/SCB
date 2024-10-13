(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2266 0)
(declare-sort var2982 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2982_nextEmptyOrOpen/751675547 (var2266) String)
(declare-const null-var2266 var2266)
(declare-const var1278 var2266) ; Statement: r0 := @parameter0: java.io.StreamTokenizer 
(assert (not (= var1278 null-var2266)))
(define-const var593 String (var2982_nextEmptyOrOpen/751675547 var1278)) ; Statement: r1 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String nextEmptyOrOpen(java.io.StreamTokenizer)>(r0) 
(assert true)
(define-const var2510 Bool (= var593 "EMPTY")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("EMPTY") 
 ; Statement: if $z0 == 0 goto $r2 = new java.util.ArrayList 
(assert (not (= (ite var2510 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var2982_nextEmptyOrOpen/751675547=([java.io.StreamTokenizer], java.lang.String)}
; {var2266=java.io.StreamTokenizer, var1278=r0, var2982=org.apache.lucene.geo.SimpleWKTShapeParser, var593=r1, var2510=$z0}
; {java.io.StreamTokenizer=var2266, r0=var1278, org.apache.lucene.geo.SimpleWKTShapeParser=var2982, r1=var593, $z0=var2510}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.io.StreamTokenizer;	r1 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String nextEmptyOrOpen(java.io.StreamTokenizer)>(r0);	$z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("EMPTY");	if $z0 == 0 goto $r2 = new java.util.ArrayList;	return null
;block_num 2