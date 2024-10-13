(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2920 0)
(declare-sort var1526 0)
(declare-sort var1085 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lockOptions/9192316 (var2920) var1526)
(declare-fun aliases/9192316 (var2920) String)
(declare-fun length/-171891354 (String) Int)
(declare-fun dialect/9192316 (var2920) var1085)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getForUpdateString/-315586947 (var1085 String var1526) String)
(declare-const null-var2920 var2920)
(declare-const null-var1526 var1526)
(declare-const var3423 var2920) ; Statement: r0 := @this: org.hibernate.sql.ForUpdateFragment 
(assert (not (= var3423 null-var2920)))
(define-const var3125 var1526 (lockOptions/9192316 var3423)) ; Statement: $r1 = r0.<org.hibernate.sql.ForUpdateFragment: org.hibernate.LockOptions lockOptions> 
 ; Statement: if $r1 == null goto $r2 = r0.<org.hibernate.sql.ForUpdateFragment: java.lang.StringBuilder aliases> 
(assert (not (= var3125 null-var1526))) ; Negate: Cond: $r1 == null  
(define-const var2758 String (aliases/9192316 var3423)) ; Statement: $r19 = r0.<org.hibernate.sql.ForUpdateFragment: java.lang.StringBuilder aliases> 
(assert true)
(define-const var2075 Int (length/-171891354 var2758)) ; Statement: $i1 = virtualinvoke $r19.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i1 != 0 goto $r21 = r0.<org.hibernate.sql.ForUpdateFragment: org.hibernate.dialect.Dialect dialect> 
(assert (not (= var2075 0))) ; Cond: $i1 != 0 
(define-const var2836 var1085 (dialect/9192316 var3423)) ; Statement: $r21 = r0.<org.hibernate.sql.ForUpdateFragment: org.hibernate.dialect.Dialect dialect> 
(define-const var3750 String (aliases/9192316 var3423)) ; Statement: $r20 = r0.<org.hibernate.sql.ForUpdateFragment: java.lang.StringBuilder aliases> 
(assert true)
(define-const var2017 String (toString/-2075883882 var3750)) ; Statement: $r23 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1867 var1526 (lockOptions/9192316 var3423)) ; Statement: $r22 = r0.<org.hibernate.sql.ForUpdateFragment: org.hibernate.LockOptions lockOptions> 
(assert true)
(define-const var153 String (getForUpdateString/-315586947 var2836 var2017 var1867)) ; Statement: $r24 = virtualinvoke $r21.<org.hibernate.dialect.Dialect: java.lang.String getForUpdateString(java.lang.String,org.hibernate.LockOptions)>($r23, $r22) 
 ; Statement: return $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {lockOptions/9192316=([org.hibernate.sql.ForUpdateFragment], org.hibernate.LockOptions), aliases/9192316=([org.hibernate.sql.ForUpdateFragment], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), dialect/9192316=([org.hibernate.sql.ForUpdateFragment], org.hibernate.dialect.Dialect), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getForUpdateString/-315586947=([org.hibernate.dialect.Dialect, java.lang.String, org.hibernate.LockOptions], java.lang.String)}
; {var2920=org.hibernate.sql.ForUpdateFragment, var3423=r0, var1526=org.hibernate.LockOptions, var3125=$r1, var2758=$r19, var2075=$i1, var1085=org.hibernate.dialect.Dialect, var2836=$r21, var3750=$r20, var2017=$r23, var1867=$r22, var153=$r24}
; {org.hibernate.sql.ForUpdateFragment=var2920, r0=var3423, org.hibernate.LockOptions=var1526, $r1=var3125, $r19=var2758, $i1=var2075, org.hibernate.dialect.Dialect=var1085, $r21=var2836, $r20=var3750, $r23=var2017, $r22=var1867, $r24=var153}
;seq <java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.sql.ForUpdateFragment;	$r1 = r0.<org.hibernate.sql.ForUpdateFragment: org.hibernate.LockOptions lockOptions>;	if $r1 == null goto $r2 = r0.<org.hibernate.sql.ForUpdateFragment: java.lang.StringBuilder aliases>;	$r19 = r0.<org.hibernate.sql.ForUpdateFragment: java.lang.StringBuilder aliases>;	$i1 = virtualinvoke $r19.<java.lang.StringBuilder: int length()>();	if $i1 != 0 goto $r21 = r0.<org.hibernate.sql.ForUpdateFragment: org.hibernate.dialect.Dialect dialect>;	$r21 = r0.<org.hibernate.sql.ForUpdateFragment: org.hibernate.dialect.Dialect dialect>;	$r20 = r0.<org.hibernate.sql.ForUpdateFragment: java.lang.StringBuilder aliases>;	$r23 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	$r22 = r0.<org.hibernate.sql.ForUpdateFragment: org.hibernate.LockOptions lockOptions>;	$r24 = virtualinvoke $r21.<org.hibernate.dialect.Dialect: java.lang.String getForUpdateString(java.lang.String,org.hibernate.LockOptions)>($r23, $r22);	return $r24
;block_num 3