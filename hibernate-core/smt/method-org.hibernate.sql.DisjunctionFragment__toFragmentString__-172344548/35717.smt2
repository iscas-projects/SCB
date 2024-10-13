(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1857 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buffer/2037234668 (var1857) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1857 var1857)
(declare-const var2235 var1857) ; Statement: r0 := @this: org.hibernate.sql.DisjunctionFragment 
(assert (not (= var2235 null-var1857)))
(define-const var3241 String (buffer/2037234668 var2235)) ; Statement: $r1 = r0.<org.hibernate.sql.DisjunctionFragment: java.lang.StringBuilder buffer> 
(assert true)
(define-const var446 String (toString/-2075883882 var3241)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {buffer/2037234668=([org.hibernate.sql.DisjunctionFragment], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1857=org.hibernate.sql.DisjunctionFragment, var2235=r0, var3241=$r1, var446=$r2}
; {org.hibernate.sql.DisjunctionFragment=var1857, r0=var2235, $r1=var3241, $r2=var446}
;seq <java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.sql.DisjunctionFragment;	$r1 = r0.<org.hibernate.sql.DisjunctionFragment: java.lang.StringBuilder buffer>;	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 1