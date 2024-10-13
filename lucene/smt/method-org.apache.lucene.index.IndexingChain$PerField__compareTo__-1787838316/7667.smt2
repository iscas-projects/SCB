(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var305 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun fieldName/-464421982 (var305) String)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-const null-var305 var305)
(declare-const var1045 var305) ; Statement: r0 := @this: org.apache.lucene.index.IndexingChain$PerField 
(assert (not (= var1045 null-var305)))
(declare-const var3143 var305) ; Statement: r1 := @parameter0: org.apache.lucene.index.IndexingChain$PerField 
(assert (not (= var3143 null-var305)))
(define-const var2758 String (fieldName/-464421982 var1045)) ; Statement: $r3 = r0.<org.apache.lucene.index.IndexingChain$PerField: java.lang.String fieldName> 
(define-const var3251 String (fieldName/-464421982 var3143)) ; Statement: $r2 = r1.<org.apache.lucene.index.IndexingChain$PerField: java.lang.String fieldName> 
(assert true)
(define-const var1954 Int (compareTo/1411385946 var2758 var3251)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2) 
(assert (let ((this<other (str.< var2758 var3251)) (this<=other (str.<= var2758 var3251)) (compareRes (compareTo/1411385946 var2758 var3251))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {fieldName/-464421982=([org.apache.lucene.index.IndexingChain$PerField], java.lang.String), compareTo/1411385946=([java.lang.String, java.lang.String], int)}
; {var305=org.apache.lucene.index.IndexingChain$PerField, var1045=r0, var3143=r1, var2758=$r3, var3251=$r2, var1954=$i0}
; {org.apache.lucene.index.IndexingChain$PerField=var305, r0=var1045, r1=var3143, $r3=var2758, $r2=var3251, $i0=var1954}
;seq <java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r0 := @this: org.apache.lucene.index.IndexingChain$PerField;	r1 := @parameter0: org.apache.lucene.index.IndexingChain$PerField;	$r3 = r0.<org.apache.lucene.index.IndexingChain$PerField: java.lang.String fieldName>;	$r2 = r1.<org.apache.lucene.index.IndexingChain$PerField: java.lang.String fieldName>;	$i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2);	return $i0
;block_num 1