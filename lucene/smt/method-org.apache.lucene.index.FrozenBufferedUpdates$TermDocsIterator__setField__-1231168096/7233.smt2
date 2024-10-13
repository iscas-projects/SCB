(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2130 0)
(declare-sort var602 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun field/1689851648 (var2130) String)
(declare-const null-var2130 var2130)
(declare-const null-String String)
(declare-const var1305 var2130) ; Statement: r0 := @this: org.apache.lucene.index.FrozenBufferedUpdates$TermDocsIterator 
(assert (not (= var1305 null-var2130)))
(declare-const var2992 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2992 null-String)))
(define-const var391 String (field/1689851648 var1305)) ; Statement: $r1 = r0.<org.apache.lucene.index.FrozenBufferedUpdates$TermDocsIterator: java.lang.String field> 
 ; Statement: if $r1 == null goto r0.<org.apache.lucene.index.FrozenBufferedUpdates$TermDocsIterator: java.lang.String field> = r2 
(assert (not (= var391 null-String))) ; Negate: Cond: $r1 == null  
(define-const var3258 String (field/1689851648 var1305)) ; Statement: $r8 = r0.<org.apache.lucene.index.FrozenBufferedUpdates$TermDocsIterator: java.lang.String field> 
(assert true)
(define-const var1159 Bool (= var3258 var2992)) ; Statement: $z2 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z2 != 0 goto return 
(assert (not (= (ite var1159 1 0) 0))) ; Cond: $z2 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {field/1689851648=([org.apache.lucene.index.FrozenBufferedUpdates$TermDocsIterator], java.lang.String)}
; {var2130=org.apache.lucene.index.FrozenBufferedUpdates$TermDocsIterator, var1305=r0, var2992=r2, var602=null_type, var391=$r1, var3258=$r8, var1159=$z2}
; {org.apache.lucene.index.FrozenBufferedUpdates$TermDocsIterator=var2130, r0=var1305, r2=var2992, null_type=var602, $r1=var391, $r8=var3258, $z2=var1159}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.lucene.index.FrozenBufferedUpdates$TermDocsIterator;	r2 := @parameter0: java.lang.String;	$r1 = r0.<org.apache.lucene.index.FrozenBufferedUpdates$TermDocsIterator: java.lang.String field>;	if $r1 == null goto r0.<org.apache.lucene.index.FrozenBufferedUpdates$TermDocsIterator: java.lang.String field> = r2;	$r8 = r0.<org.apache.lucene.index.FrozenBufferedUpdates$TermDocsIterator: java.lang.String field>;	$z2 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z2 != 0 goto return;	return
;block_num 3