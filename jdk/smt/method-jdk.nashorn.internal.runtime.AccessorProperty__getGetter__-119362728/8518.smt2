(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var902 0)
(declare-sort var2616 0)
(declare-sort var2821 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2616_getAccessorTypeIndex/-8434135 (ClassObject) Int)
(declare-fun checkUndeclared/1516434761 (var902) void)
(declare-fun GETTER_CACHE/-643128581 (var902) (Array Int var2821))
(declare-const null-var902 var902)
(declare-const null-ClassObject ClassObject)
(declare-const var902-$assertionsDisabled Bool)
(declare-const null-var2821 var2821)
(declare-const var2687 var902) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.AccessorProperty 
(assert (not (= var2687 null-var902)))
(declare-const var1001 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var1001 null-ClassObject)))
(define-const var16 Int (var2616_getAccessorTypeIndex/-8434135 var1001)) ; Statement: i0 = staticinvoke <jdk.nashorn.internal.runtime.JSType: int getAccessorTypeIndex(java.lang.Class)>(r0) 
(define-const var264 Bool var902-$assertionsDisabled) ; Statement: $z0 = <jdk.nashorn.internal.runtime.AccessorProperty: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto specialinvoke r1.<jdk.nashorn.internal.runtime.AccessorProperty: void checkUndeclared()>() 
(assert (not (= (ite var264 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
;(assert (checkUndeclared/1516434761 var2687)) ; Statement: specialinvoke r1.<jdk.nashorn.internal.runtime.AccessorProperty: void checkUndeclared()>() 

(declare-const var2687!1 var902)
(define-const var2732 (Array Int var2821) (GETTER_CACHE/-643128581 var2687!1)) ; Statement: $r22 = r1.<jdk.nashorn.internal.runtime.AccessorProperty: java.lang.invoke.MethodHandle[] GETTER_CACHE> 
(define-const var3356 var2821 (select var2732 var16)) ; Statement: $r23 = $r22[i0] 
 ; Statement: if $r23 == null goto $r4 = virtualinvoke r1.<jdk.nashorn.internal.runtime.AccessorProperty: java.lang.Class getLocalType()>() 
(assert (not (= var3356 null-var2821))) ; Negate: Cond: $r23 == null  
(define-const var3113 var2821 var3356) ; Statement: r24 = $r23 
 ; Statement: goto [?= $z1 = <jdk.nashorn.internal.runtime.AccessorProperty: boolean $assertionsDisabled>] 
(assert true) ; Non Conditional
(define-const var250 Bool var902-$assertionsDisabled) ; Statement: $z1 = <jdk.nashorn.internal.runtime.AccessorProperty: boolean $assertionsDisabled> 
 ; Statement: if $z1 != 0 goto return r24 
(assert (not (= (ite var250 1 0) 0))) ; Cond: $z1 != 0 
 ; Statement: return r24 
(check-sat)
(get-model)
(get-unsat-core)
; {var2616_getAccessorTypeIndex/-8434135=([java.lang.Class], int), checkUndeclared/1516434761=([jdk.nashorn.internal.runtime.AccessorProperty], void), GETTER_CACHE/-643128581=([jdk.nashorn.internal.runtime.AccessorProperty], java.lang.invoke.MethodHandle[])}
; {var902=jdk.nashorn.internal.runtime.AccessorProperty, var2687=r1, var1001=r0, var2616=jdk.nashorn.internal.runtime.JSType, var16=i0, var264=$z0, var2821=java.lang.invoke.MethodHandle, var2732=$r22, var3356=$r23, var3113=r24, var250=$z1}
; {jdk.nashorn.internal.runtime.AccessorProperty=var902, r1=var2687, r0=var1001, jdk.nashorn.internal.runtime.JSType=var2616, i0=var16, $z0=var264, java.lang.invoke.MethodHandle=var2821, $r22=var2732, $r23=var3356, r24=var3113, $z1=var250}
;seq 
;cnt {}
;stmts r1 := @this: jdk.nashorn.internal.runtime.AccessorProperty;	r0 := @parameter0: java.lang.Class;	i0 = staticinvoke <jdk.nashorn.internal.runtime.JSType: int getAccessorTypeIndex(java.lang.Class)>(r0);	$z0 = <jdk.nashorn.internal.runtime.AccessorProperty: boolean $assertionsDisabled>;	if $z0 != 0 goto specialinvoke r1.<jdk.nashorn.internal.runtime.AccessorProperty: void checkUndeclared()>();	specialinvoke r1.<jdk.nashorn.internal.runtime.AccessorProperty: void checkUndeclared()>();	$r22 = r1.<jdk.nashorn.internal.runtime.AccessorProperty: java.lang.invoke.MethodHandle[] GETTER_CACHE>;	$r23 = $r22[i0];	if $r23 == null goto $r4 = virtualinvoke r1.<jdk.nashorn.internal.runtime.AccessorProperty: java.lang.Class getLocalType()>();	r24 = $r23;	goto [?= $z1 = <jdk.nashorn.internal.runtime.AccessorProperty: boolean $assertionsDisabled>];	$z1 = <jdk.nashorn.internal.runtime.AccessorProperty: boolean $assertionsDisabled>;	if $z1 != 0 goto return r24;	return r24
;block_num 5