(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var791 0)
(declare-sort var1702 0)
(declare-sort var1791 0)
(declare-sort var1671 0)
(declare-sort var438 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var1702-to-var1791 (var1702) var1791)
(declare-fun var1791_getModifiers/622745125 (var1791) Int)
(declare-fun var1671_isStatic/379715466 (Int) Bool)
(declare-fun var438_canAccess/24921369 (var1702 var791) Bool)
(declare-const null-var791 var791)
(declare-const null-var1702 var1702)
(declare-const var3744 var791) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var3744 null-var791)))
(declare-const var1639 var1702) ; Statement: r0 := @parameter1: java.lang.reflect.AccessibleObject 
(assert (not (= var1639 null-var1702)))
(define-const var402 var1791 (cast-from-var1702-to-var1791 var1639)) ; Statement: $r1 = (java.lang.reflect.Member) r0 
(define-const var2819 Int (var1791_getModifiers/622745125 var402)) ; Statement: $i0 = interfaceinvoke $r1.<java.lang.reflect.Member: int getModifiers()>() 
(define-const var3550 Bool (var1671_isStatic/379715466 var2819)) ; Statement: $z0 = staticinvoke <java.lang.reflect.Modifier: boolean isStatic(int)>($i0) 
 ; Statement: if $z0 == 0 goto $r9 = r2 
(assert (= (ite var3550 1 0) 0)) ; Cond: $z0 == 0 
(define-const var884 var791 var3744) ; Statement: $r9 = r2 
(assert true) ; Non Conditional
(define-const var1397 Bool (var438_canAccess/24921369 var1639 var884)) ; Statement: $z1 = staticinvoke <com.google.gson.internal.ReflectionAccessFilterHelper: boolean canAccess(java.lang.reflect.AccessibleObject,java.lang.Object)>(r0, $r9) 
 ; Statement: if $z1 != 0 goto return 
(assert (not (= (ite var1397 1 0) 0))) ; Cond: $z1 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var1702-to-var1791=([java.lang.reflect.AccessibleObject], java.lang.reflect.Member), var1791_getModifiers/622745125=([java.lang.reflect.Member], int), var1671_isStatic/379715466=([int], boolean), var438_canAccess/24921369=([java.lang.reflect.AccessibleObject, java.lang.Object], boolean)}
; {var791=java.lang.Object, var3744=r2, var1702=java.lang.reflect.AccessibleObject, var1639=r0, var1791=java.lang.reflect.Member, var402=$r1, var2819=$i0, var1671=java.lang.reflect.Modifier, var3550=$z0, var884=$r9, var438=com.google.gson.internal.ReflectionAccessFilterHelper, var1397=$z1}
; {java.lang.Object=var791, r2=var3744, java.lang.reflect.AccessibleObject=var1702, r0=var1639, java.lang.reflect.Member=var1791, $r1=var402, $i0=var2819, java.lang.reflect.Modifier=var1671, $z0=var3550, $r9=var884, com.google.gson.internal.ReflectionAccessFilterHelper=var438, $z1=var1397}
;seq 
;cnt {}
;stmts r2 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.reflect.AccessibleObject;	$r1 = (java.lang.reflect.Member) r0;	$i0 = interfaceinvoke $r1.<java.lang.reflect.Member: int getModifiers()>();	$z0 = staticinvoke <java.lang.reflect.Modifier: boolean isStatic(int)>($i0);	if $z0 == 0 goto $r9 = r2;	$r9 = r2;	$z1 = staticinvoke <com.google.gson.internal.ReflectionAccessFilterHelper: boolean canAccess(java.lang.reflect.AccessibleObject,java.lang.Object)>(r0, $r9);	if $z1 != 0 goto return;	return
;block_num 4