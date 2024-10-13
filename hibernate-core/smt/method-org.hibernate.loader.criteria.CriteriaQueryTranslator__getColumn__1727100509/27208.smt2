(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2427 0)
(declare-sort var602 0)
(declare-sort var2496 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getColumns/369762598 (var2427 String var602) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-var2427 var2427)
(declare-const null-var602 var602)
(declare-const null-String String)
(declare-const var3010 var2427) ; Statement: r0 := @this: org.hibernate.loader.criteria.CriteriaQueryTranslator 
(assert (not (= var3010 null-var2427)))
(declare-const var2607 var602) ; Statement: r2 := @parameter0: org.hibernate.Criteria 
(assert (not (= var2607 null-var602)))
(declare-const var1877 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1877 null-String)))
(assert true)
(define-const var2495 (Array Int String) (getColumns/369762598 var3010 var1877 var2607)) ; Statement: r3 = virtualinvoke r0.<org.hibernate.loader.criteria.CriteriaQueryTranslator: java.lang.String[] getColumns(java.lang.String,org.hibernate.Criteria)>(r1, r2) 
(define-const var2136 Int (getLength-Arr-String-1 var2495)) ; Statement: $i0 = lengthof r3 
 ; Statement: if $i0 == 1 goto $r4 = r3[0] 
(assert (= var2136 1)) ; Cond: $i0 == 1 
(define-const var2180 String (select var2495 0)) ; Statement: $r4 = r3[0] 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getColumns/369762598=([org.hibernate.loader.criteria.CriteriaQueryTranslator, java.lang.String, org.hibernate.Criteria], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int)}
; {var2427=org.hibernate.loader.criteria.CriteriaQueryTranslator, var3010=r0, var602=org.hibernate.Criteria, var2607=r2, var1877=r1, var2496=null_type, var2495=r3, var2136=$i0, var2180=$r4}
; {org.hibernate.loader.criteria.CriteriaQueryTranslator=var2427, r0=var3010, org.hibernate.Criteria=var602, r2=var2607, r1=var1877, null_type=var2496, r3=var2495, $i0=var2136, $r4=var2180}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.loader.criteria.CriteriaQueryTranslator;	r2 := @parameter0: org.hibernate.Criteria;	r1 := @parameter1: java.lang.String;	r3 = virtualinvoke r0.<org.hibernate.loader.criteria.CriteriaQueryTranslator: java.lang.String[] getColumns(java.lang.String,org.hibernate.Criteria)>(r1, r2);	$i0 = lengthof r3;	if $i0 == 1 goto $r4 = r3[0];	$r4 = r3[0];	return $r4
;block_num 2