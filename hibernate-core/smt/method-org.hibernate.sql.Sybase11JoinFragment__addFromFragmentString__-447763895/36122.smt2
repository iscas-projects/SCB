(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var760 0)
(declare-sort var359 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun afterFrom/-585940105 (var760) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var760 var760)
(declare-const null-String String)
(declare-const var987 var760) ; Statement: r0 := @this: org.hibernate.sql.Sybase11JoinFragment 
(assert (not (= var987 null-var760)))
(declare-const var1499 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1499 null-String)))
(define-const var485 String (afterFrom/-585940105 var987)) ; Statement: $r2 = r0.<org.hibernate.sql.Sybase11JoinFragment: java.lang.StringBuilder afterFrom> 
(assert true)
;(assert (append/672562846 var485 var1499)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var485!1 String)
(assert (= var485!1 (str.++ var485 var1499)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {afterFrom/-585940105=([org.hibernate.sql.Sybase11JoinFragment], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var760=org.hibernate.sql.Sybase11JoinFragment, var987=r0, var1499=r1, var359=null_type, var485=$r2}
; {org.hibernate.sql.Sybase11JoinFragment=var760, r0=var987, r1=var1499, null_type=var359, $r2=var485}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: org.hibernate.sql.Sybase11JoinFragment;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.hibernate.sql.Sybase11JoinFragment: java.lang.StringBuilder afterFrom>;	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	return
;block_num 1