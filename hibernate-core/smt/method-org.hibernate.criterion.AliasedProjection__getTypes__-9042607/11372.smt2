(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1720 0)
(declare-sort var2924 0)
(declare-sort var3441 0)
(declare-sort var534 0)
(declare-sort var1174 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun alias/-294722229 (var1720) String)
(declare-const null-var1720 var1720)
(declare-const null-String String)
(declare-const null-var3441 var3441)
(declare-const null-var534 var534)
(declare-const null-__Array__Int__var1174__ (Array Int var1174))
(declare-const var3131 var1720) ; Statement: r0 := @this: org.hibernate.criterion.AliasedProjection 
(assert (not (= var3131 null-var1720)))
(declare-const var1310 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1310 null-String)))
(declare-const var3630 var3441) ; Statement: r3 := @parameter1: org.hibernate.Criteria 
(assert (not (= var3630 null-var3441)))
(declare-const var1338 var534) ; Statement: r4 := @parameter2: org.hibernate.criterion.CriteriaQuery 
(assert (not (= var1338 null-var534)))
(define-const var837 String (alias/-294722229 var3131)) ; Statement: $r2 = r0.<org.hibernate.criterion.AliasedProjection: java.lang.String alias> 
(assert true)
(define-const var848 Bool (= var837 var1310)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r5 = null 
(assert (= (ite var848 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2009 (Array Int var1174) null-__Array__Int__var1174__) ; Statement: $r5 = null 
(assert true) ; Non Conditional
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {alias/-294722229=([org.hibernate.criterion.AliasedProjection], java.lang.String)}
; {var1720=org.hibernate.criterion.AliasedProjection, var3131=r0, var1310=r1, var2924=null_type, var3441=org.hibernate.Criteria, var3630=r3, var534=org.hibernate.criterion.CriteriaQuery, var1338=r4, var837=$r2, var848=$z0, var1174=org.hibernate.type.Type, var2009=$r5}
; {org.hibernate.criterion.AliasedProjection=var1720, r0=var3131, r1=var1310, null_type=var2924, org.hibernate.Criteria=var3441, r3=var3630, org.hibernate.criterion.CriteriaQuery=var534, r4=var1338, $r2=var837, $z0=var848, org.hibernate.type.Type=var1174, $r5=var2009}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.hibernate.criterion.AliasedProjection;	r1 := @parameter0: java.lang.String;	r3 := @parameter1: org.hibernate.Criteria;	r4 := @parameter2: org.hibernate.criterion.CriteriaQuery;	$r2 = r0.<org.hibernate.criterion.AliasedProjection: java.lang.String alias>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $r5 = null;	$r5 = null;	return $r5
;block_num 3