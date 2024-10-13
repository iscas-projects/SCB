(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var192 0)
(declare-sort var238 0)
(declare-sort var3066 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun field/1548824788 (var192) String)
(declare-fun field/-597557634 (var238) String)
(declare-fun var3066-init () var3066)
(declare-fun <init>/875830710 (var3066 String) void)
(declare-const null-var192 var192)
(declare-const null-var238 var238)
(declare-const null-Float32 Float32)
(declare-const var2243 var192) ; Statement: r0 := @this: org.apache.lucene.search.SynonymQuery$Builder 
(assert (not (= var2243 null-var192)))
(declare-const var1661 var238) ; Statement: r1 := @parameter0: org.apache.lucene.index.Term 
(assert (not (= var1661 null-var238)))
(declare-const var1206 Float32) ; Statement: f0 := @parameter1: float 
(assert (not (= var1206 null-Float32)))
(define-const var316 String (field/1548824788 var2243)) ; Statement: $r2 = r0.<org.apache.lucene.search.SynonymQuery$Builder: java.lang.String field> 
(assert true)
(define-const var162 String (field/-597557634 var1661)) ; Statement: $r3 = virtualinvoke r1.<org.apache.lucene.index.Term: java.lang.String field()>() 
(assert true)
(define-const var1421 Bool (= var316 var162)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r3) 
 ; Statement: if $z0 != 0 goto $r4 = virtualinvoke r1.<org.apache.lucene.index.Term: org.apache.lucene.util.BytesRef bytes()>() 
(assert (not (not (= (ite var1421 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var340 var3066 var3066-init) ; Statement: $r6 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var340 "Synonyms must be across the same field")) ; Statement: specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Synonyms must be across the same field") 

(declare-const var340!1 var3066)
(declare-const var1782 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {field/1548824788=([org.apache.lucene.search.SynonymQuery$Builder], java.lang.String), field/-597557634=([org.apache.lucene.index.Term], java.lang.String), var3066-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var192=org.apache.lucene.search.SynonymQuery$Builder, var2243=r0, var238=org.apache.lucene.index.Term, var1661=r1, var1206=f0, var316=$r2, var162=$r3, var1421=$z0, var3066=java.lang.IllegalArgumentException, var340=$r6, var1782="Synonyms must be across the same field"}
; {org.apache.lucene.search.SynonymQuery$Builder=var192, r0=var2243, org.apache.lucene.index.Term=var238, r1=var1661, f0=var1206, $r2=var316, $r3=var162, $z0=var1421, java.lang.IllegalArgumentException=var3066, $r6=var340, "Synonyms must be across the same field"=var1782}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.lucene.search.SynonymQuery$Builder;	r1 := @parameter0: org.apache.lucene.index.Term;	f0 := @parameter1: float;	$r2 = r0.<org.apache.lucene.search.SynonymQuery$Builder: java.lang.String field>;	$r3 = virtualinvoke r1.<org.apache.lucene.index.Term: java.lang.String field()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r3);	if $z0 != 0 goto $r4 = virtualinvoke r1.<org.apache.lucene.index.Term: org.apache.lucene.util.BytesRef bytes()>();	$r6 = new java.lang.IllegalArgumentException;	specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Synonyms must be across the same field");	throw $r6
;block_num 2