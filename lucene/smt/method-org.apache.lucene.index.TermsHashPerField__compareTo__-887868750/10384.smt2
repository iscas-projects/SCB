(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3281 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun fieldName/-2113299520 (var3281) String)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-const null-var3281 var3281)
(declare-const var3432 var3281) ; Statement: r0 := @this: org.apache.lucene.index.TermsHashPerField 
(assert (not (= var3432 null-var3281)))
(declare-const var3395 var3281) ; Statement: r1 := @parameter0: org.apache.lucene.index.TermsHashPerField 
(assert (not (= var3395 null-var3281)))
(define-const var2341 String (fieldName/-2113299520 var3432)) ; Statement: $r3 = r0.<org.apache.lucene.index.TermsHashPerField: java.lang.String fieldName> 
(define-const var885 String (fieldName/-2113299520 var3395)) ; Statement: $r2 = r1.<org.apache.lucene.index.TermsHashPerField: java.lang.String fieldName> 
(assert true)
(define-const var2008 Int (compareTo/1411385946 var2341 var885)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2) 
(assert (let ((this<other (str.< var2341 var885)) (this<=other (str.<= var2341 var885)) (compareRes (compareTo/1411385946 var2341 var885))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {fieldName/-2113299520=([org.apache.lucene.index.TermsHashPerField], java.lang.String), compareTo/1411385946=([java.lang.String, java.lang.String], int)}
; {var3281=org.apache.lucene.index.TermsHashPerField, var3432=r0, var3395=r1, var2341=$r3, var885=$r2, var2008=$i0}
; {org.apache.lucene.index.TermsHashPerField=var3281, r0=var3432, r1=var3395, $r3=var2341, $r2=var885, $i0=var2008}
;seq <java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r0 := @this: org.apache.lucene.index.TermsHashPerField;	r1 := @parameter0: org.apache.lucene.index.TermsHashPerField;	$r3 = r0.<org.apache.lucene.index.TermsHashPerField: java.lang.String fieldName>;	$r2 = r1.<org.apache.lucene.index.TermsHashPerField: java.lang.String fieldName>;	$i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2);	return $i0
;block_num 1