(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1871 0)
(declare-sort var2048 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun afterFrom/1122535774 (var1871) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var1871 var1871)
(declare-const null-String String)
(declare-const var2433 var1871) ; Statement: r0 := @this: org.hibernate.sql.OracleJoinFragment 
(assert (not (= var2433 null-var1871)))
(declare-const var2330 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2330 null-String)))
(define-const var3671 String (afterFrom/1122535774 var2433)) ; Statement: $r2 = r0.<org.hibernate.sql.OracleJoinFragment: java.lang.StringBuilder afterFrom> 
(assert true)
;(assert (append/672562846 var3671 var2330)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3671!1 String)
(assert (= var3671!1 (str.++ var3671 var2330)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {afterFrom/1122535774=([org.hibernate.sql.OracleJoinFragment], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var1871=org.hibernate.sql.OracleJoinFragment, var2433=r0, var2330=r1, var2048=null_type, var3671=$r2}
; {org.hibernate.sql.OracleJoinFragment=var1871, r0=var2433, r1=var2330, null_type=var2048, $r2=var3671}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: org.hibernate.sql.OracleJoinFragment;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.hibernate.sql.OracleJoinFragment: java.lang.StringBuilder afterFrom>;	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	return
;block_num 1