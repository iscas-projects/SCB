(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3613 0)
(declare-sort var874 0)
(declare-sort var1073 0)
(declare-sort var3256 0)
(declare-sort var380 0)
(declare-sort var1955 0)
(declare-sort var403 0)
(declare-sort var3155 0)
(declare-sort var1817 0)
(declare-sort var3837 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3155!class ClassObject)
(declare-fun var874_getMethodType/-466914787 (var874) var3256)
(declare-fun returnType/-1833759760 (var3256) ClassObject)
(declare-fun isPrimitive/-473230874 (ClassObject) Bool)
(declare-fun parameterType/-1774229988 (var3256 Int) ClassObject)
(declare-fun var380_explicitInstanceOfCheck/534363824 (var874 var1073) Bool)
(declare-fun findGetIndexMethodHandle/-1145191930 (var3613 ClassObject String ClassObject var874) var1955)
(declare-fun var403-init () var403)
(declare-fun var3613_getScriptObjectGuard/-1702191085 (var3256 Bool) var1955)
(declare-fun <init>/-1026995654 (var403 var1955 var1955 var1817 ClassObject) void)
(declare-const null-var3613 var3613)
(declare-const null-var874 var874)
(declare-const null-var1073 var1073)
(declare-const null-NullType var3837)
(declare-const null-var1817 var1817)
(declare-const var3007 var3613) ; Statement: r5 := @this: jdk.nashorn.internal.runtime.ScriptObject 
(assert (not (= var3007 null-var3613)))
(declare-const var3904 var874) ; Statement: r0 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor 
(assert (not (= var3904 null-var874)))
(declare-const var553 var1073) ; Statement: r4 := @parameter1: jdk.internal.dynalink.linker.LinkRequest 
(assert (not (= var553 null-var1073)))
(define-const var3982 var3256 (var874_getMethodType/-466914787 var3904)) ; Statement: r1 = interfaceinvoke r0.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.invoke.MethodType getMethodType()>() 
(assert true)
(define-const var2891 ClassObject (returnType/-1833759760 var3982)) ; Statement: r2 = virtualinvoke r1.<java.lang.invoke.MethodType: java.lang.Class returnType()>() 
(assert true)
(define-const var1015 Bool (isPrimitive/-473230874 var2891)) ; Statement: $z0 = virtualinvoke r2.<java.lang.Class: boolean isPrimitive()>() 
 ; Statement: if $z0 == 0 goto $r15 = class "Ljava/lang/Object;" 
