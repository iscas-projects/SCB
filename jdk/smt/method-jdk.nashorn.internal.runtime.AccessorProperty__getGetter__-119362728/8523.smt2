(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2503 0)
(declare-sort var2859 0)
(declare-sort var2078 0)
(declare-sort var2242 0)
(declare-sort var872 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2859_getAccessorTypeIndex/-8434135 (ClassObject) Int)
(declare-fun checkUndeclared/1516434761 (var2503) void)
(declare-fun GETTER_CACHE/-643128581 (var2503) (Array Int var2078))
(declare-fun getLocalType/757166644 (var2242) ClassObject)
(declare-fun cast-from-var2503-to-var2242 (var2503) var2242)
(declare-fun primitiveGetter/-643128581 (var2503) var2078)
(declare-fun objectGetter/-643128581 (var2503) var2078)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var872_createGetter/-1779590978 (ClassObject ClassObject var2078 var2078 Int) var2078)
(declare-fun debug/1078360506 (var2503 var2078 ClassObject ClassObject String) var2078)
(declare-const null-var2503 var2503)
(declare-const null-ClassObject ClassObject)
(declare-const var2503-$assertionsDisabled Bool)
(declare-const null-var2078 var2078)
(declare-const null-__Array__Int__var2078__ (Array Int var2078))
(declare-const var326 var2503) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.AccessorProperty 
(assert (not (= var326 null-var2503)))
(declare-const var2334 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var2334 null-ClassObject)))
(define-const var2814 Int (var2859_getAccessorTypeIndex/-8434135 var2334)) ; Statement: i0 = staticinvoke <jdk.nashorn.internal.runtime.JSType: int getAccessorTypeIndex(java.lang.Class)>(r0) 
(define-const var95 Bool var2503-$assertionsDisabled) ; Statement: $z0 = <jdk.nashorn.internal.runtime.AccessorProperty: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto specialinvoke r1.<jdk.nashorn.internal.runtime.AccessorProperty: void checkUndeclared()>() 
(assert (not (= (ite var95 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
;(assert (checkUndeclared/1516434761 var326)) ; Statement: specialinvoke r1.<jdk.nashorn.internal.runtime.AccessorProperty: void checkUndeclared()>() 

(declare-const var326!1 var2503)
(define-const var380 (Array Int var2078) (GETTER_CACHE/-643128581 var326!1)) ; Statement: $r22 = r1.<jdk.nashorn.internal.runtime.AccessorProperty: java.lang.invoke.MethodHandle[] GETTER_CACHE> 
(define-const var2028 var2078 (select var380 var2814)) ; Statement: $r23 = $r22[i0] 
 ; Statement: if $r23 == null goto $r4 = virtualinvoke r1.<jdk.nashorn.internal.runtime.AccessorProperty: java.lang.Class getLocalType()>() 
(assert (= var2028 null-var2078)) ; Cond: $r23 == null 
(assert true)
(define-const var2902 ClassObject (getLocalType/757166644 (cast-from-var2503-to-var2242 var326!1))) ; Statement: $r4 = virtualinvoke r1.<jdk.nashorn.internal.runtime.AccessorProperty: java.lang.Class getLocalType()>() 
(define-const var843 var2078 (primitiveGetter/-643128581 var326!1)) ; Statement: $r3 = r1.<jdk.nashorn.internal.runtime.AccessorProperty: java.lang.invoke.MethodHandle primitiveGetter> 
(define-const var1391 var2078 (objectGetter/-643128581 var326!1)) ; Statement: $r2 = r1.<jdk.nashorn.internal.runtime.AccessorProperty: java.lang.invoke.MethodHandle objectGetter> 
(define-const var2312 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
(define-const var1762 var2078 (var872_createGetter/-1779590978 var2902 var2334 var843 var1391 var2312)) ; Statement: $r6 = staticinvoke <jdk.nashorn.internal.codegen.ObjectClassGenerator: java.lang.invoke.MethodHandle createGetter(java.lang.Class,java.lang.Class,java.lang.invoke.MethodHandle,java.lang.invoke.MethodHandle,int)>($r4, r0, $r3, $r2, $i2) 
(assert true)
(define-const var3091 ClassObject (getLocalType/757166644 (cast-from-var2503-to-var2242 var326!1))) ; Statement: $r5 = virtualinvoke r1.<jdk.nashorn.internal.runtime.AccessorProperty: java.lang.Class getLocalType()>() 
(assert true)
(define-const var306 var2078 (debug/1078360506 var326!1 var1762 var3091 var2334 "get")) ; Statement: r24 = specialinvoke r1.<jdk.nashorn.internal.runtime.AccessorProperty: java.lang.invoke.MethodHandle debug(java.lang.invoke.MethodHandle,java.lang.Class,java.lang.Class,java.lang.String)>($r6, $r5, r0, "get") 
(declare-const var380!1 (Array Int var2078))
(assert (not (= var380!1 null-__Array__Int__var2078__)))
(assert (= (select var380!1 var2814) var306)) ; Statement: $r22[i0] = r24 
(assert true) ; Non Conditional
(define-const var2967 Bool var2503-$assertionsDisabled) ; Statement: $z1 = <jdk.nashorn.internal.runtime.AccessorProperty: boolean $assertionsDisabled> 
 ; Statement: if $z1 != 0 goto return r24 
(assert (not (= (ite var2967 1 0) 0))) ; Cond: $z1 != 0 
 ; Statement: return r24 
(check-sat)
(get-model)
(get-unsat-core)
; {var2859_getAccessorTypeIndex/-8434135=([java.lang.Class], int), checkUndeclared/1516434761=([jdk.nashorn.internal.runtime.AccessorProperty], void), GETTER_CACHE/-643128581=([jdk.nashorn.internal.runtime.AccessorProperty], java.lang.invoke.MethodHandle[]), getLocalType/757166644=([jdk.nashorn.internal.runtime.Property], java.lang.Class), cast-from-var2503-to-var2242=([jdk.nashorn.internal.runtime.AccessorProperty], jdk.nashorn.internal.runtime.Property), primitiveGetter/-643128581=([jdk.nashorn.internal.runtime.AccessorProperty], java.lang.invoke.MethodHandle), objectGetter/-643128581=([jdk.nashorn.internal.runtime.AccessorProperty], java.lang.invoke.MethodHandle), cast-from-Int-to-Int=([int], int), var872_createGetter/-1779590978=([java.lang.Class, java.lang.Class, java.lang.invoke.MethodHandle, java.lang.invoke.MethodHandle, int], java.lang.invoke.MethodHandle), debug/1078360506=([jdk.nashorn.internal.runtime.AccessorProperty, java.lang.invoke.MethodHandle, java.lang.Class, java.lang.Class, java.lang.String], java.lang.invoke.MethodHandle)}
; {var2503=jdk.nashorn.internal.runtime.AccessorProperty, var326=r1, var2334=r0, var2859=jdk.nashorn.internal.runtime.JSType, var2814=i0, var95=$z0, var2078=java.lang.invoke.MethodHandle, var380=$r22, var2028=$r23, var2242=jdk.nashorn.internal.runtime.Property, var2902=$r4, var843=$r3, var1391=$r2, var2312=$i2, var872=jdk.nashorn.internal.codegen.ObjectClassGenerator, var1762=$r6, var3091=$r5, var306=r24, var2967=$z1}
; {jdk.nashorn.internal.runtime.AccessorProperty=var2503, r1=var326, r0=var2334, jdk.nashorn.internal.runtime.JSType=var2859, i0=var2814, $z0=var95, java.lang.invoke.MethodHandle=var2078, $r22=var380, $r23=var2028, jdk.nashorn.internal.runtime.Property=var2242, $r4=var2902, $r3=var843, $r2=var1391, $i2=var2312, jdk.nashorn.internal.codegen.ObjectClassGenerator=var872, $r6=var1762, $r5=var3091, r24=var306, $z1=var2967}
;seq 
;cnt {}
;stmts r1 := @this: jdk.nashorn.internal.runtime.AccessorProperty;	r0 := @parameter0: java.lang.Class;	i0 = staticinvoke <jdk.nashorn.internal.runtime.JSType: int getAccessorTypeIndex(java.lang.Class)>(r0);	$z0 = <jdk.nashorn.internal.runtime.AccessorProperty: boolean $assertionsDisabled>;	if $z0 != 0 goto specialinvoke r1.<jdk.nashorn.internal.runtime.AccessorProperty: void checkUndeclared()>();	specialinvoke r1.<jdk.nashorn.internal.runtime.AccessorProperty: void checkUndeclared()>();	$r22 = r1.<jdk.nashorn.internal.runtime.AccessorProperty: java.lang.invoke.MethodHandle[] GETTER_CACHE>;	$r23 = $r22[i0];	if $r23 == null goto $r4 = virtualinvoke r1.<jdk.nashorn.internal.runtime.AccessorProperty: java.lang.Class getLocalType()>();	$r4 = virtualinvoke r1.<jdk.nashorn.internal.runtime.AccessorProperty: java.lang.Class getLocalType()>();	$r3 = r1.<jdk.nashorn.internal.runtime.AccessorProperty: java.lang.invoke.MethodHandle primitiveGetter>;	$r2 = r1.<jdk.nashorn.internal.runtime.AccessorProperty: java.lang.invoke.MethodHandle objectGetter>;	$i2 = (int) -1;	$r6 = staticinvoke <jdk.nashorn.internal.codegen.ObjectClassGenerator: java.lang.invoke.MethodHandle createGetter(java.lang.Class,java.lang.Class,java.lang.invoke.MethodHandle,java.lang.invoke.MethodHandle,int)>($r4, r0, $r3, $r2, $i2);	$r5 = virtualinvoke r1.<jdk.nashorn.internal.runtime.AccessorProperty: java.lang.Class getLocalType()>();	r24 = specialinvoke r1.<jdk.nashorn.internal.runtime.AccessorProperty: java.lang.invoke.MethodHandle debug(java.lang.invoke.MethodHandle,java.lang.Class,java.lang.Class,java.lang.String)>($r6, $r5, r0, "get");	$r22[i0] = r24;	$z1 = <jdk.nashorn.internal.runtime.AccessorProperty: boolean $assertionsDisabled>;	if $z1 != 0 goto return r24;	return r24
;block_num 5