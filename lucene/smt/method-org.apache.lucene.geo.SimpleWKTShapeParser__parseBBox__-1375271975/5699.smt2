(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2544 0)
(declare-sort var2069 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2069_nextEmptyOrOpen/751675547 (var2544) String)
(declare-const null-var2544 var2544)
(declare-const var470 var2544) ; Statement: r0 := @parameter0: java.io.StreamTokenizer 
(assert (not (= var470 null-var2544)))
(define-const var1112 String (var2069_nextEmptyOrOpen/751675547 var470)) ; Statement: $r1 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String nextEmptyOrOpen(java.io.StreamTokenizer)>(r0) 
(assert true)
(define-const var1429 Bool (= var1112 "EMPTY")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("EMPTY") 
 ; Statement: if $z0 == 0 goto d0 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: double nextNumber(java.io.StreamTokenizer)>(r0) 
(assert (not (= (ite var1429 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var2069_nextEmptyOrOpen/751675547=([java.io.StreamTokenizer], java.lang.String)}
; {var2544=java.io.StreamTokenizer, var470=r0, var2069=org.apache.lucene.geo.SimpleWKTShapeParser, var1112=$r1, var1429=$z0}
; {java.io.StreamTokenizer=var2544, r0=var470, org.apache.lucene.geo.SimpleWKTShapeParser=var2069, $r1=var1112, $z0=var1429}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.io.StreamTokenizer;	$r1 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String nextEmptyOrOpen(java.io.StreamTokenizer)>(r0);	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("EMPTY");	if $z0 == 0 goto d0 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: double nextNumber(java.io.StreamTokenizer)>(r0);	return null
;block_num 2