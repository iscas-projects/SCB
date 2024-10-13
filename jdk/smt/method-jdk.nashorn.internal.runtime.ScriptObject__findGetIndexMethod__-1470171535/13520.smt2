(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var235 0)
(declare-sort var2138 0)
(declare-sort var3566 0)
(declare-sort var2967 0)
(declare-sort var3292 0)
(declare-sort var1839 0)
(declare-sort var956 0)
(declare-sort var2234 0)
(declare-sort var218 0)
(declare-sort var3301 0)
(declare-sort var3739 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3292!class ClassObject)
(declare-const var218!class ClassObject)
(declare-fun var2138_getMethodType/-466914787 (var2138) var2967)
(declare-fun returnType/-1833759760 (var2967) ClassObject)
(declare-fun isPrimitive/-473230874 (ClassObject) Bool)
(declare-fun parameterType/-1774229988 (var2967 Int) ClassObject)
(declare-fun var1839_explicitInstanceOfCheck/534363824 (var2138 var3566) Bool)
(declare-fun findGetIndexMethodHandle/-1145191930 (var235 ClassObject String ClassObject var2138) var956)
(declare-fun var2234-init () var2234)
(declare-fun var235_getScriptObjectGuard/-1702191085 (var2967 Bool) var956)
(declare-fun <init>/-1026995654 (var2234 var956 var956 var3301 ClassObject) void)
(declare-const null-var235 var235)
(declare-const null-var2138 var2138)
(declare-const null-var3566 var3566)
(declare-const null-NullType var3739)
(declare-const null-var3301 var3301)
(declare-const var2628 var235) ; Statement: r5 := @this: jdk.nashorn.internal.runtime.ScriptObject 
(assert (not (= var2628 null-var235)))
(declare-const var1670 var2138) ; Statement: r0 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor 
(assert (not (= var1670 null-var2138)))
(declare-const var1736 var3566) ; Statement: r4 := @parameter1: jdk.internal.dynalink.linker.LinkRequest 
(assert (not (= var1736 null-var3566)))
(define-const var3011 var2967 (var2138_getMethodType/-466914787 var1670)) ; Statement: r1 = interfaceinvoke r0.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.invoke.MethodType getMethodType()>() 
(assert true)
(define-const var3407 ClassObject (returnType/-1833759760 var3011)) ; Statement: r2 = virtualinvoke r1.<java.lang.invoke.MethodType: java.lang.Class returnType()>() 
(assert true)
(define-const var2595 Bool (isPrimitive/-473230874 var3407)) ; Statement: $z0 = virtualinvoke r2.<java.lang.Class: boolean isPrimitive()>() 
 ; Statement: if $z0 == 0 goto $r15 = class "Ljava/lang/Object;" 
