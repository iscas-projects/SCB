(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var479 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun field/907437598 (var479) String)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-const null-var479 var479)
(declare-const var1978 var479) ; Statement: r0 := @this: org.apache.lucene.index.Term 
(assert (not (= var1978 null-var479)))
(declare-const var905 var479) ; Statement: r1 := @parameter0: org.apache.lucene.index.Term 
(assert (not (= var905 null-var479)))
(define-const var1245 String (field/907437598 var1978)) ; Statement: $r3 = r0.<org.apache.lucene.index.Term: java.lang.String field> 
(define-const var2194 String (field/907437598 var905)) ; Statement: $r2 = r1.<org.apache.lucene.index.Term: java.lang.String field> 
(assert true)
(define-const var388 Bool (= var1245 var2194)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto $r5 = r0.<org.apache.lucene.index.Term: java.lang.String field> 
(assert (= (ite var388 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1722 String (field/907437598 var1978)) ; Statement: $r5 = r0.<org.apache.lucene.index.Term: java.lang.String field> 
(define-const var957 String (field/907437598 var905)) ; Statement: $r4 = r1.<org.apache.lucene.index.Term: java.lang.String field> 
(assert true)
(define-const var1354 Int (compareTo/1411385946 var1722 var957)) ; Statement: $i0 = virtualinvoke $r5.<java.lang.String: int compareTo(java.lang.String)>($r4) 
(assert (let ((this<other (str.< var1722 var957)) (this<=other (str.<= var1722 var957)) (compareRes (compareTo/1411385946 var1722 var957))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {field/907437598=([org.apache.lucene.index.Term], java.lang.String), compareTo/1411385946=([java.lang.String, java.lang.String], int)}
; {var479=org.apache.lucene.index.Term, var1978=r0, var905=r1, var1245=$r3, var2194=$r2, var388=$z0, var1722=$r5, var957=$r4, var1354=$i0}
; {org.apache.lucene.index.Term=var479, r0=var1978, r1=var905, $r3=var1245, $r2=var2194, $z0=var388, $r5=var1722, $r4=var957, $i0=var1354}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r0 := @this: org.apache.lucene.index.Term;	r1 := @parameter0: org.apache.lucene.index.Term;	$r3 = r0.<org.apache.lucene.index.Term: java.lang.String field>;	$r2 = r1.<org.apache.lucene.index.Term: java.lang.String field>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto $r5 = r0.<org.apache.lucene.index.Term: java.lang.String field>;	$r5 = r0.<org.apache.lucene.index.Term: java.lang.String field>;	$r4 = r1.<org.apache.lucene.index.Term: java.lang.String field>;	$i0 = virtualinvoke $r5.<java.lang.String: int compareTo(java.lang.String)>($r4);	return $i0
;block_num 2