(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2765 0)
(declare-sort var1808 0)
(declare-sort var597 0)
(declare-sort var3023 0)
(declare-sort var371 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getModifiers/-1049741209 (var1808) Int)
(declare-fun var597_isStatic/379715466 (Int) Bool)
(declare-fun var3023_canAccess/1273712458 (var371 var2765) Bool)
(declare-fun cast-from-var1808-to-var371 (var1808) var371)
(declare-const null-var2765 var2765)
(declare-const null-var1808 var1808)
(declare-const var1916 var2765) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var1916 null-var2765)))
(declare-const var2107 var1808) ; Statement: r0 := @parameter1: java.lang.reflect.Field 
(assert (not (= var2107 null-var1808)))
(assert true)
(define-const var3157 Int (getModifiers/-1049741209 var2107)) ; Statement: $i0 = virtualinvoke r0.<java.lang.reflect.Field: int getModifiers()>() 
(define-const var3880 Bool (var597_isStatic/379715466 var3157)) ; Statement: $z0 = staticinvoke <java.lang.reflect.Modifier: boolean isStatic(int)>($i0) 
 ; Statement: if $z0 == 0 goto $r13 = r1 
(assert (= (ite var3880 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3292 var2765 var1916) ; Statement: $r13 = r1 
(assert true) ; Non Conditional
(define-const var2431 Bool (var3023_canAccess/1273712458 (cast-from-var1808-to-var371 var2107) var3292)) ; Statement: $z1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.ReflectionAccessFilterHelper: boolean canAccess(java.lang.reflect.AccessibleObject,java.lang.Object)>(r0, $r13) 
 ; Statement: if $z1 != 0 goto return 
(assert (not (= (ite var2431 1 0) 0))) ; Cond: $z1 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getModifiers/-1049741209=([java.lang.reflect.Field], int), var597_isStatic/379715466=([int], boolean), var3023_canAccess/1273712458=([java.lang.reflect.AccessibleObject, java.lang.Object], boolean), cast-from-var1808-to-var371=([java.lang.reflect.Field], java.lang.reflect.AccessibleObject)}
; {var2765=java.lang.Object, var1916=r1, var1808=java.lang.reflect.Field, var2107=r0, var3157=$i0, var597=java.lang.reflect.Modifier, var3880=$z0, var3292=$r13, var3023=com.google.javascript.jscomp.jarjar.com.google.gson.internal.ReflectionAccessFilterHelper, var371=java.lang.reflect.AccessibleObject, var2431=$z1}
; {java.lang.Object=var2765, r1=var1916, java.lang.reflect.Field=var1808, r0=var2107, $i0=var3157, java.lang.reflect.Modifier=var597, $z0=var3880, $r13=var3292, com.google.javascript.jscomp.jarjar.com.google.gson.internal.ReflectionAccessFilterHelper=var3023, java.lang.reflect.AccessibleObject=var371, $z1=var2431}
;seq 
;cnt {}
;stmts r1 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.reflect.Field;	$i0 = virtualinvoke r0.<java.lang.reflect.Field: int getModifiers()>();	$z0 = staticinvoke <java.lang.reflect.Modifier: boolean isStatic(int)>($i0);	if $z0 == 0 goto $r13 = r1;	$r13 = r1;	$z1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.ReflectionAccessFilterHelper: boolean canAccess(java.lang.reflect.AccessibleObject,java.lang.Object)>(r0, $r13);	if $z1 != 0 goto return;	return
;block_num 4