(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3278 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun conditions/-1501424381 (var3278) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3278 var3278)
(declare-const var1041 var3278) ; Statement: r0 := @this: org.hibernate.sql.ANSIJoinFragment 
(assert (not (= var1041 null-var3278)))
(define-const var226 String (conditions/-1501424381 var1041)) ; Statement: $r1 = r0.<org.hibernate.sql.ANSIJoinFragment: java.lang.StringBuilder conditions> 
(assert true)
(define-const var3503 String (toString/-2075883882 var226)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {conditions/-1501424381=([org.hibernate.sql.ANSIJoinFragment], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3278=org.hibernate.sql.ANSIJoinFragment, var1041=r0, var226=$r1, var3503=$r2}
; {org.hibernate.sql.ANSIJoinFragment=var3278, r0=var1041, $r1=var226, $r2=var3503}
;seq <java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.sql.ANSIJoinFragment;	$r1 = r0.<org.hibernate.sql.ANSIJoinFragment: java.lang.StringBuilder conditions>;	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 1