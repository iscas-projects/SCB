(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2394 0)
(declare-sort var127 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var127_nextWord/-947882919 (var2394) String)
(declare-const null-var2394 var2394)
(declare-const var1220 var2394) ; Statement: r0 := @parameter0: java.io.StreamTokenizer 
(assert (not (= var1220 null-var2394)))
(define-const var289 String (var127_nextWord/-947882919 var1220)) ; Statement: r1 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String nextWord(java.io.StreamTokenizer)>(r0) 
(assert true)
(define-const var3191 Bool (= var289 "EMPTY")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("EMPTY") 
 ; Statement: if $z0 != 0 goto return r1 
(assert (not (= (ite var3191 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var127_nextWord/-947882919=([java.io.StreamTokenizer], java.lang.String)}
; {var2394=java.io.StreamTokenizer, var1220=r0, var127=org.apache.lucene.geo.SimpleWKTShapeParser, var289=r1, var3191=$z0}
; {java.io.StreamTokenizer=var2394, r0=var1220, org.apache.lucene.geo.SimpleWKTShapeParser=var127, r1=var289, $z0=var3191}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.io.StreamTokenizer;	r1 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String nextWord(java.io.StreamTokenizer)>(r0);	$z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("EMPTY");	if $z0 != 0 goto return r1;	return r1
;block_num 2