(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var792 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun afterWhere/-585940105 (var792) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var792 var792)
(declare-const var185 var792) ; Statement: r0 := @this: org.hibernate.sql.Sybase11JoinFragment 
(assert (not (= var185 null-var792)))
(define-const var405 String (afterWhere/-585940105 var185)) ; Statement: $r1 = r0.<org.hibernate.sql.Sybase11JoinFragment: java.lang.StringBuilder afterWhere> 
(assert true)
(define-const var1136 String (toString/-2075883882 var405)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {afterWhere/-585940105=([org.hibernate.sql.Sybase11JoinFragment], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var792=org.hibernate.sql.Sybase11JoinFragment, var185=r0, var405=$r1, var1136=$r2}
; {org.hibernate.sql.Sybase11JoinFragment=var792, r0=var185, $r1=var405, $r2=var1136}
;seq <java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.sql.Sybase11JoinFragment;	$r1 = r0.<org.hibernate.sql.Sybase11JoinFragment: java.lang.StringBuilder afterWhere>;	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 1