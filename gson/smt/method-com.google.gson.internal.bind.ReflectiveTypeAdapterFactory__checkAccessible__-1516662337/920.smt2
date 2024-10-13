(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var117 0)
(declare-sort var3090 0)
(declare-sort var3943 0)
(declare-sort var2542 0)
(declare-sort var765 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var3090-to-var3943 (var3090) var3943)
(declare-fun var3943_getModifiers/622745125 (var3943) Int)
(declare-fun var2542_isStatic/379715466 (Int) Bool)
(declare-fun var765_canAccess/24921369 (var3090 var117) Bool)
(declare-const null-var117 var117)
(declare-const null-var3090 var3090)
(declare-const var589 var117) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var589 null-var117)))
(declare-const var3948 var3090) ; Statement: r0 := @parameter1: java.lang.reflect.AccessibleObject 
(assert (not (= var3948 null-var3090)))
(define-const var2728 var3943 (cast-from-var3090-to-var3943 var3948)) ; Statement: $r1 = (java.lang.reflect.Member) r0 
(define-const var3398 Int (var3943_getModifiers/622745125 var2728)) ; Statement: $i0 = interfaceinvoke $r1.<java.lang.reflect.Member: int getModifiers()>() 
(define-const var632 Bool (var2542_isStatic/379715466 var3398)) ; Statement: $z0 = staticinvoke <java.lang.reflect.Modifier: boolean isStatic(int)>($i0) 
 ; Statement: if $z0 == 0 goto $r9 = r2 
(assert (not (= (ite var632 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1625 var117 null-var117) ; Statement: $r9 = null 
 ; Statement: goto [?= $z1 = staticinvoke <com.google.gson.internal.ReflectionAccessFilterHelper: boolean canAccess(java.lang.reflect.AccessibleObject,java.lang.Object)>(r0, $r9)] 
(assert true) ; Non Conditional
(define-const var2031 Bool (var765_canAccess/24921369 var3948 var1625)) ; Statement: $z1 = staticinvoke <com.google.gson.internal.ReflectionAccessFilterHelper: boolean canAccess(java.lang.reflect.AccessibleObject,java.lang.Object)>(r0, $r9) 
 ; Statement: if $z1 != 0 goto return 
(assert (not (= (ite var2031 1 0) 0))) ; Cond: $z1 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var3090-to-var3943=([java.lang.reflect.AccessibleObject], java.lang.reflect.Member), var3943_getModifiers/622745125=([java.lang.reflect.Member], int), var2542_isStatic/379715466=([int], boolean), var765_canAccess/24921369=([java.lang.reflect.AccessibleObject, java.lang.Object], boolean)}
; {var117=java.lang.Object, var589=r2, var3090=java.lang.reflect.AccessibleObject, var3948=r0, var3943=java.lang.reflect.Member, var2728=$r1, var3398=$i0, var2542=java.lang.reflect.Modifier, var632=$z0, var1625=$r9, var765=com.google.gson.internal.ReflectionAccessFilterHelper, var2031=$z1}
; {java.lang.Object=var117, r2=var589, java.lang.reflect.AccessibleObject=var3090, r0=var3948, java.lang.reflect.Member=var3943, $r1=var2728, $i0=var3398, java.lang.reflect.Modifier=var2542, $z0=var632, $r9=var1625, com.google.gson.internal.ReflectionAccessFilterHelper=var765, $z1=var2031}
;seq 
;cnt {}
;stmts r2 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.reflect.AccessibleObject;	$r1 = (java.lang.reflect.Member) r0;	$i0 = interfaceinvoke $r1.<java.lang.reflect.Member: int getModifiers()>();	$z0 = staticinvoke <java.lang.reflect.Modifier: boolean isStatic(int)>($i0);	if $z0 == 0 goto $r9 = r2;	$r9 = null;	goto [?= $z1 = staticinvoke <com.google.gson.internal.ReflectionAccessFilterHelper: boolean canAccess(java.lang.reflect.AccessibleObject,java.lang.Object)>(r0, $r9)];	$z1 = staticinvoke <com.google.gson.internal.ReflectionAccessFilterHelper: boolean canAccess(java.lang.reflect.AccessibleObject,java.lang.Object)>(r0, $r9);	if $z1 != 0 goto return;	return
;block_num 4