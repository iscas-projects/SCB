(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3118 0)
(declare-sort var1932 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1932_nextWord/-947882919 (var3118) String)
(declare-const null-var3118 var3118)
(declare-const var3908 var3118) ; Statement: r0 := @parameter0: java.io.StreamTokenizer 
(assert (not (= var3908 null-var3118)))
(define-const var3735 String (var1932_nextWord/-947882919 var3908)) ; Statement: $r1 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String nextWord(java.io.StreamTokenizer)>(r0) 
(assert true)
(define-const var3935 Bool (= var3735 ")")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(")") 
 ; Statement: if $z0 == 0 goto $r2 = new java.text.ParseException 
(assert (not (= (ite var3935 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return ")" 
(check-sat)
(get-model)
(get-unsat-core)
; {var1932_nextWord/-947882919=([java.io.StreamTokenizer], java.lang.String)}
; {var3118=java.io.StreamTokenizer, var3908=r0, var1932=org.apache.lucene.geo.SimpleWKTShapeParser, var3735=$r1, var3935=$z0}
; {java.io.StreamTokenizer=var3118, r0=var3908, org.apache.lucene.geo.SimpleWKTShapeParser=var1932, $r1=var3735, $z0=var3935}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.io.StreamTokenizer;	$r1 = staticinvoke <org.apache.lucene.geo.SimpleWKTShapeParser: java.lang.String nextWord(java.io.StreamTokenizer)>(r0);	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(")");	if $z0 == 0 goto $r2 = new java.text.ParseException;	return ")"
;block_num 2