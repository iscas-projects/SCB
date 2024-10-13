(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1379 0)
(declare-sort var2596 0)
(declare-sort var2203 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2203!class ClassObject)
(declare-fun getName/1227988463 (var1379) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun getReturnType/-1494237887 (var1379) ClassObject)
(declare-fun arr-var2596-init () (Array Int var2596))
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1379 var1379)
(declare-const null-var2596 var2596)
(declare-const var2404 ClassObject) ; Statement: r3 := @parameter0: java.lang.Class 
(assert (not (= var2404 null-ClassObject)))
(declare-const var1370 var1379) ; Statement: r0 := @parameter1: java.lang.reflect.Method 
(assert (not (= var1370 null-var1379)))
(assert true)
(define-const var3556 String (getName/1227988463 var1370)) ; Statement: r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var3734 Int (length/-134980193 var3556)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert true)
(define-const var3638 ClassObject (getReturnType/-1494237887 var1370)) ; Statement: r2 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class getReturnType()>() 
(define-const var2086 Bool (ite (= 1 0) true false)) ; Statement: z4 = 0 
(define-const var3848 Bool (ite (= 1 0) true false)) ; Statement: z5 = 0 
(define-const var3027 Bool (ite (= 1 0) true false)) ; Statement: z6 = 0 
 ; Statement: if i0 <= 2 goto $r12 = newarray (java.lang.reflect.Field)[2] 
(assert (<= var3734 2)) ; Cond: i0 <= 2 
(define-const var1912 (Array Int var2596) arr-var2596-init) ; Statement: $r12 = newarray (java.lang.reflect.Field)[2] 
 ; Statement: if z4 != 0 goto (branch) 
(assert (not (not (= (ite var2086 1 0) 0)))) ; Negate: Cond: z4 != 0  
 ; Statement: if z5 != 0 goto (branch) 
(assert (not (not (= (ite var3848 1 0) 0)))) ; Negate: Cond: z5 != 0  
 ; Statement: if z6 == 0 goto $r15 = $r12[0] 
(assert (= (ite var3027 1 0) 0)) ; Cond: z6 == 0 
(define-const var3751 var2596 (select var1912 0)) ; Statement: $r15 = $r12[0] 
 ; Statement: if $r15 == null goto $r16 = $r12[1] 
(assert (= var3751 null-var2596)) ; Cond: $r15 == null 
(define-const var2871 var2596 (select var1912 1)) ; Statement: $r16 = $r12[1] 
(assert true) ; Non Conditional
(define-const var2336 var2596 var2871) ; Statement: r17 = $r16 
(define-const var918 ClassObject var2203!class) ; Statement: $r5 = class "Ljava/lang/Throwable;" 
(assert true)
(define-const var2511 Bool (isAssignableFrom/-1028998700 var918 var2404)) ; Statement: $z0 = virtualinvoke $r5.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r3) 
 ; Statement: if $z0 == 0 goto return r17 
(assert (= (ite var2511 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return r17 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String), length/-134980193=([java.lang.String], int), getReturnType/-1494237887=([java.lang.reflect.Method], java.lang.Class), arr-var2596-init=([], java.lang.reflect.Field[]), isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean)}
; {var2404=r3, var1379=java.lang.reflect.Method, var1370=r0, var3556=r1, var3734=i0, var3638=r2, var2086=z4, var3848=z5, var3027=z6, var2596=java.lang.reflect.Field, var1912=$r12, var3751=$r15, var2871=$r16, var2336=r17, var2203=java.lang.Throwable, var918=$r5, var2511=$z0}
; {r3=var2404, java.lang.reflect.Method=var1379, r0=var1370, r1=var3556, i0=var3734, r2=var3638, z4=var2086, z5=var3848, z6=var3027, java.lang.reflect.Field=var2596, $r12=var1912, $r15=var3751, $r16=var2871, r17=var2336, java.lang.Throwable=var2203, $r5=var918, $z0=var2511}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r3 := @parameter0: java.lang.Class;	r0 := @parameter1: java.lang.reflect.Method;	r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	i0 = virtualinvoke r1.<java.lang.String: int length()>();	r2 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.Class getReturnType()>();	z4 = 0;	z5 = 0;	z6 = 0;	if i0 <= 2 goto $r12 = newarray (java.lang.reflect.Field)[2];	$r12 = newarray (java.lang.reflect.Field)[2];	if z4 != 0 goto (branch);	if z5 != 0 goto (branch);	if z6 == 0 goto $r15 = $r12[0];	$r15 = $r12[0];	if $r15 == null goto $r16 = $r12[1];	$r16 = $r12[1];	r17 = $r16;	$r5 = class "Ljava/lang/Throwable;";	$z0 = virtualinvoke $r5.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r3);	if $z0 == 0 goto return r17;	return r17
;block_num 8