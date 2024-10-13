(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1947 0)
(declare-sort var2067 0)
(declare-sort var2440 0)
(declare-sort var2120 0)
(declare-sort var1317 0)
(declare-sort var1914 0)
(declare-sort var212 0)
(declare-sort var2024 0)
(declare-sort var1158 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2067_getMethodType/-466914787 (var2067) var2120)
(declare-fun returnType/-1833759760 (var2120) ClassObject)
(declare-fun isPrimitive/-473230874 (ClassObject) Bool)
(declare-fun parameterType/-1774229988 (var2120 Int) ClassObject)
(declare-fun var1317_explicitInstanceOfCheck/534363824 (var2067 var2440) Bool)
(declare-fun findGetIndexMethodHandle/-1145191930 (var1947 ClassObject String ClassObject var2067) var1914)
(declare-fun var212-init () var212)
(declare-fun var1947_getScriptObjectGuard/-1702191085 (var2120 Bool) var1914)
(declare-fun <init>/-1026995654 (var212 var1914 var1914 var2024 ClassObject) void)
(declare-const null-var1947 var1947)
(declare-const null-var2067 var2067)
(declare-const null-var2440 var2440)
(declare-const null-ClassObject ClassObject)
(declare-const null-NullType var1158)
(declare-const null-var2024 var2024)
(declare-const var3677 var1947) ; Statement: r5 := @this: jdk.nashorn.internal.runtime.ScriptObject 
(assert (not (= var3677 null-var1947)))
(declare-const var1518 var2067) ; Statement: r0 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor 
(assert (not (= var1518 null-var2067)))
(declare-const var3691 var2440) ; Statement: r4 := @parameter1: jdk.internal.dynalink.linker.LinkRequest 
(assert (not (= var3691 null-var2440)))
(define-const var1652 var2120 (var2067_getMethodType/-466914787 var1518)) ; Statement: r1 = interfaceinvoke r0.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.invoke.MethodType getMethodType()>() 
(assert true)
(define-const var128 ClassObject (returnType/-1833759760 var1652)) ; Statement: r2 = virtualinvoke r1.<java.lang.invoke.MethodType: java.lang.Class returnType()>() 
(assert true)
(define-const var3079 Bool (isPrimitive/-473230874 var128)) ; Statement: $z0 = virtualinvoke r2.<java.lang.Class: boolean isPrimitive()>() 
 ; Statement: if $z0 == 0 goto $r15 = class "Ljava/lang/Object;" 
