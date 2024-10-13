(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var668 0)
(declare-sort var1494 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun alias/-294722229 (var668) String)
(declare-fun getColumnAliases/-479615182 (var668 Int) (Array Int String))
(declare-const null-var668 var668)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3087 var668) ; Statement: r0 := @this: org.hibernate.criterion.AliasedProjection 
(assert (not (= var3087 null-var668)))
(declare-const var1450 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1450 null-String)))
(declare-const var1833 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1833 null-Int)))
(define-const var3340 String (alias/-294722229 var3087)) ; Statement: $r2 = r0.<org.hibernate.criterion.AliasedProjection: java.lang.String alias> 
(assert true)
(define-const var1960 Bool (= var3340 var1450)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r3 = null 
(assert (not (= (ite var1960 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var1018 (Array Int String) (getColumnAliases/-479615182 var3087 var1833)) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.criterion.AliasedProjection: java.lang.String[] getColumnAliases(int)>(i0) 
 ; Statement: goto [?= return $r3] 
(assert true) ; Non Conditional
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {alias/-294722229=([org.hibernate.criterion.AliasedProjection], java.lang.String), getColumnAliases/-479615182=([org.hibernate.criterion.AliasedProjection, int], java.lang.String[])}
; {var668=org.hibernate.criterion.AliasedProjection, var3087=r0, var1450=r1, var1494=null_type, var1833=i0, var3340=$r2, var1960=$z0, var1018=$r3}
; {org.hibernate.criterion.AliasedProjection=var668, r0=var3087, r1=var1450, null_type=var1494, i0=var1833, $r2=var3340, $z0=var1960, $r3=var1018}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.hibernate.criterion.AliasedProjection;	r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	$r2 = r0.<org.hibernate.criterion.AliasedProjection: java.lang.String alias>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $r3 = null;	$r3 = virtualinvoke r0.<org.hibernate.criterion.AliasedProjection: java.lang.String[] getColumnAliases(int)>(i0);	goto [?= return $r3];	return $r3
;block_num 3