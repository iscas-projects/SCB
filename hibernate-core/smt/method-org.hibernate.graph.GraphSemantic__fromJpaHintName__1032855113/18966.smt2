(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3909 0)
(declare-sort var553 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getJpaHintName/1724667075 (var553) String)
(declare-const null-String String)
(declare-const var553-$assertionsDisabled Bool)
(declare-const var553-FETCH var553)
(declare-const var2748 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2748 null-String)))
(define-const var1993 Bool var553-$assertionsDisabled) ; Statement: $z0 = <org.hibernate.graph.GraphSemantic: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $r0 = <org.hibernate.graph.GraphSemantic: org.hibernate.graph.GraphSemantic FETCH> 
(assert (not (= (ite var1993 1 0) 0))) ; Cond: $z0 != 0 
(define-const var636 var553 var553-FETCH) ; Statement: $r0 = <org.hibernate.graph.GraphSemantic: org.hibernate.graph.GraphSemantic FETCH> 
(assert true)
(define-const var313 String (getJpaHintName/1724667075 var636)) ; Statement: $r2 = virtualinvoke $r0.<org.hibernate.graph.GraphSemantic: java.lang.String getJpaHintName()>() 
(assert true)
(define-const var3893 Bool (= var313 var2748)) ; Statement: $z1 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z1 != 0 goto $r3 = <org.hibernate.graph.GraphSemantic: org.hibernate.graph.GraphSemantic FETCH> 
(assert (not (= (ite var3893 1 0) 0))) ; Cond: $z1 != 0 
(define-const var3847 var553 var553-FETCH) ; Statement: $r3 = <org.hibernate.graph.GraphSemantic: org.hibernate.graph.GraphSemantic FETCH> 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getJpaHintName/1724667075=([org.hibernate.graph.GraphSemantic], java.lang.String)}
; {var2748=r1, var3909=null_type, var553=org.hibernate.graph.GraphSemantic, var1993=$z0, var636=$r0, var313=$r2, var3893=$z1, var3847=$r3}
; {r1=var2748, null_type=var3909, org.hibernate.graph.GraphSemantic=var553, $z0=var1993, $r0=var636, $r2=var313, $z1=var3893, $r3=var3847}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @parameter0: java.lang.String;	$z0 = <org.hibernate.graph.GraphSemantic: boolean $assertionsDisabled>;	if $z0 != 0 goto $r0 = <org.hibernate.graph.GraphSemantic: org.hibernate.graph.GraphSemantic FETCH>;	$r0 = <org.hibernate.graph.GraphSemantic: org.hibernate.graph.GraphSemantic FETCH>;	$r2 = virtualinvoke $r0.<org.hibernate.graph.GraphSemantic: java.lang.String getJpaHintName()>();	$z1 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z1 != 0 goto $r3 = <org.hibernate.graph.GraphSemantic: org.hibernate.graph.GraphSemantic FETCH>;	$r3 = <org.hibernate.graph.GraphSemantic: org.hibernate.graph.GraphSemantic FETCH>;	return $r3
;block_num 3