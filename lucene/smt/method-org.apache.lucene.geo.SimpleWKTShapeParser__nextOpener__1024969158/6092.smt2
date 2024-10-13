(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3548 0)
(declare-sort var3344 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3344_nextWord/-947882919 (var3548) String)
(declare-const null-var3548 var3548)
(declare-const var1012 var3548) ; Statement: r0 := @parameter0: java.io.StreamTokenizer 
(assert (not (= var1012 null-var3548)))
(define-const var1398 String (var3344_nextWord/-947882919 var1012)) ; Statement: $r1 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String nextWord(java.io.StreamTokenizer)>(r0) 
(assert true)
(define-const var2488 Bool (= var1398 "(")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("(") 
 ; Statement: if $z0 == 0 goto $r2 = new java.text.ParseException 
(assert (not (= (ite var2488 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return "(" 
(check-sat)
(get-model)
(get-unsat-core)
; {var3344_nextWord/-947882919=([java.io.StreamTokenizer], java.lang.String)}
; {var3548=java.io.StreamTokenizer, var1012=r0, var3344=org.apache.lucene.geo.SimpleWKTShapeParser, var1398=$r1, var2488=$z0}
; {java.io.StreamTokenizer=var3548, r0=var1012, org.apache.lucene.geo.SimpleWKTShapeParser=var3344, $r1=var1398, $z0=var2488}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.io.StreamTokenizer;	$r1 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String nextWord(java.io.StreamTokenizer)>(r0);	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("(");	if $z0 == 0 goto $r2 = new java.text.ParseException;	return "("
;block_num 2