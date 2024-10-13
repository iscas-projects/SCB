(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var834 0)
(declare-sort var2554 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun afterFrom/-585940105 (var834) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun afterWhere/-585940105 (var834) String)
(declare-const null-var834 var834)
(declare-const null-String String)
(declare-const var2246 var834) ; Statement: r0 := @this: org.hibernate.sql.Sybase11JoinFragment 
(assert (not (= var2246 null-var834)))
(declare-const var1462 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1462 null-String)))
(declare-const var1463 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var1463 null-String)))
(define-const var3033 String (afterFrom/-585940105 var2246)) ; Statement: $r2 = r0.<org.hibernate.sql.Sybase11JoinFragment: java.lang.StringBuilder afterFrom> 
(assert true)
;(assert (append/672562846 var3033 var1462)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3033!1 String)
(assert (= var3033!1 (str.++ var3033 var1462)))
(define-const var1384 String (afterWhere/-585940105 var2246)) ; Statement: $r4 = r0.<org.hibernate.sql.Sybase11JoinFragment: java.lang.StringBuilder afterWhere> 
(assert true)
;(assert (append/672562846 var1384 var1463)) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1384!1 String)
(assert (= var1384!1 (str.++ var1384 var1463)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {afterFrom/-585940105=([org.hibernate.sql.Sybase11JoinFragment], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), afterWhere/-585940105=([org.hibernate.sql.Sybase11JoinFragment], java.lang.StringBuilder)}
; {var834=org.hibernate.sql.Sybase11JoinFragment, var2246=r0, var1462=r1, var2554=null_type, var1463=r3, var3033=$r2, var1384=$r4}
; {org.hibernate.sql.Sybase11JoinFragment=var834, r0=var2246, r1=var1462, null_type=var2554, r3=var1463, $r2=var3033, $r4=var1384}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2}
;stmts r0 := @this: org.hibernate.sql.Sybase11JoinFragment;	r1 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	$r2 = r0.<org.hibernate.sql.Sybase11JoinFragment: java.lang.StringBuilder afterFrom>;	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = r0.<org.hibernate.sql.Sybase11JoinFragment: java.lang.StringBuilder afterWhere>;	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	return
;block_num 1