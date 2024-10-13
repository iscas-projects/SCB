(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var303 0)
(declare-sort var431 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun afterFrom/1032958620 (var303) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun afterWhere/1032958620 (var303) String)
(declare-const null-var303 var303)
(declare-const null-String String)
(declare-const var2124 var303) ; Statement: r0 := @this: org.hibernate.sql.QueryJoinFragment 
(assert (not (= var2124 null-var303)))
(declare-const var2170 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2170 null-String)))
(declare-const var477 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var477 null-String)))
(define-const var2731 String (afterFrom/1032958620 var2124)) ; Statement: $r2 = r0.<org.hibernate.sql.QueryJoinFragment: java.lang.StringBuilder afterFrom> 
(assert true)
;(assert (append/672562846 var2731 var2170)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2731!1 String)
(assert (= var2731!1 (str.++ var2731 var2170)))
(define-const var941 String (afterWhere/1032958620 var2124)) ; Statement: $r4 = r0.<org.hibernate.sql.QueryJoinFragment: java.lang.StringBuilder afterWhere> 
(assert true)
;(assert (append/672562846 var941 var477)) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var941!1 String)
(assert (= var941!1 (str.++ var941 var477)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {afterFrom/1032958620=([org.hibernate.sql.QueryJoinFragment], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), afterWhere/1032958620=([org.hibernate.sql.QueryJoinFragment], java.lang.StringBuilder)}
; {var303=org.hibernate.sql.QueryJoinFragment, var2124=r0, var2170=r1, var431=null_type, var477=r3, var2731=$r2, var941=$r4}
; {org.hibernate.sql.QueryJoinFragment=var303, r0=var2124, r1=var2170, null_type=var431, r3=var477, $r2=var2731, $r4=var941}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2}
;stmts r0 := @this: org.hibernate.sql.QueryJoinFragment;	r1 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	$r2 = r0.<org.hibernate.sql.QueryJoinFragment: java.lang.StringBuilder afterFrom>;	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = r0.<org.hibernate.sql.QueryJoinFragment: java.lang.StringBuilder afterWhere>;	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	return
;block_num 1