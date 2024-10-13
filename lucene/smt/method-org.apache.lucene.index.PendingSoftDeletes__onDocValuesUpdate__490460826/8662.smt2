(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2298 0)
(declare-sort var490 0)
(declare-sort var1245 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun field/1510472889 (var2298) String)
(declare-fun name/1093634646 (var490) String)
(declare-fun getDocValuesGen/1912520405 (var490) Int)
(declare-fun dvGeneration/1510472889 (var2298) Int)
(declare-const null-var2298 var2298)
(declare-const null-var490 var490)
(declare-const null-var1245 var1245)
(declare-const var2298-$assertionsDisabled Bool)
(declare-const var3574 var2298) ; Statement: r0 := @this: org.apache.lucene.index.PendingSoftDeletes 
(assert (not (= var3574 null-var2298)))
(declare-const var2091 var490) ; Statement: r1 := @parameter0: org.apache.lucene.index.FieldInfo 
(assert (not (= var2091 null-var490)))
(declare-const var3227 var1245) ; Statement: r7 := @parameter1: org.apache.lucene.index.DocValuesFieldUpdates$Iterator 
(assert (not (= var3227 null-var1245)))
(define-const var908 String (field/1510472889 var3574)) ; Statement: $r3 = r0.<org.apache.lucene.index.PendingSoftDeletes: java.lang.String field> 
(define-const var1346 String (name/1093634646 var2091)) ; Statement: $r2 = r1.<org.apache.lucene.index.FieldInfo: java.lang.String name> 
(assert true)
(define-const var3232 Bool (= var908 var1346)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto $z4 = <org.apache.lucene.index.PendingSoftDeletes: boolean $assertionsDisabled> 
(assert (= (ite var3232 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3530 Bool var2298-$assertionsDisabled) ; Statement: $z4 = <org.apache.lucene.index.PendingSoftDeletes: boolean $assertionsDisabled> 
 ; Statement: if $z4 != 0 goto $z1 = <org.apache.lucene.index.PendingSoftDeletes: boolean $assertionsDisabled> 
(assert (not (= (ite var3530 1 0) 0))) ; Cond: $z4 != 0 
(define-const var1278 Bool var2298-$assertionsDisabled) ; Statement: $z1 = <org.apache.lucene.index.PendingSoftDeletes: boolean $assertionsDisabled> 
 ; Statement: if $z1 != 0 goto $l0 = virtualinvoke r1.<org.apache.lucene.index.FieldInfo: long getDocValuesGen()>() 
(assert (not (= (ite var1278 1 0) 0))) ; Cond: $z1 != 0 
(assert true)
(define-const var1253 Int (getDocValuesGen/1912520405 var2091)) ; Statement: $l0 = virtualinvoke r1.<org.apache.lucene.index.FieldInfo: long getDocValuesGen()>() 
(declare-const var3574!1 var2298)
(assert (not (= var3574!1 null-var2298)))
(assert (= (dvGeneration/1510472889 var3574!1) var1253)) ; Statement: r0.<org.apache.lucene.index.PendingSoftDeletes: long dvGeneration> = $l0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {field/1510472889=([org.apache.lucene.index.PendingSoftDeletes], java.lang.String), name/1093634646=([org.apache.lucene.index.FieldInfo], java.lang.String), getDocValuesGen/1912520405=([org.apache.lucene.index.FieldInfo], long), dvGeneration/1510472889=([org.apache.lucene.index.PendingSoftDeletes], long)}
; {var2298=org.apache.lucene.index.PendingSoftDeletes, var3574=r0, var490=org.apache.lucene.index.FieldInfo, var2091=r1, var1245=org.apache.lucene.index.DocValuesFieldUpdates$Iterator, var3227=r7, var908=$r3, var1346=$r2, var3232=$z0, var3530=$z4, var1278=$z1, var1253=$l0}
; {org.apache.lucene.index.PendingSoftDeletes=var2298, r0=var3574, org.apache.lucene.index.FieldInfo=var490, r1=var2091, org.apache.lucene.index.DocValuesFieldUpdates$Iterator=var1245, r7=var3227, $r3=var908, $r2=var1346, $z0=var3232, $z4=var3530, $z1=var1278, $l0=var1253}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.lucene.index.PendingSoftDeletes;	r1 := @parameter0: org.apache.lucene.index.FieldInfo;	r7 := @parameter1: org.apache.lucene.index.DocValuesFieldUpdates$Iterator;	$r3 = r0.<org.apache.lucene.index.PendingSoftDeletes: java.lang.String field>;	$r2 = r1.<org.apache.lucene.index.FieldInfo: java.lang.String name>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto $z4 = <org.apache.lucene.index.PendingSoftDeletes: boolean $assertionsDisabled>;	$z4 = <org.apache.lucene.index.PendingSoftDeletes: boolean $assertionsDisabled>;	if $z4 != 0 goto $z1 = <org.apache.lucene.index.PendingSoftDeletes: boolean $assertionsDisabled>;	$z1 = <org.apache.lucene.index.PendingSoftDeletes: boolean $assertionsDisabled>;	if $z1 != 0 goto $l0 = virtualinvoke r1.<org.apache.lucene.index.FieldInfo: long getDocValuesGen()>();	$l0 = virtualinvoke r1.<org.apache.lucene.index.FieldInfo: long getDocValuesGen()>();	r0.<org.apache.lucene.index.PendingSoftDeletes: long dvGeneration> = $l0;	return
;block_num 4