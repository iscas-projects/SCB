(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1947 0)
(declare-sort var3400 0)
(declare-sort var3174 0)
(declare-sort var2902 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun alias/-294722229 (var1947) String)
(declare-fun getColumnAliases/-1617645037 (var1947 Int var3174 var2902) (Array Int String))
(declare-const null-var1947 var1947)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var3174 var3174)
(declare-const null-var2902 var2902)
(declare-const var1343 var1947) ; Statement: r0 := @this: org.hibernate.criterion.AliasedProjection 
(assert (not (= var1343 null-var1947)))
(declare-const var3502 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3502 null-String)))
(declare-const var3789 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3789 null-Int)))
(declare-const var602 var3174) ; Statement: r3 := @parameter2: org.hibernate.Criteria 
(assert (not (= var602 null-var3174)))
(declare-const var3347 var2902) ; Statement: r4 := @parameter3: org.hibernate.criterion.CriteriaQuery 
(assert (not (= var3347 null-var2902)))
(define-const var3780 String (alias/-294722229 var1343)) ; Statement: $r2 = r0.<org.hibernate.criterion.AliasedProjection: java.lang.String alias> 
(assert true)
(define-const var567 Bool (= var3780 var3502)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r5 = null 
(assert (not (= (ite var567 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var2665 (Array Int String) (getColumnAliases/-1617645037 var1343 var3789 var602 var3347)) ; Statement: $r5 = virtualinvoke r0.<org.hibernate.criterion.AliasedProjection: java.lang.String[] getColumnAliases(int,org.hibernate.Criteria,org.hibernate.criterion.CriteriaQuery)>(i0, r3, r4) 
 ; Statement: goto [?= return $r5] 
(assert true) ; Non Conditional
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {alias/-294722229=([org.hibernate.criterion.AliasedProjection], java.lang.String), getColumnAliases/-1617645037=([org.hibernate.criterion.AliasedProjection, int, org.hibernate.Criteria, org.hibernate.criterion.CriteriaQuery], java.lang.String[])}
; {var1947=org.hibernate.criterion.AliasedProjection, var1343=r0, var3502=r1, var3400=null_type, var3789=i0, var3174=org.hibernate.Criteria, var602=r3, var2902=org.hibernate.criterion.CriteriaQuery, var3347=r4, var3780=$r2, var567=$z0, var2665=$r5}
; {org.hibernate.criterion.AliasedProjection=var1947, r0=var1343, r1=var3502, null_type=var3400, i0=var3789, org.hibernate.Criteria=var3174, r3=var602, org.hibernate.criterion.CriteriaQuery=var2902, r4=var3347, $r2=var3780, $z0=var567, $r5=var2665}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.hibernate.criterion.AliasedProjection;	r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	r3 := @parameter2: org.hibernate.Criteria;	r4 := @parameter3: org.hibernate.criterion.CriteriaQuery;	$r2 = r0.<org.hibernate.criterion.AliasedProjection: java.lang.String alias>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $r5 = null;	$r5 = virtualinvoke r0.<org.hibernate.criterion.AliasedProjection: java.lang.String[] getColumnAliases(int,org.hibernate.Criteria,org.hibernate.criterion.CriteriaQuery)>(i0, r3, r4);	goto [?= return $r5];	return $r5
;block_num 3