(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var848 0)
(declare-sort var2075 0)
(declare-sort var2730 0)
(declare-sort var1835 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun alias/-294722229 (var848) String)
(declare-const null-var848 var848)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var2730 var2730)
(declare-const null-var1835 var1835)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var94 var848) ; Statement: r0 := @this: org.hibernate.criterion.AliasedProjection 
(assert (not (= var94 null-var848)))
(declare-const var2684 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2684 null-String)))
(declare-const var1491 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1491 null-Int)))
(declare-const var587 var2730) ; Statement: r3 := @parameter2: org.hibernate.Criteria 
(assert (not (= var587 null-var2730)))
(declare-const var2872 var1835) ; Statement: r4 := @parameter3: org.hibernate.criterion.CriteriaQuery 
(assert (not (= var2872 null-var1835)))
(define-const var195 String (alias/-294722229 var94)) ; Statement: $r2 = r0.<org.hibernate.criterion.AliasedProjection: java.lang.String alias> 
(assert true)
(define-const var954 Bool (= var195 var2684)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r5 = null 
(assert (= (ite var954 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2815 (Array Int String) null-__Array__Int__String__) ; Statement: $r5 = null 
(assert true) ; Non Conditional
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {alias/-294722229=([org.hibernate.criterion.AliasedProjection], java.lang.String)}
; {var848=org.hibernate.criterion.AliasedProjection, var94=r0, var2684=r1, var2075=null_type, var1491=i0, var2730=org.hibernate.Criteria, var587=r3, var1835=org.hibernate.criterion.CriteriaQuery, var2872=r4, var195=$r2, var954=$z0, var2815=$r5}
; {org.hibernate.criterion.AliasedProjection=var848, r0=var94, r1=var2684, null_type=var2075, i0=var1491, org.hibernate.Criteria=var2730, r3=var587, org.hibernate.criterion.CriteriaQuery=var1835, r4=var2872, $r2=var195, $z0=var954, $r5=var2815}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.hibernate.criterion.AliasedProjection;	r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	r3 := @parameter2: org.hibernate.Criteria;	r4 := @parameter3: org.hibernate.criterion.CriteriaQuery;	$r2 = r0.<org.hibernate.criterion.AliasedProjection: java.lang.String alias>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $r5 = null;	$r5 = null;	return $r5
;block_num 3