(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2539 0)
(declare-sort var1754 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1754_nextEmptyOrOpen/751675547 (var2539) String)
(declare-const null-var2539 var2539)
(declare-const var1628 var2539) ; Statement: r0 := @parameter0: java.io.StreamTokenizer 
(assert (not (= var1628 null-var2539)))
(define-const var1654 String (var1754_nextEmptyOrOpen/751675547 var1628)) ; Statement: $r1 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String nextEmptyOrOpen(java.io.StreamTokenizer)>(r0) 
(assert true)
(define-const var3030 Bool (= var1654 "EMPTY")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("EMPTY") 
 ; Statement: if $z0 == 0 goto staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String nextOpener(java.io.StreamTokenizer)>(r0) 
(assert (not (= (ite var3030 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var1754_nextEmptyOrOpen/751675547=([java.io.StreamTokenizer], java.lang.String)}
; {var2539=java.io.StreamTokenizer, var1628=r0, var1754=org.apache.lucene.geo.SimpleWKTShapeParser, var1654=$r1, var3030=$z0}
; {java.io.StreamTokenizer=var2539, r0=var1628, org.apache.lucene.geo.SimpleWKTShapeParser=var1754, $r1=var1654, $z0=var3030}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.io.StreamTokenizer;	$r1 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String nextEmptyOrOpen(java.io.StreamTokenizer)>(r0);	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("EMPTY");	if $z0 == 0 goto staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String nextOpener(java.io.StreamTokenizer)>(r0);	return null
;block_num 2