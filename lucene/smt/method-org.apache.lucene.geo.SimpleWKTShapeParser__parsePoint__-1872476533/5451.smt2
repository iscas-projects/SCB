(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1026 0)
(declare-sort var1342 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1342_nextEmptyOrOpen/751675547 (var1026) String)
(declare-const null-var1026 var1026)
(declare-const var2605 var1026) ; Statement: r0 := @parameter0: java.io.StreamTokenizer 
(assert (not (= var2605 null-var1026)))
(define-const var3795 String (var1342_nextEmptyOrOpen/751675547 var2605)) ; Statement: $r1 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String nextEmptyOrOpen(java.io.StreamTokenizer)>(r0) 
(assert true)
(define-const var3415 Bool (= var3795 "EMPTY")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("EMPTY") 
 ; Statement: if $z0 == 0 goto $r2 = newarray (double)[2] 
(assert (not (= (ite var3415 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var1342_nextEmptyOrOpen/751675547=([java.io.StreamTokenizer], java.lang.String)}
; {var1026=java.io.StreamTokenizer, var2605=r0, var1342=org.apache.lucene.geo.SimpleWKTShapeParser, var3795=$r1, var3415=$z0}
; {java.io.StreamTokenizer=var1026, r0=var2605, org.apache.lucene.geo.SimpleWKTShapeParser=var1342, $r1=var3795, $z0=var3415}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.io.StreamTokenizer;	$r1 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String nextEmptyOrOpen(java.io.StreamTokenizer)>(r0);	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("EMPTY");	if $z0 == 0 goto $r2 = newarray (double)[2];	return null
;block_num 2