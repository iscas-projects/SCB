(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1329 0)
(declare-sort var3358 0)
(declare-sort var2370 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-fun getEntityName/943996358 (var1329 var3358) String)
(declare-const null-var1329 var1329)
(declare-const null-var3358 var3358)
(declare-const null-String String)
(declare-const var2282 var1329) ; Statement: r1 := @this: org.hibernate.loader.criteria.CriteriaQueryTranslator 
(assert (not (= var2282 null-var1329)))
(declare-const var3128 var3358) ; Statement: r2 := @parameter0: org.hibernate.Criteria 
(assert (not (= var3128 null-var3358)))
(declare-const var405 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var405 null-String)))
(assert true)
(define-const var2098 Int (indexOf/-1037706067 var405 46)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46) 
 ; Statement: if $i0 <= 0 goto $r3 = virtualinvoke r1.<org.hibernate.loader.criteria.CriteriaQueryTranslator: java.lang.String getEntityName(org.hibernate.Criteria)>(r2) 
(assert (<= var2098 0)) ; Cond: $i0 <= 0 
(assert true)
(define-const var3945 String (getEntityName/943996358 var2282 var3128)) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.loader.criteria.CriteriaQueryTranslator: java.lang.String getEntityName(org.hibernate.Criteria)>(r2) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), getEntityName/943996358=([org.hibernate.loader.criteria.CriteriaQueryTranslator, org.hibernate.Criteria], java.lang.String)}
; {var1329=org.hibernate.loader.criteria.CriteriaQueryTranslator, var2282=r1, var3358=org.hibernate.Criteria, var3128=r2, var405=r0, var2370=null_type, var2098=$i0, var3945=$r3}
; {org.hibernate.loader.criteria.CriteriaQueryTranslator=var1329, r1=var2282, org.hibernate.Criteria=var3358, r2=var3128, r0=var405, null_type=var2370, $i0=var2098, $r3=var3945}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r1 := @this: org.hibernate.loader.criteria.CriteriaQueryTranslator;	r2 := @parameter0: org.hibernate.Criteria;	r0 := @parameter1: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46);	if $i0 <= 0 goto $r3 = virtualinvoke r1.<org.hibernate.loader.criteria.CriteriaQueryTranslator: java.lang.String getEntityName(org.hibernate.Criteria)>(r2);	$r3 = virtualinvoke r1.<org.hibernate.loader.criteria.CriteriaQueryTranslator: java.lang.String getEntityName(org.hibernate.Criteria)>(r2);	return $r3
;block_num 2