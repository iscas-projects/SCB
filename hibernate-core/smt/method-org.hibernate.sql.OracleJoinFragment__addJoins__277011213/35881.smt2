(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1400 0)
(declare-sort var2149 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun afterFrom/1122535774 (var1400) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun afterWhere/1122535774 (var1400) String)
(declare-const null-var1400 var1400)
(declare-const null-String String)
(declare-const var663 var1400) ; Statement: r0 := @this: org.hibernate.sql.OracleJoinFragment 
(assert (not (= var663 null-var1400)))
(declare-const var3793 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3793 null-String)))
(declare-const var197 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var197 null-String)))
(define-const var1039 String (afterFrom/1122535774 var663)) ; Statement: $r2 = r0.<org.hibernate.sql.OracleJoinFragment: java.lang.StringBuilder afterFrom> 
(assert true)
;(assert (append/672562846 var1039 var3793)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1039!1 String)
(assert (= var1039!1 (str.++ var1039 var3793)))
(define-const var1188 String (afterWhere/1122535774 var663)) ; Statement: $r4 = r0.<org.hibernate.sql.OracleJoinFragment: java.lang.StringBuilder afterWhere> 
(assert true)
;(assert (append/672562846 var1188 var197)) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1188!1 String)
(assert (= var1188!1 (str.++ var1188 var197)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {afterFrom/1122535774=([org.hibernate.sql.OracleJoinFragment], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), afterWhere/1122535774=([org.hibernate.sql.OracleJoinFragment], java.lang.StringBuilder)}
; {var1400=org.hibernate.sql.OracleJoinFragment, var663=r0, var3793=r1, var2149=null_type, var197=r3, var1039=$r2, var1188=$r4}
; {org.hibernate.sql.OracleJoinFragment=var1400, r0=var663, r1=var3793, null_type=var2149, r3=var197, $r2=var1039, $r4=var1188}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2}
;stmts r0 := @this: org.hibernate.sql.OracleJoinFragment;	r1 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	$r2 = r0.<org.hibernate.sql.OracleJoinFragment: java.lang.StringBuilder afterFrom>;	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = r0.<org.hibernate.sql.OracleJoinFragment: java.lang.StringBuilder afterWhere>;	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	return
;block_num 1