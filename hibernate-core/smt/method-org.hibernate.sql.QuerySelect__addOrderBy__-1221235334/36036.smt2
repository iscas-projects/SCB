(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3315 0)
(declare-sort var1470 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun orderBy/-1123813506 (var3315) String)
(declare-fun length/-171891354 (String) Int)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var3315 var3315)
(declare-const null-String String)
(declare-const var791 var3315) ; Statement: r0 := @this: org.hibernate.sql.QuerySelect 
(assert (not (= var791 null-var3315)))
(declare-const var3992 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3992 null-String)))
(define-const var3029 String (orderBy/-1123813506 var791)) ; Statement: $r1 = r0.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder orderBy> 
(assert true)
(define-const var3529 Int (length/-171891354 var3029)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i0 <= 0 goto $r3 = r0.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder orderBy> 
(assert (<= var3529 0)) ; Cond: $i0 <= 0 
(define-const var212 String (orderBy/-1123813506 var791)) ; Statement: $r3 = r0.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder orderBy> 
(assert true)
;(assert (append/672562846 var212 var3992)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var212!1 String)
(assert (= var212!1 (str.++ var212 var3992)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {orderBy/-1123813506=([org.hibernate.sql.QuerySelect], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var3315=org.hibernate.sql.QuerySelect, var791=r0, var3992=r2, var1470=null_type, var3029=$r1, var3529=$i0, var212=$r3}
; {org.hibernate.sql.QuerySelect=var3315, r0=var791, r2=var3992, null_type=var1470, $r1=var3029, $i0=var3529, $r3=var212}
;seq <java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: org.hibernate.sql.QuerySelect;	r2 := @parameter0: java.lang.String;	$r1 = r0.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder orderBy>;	$i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>();	if $i0 <= 0 goto $r3 = r0.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder orderBy>;	$r3 = r0.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder orderBy>;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	return
;block_num 2