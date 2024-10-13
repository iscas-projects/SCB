(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3386 0)
(declare-sort var3616 0)
(declare-sort var229 0)
(declare-sort var3594 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3616_getLength/1005357804 (var3386) Int)
(declare-fun var3616_clone/1678787205 ((Array Int Int)) (Array Int Int))
(declare-fun var229_sort/-179590612 ((Array Int Int)) (Array Int Int))
(declare-fun var3616_isNotEmpty/-1513181023 ((Array Int Int)) Bool)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getClass/1258963082 (var3386) ClassObject)
(declare-fun getComponentType/1960034130 (ClassObject) ClassObject)
(declare-fun var3594_newInstance/1168168314 (ClassObject Int) var3386)
(declare-const null-var3386 var3386)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var3632 var3386) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var3632 null-var3386)))
(declare-const var983 (Array Int Int)) ; Statement: r1 := @parameter1: int[] 
(assert (not (= var983 null-__Array__Int__Int__)))
(define-const var3822 Int (var3616_getLength/1005357804 var3632)) ; Statement: i0 = staticinvoke <org.apache.commons.lang3.ArrayUtils: int getLength(java.lang.Object)>(r0) 
(define-const var241 Int 0) ; Statement: i8 = 0 
(define-const var1454 (Array Int Int) (var3616_clone/1678787205 var983)) ; Statement: $r2 = staticinvoke <org.apache.commons.lang3.ArrayUtils: int[] clone(int[])>(r1) 
(define-const var87 (Array Int Int) (var229_sort/-179590612 var1454)) ; Statement: r3 = staticinvoke <org.apache.commons.lang3.ArraySorter: int[] sort(int[])>($r2) 
(define-const var3967 Bool (var3616_isNotEmpty/-1513181023 var87)) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.ArrayUtils: boolean isNotEmpty(int[])>(r3) 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert (not (= (ite var3967 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2382 Int (getLength-Arr-Int-1 var87)) ; Statement: i9 = lengthof r3 
(define-const var3069 Int var3822) ; Statement: i10 = i0 
(assert true) ; Non Conditional
(define-const var2633 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i16 = (int) -1 
(define-const var2382!1 Int (+ var2382 var2633)) ; Statement: i9 = i9 + $i16 
 ; Statement: if i9 < 0 goto $r4 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert (< var2382!1 0)) ; Cond: i9 < 0 
(assert true)
(define-const var3918 ClassObject (getClass/1258963082 var3632)) ; Statement: $r4 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2271 ClassObject (getComponentType/1960034130 var3918)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.Class: java.lang.Class getComponentType()>() 
(define-const var2440 Int (- var3822 var241)) ; Statement: $i1 = i0 - i8 
(define-const var3353 var3386 (var3594_newInstance/1168168314 var2271 var2440)) ; Statement: $r6 = staticinvoke <java.lang.reflect.Array: java.lang.Object newInstance(java.lang.Class,int)>($r5, $i1) 
 ; Statement: if i8 >= i0 goto return $r6 
(assert (>= var241 var3822)) ; Cond: i8 >= i0 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var3616_getLength/1005357804=([java.lang.Object], int), var3616_clone/1678787205=([int[]], int[]), var229_sort/-179590612=([int[]], int[]), var3616_isNotEmpty/-1513181023=([int[]], boolean), getLength-Arr-Int-1=([int[]], int), cast-from-Int-to-Int=([int], int), getClass/1258963082=([java.lang.Object], java.lang.Class), getComponentType/1960034130=([java.lang.Class], java.lang.Class), var3594_newInstance/1168168314=([java.lang.Class, int], java.lang.Object)}
; {var3386=java.lang.Object, var3632=r0, var983=r1, var3616=org.apache.commons.lang3.ArrayUtils, var3822=i0, var241=i8, var1454=$r2, var229=org.apache.commons.lang3.ArraySorter, var87=r3, var3967=$z0, var2382=i9, var3069=i10, var2633=$i16, var3918=$r4, var2271=$r5, var2440=$i1, var3594=java.lang.reflect.Array, var3353=$r6}
; {java.lang.Object=var3386, r0=var3632, r1=var983, org.apache.commons.lang3.ArrayUtils=var3616, i0=var3822, i8=var241, $r2=var1454, org.apache.commons.lang3.ArraySorter=var229, r3=var87, $z0=var3967, i9=var2382, i10=var3069, $i16=var2633, $r4=var3918, $r5=var2271, $i1=var2440, java.lang.reflect.Array=var3594, $r6=var3353}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.Object;	r1 := @parameter1: int[];	i0 = staticinvoke <org.apache.commons.lang3.ArrayUtils: int getLength(java.lang.Object)>(r0);	i8 = 0;	$r2 = staticinvoke <org.apache.commons.lang3.ArrayUtils: int[] clone(int[])>(r1);	r3 = staticinvoke <org.apache.commons.lang3.ArraySorter: int[] sort(int[])>($r2);	$z0 = staticinvoke <org.apache.commons.lang3.ArrayUtils: boolean isNotEmpty(int[])>(r3);	if $z0 == 0 goto $r4 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	i9 = lengthof r3;	i10 = i0;	$i16 = (int) -1;	i9 = i9 + $i16;	if i9 < 0 goto $r4 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r5 = virtualinvoke $r4.<java.lang.Class: java.lang.Class getComponentType()>();	$i1 = i0 - i8;	$r6 = staticinvoke <java.lang.reflect.Array: java.lang.Object newInstance(java.lang.Class,int)>($r5, $i1);	if i8 >= i0 goto return $r6;	return $r6
;block_num 5