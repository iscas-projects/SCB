(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1613 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun afterWhere/1032958620 (var1613) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1613 var1613)
(declare-const var716 var1613) ; Statement: r0 := @this: org.hibernate.sql.QueryJoinFragment 
(assert (not (= var716 null-var1613)))
(define-const var1747 String (afterWhere/1032958620 var716)) ; Statement: $r1 = r0.<org.hibernate.sql.QueryJoinFragment: java.lang.StringBuilder afterWhere> 
(assert true)
(define-const var2029 String (toString/-2075883882 var1747)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {afterWhere/1032958620=([org.hibernate.sql.QueryJoinFragment], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1613=org.hibernate.sql.QueryJoinFragment, var716=r0, var1747=$r1, var2029=$r2}
; {org.hibernate.sql.QueryJoinFragment=var1613, r0=var716, $r1=var1747, $r2=var2029}
;seq <java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.sql.QueryJoinFragment;	$r1 = r0.<org.hibernate.sql.QueryJoinFragment: java.lang.StringBuilder afterWhere>;	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 1