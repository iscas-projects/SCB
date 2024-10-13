(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2059 0)
(declare-sort var3135 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buffer/-1501424381 (var2059) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var2059 var2059)
(declare-const null-String String)
(declare-const var1484 var2059) ; Statement: r0 := @this: org.hibernate.sql.ANSIJoinFragment 
(assert (not (= var1484 null-var2059)))
(declare-const var1055 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1055 null-String)))
(declare-const var3297 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var3297 null-String)))
(define-const var385 String (buffer/-1501424381 var1484)) ; Statement: $r2 = r0.<org.hibernate.sql.ANSIJoinFragment: java.lang.StringBuilder buffer> 
(assert true)
;(assert (append/672562846 var385 var1055)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var385!1 String)
(assert (= var385!1 (str.++ var385 var1055)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buffer/-1501424381=([org.hibernate.sql.ANSIJoinFragment], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var2059=org.hibernate.sql.ANSIJoinFragment, var1484=r0, var1055=r1, var3135=null_type, var3297=r3, var385=$r2}
; {org.hibernate.sql.ANSIJoinFragment=var2059, r0=var1484, r1=var1055, null_type=var3135, r3=var3297, $r2=var385}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: org.hibernate.sql.ANSIJoinFragment;	r1 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	$r2 = r0.<org.hibernate.sql.ANSIJoinFragment: java.lang.StringBuilder buffer>;	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	return
;block_num 1