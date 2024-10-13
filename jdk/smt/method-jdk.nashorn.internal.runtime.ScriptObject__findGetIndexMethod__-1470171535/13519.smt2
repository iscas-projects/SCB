(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2412 0)
(declare-sort var1880 0)
(declare-sort var468 0)
(declare-sort var3148 0)
(declare-sort var1692 0)
(declare-sort var714 0)
(declare-sort var2505 0)
(declare-sort var757 0)
(declare-sort var282 0)
(declare-sort var1167 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1692!class ClassObject)
(declare-fun var1880_getMethodType/-466914787 (var1880) var3148)
(declare-fun returnType/-1833759760 (var3148) ClassObject)
(declare-fun isPrimitive/-473230874 (ClassObject) Bool)
(declare-fun parameterType/-1774229988 (var3148 Int) ClassObject)
(declare-fun var714_explicitInstanceOfCheck/534363824 (var1880 var468) Bool)
(declare-fun findGetIndexMethodHandle/-1145191930 (var2412 ClassObject String ClassObject var1880) var2505)
(declare-fun var757-init () var757)
(declare-fun var2412_getScriptObjectGuard/-1702191085 (var3148 Bool) var2505)
(declare-fun <init>/-1026995654 (var757 var2505 var2505 var282 ClassObject) void)
(declare-const null-var2412 var2412)
(declare-const null-var1880 var1880)
(declare-const null-var468 var468)
(declare-const null-ClassObject ClassObject)
(declare-const null-NullType var1167)
(declare-const null-var282 var282)
(declare-const var1966 var2412) ; Statement: r5 := @this: jdk.nashorn.internal.runtime.ScriptObject 
(assert (not (= var1966 null-var2412)))
(declare-const var1445 var1880) ; Statement: r0 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor 
(assert (not (= var1445 null-var1880)))
(declare-const var297 var468) ; Statement: r4 := @parameter1: jdk.internal.dynalink.linker.LinkRequest 
(assert (not (= var297 null-var468)))
(define-const var1346 var3148 (var1880_getMethodType/-466914787 var1445)) ; Statement: r1 = interfaceinvoke r0.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.invoke.MethodType getMethodType()>() 
(assert true)
(define-const var1766 ClassObject (returnType/-1833759760 var1346)) ; Statement: r2 = virtualinvoke r1.<java.lang.invoke.MethodType: java.lang.Class returnType()>() 
(assert true)
(define-const var1784 Bool (isPrimitive/-473230874 var1766)) ; Statement: $z0 = virtualinvoke r2.<java.lang.Class: boolean isPrimitive()>() 
 ; Statement: if $z0 == 0 goto $r15 = class "Ljava/lang/Object;" 
