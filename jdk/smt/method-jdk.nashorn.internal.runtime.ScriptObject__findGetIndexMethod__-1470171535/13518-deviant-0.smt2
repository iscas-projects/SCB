(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3700 0)
(declare-sort var3413 0)
(declare-sort var911 0)
(declare-sort var3883 0)
(declare-sort var3328 0)
(declare-sort var2128 0)
(declare-sort var3142 0)
(declare-sort var3205 0)
(declare-sort var3095 0)
(declare-sort var3868 0)
(declare-sort var284 0)
(declare-sort var3694 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3328!class ClassObject)
(declare-const var3868!class ClassObject)
(declare-fun var3413_getMethodType/-466914787 (var3413) var3883)
(declare-fun returnType/-1833759760 (var3883) ClassObject)
(declare-fun isPrimitive/-473230874 (ClassObject) Bool)
(declare-fun parameterType/-1774229988 (var3883 Int) ClassObject)
(declare-fun var2128_explicitInstanceOfCheck/534363824 (var3413 var911) Bool)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var3142_toUpperCase/1913344327 (Int) Int)
(declare-fun append/-1166366385 (String Int) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun findGetIndexMethodHandle/-1145191930 (var3700 ClassObject String ClassObject var3413) var3205)
(declare-fun var3095-init () var3095)
(declare-fun var3700_getScriptObjectGuard/-1702191085 (var3883 Bool) var3205)
(declare-fun <init>/-1026995654 (var3095 var3205 var3205 var284 ClassObject) void)
(declare-const null-var3700 var3700)
(declare-const null-var3413 var3413)
(declare-const null-var911 var911)
(declare-const null-NullType var3694)
(declare-const null-var284 var284)
(declare-const var1468 var3700) ; Statement: r5 := @this: jdk.nashorn.internal.runtime.ScriptObject 
(assert (not (= var1468 null-var3700)))
(declare-const var873 var3413) ; Statement: r0 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor 
(assert (not (= var873 null-var3413)))
(declare-const var1417 var911) ; Statement: r4 := @parameter1: jdk.internal.dynalink.linker.LinkRequest 
(assert (not (= var1417 null-var911)))
(define-const var1322 var3883 (var3413_getMethodType/-466914787 var873)) ; Statement: r1 = interfaceinvoke r0.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.invoke.MethodType getMethodType()>() 
(assert true)
(define-const var3701 ClassObject (returnType/-1833759760 var1322)) ; Statement: r2 = virtualinvoke r1.<java.lang.invoke.MethodType: java.lang.Class returnType()>() 
(assert true)
(define-const var291 Bool (isPrimitive/-473230874 var3701)) ; Statement: $z0 = virtualinvoke r2.<java.lang.Class: boolean isPrimitive()>() 
 ; Statement: if $z0 == 0 goto $r15 = class "Ljava/lang/Object;" 
