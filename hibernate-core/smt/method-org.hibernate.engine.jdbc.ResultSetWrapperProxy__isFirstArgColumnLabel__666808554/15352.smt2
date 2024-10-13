(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var715 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var715) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun getParameterCount/184216570 (var715) Int)
(declare-const null-var715 var715)
(declare-const var663 var715) ; Statement: r0 := @parameter0: java.lang.reflect.Method 
(assert (not (= var663 null-var715)))
(assert true)
(define-const var3889 String (getName/1227988463 var663)) ; Statement: $r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var1965 Bool (startsWith/-1785782452 var3889 "get")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean startsWith(java.lang.String)>("get") 
 ; Statement: if $z0 != 0 goto $i0 = virtualinvoke r0.<java.lang.reflect.Method: int getParameterCount()>() 
(assert (not (= (ite var1965 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var399 Int (getParameterCount/184216570 var663)) ; Statement: $i0 = virtualinvoke r0.<java.lang.reflect.Method: int getParameterCount()>() 
 ; Statement: if $i0 > 0 goto $r2 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>() 
(assert (not (> var399 0))) ; Negate: Cond: $i0 > 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), getParameterCount/184216570=([java.lang.reflect.Method], int)}
; {var715=java.lang.reflect.Method, var663=r0, var3889=$r1, var1965=$z0, var399=$i0}
; {java.lang.reflect.Method=var715, r0=var663, $r1=var3889, $z0=var1965, $i0=var399}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.reflect.Method;	$r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean startsWith(java.lang.String)>("get");	if $z0 != 0 goto $i0 = virtualinvoke r0.<java.lang.reflect.Method: int getParameterCount()>();	$i0 = virtualinvoke r0.<java.lang.reflect.Method: int getParameterCount()>();	if $i0 > 0 goto $r2 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>();	return 0
;block_num 3