(assert (= (ite var1784 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3997 ClassObject var1692!class) ; Statement: $r15 = class "Ljava/lang/Object;" 
(assert true) ; Non Conditional
(define-const var270 ClassObject var3997) ; Statement: r3 = $r15 
(assert true)
(define-const var2991 ClassObject (parameterType/-1774229988 var1346 1)) ; Statement: $r14 = virtualinvoke r1.<java.lang.invoke.MethodType: java.lang.Class parameterType(int)>(1) 
(define-const var2845 Bool (var714_explicitInstanceOfCheck/534363824 var1445 var297)) ; Statement: $z2 = staticinvoke <jdk.nashorn.internal.runtime.linker.NashornGuards: boolean explicitInstanceOfCheck(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r4) 
(assert true)
(define-const var3977 Bool (isPrimitive/-473230874 var3997)) ; Statement: $z1 = virtualinvoke $r15.<java.lang.Class: boolean isPrimitive()>() 
 ; Statement: if $z1 == 0 goto r17 = "get" 
(assert (= (ite var3977 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2222 String "get") ; Statement: r17 = "get" 
(assert true) ; Non Conditional
(assert true)
(define-const var2847 var2505 (findGetIndexMethodHandle/-1145191930 var1966 var270 var2222 var2991 var1445)) ; Statement: $r13 = virtualinvoke r5.<jdk.nashorn.internal.runtime.ScriptObject: java.lang.invoke.MethodHandle findGetIndexMethodHandle(java.lang.Class,java.lang.String,java.lang.Class,jdk.internal.dynalink.CallSiteDescriptor)>(r3, r17, $r14, r0) 
(define-const var2050 var757 var757-init) ; Statement: $r6 = new jdk.internal.dynalink.linker.GuardedInvocation 
(define-const var3288 var2505 (var2412_getScriptObjectGuard/-1702191085 var1346 var2845)) ; Statement: $r7 = staticinvoke <jdk.nashorn.internal.runtime.ScriptObject: java.lang.invoke.MethodHandle getScriptObjectGuard(java.lang.invoke.MethodType,boolean)>(r1, $z2) 
 ; Statement: if $z2 == 0 goto $r18 = class "Ljava/lang/ClassCastException;" 
(assert (not (= (ite var2845 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var2624 ClassObject null-ClassObject) ; Statement: $r18 = null 
 ; Statement: goto [?= specialinvoke $r6.<jdk.internal.dynalink.linker.GuardedInvocation: void <init>(java.lang.invoke.MethodHandle,java.lang.invoke.MethodHandle,java.lang.invoke.SwitchPoint,java.lang.Class)>($r13, $r7, null, $r18)] 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/-1026995654 var2050 var2847 var3288 null-var282 var2624)) ; Statement: specialinvoke $r6.<jdk.internal.dynalink.linker.GuardedInvocation: void <init>(java.lang.invoke.MethodHandle,java.lang.invoke.MethodHandle,java.lang.invoke.SwitchPoint,java.lang.Class)>($r13, $r7, null, $r18) 

(declare-const var2050!1 var757)
(declare-const var2847!1 var2505)
(declare-const var3288!1 var2505)
(declare-const var3638 var1167)
(declare-const var2624!1 ClassObject)
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var1880_getMethodType/-466914787=([jdk.internal.dynalink.CallSiteDescriptor], java.lang.invoke.MethodType), returnType/-1833759760=([java.lang.invoke.MethodType], java.lang.Class), isPrimitive/-473230874=([java.lang.Class], boolean), parameterType/-1774229988=([java.lang.invoke.MethodType, int], java.lang.Class), var714_explicitInstanceOfCheck/534363824=([jdk.internal.dynalink.CallSiteDescriptor, jdk.internal.dynalink.linker.LinkRequest], boolean), findGetIndexMethodHandle/-1145191930=([jdk.nashorn.internal.runtime.ScriptObject, java.lang.Class, java.lang.String, java.lang.Class, jdk.internal.dynalink.CallSiteDescriptor], java.lang.invoke.MethodHandle), var757-init=([], jdk.internal.dynalink.linker.GuardedInvocation), var2412_getScriptObjectGuard/-1702191085=([java.lang.invoke.MethodType, boolean], java.lang.invoke.MethodHandle), <init>/-1026995654=([jdk.internal.dynalink.linker.GuardedInvocation, java.lang.invoke.MethodHandle, java.lang.invoke.MethodHandle, java.lang.invoke.SwitchPoint, java.lang.Class], void)}
; {var2412=jdk.nashorn.internal.runtime.ScriptObject, var1966=r5, var1880=jdk.internal.dynalink.CallSiteDescriptor, var1445=r0, var468=jdk.internal.dynalink.linker.LinkRequest, var297=r4, var3148=java.lang.invoke.MethodType, var1346=r1, var1766=r2, var1784=$z0, var1692=java.lang.Object, var3997=$r15, var270=r3, var2991=$r14, var714=jdk.nashorn.internal.runtime.linker.NashornGuards, var2845=$z2, var3977=$z1, var2222=r17, var2505=java.lang.invoke.MethodHandle, var2847=$r13, var757=jdk.internal.dynalink.linker.GuardedInvocation, var2050=$r6, var3288=$r7, var2624=$r18, var282=java.lang.invoke.SwitchPoint, var3638=null, var1167=null_type}
; {jdk.nashorn.internal.runtime.ScriptObject=var2412, r5=var1966, jdk.internal.dynalink.CallSiteDescriptor=var1880, r0=var1445, jdk.internal.dynalink.linker.LinkRequest=var468, r4=var297, java.lang.invoke.MethodType=var3148, r1=var1346, r2=var1766, $z0=var1784, java.lang.Object=var1692, $r15=var3997, r3=var270, $r14=var2991, jdk.nashorn.internal.runtime.linker.NashornGuards=var714, $z2=var2845, $z1=var3977, r17=var2222, java.lang.invoke.MethodHandle=var2505, $r13=var2847, jdk.internal.dynalink.linker.GuardedInvocation=var757, $r6=var2050, $r7=var3288, $r18=var2624, java.lang.invoke.SwitchPoint=var282, null=var3638, null_type=var1167}
;seq 
;cnt {}
;stmts r5 := @this: jdk.nashorn.internal.runtime.ScriptObject;	r0 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor;	r4 := @parameter1: jdk.internal.dynalink.linker.LinkRequest;	r1 = interfaceinvoke r0.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.invoke.MethodType getMethodType()>();	r2 = virtualinvoke r1.<java.lang.invoke.MethodType: java.lang.Class returnType()>();	$z0 = virtualinvoke r2.<java.lang.Class: boolean isPrimitive()>();	if $z0 == 0 goto $r15 = class "Ljava/lang/Object;";	$r15 = class "Ljava/lang/Object;";	r3 = $r15;	$r14 = virtualinvoke r1.<java.lang.invoke.MethodType: java.lang.Class parameterType(int)>(1);	$z2 = staticinvoke <jdk.nashorn.internal.runtime.linker.NashornGuards: boolean explicitInstanceOfCheck(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r4);	$z1 = virtualinvoke $r15.<java.lang.Class: boolean isPrimitive()>();	if $z1 == 0 goto r17 = "get";	r17 = "get";	$r13 = virtualinvoke r5.<jdk.nashorn.internal.runtime.ScriptObject: java.lang.invoke.MethodHandle findGetIndexMethodHandle(java.lang.Class,java.lang.String,java.lang.Class,jdk.internal.dynalink.CallSiteDescriptor)>(r3, r17, $r14, r0);	$r6 = new jdk.internal.dynalink.linker.GuardedInvocation;	$r7 = staticinvoke <jdk.nashorn.internal.runtime.ScriptObject: java.lang.invoke.MethodHandle getScriptObjectGuard(java.lang.invoke.MethodType,boolean)>(r1, $z2);	if $z2 == 0 goto $r18 = class "Ljava/lang/ClassCastException;";	$r18 = null;	goto [?= specialinvoke $r6.<jdk.internal.dynalink.linker.GuardedInvocation: void <init>(java.lang.invoke.MethodHandle,java.lang.invoke.MethodHandle,java.lang.invoke.SwitchPoint,java.lang.Class)>($r13, $r7, null, $r18)];	specialinvoke $r6.<jdk.internal.dynalink.linker.GuardedInvocation: void <init>(java.lang.invoke.MethodHandle,java.lang.invoke.MethodHandle,java.lang.invoke.SwitchPoint,java.lang.Class)>($r13, $r7, null, $r18);	return $r6
;block_num 7