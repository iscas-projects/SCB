(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1857 0)
(declare-sort var3023 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3023_nextWord/-947882919 (var1857) String)
(declare-const null-var1857 var1857)
(declare-const var2621 var1857) ; Statement: r0 := @parameter0: java.io.StreamTokenizer 
(assert (not (= var2621 null-var1857)))
(define-const var1310 String (var3023_nextWord/-947882919 var2621)) ; Statement: r1 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String nextWord(java.io.StreamTokenizer)>(r0) 
(assert true)
(define-const var2107 Bool (= var1310 ",")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>(",") 
 ; Statement: if $z0 != 0 goto return r1 
(assert (not (= (ite var2107 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var3023_nextWord/-947882919=([java.io.StreamTokenizer], java.lang.String)}
; {var1857=java.io.StreamTokenizer, var2621=r0, var3023=org.apache.lucene.geo.SimpleWKTShapeParser, var1310=r1, var2107=$z0}
; {java.io.StreamTokenizer=var1857, r0=var2621, org.apache.lucene.geo.SimpleWKTShapeParser=var3023, r1=var1310, $z0=var2107}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.io.StreamTokenizer;	r1 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String nextWord(java.io.StreamTokenizer)>(r0);	$z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>(",");	if $z0 != 0 goto return r1;	return r1
;block_num 2