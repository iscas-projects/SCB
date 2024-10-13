(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1152 0)
(declare-sort var3005 0)
(declare-sort var776 0)
(declare-sort var1416 0)
(declare-sort var3086 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getModifiers/-1049741209 (var3005) Int)
(declare-fun var776_isStatic/379715466 (Int) Bool)
(declare-fun var1416_canAccess/1273712458 (var3086 var1152) Bool)
(declare-fun cast-from-var3005-to-var3086 (var3005) var3086)
(declare-const null-var1152 var1152)
(declare-const null-var3005 var3005)
(declare-const var1075 var1152) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var1075 null-var1152)))
(declare-const var2390 var3005) ; Statement: r0 := @parameter1: java.lang.reflect.Field 
(assert (not (= var2390 null-var3005)))
(assert true)
(define-const var3539 Int (getModifiers/-1049741209 var2390)) ; Statement: $i0 = virtualinvoke r0.<java.lang.reflect.Field: int getModifiers()>() 
(define-const var2893 Bool (var776_isStatic/379715466 var3539)) ; Statement: $z0 = staticinvoke <java.lang.reflect.Modifier: boolean isStatic(int)>($i0) 
 ; Statement: if $z0 == 0 goto $r13 = r1 
(assert (not (= (ite var2893 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2703 var1152 null-var1152) ; Statement: $r13 = null 
 ; Statement: goto [?= $z1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.ReflectionAccessFilterHelper: boolean canAccess(java.lang.reflect.AccessibleObject,java.lang.Object)>(r0, $r13)] 
(assert true) ; Non Conditional
(define-const var177 Bool (var1416_canAccess/1273712458 (cast-from-var3005-to-var3086 var2390) var2703)) ; Statement: $z1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.ReflectionAccessFilterHelper: boolean canAccess(java.lang.reflect.AccessibleObject,java.lang.Object)>(r0, $r13) 
 ; Statement: if $z1 != 0 goto return 
(assert (not (= (ite var177 1 0) 0))) ; Cond: $z1 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getModifiers/-1049741209=([java.lang.reflect.Field], int), var776_isStatic/379715466=([int], boolean), var1416_canAccess/1273712458=([java.lang.reflect.AccessibleObject, java.lang.Object], boolean), cast-from-var3005-to-var3086=([java.lang.reflect.Field], java.lang.reflect.AccessibleObject)}
; {var1152=java.lang.Object, var1075=r1, var3005=java.lang.reflect.Field, var2390=r0, var3539=$i0, var776=java.lang.reflect.Modifier, var2893=$z0, var2703=$r13, var1416=com.google.javascript.jscomp.jarjar.com.google.gson.internal.ReflectionAccessFilterHelper, var3086=java.lang.reflect.AccessibleObject, var177=$z1}
; {java.lang.Object=var1152, r1=var1075, java.lang.reflect.Field=var3005, r0=var2390, $i0=var3539, java.lang.reflect.Modifier=var776, $z0=var2893, $r13=var2703, com.google.javascript.jscomp.jarjar.com.google.gson.internal.ReflectionAccessFilterHelper=var1416, java.lang.reflect.AccessibleObject=var3086, $z1=var177}
;seq 
;cnt {}
;stmts r1 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.reflect.Field;	$i0 = virtualinvoke r0.<java.lang.reflect.Field: int getModifiers()>();	$z0 = staticinvoke <java.lang.reflect.Modifier: boolean isStatic(int)>($i0);	if $z0 == 0 goto $r13 = r1;	$r13 = null;	goto [?= $z1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.ReflectionAccessFilterHelper: boolean canAccess(java.lang.reflect.AccessibleObject,java.lang.Object)>(r0, $r13)];	$z1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.ReflectionAccessFilterHelper: boolean canAccess(java.lang.reflect.AccessibleObject,java.lang.Object)>(r0, $r13);	if $z1 != 0 goto return;	return
;block_num 4