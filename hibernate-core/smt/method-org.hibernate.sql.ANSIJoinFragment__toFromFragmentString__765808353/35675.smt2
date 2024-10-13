(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2623 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buffer/-1501424381 (var2623) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2623 var2623)
(declare-const var3151 var2623) ; Statement: r0 := @this: org.hibernate.sql.ANSIJoinFragment 
(assert (not (= var3151 null-var2623)))
(define-const var614 String (buffer/-1501424381 var3151)) ; Statement: $r1 = r0.<org.hibernate.sql.ANSIJoinFragment: java.lang.StringBuilder buffer> 
(assert true)
(define-const var960 String (toString/-2075883882 var614)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {buffer/-1501424381=([org.hibernate.sql.ANSIJoinFragment], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2623=org.hibernate.sql.ANSIJoinFragment, var3151=r0, var614=$r1, var960=$r2}
; {org.hibernate.sql.ANSIJoinFragment=var2623, r0=var3151, $r1=var614, $r2=var960}
;seq <java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.sql.ANSIJoinFragment;	$r1 = r0.<org.hibernate.sql.ANSIJoinFragment: java.lang.StringBuilder buffer>;	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 1