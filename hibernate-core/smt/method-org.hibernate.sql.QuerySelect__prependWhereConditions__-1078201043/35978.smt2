(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1833 0)
(declare-sort var1604 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun where/-1123813506 (var1833) String)
(declare-fun length/-171891354 (String) Int)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var1833 var1833)
(declare-const null-String String)
(declare-const var3683 var1833) ; Statement: r0 := @this: org.hibernate.sql.QuerySelect 
(assert (not (= var3683 null-var1833)))
(declare-const var1997 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1997 null-String)))
(define-const var1930 String (where/-1123813506 var3683)) ; Statement: $r1 = r0.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder where> 
(assert true)
(define-const var1850 Int (length/-171891354 var1930)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i0 <= 0 goto $r3 = r0.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder where> 
(assert (<= var1850 0)) ; Cond: $i0 <= 0 
(define-const var2312 String (where/-1123813506 var3683)) ; Statement: $r3 = r0.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder where> 
(assert true)
;(assert (append/672562846 var2312 var1997)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2312!1 String)
(assert (= var2312!1 (str.++ var2312 var1997)))
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {where/-1123813506=([org.hibernate.sql.QuerySelect], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var1833=org.hibernate.sql.QuerySelect, var3683=r0, var1997=r2, var1604=null_type, var1930=$r1, var1850=$i0, var2312=$r3}
; {org.hibernate.sql.QuerySelect=var1833, r0=var3683, r2=var1997, null_type=var1604, $r1=var1930, $i0=var1850, $r3=var2312}
;seq <java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: org.hibernate.sql.QuerySelect;	r2 := @parameter0: java.lang.String;	$r1 = r0.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder where>;	$i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>();	if $i0 <= 0 goto $r3 = r0.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder where>;	$r3 = r0.<org.hibernate.sql.QuerySelect: java.lang.StringBuilder where>;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	return
;block_num 3