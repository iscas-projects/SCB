(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var859 0)
(declare-sort var3097 0)
(declare-sort var1321 0)
(declare-sort var2993 0)
(declare-sort var2846 0)
(declare-sort var355 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getPath/-371725074 (var3097) String)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-fun var2993_unroot/945050158 (String) String)
(declare-fun rootCriteria/333213257 (var859) var2846)
(declare-fun equals/-1650223740 (var355 var355) Bool)
(declare-fun cast-from-var1321-to-var355 (var1321) var355)
(declare-fun cast-from-var2846-to-var355 (var2846) var355)
(declare-const null-var859 var859)
(declare-const null-var3097 var3097)
(declare-const null-var1321 var1321)
(declare-const var3480 var859) ; Statement: r1 := @this: org.hibernate.loader.criteria.CriteriaQueryTranslator 
(assert (not (= var3480 null-var859)))
(declare-const var1122 var3097) ; Statement: r0 := @parameter0: org.hibernate.internal.CriteriaImpl$Subcriteria 
(assert (not (= var1122 null-var3097)))
(assert true)
(define-const var2509 String (getPath/-371725074 var1122)) ; Statement: r14 = virtualinvoke r0.<org.hibernate.internal.CriteriaImpl$Subcriteria: java.lang.String getPath()>() 
(define-const var434 var1321 null-var1321) ; Statement: r15 = null 
(assert true)
(define-const var1431 Int (indexOf/-1037706067 var2509 46)) ; Statement: $i0 = virtualinvoke r14.<java.lang.String: int indexOf(int)>(46) 
 ; Statement: if $i0 <= 0 goto (branch) 
(assert (<= var1431 0)) ; Cond: $i0 <= 0 
 ; Statement: if r15 != null goto r14 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String unroot(java.lang.String)>(r14) 
(assert (not (= var434 null-var1321))) ; Cond: r15 != null 
(define-const var2509!1 String (var2993_unroot/945050158 var2509)) ; Statement: r14 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String unroot(java.lang.String)>(r14) 
(assert true) ; Non Conditional
(define-const var3509 var2846 (rootCriteria/333213257 var3480)) ; Statement: $r2 = r1.<org.hibernate.loader.criteria.CriteriaQueryTranslator: org.hibernate.internal.CriteriaImpl rootCriteria> 
(assert true)
(define-const var3952 Bool (equals/-1650223740 (cast-from-var1321-to-var355 var434) (cast-from-var2846-to-var355 var3509))) ; Statement: $z0 = virtualinvoke r15.<java.lang.Object: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto $r3 = new java.lang.StringBuilder 
(assert (not (= (ite var3952 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return r14 
(check-sat)
(get-model)
(get-unsat-core)
; {getPath/-371725074=([org.hibernate.internal.CriteriaImpl$Subcriteria], java.lang.String), indexOf/-1037706067=([java.lang.String, int], int), var2993_unroot/945050158=([java.lang.String], java.lang.String), rootCriteria/333213257=([org.hibernate.loader.criteria.CriteriaQueryTranslator], org.hibernate.internal.CriteriaImpl), equals/-1650223740=([java.lang.Object, java.lang.Object], boolean), cast-from-var1321-to-var355=([org.hibernate.Criteria], java.lang.Object), cast-from-var2846-to-var355=([org.hibernate.internal.CriteriaImpl], java.lang.Object)}
; {var859=org.hibernate.loader.criteria.CriteriaQueryTranslator, var3480=r1, var3097=org.hibernate.internal.CriteriaImpl$Subcriteria, var1122=r0, var2509=r14, var1321=org.hibernate.Criteria, var434=r15, var1431=$i0, var2993=org.hibernate.internal.util.StringHelper, var2846=org.hibernate.internal.CriteriaImpl, var3509=$r2, var355=java.lang.Object, var3952=$z0}
; {org.hibernate.loader.criteria.CriteriaQueryTranslator=var859, r1=var3480, org.hibernate.internal.CriteriaImpl$Subcriteria=var3097, r0=var1122, r14=var2509, org.hibernate.Criteria=var1321, r15=var434, $i0=var1431, org.hibernate.internal.util.StringHelper=var2993, org.hibernate.internal.CriteriaImpl=var2846, $r2=var3509, java.lang.Object=var355, $z0=var3952}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r1 := @this: org.hibernate.loader.criteria.CriteriaQueryTranslator;	r0 := @parameter0: org.hibernate.internal.CriteriaImpl$Subcriteria;	r14 = virtualinvoke r0.<org.hibernate.internal.CriteriaImpl$Subcriteria: java.lang.String getPath()>();	r15 = null;	$i0 = virtualinvoke r14.<java.lang.String: int indexOf(int)>(46);	if $i0 <= 0 goto (branch);	if r15 != null goto r14 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String unroot(java.lang.String)>(r14);	r14 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String unroot(java.lang.String)>(r14);	$r2 = r1.<org.hibernate.loader.criteria.CriteriaQueryTranslator: org.hibernate.internal.CriteriaImpl rootCriteria>;	$z0 = virtualinvoke r15.<java.lang.Object: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto $r3 = new java.lang.StringBuilder;	return r14
;block_num 5