(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var770 0)
(declare-sort var3244 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun alias/-294722229 (var770) String)
(declare-const null-var770 var770)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3976 var770) ; Statement: r0 := @this: org.hibernate.criterion.AliasedProjection 
(assert (not (= var3976 null-var770)))
(declare-const var584 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var584 null-String)))
(declare-const var3525 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3525 null-Int)))
(define-const var1368 String (alias/-294722229 var3976)) ; Statement: $r2 = r0.<org.hibernate.criterion.AliasedProjection: java.lang.String alias> 
(assert true)
(define-const var1672 Bool (= var1368 var584)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r3 = null 
(assert (= (ite var1672 1 0) 0)) ; Cond: $z0 == 0 
(define-const var818 (Array Int String) null-__Array__Int__String__) ; Statement: $r3 = null 
(assert true) ; Non Conditional
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {alias/-294722229=([org.hibernate.criterion.AliasedProjection], java.lang.String)}
; {var770=org.hibernate.criterion.AliasedProjection, var3976=r0, var584=r1, var3244=null_type, var3525=i0, var1368=$r2, var1672=$z0, var818=$r3}
; {org.hibernate.criterion.AliasedProjection=var770, r0=var3976, r1=var584, null_type=var3244, i0=var3525, $r2=var1368, $z0=var1672, $r3=var818}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.hibernate.criterion.AliasedProjection;	r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	$r2 = r0.<org.hibernate.criterion.AliasedProjection: java.lang.String alias>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $r3 = null;	$r3 = null;	return $r3
;block_num 3