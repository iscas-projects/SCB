(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1631 0)
(declare-sort var3701 0)
(declare-sort var2684 0)
(declare-sort var2946 0)
(declare-sort var3904 0)
(declare-sort var1138 0)
(declare-sort var2201 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2684_add/-1142548109 (var2684 var2946) Bool)
(declare-fun cast-from-ClassObject-to-var2946 (ClassObject) var2946)
(declare-fun getInterfaces/-1280103563 (ClassObject) (Array Int ClassObject))
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(declare-fun getSuperclass/1296282036 (ClassObject) ClassObject)
(declare-fun var1138_getDeclaredMethods/-830923152 (ClassObject) (Array Int var3904))
(declare-fun getLength-Arr-var3904-1 ((Array Int var3904)) Int)
(declare-fun getModifiers/890868286 (var3904) Int)
(declare-fun var2201_isPrivate/-505179105 (Int) Bool)
(declare-const null-var1631 var1631)
(declare-const null-var3701 var3701)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2684 var2684)
(declare-const var562 var1631) ; Statement: r15 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory 
(assert (not (= var562 null-var1631)))
(declare-const var1903 var3701) ; Statement: r12 := @parameter0: java.util.Map 
(assert (not (= var1903 null-var3701)))
(declare-const var3399 ClassObject) ; Statement: r1 := @parameter1: java.lang.Class 
(assert (not (= var3399 null-ClassObject)))
(declare-const var2445 var2684) ; Statement: r0 := @parameter2: java.util.Set 
(assert (not (= var2445 null-var2684)))
(define-const var3557 Bool (var2684_add/-1142548109 var2445 (cast-from-ClassObject-to-var2946 var3399))) ; Statement: $z0 = interfaceinvoke r0.<java.util.Set: boolean add(java.lang.Object)>(r1) 
 ; Statement: if $z0 != 0 goto r2 = virtualinvoke r1.<java.lang.Class: java.lang.Class[] getInterfaces()>() 
