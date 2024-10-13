(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3448 0)
(declare-sort var1311 0)
(declare-sort var185 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun field/1548824788 (var3448) String)
(declare-fun field/-597557634 (var1311) String)
(declare-fun bytes/1909388020 (var1311) var185)
(declare-fun addTerm/-1370731362 (var3448 var185 Float32) var3448)
(declare-const null-var3448 var3448)
(declare-const null-var1311 var1311)
(declare-const null-Float32 Float32)
(declare-const var2975 var3448) ; Statement: r0 := @this: org.apache.lucene.search.SynonymQuery$Builder 
(assert (not (= var2975 null-var3448)))
(declare-const var779 var1311) ; Statement: r1 := @parameter0: org.apache.lucene.index.Term 
(assert (not (= var779 null-var1311)))
(declare-const var511 Float32) ; Statement: f0 := @parameter1: float 
(assert (not (= var511 null-Float32)))
(define-const var2469 String (field/1548824788 var2975)) ; Statement: $r2 = r0.<org.apache.lucene.search.SynonymQuery$Builder: java.lang.String field> 
(assert true)
(define-const var2936 String (field/-597557634 var779)) ; Statement: $r3 = virtualinvoke r1.<org.apache.lucene.index.Term: java.lang.String field()>() 
(assert true)
(define-const var2567 Bool (= var2469 var2936)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r3) 
 ; Statement: if $z0 != 0 goto $r4 = virtualinvoke r1.<org.apache.lucene.index.Term: org.apache.lucene.util.BytesRef bytes()>() 
(assert (not (= (ite var2567 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var106 var185 (bytes/1909388020 var779)) ; Statement: $r4 = virtualinvoke r1.<org.apache.lucene.index.Term: org.apache.lucene.util.BytesRef bytes()>() 
(assert true)
(define-const var2399 var3448 (addTerm/-1370731362 var2975 var106 var511)) ; Statement: $r5 = virtualinvoke r0.<org.apache.lucene.search.SynonymQuery$Builder: org.apache.lucene.search.SynonymQuery$Builder addTerm(org.apache.lucene.util.BytesRef,float)>($r4, f0) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {field/1548824788=([org.apache.lucene.search.SynonymQuery$Builder], java.lang.String), field/-597557634=([org.apache.lucene.index.Term], java.lang.String), bytes/1909388020=([org.apache.lucene.index.Term], org.apache.lucene.util.BytesRef), addTerm/-1370731362=([org.apache.lucene.search.SynonymQuery$Builder, org.apache.lucene.util.BytesRef, float], org.apache.lucene.search.SynonymQuery$Builder)}
; {var3448=org.apache.lucene.search.SynonymQuery$Builder, var2975=r0, var1311=org.apache.lucene.index.Term, var779=r1, var511=f0, var2469=$r2, var2936=$r3, var2567=$z0, var185=org.apache.lucene.util.BytesRef, var106=$r4, var2399=$r5}
; {org.apache.lucene.search.SynonymQuery$Builder=var3448, r0=var2975, org.apache.lucene.index.Term=var1311, r1=var779, f0=var511, $r2=var2469, $r3=var2936, $z0=var2567, org.apache.lucene.util.BytesRef=var185, $r4=var106, $r5=var2399}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.lucene.search.SynonymQuery$Builder;	r1 := @parameter0: org.apache.lucene.index.Term;	f0 := @parameter1: float;	$r2 = r0.<org.apache.lucene.search.SynonymQuery$Builder: java.lang.String field>;	$r3 = virtualinvoke r1.<org.apache.lucene.index.Term: java.lang.String field()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r3);	if $z0 != 0 goto $r4 = virtualinvoke r1.<org.apache.lucene.index.Term: org.apache.lucene.util.BytesRef bytes()>();	$r4 = virtualinvoke r1.<org.apache.lucene.index.Term: org.apache.lucene.util.BytesRef bytes()>();	$r5 = virtualinvoke r0.<org.apache.lucene.search.SynonymQuery$Builder: org.apache.lucene.search.SynonymQuery$Builder addTerm(org.apache.lucene.util.BytesRef,float)>($r4, f0);	return $r5
;block_num 2