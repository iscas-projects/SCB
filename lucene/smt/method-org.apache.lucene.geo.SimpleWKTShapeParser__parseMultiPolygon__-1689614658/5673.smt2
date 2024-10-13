(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1136 0)
(declare-sort var185 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var185_nextEmptyOrOpen/751675547 (var1136) String)
(declare-const null-var1136 var1136)
(declare-const var3921 var1136) ; Statement: r0 := @parameter0: java.io.StreamTokenizer 
(assert (not (= var3921 null-var1136)))
(define-const var1140 String (var185_nextEmptyOrOpen/751675547 var3921)) ; Statement: r1 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String nextEmptyOrOpen(java.io.StreamTokenizer)>(r0) 
(assert true)
(define-const var2174 Bool (= var1140 "EMPTY")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("EMPTY") 
 ; Statement: if $z0 == 0 goto $r2 = new java.util.ArrayList 
(assert (not (= (ite var2174 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var185_nextEmptyOrOpen/751675547=([java.io.StreamTokenizer], java.lang.String)}
; {var1136=java.io.StreamTokenizer, var3921=r0, var185=org.apache.lucene.geo.SimpleWKTShapeParser, var1140=r1, var2174=$z0}
; {java.io.StreamTokenizer=var1136, r0=var3921, org.apache.lucene.geo.SimpleWKTShapeParser=var185, r1=var1140, $z0=var2174}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.io.StreamTokenizer;	r1 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String nextEmptyOrOpen(java.io.StreamTokenizer)>(r0);	$z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("EMPTY");	if $z0 == 0 goto $r2 = new java.util.ArrayList;	return null
;block_num 2