(assert (not (= (ite var3557 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var3203 (Array Int ClassObject) (getInterfaces/-1280103563 var3399)) ; Statement: r2 = virtualinvoke r1.<java.lang.Class: java.lang.Class[] getInterfaces()>() 
(define-const var2458 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
(define-const var2773 Int (getLength-Arr-ClassObject-1 var3203)) ; Statement: $i0 = lengthof r2 
 ; Statement: if i6 >= $i0 goto r19 = virtualinvoke r1.<java.lang.Class: java.lang.Class getSuperclass()>() 
(assert (>= var2458 var2773)) ; Cond: i6 >= $i0 
(assert true)
(define-const var3250 ClassObject (getSuperclass/1296282036 var3399)) ; Statement: r19 = virtualinvoke r1.<java.lang.Class: java.lang.Class getSuperclass()>() 
 ; Statement: if r19 == null goto $r17 = staticinvoke <org.apache.ibatis.javassist.util.proxy.SecurityActions: java.lang.reflect.Method[] getDeclaredMethods(java.lang.Class)>(r1) 
(assert (= var3250 null-ClassObject)) ; Cond: r19 == null 
(define-const var2367 (Array Int var3904) (var1138_getDeclaredMethods/-830923152 var3399)) ; Statement: $r17 = staticinvoke <org.apache.ibatis.javassist.util.proxy.SecurityActions: java.lang.reflect.Method[] getDeclaredMethods(java.lang.Class)>(r1) 
(define-const var3580 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
(define-const var1240 Int (getLength-Arr-var3904-1 var2367)) ; Statement: $i8 = lengthof $r17 
 ; Statement: if i7 >= $i8 goto return 
(assert (not (>= var3580 var1240))) ; Negate: Cond: i7 >= $i8  
(define-const var3047 var3904 (select var2367 var3580)) ; Statement: $r3 = $r17[i7] 
(assert true)
(define-const var3204 Int (getModifiers/890868286 var3047)) ; Statement: $i1 = virtualinvoke $r3.<java.lang.reflect.Method: int getModifiers()>() 
(define-const var3454 Bool (var2201_isPrivate/-505179105 var3204)) ; Statement: $z1 = staticinvoke <java.lang.reflect.Modifier: boolean isPrivate(int)>($i1) 
 ; Statement: if $z1 != 0 goto i7 = i7 + 1 
(assert (not (= (ite var3454 1 0) 0))) ; Cond: $z1 != 0 
(define-const var3580!1 Int (+ var3580 1)) ; Statement: i7 = i7 + 1 
 ; Statement: goto [?= $i8 = lengthof $r17] 
(assert true) ; Non Conditional
(define-const var1240!1 Int (getLength-Arr-var3904-1 var2367)) ; Statement: $i8 = lengthof $r17 
 ; Statement: if i7 >= $i8 goto return 
(assert (not (>= var3580!1 var1240!1))) ; Negate: Cond: i7 >= $i8  
(define-const var3047!1 var3904 (select var2367 var3580!1)) ; Statement: $r3 = $r17[i7] 
(assert true)
(define-const var3204!1 Int (getModifiers/890868286 var3047!1)) ; Statement: $i1 = virtualinvoke $r3.<java.lang.reflect.Method: int getModifiers()>() 
(define-const var3454!1 Bool (var2201_isPrivate/-505179105 var3204!1)) ; Statement: $z1 = staticinvoke <java.lang.reflect.Modifier: boolean isPrivate(int)>($i1) 
 ; Statement: if $z1 != 0 goto i7 = i7 + 1 
(assert (not (= (ite var3454!1 1 0) 0))) ; Cond: $z1 != 0 
(define-const var3580!2 Int (+ var3580!1 1)) ; Statement: i7 = i7 + 1 
 ; Statement: goto [?= $i8 = lengthof $r17] 
(assert true) ; Non Conditional
(define-const var1240!2 Int (getLength-Arr-var3904-1 var2367)) ; Statement: $i8 = lengthof $r17 
 ; Statement: if i7 >= $i8 goto return 
(assert (>= var3580!2 var1240!2)) ; Cond: i7 >= $i8 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2684_add/-1142548109=([java.util.Set, java.lang.Object], boolean), cast-from-ClassObject-to-var2946=([java.lang.Class], java.lang.Object), getInterfaces/-1280103563=([java.lang.Class], java.lang.Class[]), getLength-Arr-ClassObject-1=([java.lang.Class[]], int), getSuperclass/1296282036=([java.lang.Class], java.lang.Class), var1138_getDeclaredMethods/-830923152=([java.lang.Class], java.lang.reflect.Method[]), getLength-Arr-var3904-1=([java.lang.reflect.Method[]], int), getModifiers/890868286=([java.lang.reflect.Method], int), var2201_isPrivate/-505179105=([int], boolean)}
; {var1631=org.apache.ibatis.javassist.util.proxy.ProxyFactory, var562=r15, var3701=java.util.Map, var1903=r12, var3399=r1, var2684=java.util.Set, var2445=r0, var2946=java.lang.Object, var3557=$z0, var3203=r2, var2458=i6, var2773=$i0, var3250=r19, var3904=java.lang.reflect.Method, var1138=org.apache.ibatis.javassist.util.proxy.SecurityActions, var2367=$r17, var3580=i7, var1240=$i8, var3047=$r3, var3204=$i1, var2201=java.lang.reflect.Modifier, var3454=$z1}
; {org.apache.ibatis.javassist.util.proxy.ProxyFactory=var1631, r15=var562, java.util.Map=var3701, r12=var1903, r1=var3399, java.util.Set=var2684, r0=var2445, java.lang.Object=var2946, $z0=var3557, r2=var3203, i6=var2458, $i0=var2773, r19=var3250, java.lang.reflect.Method=var3904, org.apache.ibatis.javassist.util.proxy.SecurityActions=var1138, $r17=var2367, i7=var3580, $i8=var1240, $r3=var3047, $i1=var3204, java.lang.reflect.Modifier=var2201, $z1=var3454}
;seq 
;cnt {}
;stmts r15 := @this: org.apache.ibatis.javassist.util.proxy.ProxyFactory;	r12 := @parameter0: java.util.Map;	r1 := @parameter1: java.lang.Class;	r0 := @parameter2: java.util.Set;	$z0 = interfaceinvoke r0.<java.util.Set: boolean add(java.lang.Object)>(r1);	if $z0 != 0 goto r2 = virtualinvoke r1.<java.lang.Class: java.lang.Class[] getInterfaces()>();	r2 = virtualinvoke r1.<java.lang.Class: java.lang.Class[] getInterfaces()>();	i6 = 0;	$i0 = lengthof r2;	if i6 >= $i0 goto r19 = virtualinvoke r1.<java.lang.Class: java.lang.Class getSuperclass()>();	r19 = virtualinvoke r1.<java.lang.Class: java.lang.Class getSuperclass()>();	if r19 == null goto $r17 = staticinvoke <org.apache.ibatis.javassist.util.proxy.SecurityActions: java.lang.reflect.Method[] getDeclaredMethods(java.lang.Class)>(r1);	$r17 = staticinvoke <org.apache.ibatis.javassist.util.proxy.SecurityActions: java.lang.reflect.Method[] getDeclaredMethods(java.lang.Class)>(r1);	i7 = 0;	$i8 = lengthof $r17;	if i7 >= $i8 goto return;	$r3 = $r17[i7];	$i1 = virtualinvoke $r3.<java.lang.reflect.Method: int getModifiers()>();	$z1 = staticinvoke <java.lang.reflect.Modifier: boolean isPrivate(int)>($i1);	if $z1 != 0 goto i7 = i7 + 1;	i7 = i7 + 1;	goto [?= $i8 = lengthof $r17];	$i8 = lengthof $r17;	if i7 >= $i8 goto return;	$r3 = $r17[i7];	$i1 = virtualinvoke $r3.<java.lang.reflect.Method: int getModifiers()>();	$z1 = staticinvoke <java.lang.reflect.Modifier: boolean isPrivate(int)>($i1);	if $z1 != 0 goto i7 = i7 + 1;	i7 = i7 + 1;	goto [?= $i8 = lengthof $r17];	$i8 = lengthof $r17;	if i7 >= $i8 goto return;	return
;block_num 13