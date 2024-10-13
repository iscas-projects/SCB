(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1282 0)
(declare-sort var3318 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun field/907437598 (var1282) String)
(declare-fun bytes/907437598 (var1282) var3318)
(declare-fun compareTo/-646665678 (var3318 var3318) Int)
(declare-const null-var1282 var1282)
(declare-const var2287 var1282) ; Statement: r0 := @this: org.apache.lucene.index.Term 
(assert (not (= var2287 null-var1282)))
(declare-const var3855 var1282) ; Statement: r1 := @parameter0: org.apache.lucene.index.Term 
(assert (not (= var3855 null-var1282)))
(define-const var436 String (field/907437598 var2287)) ; Statement: $r3 = r0.<org.apache.lucene.index.Term: java.lang.String field> 
(define-const var2749 String (field/907437598 var3855)) ; Statement: $r2 = r1.<org.apache.lucene.index.Term: java.lang.String field> 
(assert true)
(define-const var2356 Bool (= var436 var2749)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto $r5 = r0.<org.apache.lucene.index.Term: java.lang.String field> 
(assert (not (= (ite var2356 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1862 var3318 (bytes/907437598 var2287)) ; Statement: $r7 = r0.<org.apache.lucene.index.Term: org.apache.lucene.util.BytesRef bytes> 
(define-const var786 var3318 (bytes/907437598 var3855)) ; Statement: $r6 = r1.<org.apache.lucene.index.Term: org.apache.lucene.util.BytesRef bytes> 
(assert true)
(define-const var3574 Int (compareTo/-646665678 var1862 var786)) ; Statement: $i1 = virtualinvoke $r7.<org.apache.lucene.util.BytesRef: int compareTo(org.apache.lucene.util.BytesRef)>($r6) 
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {field/907437598=([org.apache.lucene.index.Term], java.lang.String), bytes/907437598=([org.apache.lucene.index.Term], org.apache.lucene.util.BytesRef), compareTo/-646665678=([org.apache.lucene.util.BytesRef, org.apache.lucene.util.BytesRef], int)}
; {var1282=org.apache.lucene.index.Term, var2287=r0, var3855=r1, var436=$r3, var2749=$r2, var2356=$z0, var3318=org.apache.lucene.util.BytesRef, var1862=$r7, var786=$r6, var3574=$i1}
; {org.apache.lucene.index.Term=var1282, r0=var2287, r1=var3855, $r3=var436, $r2=var2749, $z0=var2356, org.apache.lucene.util.BytesRef=var3318, $r7=var1862, $r6=var786, $i1=var3574}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.lucene.index.Term;	r1 := @parameter0: org.apache.lucene.index.Term;	$r3 = r0.<org.apache.lucene.index.Term: java.lang.String field>;	$r2 = r1.<org.apache.lucene.index.Term: java.lang.String field>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto $r5 = r0.<org.apache.lucene.index.Term: java.lang.String field>;	$r7 = r0.<org.apache.lucene.index.Term: org.apache.lucene.util.BytesRef bytes>;	$r6 = r1.<org.apache.lucene.index.Term: org.apache.lucene.util.BytesRef bytes>;	$i1 = virtualinvoke $r7.<org.apache.lucene.util.BytesRef: int compareTo(org.apache.lucene.util.BytesRef)>($r6);	return $i1
;block_num 2