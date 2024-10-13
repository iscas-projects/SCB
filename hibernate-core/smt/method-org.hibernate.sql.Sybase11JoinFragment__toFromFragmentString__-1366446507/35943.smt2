(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1134 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun afterFrom/-585940105 (var1134) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1134 var1134)
(declare-const var2456 var1134) ; Statement: r0 := @this: org.hibernate.sql.Sybase11JoinFragment 
(assert (not (= var2456 null-var1134)))
(define-const var3889 String (afterFrom/-585940105 var2456)) ; Statement: $r1 = r0.<org.hibernate.sql.Sybase11JoinFragment: java.lang.StringBuilder afterFrom> 
(assert true)
(define-const var3713 String (toString/-2075883882 var3889)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {afterFrom/-585940105=([org.hibernate.sql.Sybase11JoinFragment], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1134=org.hibernate.sql.Sybase11JoinFragment, var2456=r0, var3889=$r1, var3713=$r2}
; {org.hibernate.sql.Sybase11JoinFragment=var1134, r0=var2456, $r1=var3889, $r2=var3713}
;seq <java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.sql.Sybase11JoinFragment;	$r1 = r0.<org.hibernate.sql.Sybase11JoinFragment: java.lang.StringBuilder afterFrom>;	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 1