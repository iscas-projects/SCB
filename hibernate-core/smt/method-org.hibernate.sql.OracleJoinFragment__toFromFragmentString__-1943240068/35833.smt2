(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1267 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun afterFrom/1122535774 (var1267) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1267 var1267)
(declare-const var654 var1267) ; Statement: r0 := @this: org.hibernate.sql.OracleJoinFragment 
(assert (not (= var654 null-var1267)))
(define-const var2290 String (afterFrom/1122535774 var654)) ; Statement: $r1 = r0.<org.hibernate.sql.OracleJoinFragment: java.lang.StringBuilder afterFrom> 
(assert true)
(define-const var835 String (toString/-2075883882 var2290)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {afterFrom/1122535774=([org.hibernate.sql.OracleJoinFragment], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1267=org.hibernate.sql.OracleJoinFragment, var654=r0, var2290=$r1, var835=$r2}
; {org.hibernate.sql.OracleJoinFragment=var1267, r0=var654, $r1=var2290, $r2=var835}
;seq <java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.sql.OracleJoinFragment;	$r1 = r0.<org.hibernate.sql.OracleJoinFragment: java.lang.StringBuilder afterFrom>;	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 1