(assert (= (ite var2595 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3962 ClassObject var3292!class) ; Statement: $r15 = class "Ljava/lang/Object;" 
(assert true) ; Non Conditional
(define-const var408 ClassObject var3962) ; Statement: r3 = $r15 
(assert true)
(define-const var2815 ClassObject (parameterType/-1774229988 var3011 1)) ; Statement: $r14 = virtualinvoke r1.<java.lang.invoke.MethodType: java.lang.Class parameterType(int)>(1) 
(define-const var1087 Bool (var1839_explicitInstanceOfCheck/534363824 var1670 var1736)) ; Statement: $z2 = staticinvoke <jdk.nashorn.internal.runtime.linker.NashornGuards: boolean explicitInstanceOfCheck(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r4) 
(assert true)
(define-const var2438 Bool (isPrimitive/-473230874 var3962)) ; Statement: $z1 = virtualinvoke $r15.<java.lang.Class: boolean isPrimitive()>() 
 ; Statement: if $z1 == 0 goto r17 = "get" 
(assert (= (ite var2438 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2220 String "get") ; Statement: r17 = "get" 
(assert true) ; Non Conditional
(assert true)
(define-const var1096 var956 (findGetIndexMethodHandle/-1145191930 var2628 var408 var2220 var2815 var1670)) ; Statement: $r13 = virtualinvoke r5.<jdk.nashorn.internal.runtime.ScriptObject: java.lang.invoke.MethodHandle findGetIndexMethodHandle(java.lang.Class,java.lang.String,java.lang.Class,jdk.internal.dynalink.CallSiteDescriptor)>(r3, r17, $r14, r0) 
(define-const var2142 var2234 var2234-init) ; Statement: $r6 = new jdk.internal.dynalink.linker.GuardedInvocation 
(define-const var3832 var956 (var235_getScriptObjectGuard/-1702191085 var3011 var1087)) ; Statement: $r7 = staticinvoke <jdk.nashorn.internal.runtime.ScriptObject: java.lang.invoke.MethodHandle getScriptObjectGuard(java.lang.invoke.MethodType,boolean)>(r1, $z2) 
 ; Statement: if $z2 == 0 goto $r18 = class "Ljava/lang/ClassCastException;" 
(assert (= (ite var1087 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2790 ClassObject var218!class) ; Statement: $r18 = class "Ljava/lang/ClassCastException;" 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/-1026995654 var2142 var1096 var3832 null-var3301 var2790)) ; Statement: specialinvoke $r6.<jdk.internal.dynalink.linker.GuardedInvocation: void <init>(java.lang.invoke.MethodHandle,java.lang.invoke.MethodHandle,java.lang.invoke.SwitchPoint,java.lang.Class)>($r13, $r7, null, $r18) 

(declare-const var2142!1 var2234)
(declare-const var1096!1 var956)
(declare-const var3832!1 var956)
(declare-const var2899 var3739)
(declare-const var2790!1 ClassObject)
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var2138_getMethodType/-466914787=([jdk.internal.dynalink.CallSiteDescriptor], java.lang.invoke.MethodType), returnType/-1833759760=([java.lang.invoke.MethodType], java.lang.Class), isPrimitive/-473230874=([java.lang.Class], boolean), parameterType/-1774229988=([java.lang.invoke.MethodType, int], java.lang.Class), var1839_explicitInstanceOfCheck/534363824=([jdk.internal.dynalink.CallSiteDescriptor, jdk.internal.dynalink.linker.LinkRequest], boolean), findGetIndexMethodHandle/-1145191930=([jdk.nashorn.internal.runtime.ScriptObject, java.lang.Class, java.lang.String, java.lang.Class, jdk.internal.dynalink.CallSiteDescriptor], java.lang.invoke.MethodHandle), var2234-init=([], jdk.internal.dynalink.linker.GuardedInvocation), var235_getScriptObjectGuard/-1702191085=([java.lang.invoke.MethodType, boolean], java.lang.invoke.MethodHandle), <init>/-1026995654=([jdk.internal.dynalink.linker.GuardedInvocation, java.lang.invoke.MethodHandle, java.lang.invoke.MethodHandle, java.lang.invoke.SwitchPoint, java.lang.Class], void)}
; {var235=jdk.nashorn.internal.runtime.ScriptObject, var2628=r5, var2138=jdk.internal.dynalink.CallSiteDescriptor, var1670=r0, var3566=jdk.internal.dynalink.linker.LinkRequest, var1736=r4, var2967=java.lang.invoke.MethodType, var3011=r1, var3407=r2, var2595=$z0, var3292=java.lang.Object, var3962=$r15, var408=r3, var2815=$r14, var1839=jdk.nashorn.internal.runtime.linker.NashornGuards, var1087=$z2, var2438=$z1, var2220=r17, var956=java.lang.invoke.MethodHandle, var1096=$r13, var2234=jdk.internal.dynalink.linker.GuardedInvocation, var2142=$r6, var3832=$r7, var218=java.lang.ClassCastException, var2790=$r18, var3301=java.lang.invoke.SwitchPoint, var2899=null, var3739=null_type}
; {jdk.nashorn.internal.runtime.ScriptObject=var235, r5=var2628, jdk.internal.dynalink.CallSiteDescriptor=var2138, r0=var1670, jdk.internal.dynalink.linker.LinkRequest=var3566, r4=var1736, java.lang.invoke.MethodType=var2967, r1=var3011, r2=var3407, $z0=var2595, java.lang.Object=var3292, $r15=var3962, r3=var408, $r14=var2815, jdk.nashorn.internal.runtime.linker.NashornGuards=var1839, $z2=var1087, $z1=var2438, r17=var2220, java.lang.invoke.MethodHandle=var956, $r13=var1096, jdk.internal.dynalink.linker.GuardedInvocation=var2234, $r6=var2142, $r7=var3832, java.lang.ClassCastException=var218, $r18=var2790, java.lang.invoke.SwitchPoint=var3301, null=var2899, null_type=var3739}
;seq 
;cnt {}
;stmts r5 := @this: jdk.nashorn.internal.runtime.ScriptObject;	r0 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor;	r4 := @parameter1: jdk.internal.dynalink.linker.LinkRequest;	r1 = interfaceinvoke r0.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.invoke.MethodType getMethodType()>();	r2 = virtualinvoke r1.<java.lang.invoke.MethodType: java.lang.Class returnType()>();	$z0 = virtualinvoke r2.<java.lang.Class: boolean isPrimitive()>();	if $z0 == 0 goto $r15 = class "Ljava/lang/Object;";	$r15 = class "Ljava/lang/Object;";	r3 = $r15;	$r14 = virtualinvoke r1.<java.lang.invoke.MethodType: java.lang.Class parameterType(int)>(1);	$z2 = staticinvoke <jdk.nashorn.internal.runtime.linker.NashornGuards: boolean explicitInstanceOfCheck(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r4);	$z1 = virtualinvoke $r15.<java.lang.Class: boolean isPrimitive()>();	if $z1 == 0 goto r17 = "get";	r17 = "get";	$r13 = virtualinvoke r5.<jdk.nashorn.internal.runtime.ScriptObject: java.lang.invoke.MethodHandle findGetIndexMethodHandle(java.lang.Class,java.lang.String,java.lang.Class,jdk.internal.dynalink.CallSiteDescriptor)>(r3, r17, $r14, r0);	$r6 = new jdk.internal.dynalink.linker.GuardedInvocation;	$r7 = staticinvoke <jdk.nashorn.internal.runtime.ScriptObject: java.lang.invoke.MethodHandle getScriptObjectGuard(java.lang.invoke.MethodType,boolean)>(r1, $z2);	if $z2 == 0 goto $r18 = class "Ljava/lang/ClassCastException;";	$r18 = class "Ljava/lang/ClassCastException;";	specialinvoke $r6.<jdk.internal.dynalink.linker.GuardedInvocation: void <init>(java.lang.invoke.MethodHandle,java.lang.invoke.MethodHandle,java.lang.invoke.SwitchPoint,java.lang.Class)>($r13, $r7, null, $r18);	return $r6
;block_num 7