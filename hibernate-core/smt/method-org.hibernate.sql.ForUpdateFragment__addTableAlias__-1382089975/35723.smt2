(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1130 0)
(declare-sort var2374 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun aliases/9192316 (var1130) String)
(declare-fun length/-171891354 (String) Int)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var1130 var1130)
(declare-const null-String String)
(declare-const var3992 var1130) ; Statement: r0 := @this: org.hibernate.sql.ForUpdateFragment 
(assert (not (= var3992 null-var1130)))
(declare-const var1563 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1563 null-String)))
(define-const var2885 String (aliases/9192316 var3992)) ; Statement: $r1 = r0.<org.hibernate.sql.ForUpdateFragment: java.lang.StringBuilder aliases> 
(assert true)
(define-const var1089 Int (length/-171891354 var2885)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i0 <= 0 goto $r3 = r0.<org.hibernate.sql.ForUpdateFragment: java.lang.StringBuilder aliases> 
(assert (<= var1089 0)) ; Cond: $i0 <= 0 
(define-const var2524 String (aliases/9192316 var3992)) ; Statement: $r3 = r0.<org.hibernate.sql.ForUpdateFragment: java.lang.StringBuilder aliases> 
(assert true)
;(assert (append/672562846 var2524 var1563)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2524!1 String)
(assert (= var2524!1 (str.++ var2524 var1563)))
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {aliases/9192316=([org.hibernate.sql.ForUpdateFragment], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var1130=org.hibernate.sql.ForUpdateFragment, var3992=r0, var1563=r2, var2374=null_type, var2885=$r1, var1089=$i0, var2524=$r3}
; {org.hibernate.sql.ForUpdateFragment=var1130, r0=var3992, r2=var1563, null_type=var2374, $r1=var2885, $i0=var1089, $r3=var2524}
;seq <java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: org.hibernate.sql.ForUpdateFragment;	r2 := @parameter0: java.lang.String;	$r1 = r0.<org.hibernate.sql.ForUpdateFragment: java.lang.StringBuilder aliases>;	$i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>();	if $i0 <= 0 goto $r3 = r0.<org.hibernate.sql.ForUpdateFragment: java.lang.StringBuilder aliases>;	$r3 = r0.<org.hibernate.sql.ForUpdateFragment: java.lang.StringBuilder aliases>;	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	return r0
;block_num 2