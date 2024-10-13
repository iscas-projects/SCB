(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2056 0)
(declare-sort var1969 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun length/2037073258 (var2056) Int)
(declare-fun suffix/2037073258 (var2056) String)
(declare-const null-var2056 var2056)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1970 var2056) ; Statement: r1 := @this: org.hibernate.sql.Alias 
(assert (not (= var1970 null-var2056)))
(declare-const var1354 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1354 null-String)))
(declare-const var2595 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2595 null-Int)))
(define-const var3349 String var1354) ; Statement: r7 = r0 
 ; Statement: if i0 < 0 goto $i2 = virtualinvoke r7.<java.lang.String: int length()>() 
(assert (< var2595 0)) ; Cond: i0 < 0 
(assert true)
(define-const var3294 Int (length/-134980193 var3349)) ; Statement: $i2 = virtualinvoke r7.<java.lang.String: int length()>() 
(define-const var1158 Int (length/2037073258 var1970)) ; Statement: $i1 = r1.<org.hibernate.sql.Alias: int length> 
 ; Statement: if $i2 <= $i1 goto $r2 = r1.<org.hibernate.sql.Alias: java.lang.String suffix> 
(assert (<= var3294 var1158)) ; Cond: $i2 <= $i1 
(define-const var3644 String (suffix/2037073258 var1970)) ; Statement: $r2 = r1.<org.hibernate.sql.Alias: java.lang.String suffix> 
 ; Statement: if $r2 != null goto $r3 = new java.lang.StringBuilder 
(assert (not (not (= var3644 null-String)))) ; Negate: Cond: $r2 != null  
(define-const var528 String var3349) ; Statement: $r8 = r7 
 ; Statement: goto [?= return $r8] 
(assert true) ; Non Conditional
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), length/2037073258=([org.hibernate.sql.Alias], int), suffix/2037073258=([org.hibernate.sql.Alias], java.lang.String)}
; {var2056=org.hibernate.sql.Alias, var1970=r1, var1354=r0, var1969=null_type, var2595=i0, var3349=r7, var3294=$i2, var1158=$i1, var3644=$r2, var528=$r8}
; {org.hibernate.sql.Alias=var2056, r1=var1970, r0=var1354, null_type=var1969, i0=var2595, r7=var3349, $i2=var3294, $i1=var1158, $r2=var3644, $r8=var528}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: org.hibernate.sql.Alias;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	r7 = r0;	if i0 < 0 goto $i2 = virtualinvoke r7.<java.lang.String: int length()>();	$i2 = virtualinvoke r7.<java.lang.String: int length()>();	$i1 = r1.<org.hibernate.sql.Alias: int length>;	if $i2 <= $i1 goto $r2 = r1.<org.hibernate.sql.Alias: java.lang.String suffix>;	$r2 = r1.<org.hibernate.sql.Alias: java.lang.String suffix>;	if $r2 != null goto $r3 = new java.lang.StringBuilder;	$r8 = r7;	goto [?= return $r8];	return $r8
;block_num 5