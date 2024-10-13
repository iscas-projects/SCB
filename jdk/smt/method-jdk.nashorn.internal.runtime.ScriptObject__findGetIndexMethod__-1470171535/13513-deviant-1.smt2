(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2749 0)
(declare-sort var1549 0)
(declare-sort var2243 0)
(declare-sort var836 0)
(declare-sort var708 0)
(declare-sort var328 0)
(declare-sort var1745 0)
(declare-sort var1038 0)
(declare-sort var2595 0)
(declare-sort var3033 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1549_getMethodType/-466914787 (var1549) var836)
(declare-fun returnType/-1833759760 (var836) ClassObject)
(declare-fun isPrimitive/-473230874 (ClassObject) Bool)
(declare-fun parameterType/-1774229988 (var836 Int) ClassObject)
(declare-fun var708_explicitInstanceOfCheck/534363824 (var1549 var2243) Bool)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var328_toUpperCase/1913344327 (Int) Int)
(declare-fun append/-1166366385 (String Int) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun findGetIndexMethodHandle/-1145191930 (var2749 ClassObject String ClassObject var1549) var1745)
(declare-fun var1038-init () var1038)
(declare-fun var2749_getScriptObjectGuard/-1702191085 (var836 Bool) var1745)
(declare-fun <init>/-1026995654 (var1038 var1745 var1745 var2595 ClassObject) void)
(declare-const null-var2749 var2749)
(declare-const null-var1549 var1549)
(declare-const null-var2243 var2243)
(declare-const null-ClassObject ClassObject)
(declare-const null-NullType var3033)
(declare-const null-var2595 var2595)
(declare-const var1652 var2749) ; Statement: r5 := @this: jdk.nashorn.internal.runtime.ScriptObject 
(assert (not (= var1652 null-var2749)))
(declare-const var639 var1549) ; Statement: r0 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor 
(assert (not (= var639 null-var1549)))
(declare-const var2921 var2243) ; Statement: r4 := @parameter1: jdk.internal.dynalink.linker.LinkRequest 
(assert (not (= var2921 null-var2243)))
(define-const var2042 var836 (var1549_getMethodType/-466914787 var639)) ; Statement: r1 = interfaceinvoke r0.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.invoke.MethodType getMethodType()>() 
(assert true)
(define-const var3231 ClassObject (returnType/-1833759760 var2042)) ; Statement: r2 = virtualinvoke r1.<java.lang.invoke.MethodType: java.lang.Class returnType()>() 
(assert true)
(define-const var2033 Bool (isPrimitive/-473230874 var3231)) ; Statement: $z0 = virtualinvoke r2.<java.lang.Class: boolean isPrimitive()>() 
 ; Statement: if $z0 == 0 goto $r15 = class "Ljava/lang/Object;" 
