(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var297 0)
(declare-sort var3 0)
(declare-sort var3008 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-fun getSQLAlias/-760617806 (var297 var3) String)
(declare-const null-var297 var297)
(declare-const null-var3 var3)
(declare-const null-String String)
(declare-const var677 var297) ; Statement: r1 := @this: org.hibernate.loader.criteria.CriteriaQueryTranslator 
(assert (not (= var677 null-var297)))
(declare-const var3791 var3) ; Statement: r2 := @parameter0: org.hibernate.Criteria 
(assert (not (= var3791 null-var3)))
(declare-const var112 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var112 null-String)))
(assert true)
(define-const var1514 Int (indexOf/-1037706067 var112 46)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46) 
 ; Statement: if $i0 <= 0 goto $r3 = virtualinvoke r1.<org.hibernate.loader.criteria.CriteriaQueryTranslator: java.lang.String getSQLAlias(org.hibernate.Criteria)>(r2) 
(assert (<= var1514 0)) ; Cond: $i0 <= 0 
(assert true)
(define-const var3990 String (getSQLAlias/-760617806 var677 var3791)) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.loader.criteria.CriteriaQueryTranslator: java.lang.String getSQLAlias(org.hibernate.Criteria)>(r2) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), getSQLAlias/-760617806=([org.hibernate.loader.criteria.CriteriaQueryTranslator, org.hibernate.Criteria], java.lang.String)}
; {var297=org.hibernate.loader.criteria.CriteriaQueryTranslator, var677=r1, var3=org.hibernate.Criteria, var3791=r2, var112=r0, var3008=null_type, var1514=$i0, var3990=$r3}
; {org.hibernate.loader.criteria.CriteriaQueryTranslator=var297, r1=var677, org.hibernate.Criteria=var3, r2=var3791, r0=var112, null_type=var3008, $i0=var1514, $r3=var3990}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r1 := @this: org.hibernate.loader.criteria.CriteriaQueryTranslator;	r2 := @parameter0: org.hibernate.Criteria;	r0 := @parameter1: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46);	if $i0 <= 0 goto $r3 = virtualinvoke r1.<org.hibernate.loader.criteria.CriteriaQueryTranslator: java.lang.String getSQLAlias(org.hibernate.Criteria)>(r2);	$r3 = virtualinvoke r1.<org.hibernate.loader.criteria.CriteriaQueryTranslator: java.lang.String getSQLAlias(org.hibernate.Criteria)>(r2);	return $r3
;block_num 2