(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2895 0)
(declare-sort var2730 0)
(declare-sort var1751 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var1751) String)
(declare-fun getParameterCount/184216570 (var1751) Int)
(declare-fun hashCode/1739917532 (var2730) Int)
(declare-fun cast-from-var2895-to-var2730 (var2895) var2730)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-const null-var2895 var2895)
(declare-const null-var2730 var2730)
(declare-const null-var1751 var1751)
(declare-const null-__Array__Int__var2730__ (Array Int var2730))
(declare-const var1267 var2895) ; Statement: r7 := @this: org.hibernate.context.internal.ThreadLocalSessionContext$TransactionProtectionWrapper 
(assert (not (= var1267 null-var2895)))
(declare-const var117 var2730) ; Statement: r57 := @parameter0: java.lang.Object 
(assert (not (= var117 null-var2730)))
(declare-const var3435 var1751) ; Statement: r0 := @parameter1: java.lang.reflect.Method 
(assert (not (= var3435 null-var1751)))
(declare-const var2796 (Array Int var2730)) ; Statement: r8 := @parameter2: java.lang.Object[] 
(assert (not (= var2796 null-__Array__Int__var2730__)))
(assert true)
(define-const var1507 String (getName/1227988463 var3435)) ; Statement: r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(define-const var579 String "equals") ; Statement: $r2 = "equals" 
(assert true)
(define-const var2744 Bool (= var579 var1507)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r3 = "hashCode" 
(assert (= (ite var2744 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1475 String "hashCode") ; Statement: $r3 = "hashCode" 
(assert true)
(define-const var2142 Bool (= var1475 var1507)) ; Statement: $z1 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z1 == 0 goto $r4 = "toString" 
(assert (not (= (ite var2142 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
(define-const var3354 Int (getParameterCount/184216570 var3435)) ; Statement: $i1 = virtualinvoke r0.<java.lang.reflect.Method: int getParameterCount()>() 
 ; Statement: if $i1 != 0 goto $r4 = "toString" 
(assert (not (not (= var3354 0)))) ; Negate: Cond: $i1 != 0  
(assert true)
(define-const var2668 Int (hashCode/1739917532 (cast-from-var2895-to-var2730 var1267))) ; Statement: $i2 = virtualinvoke r7.<java.lang.Object: int hashCode()>() 
(define-const var1485 Int (Int_valueOf/-1371140006 var2668)) ; Statement: $r45 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i2) 
 ; Statement: return $r45 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String), getParameterCount/184216570=([java.lang.reflect.Method], int), hashCode/1739917532=([java.lang.Object], int), cast-from-var2895-to-var2730=([org.hibernate.context.internal.ThreadLocalSessionContext$TransactionProtectionWrapper], java.lang.Object), Int_valueOf/-1371140006=([int], java.lang.Integer)}
; {var2895=org.hibernate.context.internal.ThreadLocalSessionContext$TransactionProtectionWrapper, var1267=r7, var2730=java.lang.Object, var117=r57, var1751=java.lang.reflect.Method, var3435=r0, var2796=r8, var1507=r1, var579=$r2, var2744=$z0, var1475=$r3, var2142=$z1, var3354=$i1, var2668=$i2, var1485=$r45}
; {org.hibernate.context.internal.ThreadLocalSessionContext$TransactionProtectionWrapper=var2895, r7=var1267, java.lang.Object=var2730, r57=var117, java.lang.reflect.Method=var1751, r0=var3435, r8=var2796, r1=var1507, $r2=var579, $z0=var2744, $r3=var1475, $z1=var2142, $i1=var3354, $i2=var2668, $r45=var1485}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r7 := @this: org.hibernate.context.internal.ThreadLocalSessionContext$TransactionProtectionWrapper;	r57 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.reflect.Method;	r8 := @parameter2: java.lang.Object[];	r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	$r2 = "equals";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $r3 = "hashCode";	$r3 = "hashCode";	$z1 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z1 == 0 goto $r4 = "toString";	$i1 = virtualinvoke r0.<java.lang.reflect.Method: int getParameterCount()>();	if $i1 != 0 goto $r4 = "toString";	$i2 = virtualinvoke r7.<java.lang.Object: int hashCode()>();	$r45 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i2);	return $r45
;block_num 4