(assert (= (ite var291 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2453 ClassObject var3328!class) ; Statement: $r15 = class "Ljava/lang/Object;" 
(assert true) ; Non Conditional
(define-const var721 ClassObject var2453) ; Statement: r3 = $r15 
(assert true)
(define-const var3952 ClassObject (parameterType/-1774229988 var1322 1)) ; Statement: $r14 = virtualinvoke r1.<java.lang.invoke.MethodType: java.lang.Class parameterType(int)>(1) 
(define-const var1454 Bool (var2128_explicitInstanceOfCheck/534363824 var873 var1417)) ; Statement: $z2 = staticinvoke <jdk.nashorn.internal.runtime.linker.NashornGuards: boolean explicitInstanceOfCheck(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r4) 
(assert true)
(define-const var2007 Bool (isPrimitive/-473230874 var2453)) ; Statement: $z1 = virtualinvoke $r15.<java.lang.Class: boolean isPrimitive()>() 
 ; Statement: if $z1 == 0 goto r17 = "get" 
(assert (not (= (ite var2007 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
(define-const var433 String (getName/-1958580599 var2453)) ; Statement: r16 = virtualinvoke $r15.<java.lang.Class: java.lang.String getName()>() 
(define-const var2991 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2991)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2991!1 String)
(assert (= var2991!1 ""))
(assert true)
(define-const var2269 String (append/672562846 var2991!1 "get")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var2991!2 String)
(assert (= var2991!2 (str.++ var2991!1 "get")))
(assert (not (and true (and (> (str.len var433) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {var3413_getMethodType/-466914787=([jdk.internal.dynalink.CallSiteDescriptor], java.lang.invoke.MethodType), returnType/-1833759760=([java.lang.invoke.MethodType], java.lang.Class), isPrimitive/-473230874=([java.lang.Class], boolean), parameterType/-1774229988=([java.lang.invoke.MethodType, int], java.lang.Class), var2128_explicitInstanceOfCheck/534363824=([jdk.internal.dynalink.CallSiteDescriptor, jdk.internal.dynalink.linker.LinkRequest], boolean), getName/-1958580599=([java.lang.Class], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), charAt/698050440=([java.lang.String, int], char), var3142_toUpperCase/1913344327=([char], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), findGetIndexMethodHandle/-1145191930=([jdk.nashorn.internal.runtime.ScriptObject, java.lang.Class, java.lang.String, java.lang.Class, jdk.internal.dynalink.CallSiteDescriptor], java.lang.invoke.MethodHandle), var3095-init=([], jdk.internal.dynalink.linker.GuardedInvocation), var3700_getScriptObjectGuard/-1702191085=([java.lang.invoke.MethodType, boolean], java.lang.invoke.MethodHandle), <init>/-1026995654=([jdk.internal.dynalink.linker.GuardedInvocation, java.lang.invoke.MethodHandle, java.lang.invoke.MethodHandle, java.lang.invoke.SwitchPoint, java.lang.Class], void)}
; {var3700=jdk.nashorn.internal.runtime.ScriptObject, var1468=r5, var3413=jdk.internal.dynalink.CallSiteDescriptor, var873=r0, var911=jdk.internal.dynalink.linker.LinkRequest, var1417=r4, var3883=java.lang.invoke.MethodType, var1322=r1, var3701=r2, var291=$z0, var3328=java.lang.Object, var2453=$r15, var721=r3, var3952=$r14, var2128=jdk.nashorn.internal.runtime.linker.NashornGuards, var1454=$z2, var2007=$z1, var433=r16, var2991=$r8, var2269=$r9, var2307=$c0, var3142=java.lang.Character, var2642=$c1, var352=$r11, var3740=$i2, var290=$r10, var2391=$r12, var920=r17, var3205=java.lang.invoke.MethodHandle, var2615=$r13, var3095=jdk.internal.dynalink.linker.GuardedInvocation, var1844=$r6, var3234=$r7, var3868=java.lang.ClassCastException, var1857=$r18, var284=java.lang.invoke.SwitchPoint, var2037=null, var3694=null_type}
; {jdk.nashorn.internal.runtime.ScriptObject=var3700, r5=var1468, jdk.internal.dynalink.CallSiteDescriptor=var3413, r0=var873, jdk.internal.dynalink.linker.LinkRequest=var911, r4=var1417, java.lang.invoke.MethodType=var3883, r1=var1322, r2=var3701, $z0=var291, java.lang.Object=var3328, $r15=var2453, r3=var721, $r14=var3952, jdk.nashorn.internal.runtime.linker.NashornGuards=var2128, $z2=var1454, $z1=var2007, r16=var433, $r8=var2991, $r9=var2269, $c0=var2307, java.lang.Character=var3142, $c1=var2642, $r11=var352, $i2=var3740, $r10=var290, $r12=var2391, r17=var920, java.lang.invoke.MethodHandle=var3205, $r13=var2615, jdk.internal.dynalink.linker.GuardedInvocation=var3095, $r6=var1844, $r7=var3234, java.lang.ClassCastException=var3868, $r18=var1857, java.lang.invoke.SwitchPoint=var284, null=var2037, null_type=var3694}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: jdk.nashorn.internal.runtime.ScriptObject;	r0 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor;	r4 := @parameter1: jdk.internal.dynalink.linker.LinkRequest;	r1 = interfaceinvoke r0.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.invoke.MethodType getMethodType()>();	r2 = virtualinvoke r1.<java.lang.invoke.MethodType: java.lang.Class returnType()>();	$z0 = virtualinvoke r2.<java.lang.Class: boolean isPrimitive()>();	if $z0 == 0 goto $r15 = class "Ljava/lang/Object;";	$r15 = class "Ljava/lang/Object;";	r3 = $r15;	$r14 = virtualinvoke r1.<java.lang.invoke.MethodType: java.lang.Class parameterType(int)>(1);	$z2 = staticinvoke <jdk.nashorn.internal.runtime.linker.NashornGuards: boolean explicitInstanceOfCheck(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r4);	$z1 = virtualinvoke $r15.<java.lang.Class: boolean isPrimitive()>();	if $z1 == 0 goto r17 = "get";	r16 = virtualinvoke $r15.<java.lang.Class: java.lang.String getName()>();	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$c0 = virtualinvoke r16.<java.lang.String: char charAt(int)>(0);	$c1 = staticinvoke <java.lang.Character: char toUpperCase(char)>($c0);	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1);	$i2 = virtualinvoke r16.<java.lang.String: int length()>();	$r10 = virtualinvoke r16.<java.lang.String: java.lang.String substring(int,int)>(1, $i2);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	r17 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r13 = virtualinvoke r5.<jdk.nashorn.internal.runtime.ScriptObject: java.lang.invoke.MethodHandle findGetIndexMethodHandle(java.lang.Class,java.lang.String,java.lang.Class,jdk.internal.dynalink.CallSiteDescriptor)>(r3, r17, $r14, r0)];	$r13 = virtualinvoke r5.<jdk.nashorn.internal.runtime.ScriptObject: java.lang.invoke.MethodHandle findGetIndexMethodHandle(java.lang.Class,java.lang.String,java.lang.Class,jdk.internal.dynalink.CallSiteDescriptor)>(r3, r17, $r14, r0);	$r6 = new jdk.internal.dynalink.linker.GuardedInvocation;	$r7 = staticinvoke <jdk.nashorn.internal.runtime.ScriptObject: java.lang.invoke.MethodHandle getScriptObjectGuard(java.lang.invoke.MethodType,boolean)>(r1, $z2);	if $z2 == 0 goto $r18 = class "Ljava/lang/ClassCastException;";	$r18 = class "Ljava/lang/ClassCastException;";	specialinvoke $r6.<jdk.internal.dynalink.linker.GuardedInvocation: void <init>(java.lang.invoke.MethodHandle,java.lang.invoke.MethodHandle,java.lang.invoke.SwitchPoint,java.lang.Class)>($r13, $r7, null, $r18);	return $r6
;block_num 7