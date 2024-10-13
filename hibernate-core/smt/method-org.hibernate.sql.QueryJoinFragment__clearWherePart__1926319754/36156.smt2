(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1472 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun afterWhere/1032958620 (var1472) String)
(declare-fun setLength/1276735992 (String Int) void)
(declare-const null-var1472 var1472)
(declare-const var974 var1472) ; Statement: r0 := @this: org.hibernate.sql.QueryJoinFragment 
(assert (not (= var974 null-var1472)))
(define-const var1341 String (afterWhere/1032958620 var974)) ; Statement: $r1 = r0.<org.hibernate.sql.QueryJoinFragment: java.lang.StringBuilder afterWhere> 
(assert true)
;(assert (setLength/1276735992 var1341 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: void setLength(int)>(0) 

(declare-const var1341!1 String)
(declare-const var1722 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {afterWhere/1032958620=([org.hibernate.sql.QueryJoinFragment], java.lang.StringBuilder), setLength/1276735992=([java.lang.StringBuilder, int], void)}
; {var1472=org.hibernate.sql.QueryJoinFragment, var974=r0, var1341=$r1, var1722=0}
; {org.hibernate.sql.QueryJoinFragment=var1472, r0=var974, $r1=var1341, 0=var1722}
;seq <java.lang.StringBuilder: void setLength(int)>
;cnt {"<java.lang.StringBuilder: void setLength(int)>": 1}
;stmts r0 := @this: org.hibernate.sql.QueryJoinFragment;	$r1 = r0.<org.hibernate.sql.QueryJoinFragment: java.lang.StringBuilder afterWhere>;	virtualinvoke $r1.<java.lang.StringBuilder: void setLength(int)>(0);	return
;block_num 1