(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var597 0)
(declare-sort var1606 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun afterFrom/1032958620 (var597) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var597 var597)
(declare-const null-String String)
(declare-const var185 var597) ; Statement: r0 := @this: org.hibernate.sql.QueryJoinFragment 
(assert (not (= var185 null-var597)))
(declare-const var1252 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1252 null-String)))
(define-const var2821 String (afterFrom/1032958620 var185)) ; Statement: $r2 = r0.<org.hibernate.sql.QueryJoinFragment: java.lang.StringBuilder afterFrom> 
(assert true)
;(assert (append/672562846 var2821 var1252)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2821!1 String)
(assert (= var2821!1 (str.++ var2821 var1252)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {afterFrom/1032958620=([org.hibernate.sql.QueryJoinFragment], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var597=org.hibernate.sql.QueryJoinFragment, var185=r0, var1252=r1, var1606=null_type, var2821=$r2}
; {org.hibernate.sql.QueryJoinFragment=var597, r0=var185, r1=var1252, null_type=var1606, $r2=var2821}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: org.hibernate.sql.QueryJoinFragment;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.hibernate.sql.QueryJoinFragment: java.lang.StringBuilder afterFrom>;	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	return
;block_num 1