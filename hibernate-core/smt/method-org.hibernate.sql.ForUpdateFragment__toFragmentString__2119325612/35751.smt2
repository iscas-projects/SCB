(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3561 0)
(declare-sort var421 0)
(declare-sort var6 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lockOptions/9192316 (var3561) var421)
(declare-fun aliases/9192316 (var3561) String)
(declare-fun length/-171891354 (String) Int)
(declare-fun dialect/9192316 (var3561) var6)
(declare-fun getForUpdateString/1707720128 (var6 var421) String)
(declare-const null-var3561 var3561)
(declare-const null-var421 var421)
(declare-const var3363 var3561) ; Statement: r0 := @this: org.hibernate.sql.ForUpdateFragment 
(assert (not (= var3363 null-var3561)))
(define-const var2258 var421 (lockOptions/9192316 var3363)) ; Statement: $r1 = r0.<org.hibernate.sql.ForUpdateFragment: org.hibernate.LockOptions lockOptions> 
 ; Statement: if $r1 == null goto $r2 = r0.<org.hibernate.sql.ForUpdateFragment: java.lang.StringBuilder aliases> 
(assert (not (= var2258 null-var421))) ; Negate: Cond: $r1 == null  
(define-const var1853 String (aliases/9192316 var3363)) ; Statement: $r19 = r0.<org.hibernate.sql.ForUpdateFragment: java.lang.StringBuilder aliases> 
(assert true)
(define-const var3497 Int (length/-171891354 var1853)) ; Statement: $i1 = virtualinvoke $r19.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i1 != 0 goto $r21 = r0.<org.hibernate.sql.ForUpdateFragment: org.hibernate.dialect.Dialect dialect> 
(assert (not (not (= var3497 0)))) ; Negate: Cond: $i1 != 0  
(define-const var2976 var6 (dialect/9192316 var3363)) ; Statement: $r26 = r0.<org.hibernate.sql.ForUpdateFragment: org.hibernate.dialect.Dialect dialect> 
(define-const var1317 var421 (lockOptions/9192316 var3363)) ; Statement: $r25 = r0.<org.hibernate.sql.ForUpdateFragment: org.hibernate.LockOptions lockOptions> 
(assert true)
(define-const var1565 String (getForUpdateString/1707720128 var2976 var1317)) ; Statement: $r27 = virtualinvoke $r26.<org.hibernate.dialect.Dialect: java.lang.String getForUpdateString(org.hibernate.LockOptions)>($r25) 
 ; Statement: return $r27 
(check-sat)
(get-model)
(get-unsat-core)
; {lockOptions/9192316=([org.hibernate.sql.ForUpdateFragment], org.hibernate.LockOptions), aliases/9192316=([org.hibernate.sql.ForUpdateFragment], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), dialect/9192316=([org.hibernate.sql.ForUpdateFragment], org.hibernate.dialect.Dialect), getForUpdateString/1707720128=([org.hibernate.dialect.Dialect, org.hibernate.LockOptions], java.lang.String)}
; {var3561=org.hibernate.sql.ForUpdateFragment, var3363=r0, var421=org.hibernate.LockOptions, var2258=$r1, var1853=$r19, var3497=$i1, var6=org.hibernate.dialect.Dialect, var2976=$r26, var1317=$r25, var1565=$r27}
; {org.hibernate.sql.ForUpdateFragment=var3561, r0=var3363, org.hibernate.LockOptions=var421, $r1=var2258, $r19=var1853, $i1=var3497, org.hibernate.dialect.Dialect=var6, $r26=var2976, $r25=var1317, $r27=var1565}
;seq <java.lang.StringBuilder: int length()>
;cnt {"<java.lang.StringBuilder: int length()>": 1}
;stmts r0 := @this: org.hibernate.sql.ForUpdateFragment;	$r1 = r0.<org.hibernate.sql.ForUpdateFragment: org.hibernate.LockOptions lockOptions>;	if $r1 == null goto $r2 = r0.<org.hibernate.sql.ForUpdateFragment: java.lang.StringBuilder aliases>;	$r19 = r0.<org.hibernate.sql.ForUpdateFragment: java.lang.StringBuilder aliases>;	$i1 = virtualinvoke $r19.<java.lang.StringBuilder: int length()>();	if $i1 != 0 goto $r21 = r0.<org.hibernate.sql.ForUpdateFragment: org.hibernate.dialect.Dialect dialect>;	$r26 = r0.<org.hibernate.sql.ForUpdateFragment: org.hibernate.dialect.Dialect dialect>;	$r25 = r0.<org.hibernate.sql.ForUpdateFragment: org.hibernate.LockOptions lockOptions>;	$r27 = virtualinvoke $r26.<org.hibernate.dialect.Dialect: java.lang.String getForUpdateString(org.hibernate.LockOptions)>($r25);	return $r27
;block_num 3