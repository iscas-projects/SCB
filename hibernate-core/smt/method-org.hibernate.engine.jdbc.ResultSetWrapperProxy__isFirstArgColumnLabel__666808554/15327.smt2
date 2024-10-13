(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3179 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var3179) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var3179 var3179)
(declare-const var2983 var3179) ; Statement: r0 := @parameter0: java.lang.reflect.Method 
(assert (not (= var2983 null-var3179)))
(assert true)
(define-const var1814 String (getName/1227988463 var2983)) ; Statement: $r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var588 Bool (startsWith/-1785782452 var1814 "get")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean startsWith(java.lang.String)>("get") 
 ; Statement: if $z0 != 0 goto $i0 = virtualinvoke r0.<java.lang.reflect.Method: int getParameterCount()>() 
(assert (not (not (= (ite var588 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var1242 String (getName/1227988463 var2983)) ; Statement: $r4 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var3427 Bool (startsWith/-1785782452 var1242 "update")) ; Statement: $z2 = virtualinvoke $r4.<java.lang.String: boolean startsWith(java.lang.String)>("update") 
 ; Statement: if $z2 != 0 goto $i0 = virtualinvoke r0.<java.lang.reflect.Method: int getParameterCount()>() 
(assert (not (not (= (ite var3427 1 0) 0)))) ; Negate: Cond: $z2 != 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var3179=java.lang.reflect.Method, var2983=r0, var1814=$r1, var588=$z0, var1242=$r4, var3427=$z2}
; {java.lang.reflect.Method=var3179, r0=var2983, $r1=var1814, $z0=var588, $r4=var1242, $z2=var3427}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 2}
;stmts r0 := @parameter0: java.lang.reflect.Method;	$r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean startsWith(java.lang.String)>("get");	if $z0 != 0 goto $i0 = virtualinvoke r0.<java.lang.reflect.Method: int getParameterCount()>();	$r4 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	$z2 = virtualinvoke $r4.<java.lang.String: boolean startsWith(java.lang.String)>("update");	if $z2 != 0 goto $i0 = virtualinvoke r0.<java.lang.reflect.Method: int getParameterCount()>();	return 0
;block_num 3