(assert (not (= (ite var3079 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1973 ClassObject var128) ; Statement: $r15 = r2 
 ; Statement: goto [?= r3 = $r15] 
(assert true) ; Non Conditional
(define-const var3247 ClassObject var1973) ; Statement: r3 = $r15 
(assert true)
(define-const var3099 ClassObject (parameterType/-1774229988 var1652 1)) ; Statement: $r14 = virtualinvoke r1.<java.lang.invoke.MethodType: java.lang.Class parameterType(int)>(1) 
(define-const var3762 Bool (var1317_explicitInstanceOfCheck/534363824 var1518 var3691)) ; Statement: $z2 = staticinvoke <jdk.nashorn.internal.runtime.linker.NashornGuards: boolean explicitInstanceOfCheck(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r4) 
(assert true)
(define-const var855 Bool (isPrimitive/-473230874 var1973)) ; Statement: $z1 = virtualinvoke $r15.<java.lang.Class: boolean isPrimitive()>() 
 ; Statement: if $z1 == 0 goto r17 = "get" 
(assert (= (ite var855 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3517 String "get") ; Statement: r17 = "get" 
(assert true) ; Non Conditional
(assert true)
(define-const var3614 var1914 (findGetIndexMethodHandle/-1145191930 var3677 var3247 var3517 var3099 var1518)) ; Statement: $r13 = virtualinvoke r5.<jdk.nashorn.internal.runtime.ScriptObject: java.lang.invoke.MethodHandle findGetIndexMethodHandle(java.lang.Class,java.lang.String,java.lang.Class,jdk.internal.dynalink.CallSiteDescriptor)>(r3, r17, $r14, r0) 
(define-const var3684 var212 var212-init) ; Statement: $r6 = new jdk.internal.dynalink.linker.GuardedInvocation 
(define-const var2575 var1914 (var1947_getScriptObjectGuard/-1702191085 var1652 var3762)) ; Statement: $r7 = staticinvoke <jdk.nashorn.internal.runtime.ScriptObject: java.lang.invoke.MethodHandle getScriptObjectGuard(java.lang.invoke.MethodType,boolean)>(r1, $z2) 
 ; Statement: if $z2 == 0 goto $r18 = class "Ljava/lang/ClassCastException;" 
(assert (not (= (ite var3762 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var2279 ClassObject null-ClassObject) ; Statement: $r18 = null 
 ; Statement: goto [?= specialinvoke $r6.<jdk.internal.dynalink.linker.GuardedInvocation: void <init>(java.lang.invoke.MethodHandle,java.lang.invoke.MethodHandle,java.lang.invoke.SwitchPoint,java.lang.Class)>($r13, $r7, null, $r18)] 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/-1026995654 var3684 var3614 var2575 null-var2024 var2279)) ; Statement: specialinvoke $r6.<jdk.internal.dynalink.linker.GuardedInvocation: void <init>(java.lang.invoke.MethodHandle,java.lang.invoke.MethodHandle,java.lang.invoke.SwitchPoint,java.lang.Class)>($r13, $r7, null, $r18) 

(declare-const var3684!1 var212)
(declare-const var3614!1 var1914)
(declare-const var2575!1 var1914)
(declare-const var2725 var1158)
(declare-const var2279!1 ClassObject)
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var2067_getMethodType/-466914787=([jdk.internal.dynalink.CallSiteDescriptor], java.lang.invoke.MethodType), returnType/-1833759760=([java.lang.invoke.MethodType], java.lang.Class), isPrimitive/-473230874=([java.lang.Class], boolean), parameterType/-1774229988=([java.lang.invoke.MethodType, int], java.lang.Class), var1317_explicitInstanceOfCheck/534363824=([jdk.internal.dynalink.CallSiteDescriptor, jdk.internal.dynalink.linker.LinkRequest], boolean), findGetIndexMethodHandle/-1145191930=([jdk.nashorn.internal.runtime.ScriptObject, java.lang.Class, java.lang.String, java.lang.Class, jdk.internal.dynalink.CallSiteDescriptor], java.lang.invoke.MethodHandle), var212-init=([], jdk.internal.dynalink.linker.GuardedInvocation), var1947_getScriptObjectGuard/-1702191085=([java.lang.invoke.MethodType, boolean], java.lang.invoke.MethodHandle), <init>/-1026995654=([jdk.internal.dynalink.linker.GuardedInvocation, java.lang.invoke.MethodHandle, java.lang.invoke.MethodHandle, java.lang.invoke.SwitchPoint, java.lang.Class], void)}
; {var1947=jdk.nashorn.internal.runtime.ScriptObject, var3677=r5, var2067=jdk.internal.dynalink.CallSiteDescriptor, var1518=r0, var2440=jdk.internal.dynalink.linker.LinkRequest, var3691=r4, var2120=java.lang.invoke.MethodType, var1652=r1, var128=r2, var3079=$z0, var1973=$r15, var3247=r3, var3099=$r14, var1317=jdk.nashorn.internal.runtime.linker.NashornGuards, var3762=$z2, var855=$z1, var3517=r17, var1914=java.lang.invoke.MethodHandle, var3614=$r13, var212=jdk.internal.dynalink.linker.GuardedInvocation, var3684=$r6, var2575=$r7, var2279=$r18, var2024=java.lang.invoke.SwitchPoint, var2725=null, var1158=null_type}
; {jdk.nashorn.internal.runtime.ScriptObject=var1947, r5=var3677, jdk.internal.dynalink.CallSiteDescriptor=var2067, r0=var1518, jdk.internal.dynalink.linker.LinkRequest=var2440, r4=var3691, java.lang.invoke.MethodType=var2120, r1=var1652, r2=var128, $z0=var3079, $r15=var1973, r3=var3247, $r14=var3099, jdk.nashorn.internal.runtime.linker.NashornGuards=var1317, $z2=var3762, $z1=var855, r17=var3517, java.lang.invoke.MethodHandle=var1914, $r13=var3614, jdk.internal.dynalink.linker.GuardedInvocation=var212, $r6=var3684, $r7=var2575, $r18=var2279, java.lang.invoke.SwitchPoint=var2024, null=var2725, null_type=var1158}
;seq 
;cnt {}
;stmts r5 := @this: jdk.nashorn.internal.runtime.ScriptObject;	r0 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor;	r4 := @parameter1: jdk.internal.dynalink.linker.LinkRequest;	r1 = interfaceinvoke r0.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.invoke.MethodType getMethodType()>();	r2 = virtualinvoke r1.<java.lang.invoke.MethodType: java.lang.Class returnType()>();	$z0 = virtualinvoke r2.<java.lang.Class: boolean isPrimitive()>();	if $z0 == 0 goto $r15 = class "Ljava/lang/Object;";	$r15 = r2;	goto [?= r3 = $r15];	r3 = $r15;	$r14 = virtualinvoke r1.<java.lang.invoke.MethodType: java.lang.Class parameterType(int)>(1);	$z2 = staticinvoke <jdk.nashorn.internal.runtime.linker.NashornGuards: boolean explicitInstanceOfCheck(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r4);	$z1 = virtualinvoke $r15.<java.lang.Class: boolean isPrimitive()>();	if $z1 == 0 goto r17 = "get";	r17 = "get";	$r13 = virtualinvoke r5.<jdk.nashorn.internal.runtime.ScriptObject: java.lang.invoke.MethodHandle findGetIndexMethodHandle(java.lang.Class,java.lang.String,java.lang.Class,jdk.internal.dynalink.CallSiteDescriptor)>(r3, r17, $r14, r0);	$r6 = new jdk.internal.dynalink.linker.GuardedInvocation;	$r7 = staticinvoke <jdk.nashorn.internal.runtime.ScriptObject: java.lang.invoke.MethodHandle getScriptObjectGuard(java.lang.invoke.MethodType,boolean)>(r1, $z2);	if $z2 == 0 goto $r18 = class "Ljava/lang/ClassCastException;";	$r18 = null;	goto [?= specialinvoke $r6.<jdk.internal.dynalink.linker.GuardedInvocation: void <init>(java.lang.invoke.MethodHandle,java.lang.invoke.MethodHandle,java.lang.invoke.SwitchPoint,java.lang.Class)>($r13, $r7, null, $r18)];	specialinvoke $r6.<jdk.internal.dynalink.linker.GuardedInvocation: void <init>(java.lang.invoke.MethodHandle,java.lang.invoke.MethodHandle,java.lang.invoke.SwitchPoint,java.lang.Class)>($r13, $r7, null, $r18);	return $r6
;block_num 7