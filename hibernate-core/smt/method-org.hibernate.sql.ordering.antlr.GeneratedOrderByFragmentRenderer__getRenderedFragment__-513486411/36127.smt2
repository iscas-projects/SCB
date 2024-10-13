(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3814 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buffer/1323243358 (var3814) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3814 var3814)
(declare-const var552 var3814) ; Statement: r0 := @this: org.hibernate.sql.ordering.antlr.GeneratedOrderByFragmentRenderer 
(assert (not (= var552 null-var3814)))
(define-const var2402 String (buffer/1323243358 var552)) ; Statement: $r1 = r0.<org.hibernate.sql.ordering.antlr.GeneratedOrderByFragmentRenderer: java.lang.StringBuilder buffer> 
(assert true)
(define-const var3925 String (toString/-2075883882 var2402)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {buffer/1323243358=([org.hibernate.sql.ordering.antlr.GeneratedOrderByFragmentRenderer], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3814=org.hibernate.sql.ordering.antlr.GeneratedOrderByFragmentRenderer, var552=r0, var2402=$r1, var3925=$r2}
; {org.hibernate.sql.ordering.antlr.GeneratedOrderByFragmentRenderer=var3814, r0=var552, $r1=var2402, $r2=var3925}
;seq <java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.sql.ordering.antlr.GeneratedOrderByFragmentRenderer;	$r1 = r0.<org.hibernate.sql.ordering.antlr.GeneratedOrderByFragmentRenderer: java.lang.StringBuilder buffer>;	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 1