(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var205 0)
(declare-sort var2102 0)
(declare-sort var2495 0)
(declare-sort var345 0)
(declare-sort var601 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getPath/-371725074 (var2102) String)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-fun getParent/-1244588663 (var2102) var2495)
(declare-fun rootCriteria/333213257 (var205) var345)
(declare-fun equals/-1650223740 (var601 var601) Bool)
(declare-fun cast-from-var2495-to-var601 (var2495) var601)
(declare-fun cast-from-var345-to-var601 (var345) var601)
(declare-const null-var205 var205)
(declare-const null-var2102 var2102)
(declare-const null-var2495 var2495)
(declare-const var2470 var205) ; Statement: r1 := @this: org.hibernate.loader.criteria.CriteriaQueryTranslator 
(assert (not (= var2470 null-var205)))
(declare-const var3247 var2102) ; Statement: r0 := @parameter0: org.hibernate.internal.CriteriaImpl$Subcriteria 
(assert (not (= var3247 null-var2102)))
(assert true)
(define-const var3114 String (getPath/-371725074 var3247)) ; Statement: r14 = virtualinvoke r0.<org.hibernate.internal.CriteriaImpl$Subcriteria: java.lang.String getPath()>() 
(define-const var3432 var2495 null-var2495) ; Statement: r15 = null 
(assert true)
(define-const var3116 Int (indexOf/-1037706067 var3114 46)) ; Statement: $i0 = virtualinvoke r14.<java.lang.String: int indexOf(int)>(46) 
 ; Statement: if $i0 <= 0 goto (branch) 
(assert (<= var3116 0)) ; Cond: $i0 <= 0 
 ; Statement: if r15 != null goto r14 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String unroot(java.lang.String)>(r14) 
(assert (not (not (= var3432 null-var2495)))) ; Negate: Cond: r15 != null  
(assert true)
(define-const var3432!1 var2495 (getParent/-1244588663 var3247)) ; Statement: r15 = virtualinvoke r0.<org.hibernate.internal.CriteriaImpl$Subcriteria: org.hibernate.Criteria getParent()>() 
 ; Statement: goto [?= $r2 = r1.<org.hibernate.loader.criteria.CriteriaQueryTranslator: org.hibernate.internal.CriteriaImpl rootCriteria>] 
(assert true) ; Non Conditional
(define-const var685 var345 (rootCriteria/333213257 var2470)) ; Statement: $r2 = r1.<org.hibernate.loader.criteria.CriteriaQueryTranslator: org.hibernate.internal.CriteriaImpl rootCriteria> 
(assert true)
(define-const var1684 Bool (equals/-1650223740 (cast-from-var2495-to-var601 var3432!1) (cast-from-var345-to-var601 var685))) ; Statement: $z0 = virtualinvoke r15.<java.lang.Object: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto $r3 = new java.lang.StringBuilder 
(assert (not (= (ite var1684 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return r14 
(check-sat)
(get-model)
(get-unsat-core)
; {getPath/-371725074=([org.hibernate.internal.CriteriaImpl$Subcriteria], java.lang.String), indexOf/-1037706067=([java.lang.String, int], int), getParent/-1244588663=([org.hibernate.internal.CriteriaImpl$Subcriteria], org.hibernate.Criteria), rootCriteria/333213257=([org.hibernate.loader.criteria.CriteriaQueryTranslator], org.hibernate.internal.CriteriaImpl), equals/-1650223740=([java.lang.Object, java.lang.Object], boolean), cast-from-var2495-to-var601=([org.hibernate.Criteria], java.lang.Object), cast-from-var345-to-var601=([org.hibernate.internal.CriteriaImpl], java.lang.Object)}
; {var205=org.hibernate.loader.criteria.CriteriaQueryTranslator, var2470=r1, var2102=org.hibernate.internal.CriteriaImpl$Subcriteria, var3247=r0, var3114=r14, var2495=org.hibernate.Criteria, var3432=r15, var3116=$i0, var345=org.hibernate.internal.CriteriaImpl, var685=$r2, var601=java.lang.Object, var1684=$z0}
; {org.hibernate.loader.criteria.CriteriaQueryTranslator=var205, r1=var2470, org.hibernate.internal.CriteriaImpl$Subcriteria=var2102, r0=var3247, r14=var3114, org.hibernate.Criteria=var2495, r15=var3432, $i0=var3116, org.hibernate.internal.CriteriaImpl=var345, $r2=var685, java.lang.Object=var601, $z0=var1684}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r1 := @this: org.hibernate.loader.criteria.CriteriaQueryTranslator;	r0 := @parameter0: org.hibernate.internal.CriteriaImpl$Subcriteria;	r14 = virtualinvoke r0.<org.hibernate.internal.CriteriaImpl$Subcriteria: java.lang.String getPath()>();	r15 = null;	$i0 = virtualinvoke r14.<java.lang.String: int indexOf(int)>(46);	if $i0 <= 0 goto (branch);	if r15 != null goto r14 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String unroot(java.lang.String)>(r14);	r15 = virtualinvoke r0.<org.hibernate.internal.CriteriaImpl$Subcriteria: org.hibernate.Criteria getParent()>();	goto [?= $r2 = r1.<org.hibernate.loader.criteria.CriteriaQueryTranslator: org.hibernate.internal.CriteriaImpl rootCriteria>];	$r2 = r1.<org.hibernate.loader.criteria.CriteriaQueryTranslator: org.hibernate.internal.CriteriaImpl rootCriteria>;	$z0 = virtualinvoke r15.<java.lang.Object: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto $r3 = new java.lang.StringBuilder;	return r14
;block_num 5