(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3359 0)
(declare-sort var2025 0)
(declare-sort var2345 0)
(declare-sort var752 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var2345) String)
(declare-fun getParameterCount/184216570 (var2345) Int)
(declare-fun var752_valueOf/1602327315 (Bool) var752)
(declare-const null-var3359 var3359)
(declare-const null-var2025 var2025)
(declare-const null-var2345 var2345)
(declare-const null-__Array__Int__var2025__ (Array Int var2025))
(declare-const var1401 var3359) ; Statement: r7 := @this: org.hibernate.context.internal.ThreadLocalSessionContext$TransactionProtectionWrapper 
(assert (not (= var1401 null-var3359)))
(declare-const var2073 var2025) ; Statement: r57 := @parameter0: java.lang.Object 
(assert (not (= var2073 null-var2025)))
(declare-const var2245 var2345) ; Statement: r0 := @parameter1: java.lang.reflect.Method 
(assert (not (= var2245 null-var2345)))
(declare-const var3681 (Array Int var2025)) ; Statement: r8 := @parameter2: java.lang.Object[] 
(assert (not (= var3681 null-__Array__Int__var2025__)))
(assert true)
(define-const var1382 String (getName/1227988463 var2245)) ; Statement: r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(define-const var3930 String "equals") ; Statement: $r2 = "equals" 
(assert true)
(define-const var841 Bool (= var3930 var1382)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r3 = "hashCode" 
(assert (not (= (ite var841 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var2922 Int (getParameterCount/184216570 var2245)) ; Statement: $i3 = virtualinvoke r0.<java.lang.reflect.Method: int getParameterCount()>() 
 ; Statement: if $i3 != 1 goto $r3 = "hashCode" 
(assert (not (not (= var2922 1)))) ; Negate: Cond: $i3 != 1  
(define-const var855 var2025 (select var3681 0)) ; Statement: $r46 = r8[0] 
 ; Statement: if $r46 == null goto $r47 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0) 
(assert (= var855 null-var2025)) ; Cond: $r46 == null 
(define-const var557 var752 (var752_valueOf/1602327315 (ite (= 1 0) true false))) ; Statement: $r47 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0) 
 ; Statement: return $r47 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String), getParameterCount/184216570=([java.lang.reflect.Method], int), var752_valueOf/1602327315=([boolean], java.lang.Boolean)}
; {var3359=org.hibernate.context.internal.ThreadLocalSessionContext$TransactionProtectionWrapper, var1401=r7, var2025=java.lang.Object, var2073=r57, var2345=java.lang.reflect.Method, var2245=r0, var3681=r8, var1382=r1, var3930=$r2, var841=$z0, var2922=$i3, var855=$r46, var752=java.lang.Boolean, var557=$r47}
; {org.hibernate.context.internal.ThreadLocalSessionContext$TransactionProtectionWrapper=var3359, r7=var1401, java.lang.Object=var2025, r57=var2073, java.lang.reflect.Method=var2345, r0=var2245, r8=var3681, r1=var1382, $r2=var3930, $z0=var841, $i3=var2922, $r46=var855, java.lang.Boolean=var752, $r47=var557}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r7 := @this: org.hibernate.context.internal.ThreadLocalSessionContext$TransactionProtectionWrapper;	r57 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.reflect.Method;	r8 := @parameter2: java.lang.Object[];	r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	$r2 = "equals";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $r3 = "hashCode";	$i3 = virtualinvoke r0.<java.lang.reflect.Method: int getParameterCount()>();	if $i3 != 1 goto $r3 = "hashCode";	$r46 = r8[0];	if $r46 == null goto $r47 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0);	$r47 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(0);	return $r47
;block_num 4