(assert (not (= (ite var2033 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2902 ClassObject var3231) ; Statement: $r15 = r2 
 ; Statement: goto [?= r3 = $r15] 
(assert true) ; Non Conditional
(define-const var3741 ClassObject var2902) ; Statement: r3 = $r15 
(assert true)
(define-const var3618 ClassObject (parameterType/-1774229988 var2042 1)) ; Statement: $r14 = virtualinvoke r1.<java.lang.invoke.MethodType: java.lang.Class parameterType(int)>(1) 
(define-const var2780 Bool (var708_explicitInstanceOfCheck/534363824 var639 var2921)) ; Statement: $z2 = staticinvoke <jdk.nashorn.internal.runtime.linker.NashornGuards: boolean explicitInstanceOfCheck(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r4) 
(assert true)
(define-const var3008 Bool (isPrimitive/-473230874 var2902)) ; Statement: $z1 = virtualinvoke $r15.<java.lang.Class: boolean isPrimitive()>() 
 ; Statement: if $z1 == 0 goto r17 = "get" 
(assert (not (= (ite var3008 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
(define-const var1806 String (getName/-1958580599 var2902)) ; Statement: r16 = virtualinvoke $r15.<java.lang.Class: java.lang.String getName()>() 
(define-const var1322 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1322)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1322!1 String)
(assert (= var1322!1 ""))
(assert true)
(define-const var3889 String (append/672562846 var1322!1 "get")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var1322!2 String)
(assert (= var1322!2 (str.++ var1322!1 "get")))
(assert (and true (and (> (str.len var1806) 0) (<= 0 0))))
(define-const var1219 Int (charAt/698050440 var1806 0)) ; Statement: $c0 = virtualinvoke r16.<java.lang.String: char charAt(int)>(0) 
(define-const var339 Int (var328_toUpperCase/1913344327 var1219)) ; Statement: $c1 = staticinvoke <java.lang.Character: char toUpperCase(char)>($c0) 
(assert true)
(define-const var3341 String (append/-1166366385 var3889 var339)) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1) 
(declare-const var3889!1 String)
(assert (str.prefixof var3889 var3889!1))
(assert true)
(define-const var1881 Int (length/-134980193 var1806)) ; Statement: $i2 = virtualinvoke r16.<java.lang.String: int length()>() 
(assert (not (and true (and (>= 1 0) (>= (str.len var1806) var1881) (>= var1881 1)))))
(check-sat)
(get-model)
(get-unsat-core)
; {var1549_getMethodType/-466914787=([jdk.internal.dynalink.CallSiteDescriptor], java.lang.invoke.MethodType), returnType/-1833759760=([java.lang.invoke.MethodType], java.lang.Class), isPrimitive/-473230874=([java.lang.Class], boolean), parameterType/-1774229988=([java.lang.invoke.MethodType, int], java.lang.Class), var708_explicitInstanceOfCheck/534363824=([jdk.internal.dynalink.CallSiteDescriptor, jdk.internal.dynalink.linker.LinkRequest], boolean), getName/-1958580599=([java.lang.Class], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), charAt/698050440=([java.lang.String, int], char), var328_toUpperCase/1913344327=([char], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), findGetIndexMethodHandle/-1145191930=([jdk.nashorn.internal.runtime.ScriptObject, java.lang.Class, java.lang.String, java.lang.Class, jdk.internal.dynalink.CallSiteDescriptor], java.lang.invoke.MethodHandle), var1038-init=([], jdk.internal.dynalink.linker.GuardedInvocation), var2749_getScriptObjectGuard/-1702191085=([java.lang.invoke.MethodType, boolean], java.lang.invoke.MethodHandle), <init>/-1026995654=([jdk.internal.dynalink.linker.GuardedInvocation, java.lang.invoke.MethodHandle, java.lang.invoke.MethodHandle, java.lang.invoke.SwitchPoint, java.lang.Class], void)}
; {var2749=jdk.nashorn.internal.runtime.ScriptObject, var1652=r5, var1549=jdk.internal.dynalink.CallSiteDescriptor, var639=r0, var2243=jdk.internal.dynalink.linker.LinkRequest, var2921=r4, var836=java.lang.invoke.MethodType, var2042=r1, var3231=r2, var2033=$z0, var2902=$r15, var3741=r3, var3618=$r14, var708=jdk.nashorn.internal.runtime.linker.NashornGuards, var2780=$z2, var3008=$z1, var1806=r16, var1322=$r8, var3889=$r9, var1219=$c0, var328=java.lang.Character, var339=$c1, var3341=$r11, var1881=$i2, var2912=$r10, var1833=$r12, var1753=r17, var1745=java.lang.invoke.MethodHandle, var2137=$r13, var1038=jdk.internal.dynalink.linker.GuardedInvocation, var242=$r6, var2030=$r7, var1110=$r18, var2595=java.lang.invoke.SwitchPoint, var567=null, var3033=null_type}
; {jdk.nashorn.internal.runtime.ScriptObject=var2749, r5=var1652, jdk.internal.dynalink.CallSiteDescriptor=var1549, r0=var639, jdk.internal.dynalink.linker.LinkRequest=var2243, r4=var2921, java.lang.invoke.MethodType=var836, r1=var2042, r2=var3231, $z0=var2033, $r15=var2902, r3=var3741, $r14=var3618, jdk.nashorn.internal.runtime.linker.NashornGuards=var708, $z2=var2780, $z1=var3008, r16=var1806, $r8=var1322, $r9=var3889, $c0=var1219, java.lang.Character=var328, $c1=var339, $r11=var3341, $i2=var1881, $r10=var2912, $r12=var1833, r17=var1753, java.lang.invoke.MethodHandle=var1745, $r13=var2137, jdk.internal.dynalink.linker.GuardedInvocation=var1038, $r6=var242, $r7=var2030, $r18=var1110, java.lang.invoke.SwitchPoint=var2595, null=var567, null_type=var3033}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: jdk.nashorn.internal.runtime.ScriptObject;	r0 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor;	r4 := @parameter1: jdk.internal.dynalink.linker.LinkRequest;	r1 = interfaceinvoke r0.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.invoke.MethodType getMethodType()>();	r2 = virtualinvoke r1.<java.lang.invoke.MethodType: java.lang.Class returnType()>();	$z0 = virtualinvoke r2.<java.lang.Class: boolean isPrimitive()>();	if $z0 == 0 goto $r15 = class "Ljava/lang/Object;";	$r15 = r2;	goto [?= r3 = $r15];	r3 = $r15;	$r14 = virtualinvoke r1.<java.lang.invoke.MethodType: java.lang.Class parameterType(int)>(1);	$z2 = staticinvoke <jdk.nashorn.internal.runtime.linker.NashornGuards: boolean explicitInstanceOfCheck(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r4);	$z1 = virtualinvoke $r15.<java.lang.Class: boolean isPrimitive()>();	if $z1 == 0 goto r17 = "get";	r16 = virtualinvoke $r15.<java.lang.Class: java.lang.String getName()>();	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$c0 = virtualinvoke r16.<java.lang.String: char charAt(int)>(0);	$c1 = staticinvoke <java.lang.Character: char toUpperCase(char)>($c0);	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1);	$i2 = virtualinvoke r16.<java.lang.String: int length()>();	$r10 = virtualinvoke r16.<java.lang.String: java.lang.String substring(int,int)>(1, $i2);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	r17 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r13 = virtualinvoke r5.<jdk.nashorn.internal.runtime.ScriptObject: java.lang.invoke.MethodHandle findGetIndexMethodHandle(java.lang.Class,java.lang.String,java.lang.Class,jdk.internal.dynalink.CallSiteDescriptor)>(r3, r17, $r14, r0)];	$r13 = virtualinvoke r5.<jdk.nashorn.internal.runtime.ScriptObject: java.lang.invoke.MethodHandle findGetIndexMethodHandle(java.lang.Class,java.lang.String,java.lang.Class,jdk.internal.dynalink.CallSiteDescriptor)>(r3, r17, $r14, r0);	$r6 = new jdk.internal.dynalink.linker.GuardedInvocation;	$r7 = staticinvoke <jdk.nashorn.internal.runtime.ScriptObject: java.lang.invoke.MethodHandle getScriptObjectGuard(java.lang.invoke.MethodType,boolean)>(r1, $z2);	if $z2 == 0 goto $r18 = class "Ljava/lang/ClassCastException;";	$r18 = null;	goto [?= specialinvoke $r6.<jdk.internal.dynalink.linker.GuardedInvocation: void <init>(java.lang.invoke.MethodHandle,java.lang.invoke.MethodHandle,java.lang.invoke.SwitchPoint,java.lang.Class)>($r13, $r7, null, $r18)];	specialinvoke $r6.<jdk.internal.dynalink.linker.GuardedInvocation: void <init>(java.lang.invoke.MethodHandle,java.lang.invoke.MethodHandle,java.lang.invoke.SwitchPoint,java.lang.Class)>($r13, $r7, null, $r18);	return $r6
;block_num 7