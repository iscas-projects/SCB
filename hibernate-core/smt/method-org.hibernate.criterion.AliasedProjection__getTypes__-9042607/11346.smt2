(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1772 0)
(declare-sort var879 0)
(declare-sort var3220 0)
(declare-sort var1332 0)
(declare-sort var249 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun alias/-294722229 (var1772) String)
(declare-fun getTypes/1040041374 (var1772 var3220 var1332) (Array Int var249))
(declare-const null-var1772 var1772)
(declare-const null-String String)
(declare-const null-var3220 var3220)
(declare-const null-var1332 var1332)
(declare-const var2295 var1772) ; Statement: r0 := @this: org.hibernate.criterion.AliasedProjection 
(assert (not (= var2295 null-var1772)))
(declare-const var1360 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1360 null-String)))
(declare-const var1911 var3220) ; Statement: r3 := @parameter1: org.hibernate.Criteria 
(assert (not (= var1911 null-var3220)))
(declare-const var2852 var1332) ; Statement: r4 := @parameter2: org.hibernate.criterion.CriteriaQuery 
(assert (not (= var2852 null-var1332)))
(define-const var1237 String (alias/-294722229 var2295)) ; Statement: $r2 = r0.<org.hibernate.criterion.AliasedProjection: java.lang.String alias> 
(assert true)
(define-const var1833 Bool (= var1237 var1360)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r5 = null 
(assert (not (= (ite var1833 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var1727 (Array Int var249) (getTypes/1040041374 var2295 var1911 var2852)) ; Statement: $r5 = virtualinvoke r0.<org.hibernate.criterion.AliasedProjection: org.hibernate.type.Type[] getTypes(org.hibernate.Criteria,org.hibernate.criterion.CriteriaQuery)>(r3, r4) 
 ; Statement: goto [?= return $r5] 
(assert true) ; Non Conditional
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {alias/-294722229=([org.hibernate.criterion.AliasedProjection], java.lang.String), getTypes/1040041374=([org.hibernate.criterion.AliasedProjection, org.hibernate.Criteria, org.hibernate.criterion.CriteriaQuery], org.hibernate.type.Type[])}
; {var1772=org.hibernate.criterion.AliasedProjection, var2295=r0, var1360=r1, var879=null_type, var3220=org.hibernate.Criteria, var1911=r3, var1332=org.hibernate.criterion.CriteriaQuery, var2852=r4, var1237=$r2, var1833=$z0, var249=org.hibernate.type.Type, var1727=$r5}
; {org.hibernate.criterion.AliasedProjection=var1772, r0=var2295, r1=var1360, null_type=var879, org.hibernate.Criteria=var3220, r3=var1911, org.hibernate.criterion.CriteriaQuery=var1332, r4=var2852, $r2=var1237, $z0=var1833, org.hibernate.type.Type=var249, $r5=var1727}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.hibernate.criterion.AliasedProjection;	r1 := @parameter0: java.lang.String;	r3 := @parameter1: org.hibernate.Criteria;	r4 := @parameter2: org.hibernate.criterion.CriteriaQuery;	$r2 = r0.<org.hibernate.criterion.AliasedProjection: java.lang.String alias>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $r5 = null;	$r5 = virtualinvoke r0.<org.hibernate.criterion.AliasedProjection: org.hibernate.type.Type[] getTypes(org.hibernate.Criteria,org.hibernate.criterion.CriteriaQuery)>(r3, r4);	goto [?= return $r5];	return $r5
;block_num 3