(assert (not (= (ite var1015 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2093 ClassObject var2891) ; Statement: $r15 = r2 
 ; Statement: goto [?= r3 = $r15] 
(assert true) ; Non Conditional
(define-const var1101 ClassObject var2093) ; Statement: r3 = $r15 
(assert true)
(define-const var3152 ClassObject (parameterType/-1774229988 var3982 1)) ; Statement: $r14 = virtualinvoke r1.<java.lang.invoke.MethodType: java.lang.Class parameterType(int)>(1) 
(define-const var1428 Bool (var380_explicitInstanceOfCheck/534363824 var3904 var553)) ; Statement: $z2 = staticinvoke <jdk.nashorn.internal.runtime.linker.NashornGuards: boolean explicitInstanceOfCheck(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r4) 
(assert true)
(define-const var727 Bool (isPrimitive/-473230874 var2093)) ; Statement: $z1 = virtualinvoke $r15.<java.lang.Class: boolean isPrimitive()>() 
 ; Statement: if $z1 == 0 goto r17 = "get" 
(assert (= (ite var727 1 0) 0)) ; Cond: $z1 == 0 
(define-const var744 String "get") ; Statement: r17 = "get" 
(assert true) ; Non Conditional
(assert true)
(define-const var1727 var1955 (findGetIndexMethodHandle/-1145191930 var3007 var1101 var744 var3152 var3904)) ; Statement: $r13 = virtualinvoke r5.<jdk.nashorn.internal.runtime.ScriptObject: java.lang.invoke.MethodHandle findGetIndexMethodHandle(java.lang.Class,java.lang.String,java.lang.Class,jdk.internal.dynalink.CallSiteDescriptor)>(r3, r17, $r14, r0) 
(define-const var1003 var403 var403-init) ; Statement: $r6 = new jdk.internal.dynalink.linker.GuardedInvocation 
(define-const var2700 var1955 (var3613_getScriptObjectGuard/-1702191085 var3982 var1428)) ; Statement: $r7 = staticinvoke <jdk.nashorn.internal.runtime.ScriptObject: java.lang.invoke.MethodHandle getScriptObjectGuard(java.lang.invoke.MethodType,boolean)>(r1, $z2) 
 ; Statement: if $z2 == 0 goto $r18 = class "Ljava/lang/ClassCastException;" 
(assert (= (ite var1428 1 0) 0)) ; Cond: $z2 == 0 
(define-const var750 ClassObject var3155!class) ; Statement: $r18 = class "Ljava/lang/ClassCastException;" 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/-1026995654 var1003 var1727 var2700 null-var1817 var750)) ; Statement: specialinvoke $r6.<jdk.internal.dynalink.linker.GuardedInvocation: void <init>(java.lang.invoke.MethodHandle,java.lang.invoke.MethodHandle,java.lang.invoke.SwitchPoint,java.lang.Class)>($r13, $r7, null, $r18) 

(declare-const var1003!1 var403)
(declare-const var1727!1 var1955)
(declare-const var2700!1 var1955)
(declare-const var1987 var3837)
(declare-const var750!1 ClassObject)
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var874_getMethodType/-466914787=([jdk.internal.dynalink.CallSiteDescriptor], java.lang.invoke.MethodType), returnType/-1833759760=([java.lang.invoke.MethodType], java.lang.Class), isPrimitive/-473230874=([java.lang.Class], boolean), parameterType/-1774229988=([java.lang.invoke.MethodType, int], java.lang.Class), var380_explicitInstanceOfCheck/534363824=([jdk.internal.dynalink.CallSiteDescriptor, jdk.internal.dynalink.linker.LinkRequest], boolean), findGetIndexMethodHandle/-1145191930=([jdk.nashorn.internal.runtime.ScriptObject, java.lang.Class, java.lang.String, java.lang.Class, jdk.internal.dynalink.CallSiteDescriptor], java.lang.invoke.MethodHandle), var403-init=([], jdk.internal.dynalink.linker.GuardedInvocation), var3613_getScriptObjectGuard/-1702191085=([java.lang.invoke.MethodType, boolean], java.lang.invoke.MethodHandle), <init>/-1026995654=([jdk.internal.dynalink.linker.GuardedInvocation, java.lang.invoke.MethodHandle, java.lang.invoke.MethodHandle, java.lang.invoke.SwitchPoint, java.lang.Class], void)}
; {var3613=jdk.nashorn.internal.runtime.ScriptObject, var3007=r5, var874=jdk.internal.dynalink.CallSiteDescriptor, var3904=r0, var1073=jdk.internal.dynalink.linker.LinkRequest, var553=r4, var3256=java.lang.invoke.MethodType, var3982=r1, var2891=r2, var1015=$z0, var2093=$r15, var1101=r3, var3152=$r14, var380=jdk.nashorn.internal.runtime.linker.NashornGuards, var1428=$z2, var727=$z1, var744=r17, var1955=java.lang.invoke.MethodHandle, var1727=$r13, var403=jdk.internal.dynalink.linker.GuardedInvocation, var1003=$r6, var2700=$r7, var3155=java.lang.ClassCastException, var750=$r18, var1817=java.lang.invoke.SwitchPoint, var1987=null, var3837=null_type}
; {jdk.nashorn.internal.runtime.ScriptObject=var3613, r5=var3007, jdk.internal.dynalink.CallSiteDescriptor=var874, r0=var3904, jdk.internal.dynalink.linker.LinkRequest=var1073, r4=var553, java.lang.invoke.MethodType=var3256, r1=var3982, r2=var2891, $z0=var1015, $r15=var2093, r3=var1101, $r14=var3152, jdk.nashorn.internal.runtime.linker.NashornGuards=var380, $z2=var1428, $z1=var727, r17=var744, java.lang.invoke.MethodHandle=var1955, $r13=var1727, jdk.internal.dynalink.linker.GuardedInvocation=var403, $r6=var1003, $r7=var2700, java.lang.ClassCastException=var3155, $r18=var750, java.lang.invoke.SwitchPoint=var1817, null=var1987, null_type=var3837}
;seq 
;cnt {}
;stmts r5 := @this: jdk.nashorn.internal.runtime.ScriptObject;	r0 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor;	r4 := @parameter1: jdk.internal.dynalink.linker.LinkRequest;	r1 = interfaceinvoke r0.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.invoke.MethodType getMethodType()>();	r2 = virtualinvoke r1.<java.lang.invoke.MethodType: java.lang.Class returnType()>();	$z0 = virtualinvoke r2.<java.lang.Class: boolean isPrimitive()>();	if $z0 == 0 goto $r15 = class "Ljava/lang/Object;";	$r15 = r2;	goto [?= r3 = $r15];	r3 = $r15;	$r14 = virtualinvoke r1.<java.lang.invoke.MethodType: java.lang.Class parameterType(int)>(1);	$z2 = staticinvoke <jdk.nashorn.internal.runtime.linker.NashornGuards: boolean explicitInstanceOfCheck(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r4);	$z1 = virtualinvoke $r15.<java.lang.Class: boolean isPrimitive()>();	if $z1 == 0 goto r17 = "get";	r17 = "get";	$r13 = virtualinvoke r5.<jdk.nashorn.internal.runtime.ScriptObject: java.lang.invoke.MethodHandle findGetIndexMethodHandle(java.lang.Class,java.lang.String,java.lang.Class,jdk.internal.dynalink.CallSiteDescriptor)>(r3, r17, $r14, r0);	$r6 = new jdk.internal.dynalink.linker.GuardedInvocation;	$r7 = staticinvoke <jdk.nashorn.internal.runtime.ScriptObject: java.lang.invoke.MethodHandle getScriptObjectGuard(java.lang.invoke.MethodType,boolean)>(r1, $z2);	if $z2 == 0 goto $r18 = class "Ljava/lang/ClassCastException;";	$r18 = class "Ljava/lang/ClassCastException;";	specialinvoke $r6.<jdk.internal.dynalink.linker.GuardedInvocation: void <init>(java.lang.invoke.MethodHandle,java.lang.invoke.MethodHandle,java.lang.invoke.SwitchPoint,java.lang.Class)>($r13, $r7, null, $r18);	return $r6
;block_num 7