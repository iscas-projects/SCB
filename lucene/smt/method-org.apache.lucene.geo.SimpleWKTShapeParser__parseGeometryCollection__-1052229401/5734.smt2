(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2335 0)
(declare-sort var1441 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1441_nextEmptyOrOpen/751675547 (var2335) String)
(declare-const null-var2335 var2335)
(declare-const var1826 var2335) ; Statement: r0 := @parameter0: java.io.StreamTokenizer 
(assert (not (= var1826 null-var2335)))
(define-const var1094 String (var1441_nextEmptyOrOpen/751675547 var1826)) ; Statement: $r1 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String nextEmptyOrOpen(java.io.StreamTokenizer)>(r0) 
(assert true)
(define-const var2384 Bool (= var1094 "EMPTY")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("EMPTY") 
 ; Statement: if $z0 == 0 goto $r2 = new java.util.ArrayList 
(assert (not (= (ite var2384 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var1441_nextEmptyOrOpen/751675547=([java.io.StreamTokenizer], java.lang.String)}
; {var2335=java.io.StreamTokenizer, var1826=r0, var1441=org.apache.lucene.geo.SimpleWKTShapeParser, var1094=$r1, var2384=$z0}
; {java.io.StreamTokenizer=var2335, r0=var1826, org.apache.lucene.geo.SimpleWKTShapeParser=var1441, $r1=var1094, $z0=var2384}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.io.StreamTokenizer;	$r1 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String nextEmptyOrOpen(java.io.StreamTokenizer)>(r0);	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("EMPTY");	if $z0 == 0 goto $r2 = new java.util.ArrayList;	return null
;block_num 2