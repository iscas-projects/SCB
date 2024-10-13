(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1854 0)
(declare-sort var3723 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buffer/-1501424381 (var1854) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var1854 var1854)
(declare-const null-String String)
(declare-const var1276 var1854) ; Statement: r0 := @this: org.hibernate.sql.ANSIJoinFragment 
(assert (not (= var1276 null-var1854)))
(declare-const var1458 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1458 null-String)))
(define-const var1259 String (buffer/-1501424381 var1276)) ; Statement: $r2 = r0.<org.hibernate.sql.ANSIJoinFragment: java.lang.StringBuilder buffer> 
(assert true)
;(assert (append/672562846 var1259 var1458)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1259!1 String)
(assert (= var1259!1 (str.++ var1259 var1458)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buffer/-1501424381=([org.hibernate.sql.ANSIJoinFragment], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var1854=org.hibernate.sql.ANSIJoinFragment, var1276=r0, var1458=r1, var3723=null_type, var1259=$r2}
; {org.hibernate.sql.ANSIJoinFragment=var1854, r0=var1276, r1=var1458, null_type=var3723, $r2=var1259}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: org.hibernate.sql.ANSIJoinFragment;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.hibernate.sql.ANSIJoinFragment: java.lang.StringBuilder buffer>;	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	return
;block_num 1