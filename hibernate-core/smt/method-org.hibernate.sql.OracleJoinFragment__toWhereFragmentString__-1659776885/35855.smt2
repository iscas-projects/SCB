(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1106 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun afterWhere/1122535774 (var1106) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1106 var1106)
(declare-const var628 var1106) ; Statement: r0 := @this: org.hibernate.sql.OracleJoinFragment 
(assert (not (= var628 null-var1106)))
(define-const var3535 String (afterWhere/1122535774 var628)) ; Statement: $r1 = r0.<org.hibernate.sql.OracleJoinFragment: java.lang.StringBuilder afterWhere> 
(assert true)
(define-const var1242 String (toString/-2075883882 var3535)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {afterWhere/1122535774=([org.hibernate.sql.OracleJoinFragment], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1106=org.hibernate.sql.OracleJoinFragment, var628=r0, var3535=$r1, var1242=$r2}
; {org.hibernate.sql.OracleJoinFragment=var1106, r0=var628, $r1=var3535, $r2=var1242}
;seq <java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.sql.OracleJoinFragment;	$r1 = r0.<org.hibernate.sql.OracleJoinFragment: java.lang.StringBuilder afterWhere>;	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 1