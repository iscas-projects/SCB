(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3472 0)
(declare-sort var1145 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1145_nextWord/-947882919 (var3472) String)
(declare-const null-var3472 var3472)
(declare-const var474 var3472) ; Statement: r0 := @parameter0: java.io.StreamTokenizer 
(assert (not (= var474 null-var3472)))
(define-const var627 String (var1145_nextWord/-947882919 var474)) ; Statement: $r1 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String nextWord(java.io.StreamTokenizer)>(r0) 
(assert true)
(define-const var2712 Bool (= var627 ",")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(",") 
 ; Statement: if $z0 != 1 goto $r2 = new java.text.ParseException 
(assert (not (not (= (ite var2712 1 0) 1)))) ; Negate: Cond: $z0 != 1  
 ; Statement: return "," 
(check-sat)
(get-model)
(get-unsat-core)
; {var1145_nextWord/-947882919=([java.io.StreamTokenizer], java.lang.String)}
; {var3472=java.io.StreamTokenizer, var474=r0, var1145=org.apache.lucene.geo.SimpleWKTShapeParser, var627=$r1, var2712=$z0}
; {java.io.StreamTokenizer=var3472, r0=var474, org.apache.lucene.geo.SimpleWKTShapeParser=var1145, $r1=var627, $z0=var2712}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.io.StreamTokenizer;	$r1 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String nextWord(java.io.StreamTokenizer)>(r0);	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(",");	if $z0 != 1 goto $r2 = new java.text.ParseException;	return ","
;block_num 2