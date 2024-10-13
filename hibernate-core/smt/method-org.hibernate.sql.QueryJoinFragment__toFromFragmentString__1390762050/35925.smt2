(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3610 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun afterFrom/1032958620 (var3610) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3610 var3610)
(declare-const var3666 var3610) ; Statement: r0 := @this: org.hibernate.sql.QueryJoinFragment 
(assert (not (= var3666 null-var3610)))
(define-const var2046 String (afterFrom/1032958620 var3666)) ; Statement: $r1 = r0.<org.hibernate.sql.QueryJoinFragment: java.lang.StringBuilder afterFrom> 
(assert true)
(define-const var3026 String (toString/-2075883882 var2046)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {afterFrom/1032958620=([org.hibernate.sql.QueryJoinFragment], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3610=org.hibernate.sql.QueryJoinFragment, var3666=r0, var2046=$r1, var3026=$r2}
; {org.hibernate.sql.QueryJoinFragment=var3610, r0=var3666, $r1=var2046, $r2=var3026}
;seq <java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.sql.QueryJoinFragment;	$r1 = r0.<org.hibernate.sql.QueryJoinFragment: java.lang.StringBuilder afterFrom>;	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 1