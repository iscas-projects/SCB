(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1115 0)
(declare-sort var3432 0)
(declare-sort var2865 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDeclaringClass/1477653585 (var2865) ClassObject)
(declare-fun getDeclaringClass/501867354 (var1115) ClassObject)
(declare-fun getName/1618348824 (var2865) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var1115 var1115)
(declare-const null-Int Int)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const null-__Array__Int__var2865__ (Array Int var2865))
(declare-const null-var2865 var2865)
(declare-const var1846 var1115) ; Statement: r1 := @parameter0: java.lang.reflect.Method 
(assert (not (= var1846 null-var1115)))
(declare-const var1337 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1337 null-Int)))
(declare-const var100 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var100 null-Int)))
(declare-const var2210 ClassObject) ; Statement: r5 := @parameter3: java.lang.Class 
(assert (not (= var2210 null-ClassObject)))
(declare-const var2611 Int) ; Statement: c4 := @parameter4: char 
(assert (not (= var2611 null-Int)))
(declare-const var3885 String) ; Statement: r7 := @parameter5: java.lang.String 
(assert (not (= var3885 null-String)))
(declare-const var2323 (Array Int var2865)) ; Statement: r8 := @parameter6: java.lang.reflect.Field[] 
(assert (not (= var2323 null-__Array__Int__var2865__)))
(declare-const var278 var2865) ; Statement: r0 := @parameter7: java.lang.reflect.Field 
(assert (not (= var278 null-var2865)))
(assert true)
(define-const var1697 ClassObject (getDeclaringClass/1477653585 var278)) ; Statement: $r3 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getDeclaringClass()>() 
(assert true)
(define-const var2981 ClassObject (getDeclaringClass/501867354 var1846)) ; Statement: $r2 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.Class getDeclaringClass()>() 
 ; Statement: if $r3 == $r2 goto r4 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.String getName()>() 
(assert (= var1697 var2981)) ; Cond: $r3 == $r2 
(assert true)
(define-const var1297 String (getName/1618348824 var278)) ; Statement: r4 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.String getName()>() 
(assert true)
(define-const var1270 Int (length/-134980193 var1297)) ; Statement: i0 = virtualinvoke r4.<java.lang.String: int length()>() 
(define-const var2006 Int (- var1337 var100)) ; Statement: $i3 = i1 - i2 
 ; Statement: if i0 != $i3 goto return 
(assert (not (= var1270 var2006))) ; Cond: i0 != $i3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getDeclaringClass/1477653585=([java.lang.reflect.Field], java.lang.Class), getDeclaringClass/501867354=([java.lang.reflect.Method], java.lang.Class), getName/1618348824=([java.lang.reflect.Field], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var1115=java.lang.reflect.Method, var1846=r1, var1337=i1, var100=i2, var2210=r5, var2611=c4, var3885=r7, var3432=null_type, var2865=java.lang.reflect.Field, var2323=r8, var278=r0, var1697=$r3, var2981=$r2, var1297=r4, var1270=i0, var2006=$i3}
; {java.lang.reflect.Method=var1115, r1=var1846, i1=var1337, i2=var100, r5=var2210, c4=var2611, r7=var3885, null_type=var3432, java.lang.reflect.Field=var2865, r8=var2323, r0=var278, $r3=var1697, $r2=var2981, r4=var1297, i0=var1270, $i3=var2006}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @parameter0: java.lang.reflect.Method;	i1 := @parameter1: int;	i2 := @parameter2: int;	r5 := @parameter3: java.lang.Class;	c4 := @parameter4: char;	r7 := @parameter5: java.lang.String;	r8 := @parameter6: java.lang.reflect.Field[];	r0 := @parameter7: java.lang.reflect.Field;	$r3 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getDeclaringClass()>();	$r2 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.Class getDeclaringClass()>();	if $r3 == $r2 goto r4 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.String getName()>();	r4 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.String getName()>();	i0 = virtualinvoke r4.<java.lang.String: int length()>();	$i3 = i1 - i2;	if i0 != $i3 goto return;	return
;block_num 3