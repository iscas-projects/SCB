(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2912 0)
(declare-sort var1208 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var2912 var2912)
(declare-const null-String String)
(declare-const var2912-$assertionsDisabled Bool)
(declare-const var1625 var2912) ; Statement: r3 := @this: org.apache.lucene.index.SegmentWriteState 
(assert (not (= var1625 null-var2912)))
(declare-const var288 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var288 null-String)))
(define-const var126 Bool var2912-$assertionsDisabled) ; Statement: $z0 = <org.apache.lucene.index.SegmentWriteState: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
(assert (not (= (ite var126 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var283 Bool (isEmpty/-1285796103 var288)) ; Statement: $z1 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z1 != 0 goto return 1 
(assert (not (= (ite var283 1 0) 0))) ; Cond: $z1 != 0 
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean)}
; {var2912=org.apache.lucene.index.SegmentWriteState, var1625=r3, var288=r0, var1208=null_type, var126=$z0, var283=$z1}
; {org.apache.lucene.index.SegmentWriteState=var2912, r3=var1625, r0=var288, null_type=var1208, $z0=var126, $z1=var283}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r3 := @this: org.apache.lucene.index.SegmentWriteState;	r0 := @parameter0: java.lang.String;	$z0 = <org.apache.lucene.index.SegmentWriteState: boolean $assertionsDisabled>;	if $z0 != 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	$z1 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z1 != 0 goto return 1;	return 1
;block_num 3