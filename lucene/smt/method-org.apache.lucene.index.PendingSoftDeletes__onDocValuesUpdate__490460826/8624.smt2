(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2810 0)
(declare-sort var3845 0)
(declare-sort var2890 0)
(declare-sort var738 0)
(declare-sort var2772 0)
(declare-sort var3248 0)
(declare-sort var257 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun field/1510472889 (var2810) String)
(declare-fun name/1093634646 (var3845) String)
(declare-fun pendingDeleteCount/890683843 (var738) Int)
(declare-fun cast-from-var2810-to-var738 (var2810) var738)
(declare-fun getMutableBits/-799555937 (var738) var2772)
(declare-fun var2810_applySoftDeletes/964931795 (var3248 var2772) Int)
(declare-fun cast-from-var2890-to-var3248 (var2890) var3248)
(declare-fun assertPendingDeletes/1482683731 (var2810) Bool)
(declare-fun var257-init () var257)
(declare-fun <init>/-208190597 (var257) void)
(declare-const null-var2810 var2810)
(declare-const null-var3845 var3845)
(declare-const null-var2890 var2890)
(declare-const var2810-$assertionsDisabled Bool)
(declare-const var2088 var2810) ; Statement: r0 := @this: org.apache.lucene.index.PendingSoftDeletes 
(assert (not (= var2088 null-var2810)))
(declare-const var2984 var3845) ; Statement: r1 := @parameter0: org.apache.lucene.index.FieldInfo 
(assert (not (= var2984 null-var3845)))
(declare-const var2919 var2890) ; Statement: r7 := @parameter1: org.apache.lucene.index.DocValuesFieldUpdates$Iterator 
(assert (not (= var2919 null-var2890)))
(define-const var2758 String (field/1510472889 var2088)) ; Statement: $r3 = r0.<org.apache.lucene.index.PendingSoftDeletes: java.lang.String field> 
(define-const var1115 String (name/1093634646 var2984)) ; Statement: $r2 = r1.<org.apache.lucene.index.FieldInfo: java.lang.String name> 
(assert true)
(define-const var2136 Bool (= var2758 var1115)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto $z4 = <org.apache.lucene.index.PendingSoftDeletes: boolean $assertionsDisabled> 
(assert (not (= (ite var2136 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2230 Int (pendingDeleteCount/890683843 (cast-from-var2810-to-var738 var2088))) ; Statement: $i8 = r0.<org.apache.lucene.index.PendingSoftDeletes: int pendingDeleteCount> 
(assert true)
(define-const var3084 var2772 (getMutableBits/-799555937 (cast-from-var2810-to-var738 var2088))) ; Statement: $r8 = virtualinvoke r0.<org.apache.lucene.index.PendingSoftDeletes: org.apache.lucene.util.FixedBitSet getMutableBits()>() 
(define-const var354 Int (var2810_applySoftDeletes/964931795 (cast-from-var2890-to-var3248 var2919) var3084)) ; Statement: $i9 = staticinvoke <org.apache.lucene.index.PendingSoftDeletes: int applySoftDeletes(org.apache.lucene.search.DocIdSetIterator,org.apache.lucene.util.FixedBitSet)>(r7, $r8) 
(define-const var2716 Int (+ var2230 var354)) ; Statement: $i10 = $i8 + $i9 
(declare-const var2088!1 var2810)
(assert (not (= var2088!1 null-var2810)))
(assert (= (pendingDeleteCount/890683843 (cast-from-var2810-to-var738 var2088!1)) var2716)) ; Statement: r0.<org.apache.lucene.index.PendingSoftDeletes: int pendingDeleteCount> = $i10 
(define-const var3752 Bool var2810-$assertionsDisabled) ; Statement: $z2 = <org.apache.lucene.index.PendingSoftDeletes: boolean $assertionsDisabled> 
 ; Statement: if $z2 != 0 goto $r10 = r0.<org.apache.lucene.index.PendingSoftDeletes: org.apache.lucene.index.SegmentCommitInfo info> 
(assert (not (not (= (ite var3752 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(assert true)
(define-const var3285 Bool (assertPendingDeletes/1482683731 var2088!1)) ; Statement: $z3 = virtualinvoke r0.<org.apache.lucene.index.PendingSoftDeletes: boolean assertPendingDeletes()>() 
 ; Statement: if $z3 != 0 goto $r10 = r0.<org.apache.lucene.index.PendingSoftDeletes: org.apache.lucene.index.SegmentCommitInfo info> 
(assert (not (not (= (ite var3285 1 0) 0)))) ; Negate: Cond: $z3 != 0  
(define-const var2279 var257 var257-init) ; Statement: $r12 = new java.lang.AssertionError 
(assert true)
;(assert (<init>/-208190597 var2279)) ; Statement: specialinvoke $r12.<java.lang.AssertionError: void <init>()>() 

(declare-const var2279!1 var257)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {field/1510472889=([org.apache.lucene.index.PendingSoftDeletes], java.lang.String), name/1093634646=([org.apache.lucene.index.FieldInfo], java.lang.String), pendingDeleteCount/890683843=([org.apache.lucene.index.PendingDeletes], int), cast-from-var2810-to-var738=([org.apache.lucene.index.PendingSoftDeletes], org.apache.lucene.index.PendingDeletes), getMutableBits/-799555937=([org.apache.lucene.index.PendingDeletes], org.apache.lucene.util.FixedBitSet), var2810_applySoftDeletes/964931795=([org.apache.lucene.search.DocIdSetIterator, org.apache.lucene.util.FixedBitSet], int), cast-from-var2890-to-var3248=([org.apache.lucene.index.DocValuesFieldUpdates$Iterator], org.apache.lucene.search.DocIdSetIterator), assertPendingDeletes/1482683731=([org.apache.lucene.index.PendingSoftDeletes], boolean), var257-init=([], java.lang.AssertionError), <init>/-208190597=([java.lang.AssertionError], void)}
; {var2810=org.apache.lucene.index.PendingSoftDeletes, var2088=r0, var3845=org.apache.lucene.index.FieldInfo, var2984=r1, var2890=org.apache.lucene.index.DocValuesFieldUpdates$Iterator, var2919=r7, var2758=$r3, var1115=$r2, var2136=$z0, var738=org.apache.lucene.index.PendingDeletes, var2230=$i8, var2772=org.apache.lucene.util.FixedBitSet, var3084=$r8, var3248=org.apache.lucene.search.DocIdSetIterator, var354=$i9, var2716=$i10, var3752=$z2, var3285=$z3, var257=java.lang.AssertionError, var2279=$r12}
; {org.apache.lucene.index.PendingSoftDeletes=var2810, r0=var2088, org.apache.lucene.index.FieldInfo=var3845, r1=var2984, org.apache.lucene.index.DocValuesFieldUpdates$Iterator=var2890, r7=var2919, $r3=var2758, $r2=var1115, $z0=var2136, org.apache.lucene.index.PendingDeletes=var738, $i8=var2230, org.apache.lucene.util.FixedBitSet=var2772, $r8=var3084, org.apache.lucene.search.DocIdSetIterator=var3248, $i9=var354, $i10=var2716, $z2=var3752, $z3=var3285, java.lang.AssertionError=var257, $r12=var2279}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.lucene.index.PendingSoftDeletes;	r1 := @parameter0: org.apache.lucene.index.FieldInfo;	r7 := @parameter1: org.apache.lucene.index.DocValuesFieldUpdates$Iterator;	$r3 = r0.<org.apache.lucene.index.PendingSoftDeletes: java.lang.String field>;	$r2 = r1.<org.apache.lucene.index.FieldInfo: java.lang.String name>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto $z4 = <org.apache.lucene.index.PendingSoftDeletes: boolean $assertionsDisabled>;	$i8 = r0.<org.apache.lucene.index.PendingSoftDeletes: int pendingDeleteCount>;	$r8 = virtualinvoke r0.<org.apache.lucene.index.PendingSoftDeletes: org.apache.lucene.util.FixedBitSet getMutableBits()>();	$i9 = staticinvoke <org.apache.lucene.index.PendingSoftDeletes: int applySoftDeletes(org.apache.lucene.search.DocIdSetIterator,org.apache.lucene.util.FixedBitSet)>(r7, $r8);	$i10 = $i8 + $i9;	r0.<org.apache.lucene.index.PendingSoftDeletes: int pendingDeleteCount> = $i10;	$z2 = <org.apache.lucene.index.PendingSoftDeletes: boolean $assertionsDisabled>;	if $z2 != 0 goto $r10 = r0.<org.apache.lucene.index.PendingSoftDeletes: org.apache.lucene.index.SegmentCommitInfo info>;	$z3 = virtualinvoke r0.<org.apache.lucene.index.PendingSoftDeletes: boolean assertPendingDeletes()>();	if $z3 != 0 goto $r10 = r0.<org.apache.lucene.index.PendingSoftDeletes: org.apache.lucene.index.SegmentCommitInfo info>;	$r12 = new java.lang.AssertionError;	specialinvoke $r12.<java.lang.AssertionError: void <init>()>();	throw $r12
;block_num 4