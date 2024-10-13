(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1804 0)
(declare-sort var185 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getPropertyIndexOrNull/-1370338729 (var1804 String) Int)
(declare-fun intValue/-1815674922 (Int) Int)
(declare-const null-var1804 var1804)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2701 var1804) ; Statement: r0 := @this: org.hibernate.tuple.entity.EntityMetamodel 
(assert (not (= var2701 null-var1804)))
(declare-const var338 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var338 null-String)))
(assert true)
(define-const var1013 Int (getPropertyIndexOrNull/-1370338729 var2701 var338)) ; Statement: r2 = virtualinvoke r0.<org.hibernate.tuple.entity.EntityMetamodel: java.lang.Integer getPropertyIndexOrNull(java.lang.String)>(r1) 
 ; Statement: if r2 != null goto $i0 = virtualinvoke r2.<java.lang.Integer: int intValue()>() 
(assert (not (= var1013 null-Int))) ; Cond: r2 != null 
(assert true)
(define-const var1561 Int (intValue/-1815674922 var1013)) ; Statement: $i0 = virtualinvoke r2.<java.lang.Integer: int intValue()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {getPropertyIndexOrNull/-1370338729=([org.hibernate.tuple.entity.EntityMetamodel, java.lang.String], java.lang.Integer), intValue/-1815674922=([java.lang.Integer], int)}
; {var1804=org.hibernate.tuple.entity.EntityMetamodel, var2701=r0, var338=r1, var185=null_type, var1013=r2, var1561=$i0}
; {org.hibernate.tuple.entity.EntityMetamodel=var1804, r0=var2701, r1=var338, null_type=var185, r2=var1013, $i0=var1561}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.tuple.entity.EntityMetamodel;	r1 := @parameter0: java.lang.String;	r2 = virtualinvoke r0.<org.hibernate.tuple.entity.EntityMetamodel: java.lang.Integer getPropertyIndexOrNull(java.lang.String)>(r1);	if r2 != null goto $i0 = virtualinvoke r2.<java.lang.Integer: int intValue()>();	$i0 = virtualinvoke r2.<java.lang.Integer: int intValue()>();	return $i0
;block_num 2