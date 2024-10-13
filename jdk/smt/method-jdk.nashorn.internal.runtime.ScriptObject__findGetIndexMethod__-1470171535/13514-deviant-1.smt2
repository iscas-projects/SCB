(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1977 0)
(declare-sort var2842 0)
(declare-sort var2568 0)
(declare-sort var2804 0)
(declare-sort var3656 0)
(declare-sort var3303 0)
(declare-sort var2077 0)
(declare-sort var3660 0)
(declare-sort var1824 0)
(declare-sort var3193 0)
(declare-sort var1074 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1824!class ClassObject)
(declare-fun var2842_getMethodType/-466914787 (var2842) var2804)
(declare-fun returnType/-1833759760 (var2804) ClassObject)
(declare-fun isPrimitive/-473230874 (ClassObject) Bool)
(declare-fun parameterType/-1774229988 (var2804 Int) ClassObject)
(declare-fun var3656_explicitInstanceOfCheck/534363824 (var2842 var2568) Bool)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var3303_toUpperCase/1913344327 (Int) Int)
(declare-fun append/-1166366385 (String Int) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun findGetIndexMethodHandle/-1145191930 (var1977 ClassObject String ClassObject var2842) var2077)
(declare-fun var3660-init () var3660)
(declare-fun var1977_getScriptObjectGuard/-1702191085 (var2804 Bool) var2077)
(declare-fun <init>/-1026995654 (var3660 var2077 var2077 var3193 ClassObject) void)
(declare-const null-var1977 var1977)
(declare-const null-var2842 var2842)
(declare-const null-var2568 var2568)
(declare-const null-NullType var1074)
(declare-const null-var3193 var3193)
(declare-const var891 var1977) ; Statement: r5 := @this: jdk.nashorn.internal.runtime.ScriptObject 
(assert (not (= var891 null-var1977)))
(declare-const var3725 var2842) ; Statement: r0 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor 
(assert (not (= var3725 null-var2842)))
(declare-const var833 var2568) ; Statement: r4 := @parameter1: jdk.internal.dynalink.linker.LinkRequest 
(assert (not (= var833 null-var2568)))
(define-const var415 var2804 (var2842_getMethodType/-466914787 var3725)) ; Statement: r1 = interfaceinvoke r0.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.invoke.MethodType getMethodType()>() 
(assert true)
(define-const var2120 ClassObject (returnType/-1833759760 var415)) ; Statement: r2 = virtualinvoke r1.<java.lang.invoke.MethodType: java.lang.Class returnType()>() 
(assert true)
(define-const var424 Bool (isPrimitive/-473230874 var2120)) ; Statement: $z0 = virtualinvoke r2.<java.lang.Class: boolean isPrimitive()>() 
 ; Statement: if $z0 == 0 goto $r15 = class "Ljava/lang/Object;" 
(assert (not (= (ite var424 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3302 ClassObject var2120) ; Statement: $r15 = r2 
 ; Statement: goto [?= r3 = $r15] 
(assert true) ; Non Conditional
(define-const var1172 ClassObject var3302) ; Statement: r3 = $r15 
(assert true)
(define-const var3767 ClassObject (parameterType/-1774229988 var415 1)) ; Statement: $r14 = virtualinvoke r1.<java.lang.invoke.MethodType: java.lang.Class parameterType(int)>(1) 
(define-const var510 Bool (var3656_explicitInstanceOfCheck/534363824 var3725 var833)) ; Statement: $z2 = staticinvoke <jdk.nashorn.internal.runtime.linker.NashornGuards: boolean explicitInstanceOfCheck(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r4) 
(assert true)
(define-const var1399 Bool (isPrimitive/-473230874 var3302)) ; Statement: $z1 = virtualinvoke $r15.<java.lang.Class: boolean isPrimitive()>() 
 ; Statement: if $z1 == 0 goto r17 = "get" 
(assert (not (= (ite var1399 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
(define-const var3378 String (getName/-1958580599 var3302)) ; Statement: r16 = virtualinvoke $r15.<java.lang.Class: java.lang.String getName()>() 
(define-const var3536 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3536)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3536!1 String)
(assert (= var3536!1 ""))
(assert true)
(define-const var290 String (append/672562846 var3536!1 "get")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var3536!2 String)
(assert (= var3536!2 (str.++ var3536!1 "get")))
(assert (and true (and (> (str.len var3378) 0) (<= 0 0))))
(define-const var803 Int (charAt/698050440 var3378 0)) ; Statement: $c0 = virtualinvoke r16.<java.lang.String: char charAt(int)>(0) 
(define-const var2475 Int (var3303_toUpperCase/1913344327 var803)) ; Statement: $c1 = staticinvoke <java.lang.Character: char toUpperCase(char)>($c0) 
(assert true)
(define-const var204 String (append/-1166366385 var290 var2475)) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1) 
(declare-const var290!1 String)
(assert (str.prefixof var290 var290!1))
(assert true)
(define-const var3003 Int (length/-134980193 var3378)) ; Statement: $i2 = virtualinvoke r16.<java.lang.String: int length()>() 
(assert (not (and true (and (>= 1 0) (>= (str.len var3378) var3003) (>= var3003 1)))))
(check-sat)
(get-model)
(get-unsat-core)
; {var2842_getMethodType/-466914787=([jdk.internal.dynalink.CallSiteDescriptor], java.lang.invoke.MethodType), returnType/-1833759760=([java.lang.invoke.MethodType], java.lang.Class), isPrimitive/-473230874=([java.lang.Class], boolean), parameterType/-1774229988=([java.lang.invoke.MethodType, int], java.lang.Class), var3656_explicitInstanceOfCheck/534363824=([jdk.internal.dynalink.CallSiteDescriptor, jdk.internal.dynalink.linker.LinkRequest], boolean), getName/-1958580599=([java.lang.Class], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), charAt/698050440=([java.lang.String, int], char), var3303_toUpperCase/1913344327=([char], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), findGetIndexMethodHandle/-1145191930=([jdk.nashorn.internal.runtime.ScriptObject, java.lang.Class, java.lang.String, java.lang.Class, jdk.internal.dynalink.CallSiteDescriptor], java.lang.invoke.MethodHandle), var3660-init=([], jdk.internal.dynalink.linker.GuardedInvocation), var1977_getScriptObjectGuard/-1702191085=([java.lang.invoke.MethodType, boolean], java.lang.invoke.MethodHandle), <init>/-1026995654=([jdk.internal.dynalink.linker.GuardedInvocation, java.lang.invoke.MethodHandle, java.lang.invoke.MethodHandle, java.lang.invoke.SwitchPoint, java.lang.Class], void)}
; {var1977=jdk.nashorn.internal.runtime.ScriptObject, var891=r5, var2842=jdk.internal.dynalink.CallSiteDescriptor, var3725=r0, var2568=jdk.internal.dynalink.linker.LinkRequest, var833=r4, var2804=java.lang.invoke.MethodType, var415=r1, var2120=r2, var424=$z0, var3302=$r15, var1172=r3, var3767=$r14, var3656=jdk.nashorn.internal.runtime.linker.NashornGuards, var510=$z2, var1399=$z1, var3378=r16, var3536=$r8, var290=$r9, var803=$c0, var3303=java.lang.Character, var2475=$c1, var204=$r11, var3003=$i2, var1742=$r10, var777=$r12, var1867=r17, var2077=java.lang.invoke.MethodHandle, var3695=$r13, var3660=jdk.internal.dynalink.linker.GuardedInvocation, var655=$r6, var1602=$r7, var1824=java.lang.ClassCastException, var1006=$r18, var3193=java.lang.invoke.SwitchPoint, var3072=null, var1074=null_type}
; {jdk.nashorn.internal.runtime.ScriptObject=var1977, r5=var891, jdk.internal.dynalink.CallSiteDescriptor=var2842, r0=var3725, jdk.internal.dynalink.linker.LinkRequest=var2568, r4=var833, java.lang.invoke.MethodType=var2804, r1=var415, r2=var2120, $z0=var424, $r15=var3302, r3=var1172, $r14=var3767, jdk.nashorn.internal.runtime.linker.NashornGuards=var3656, $z2=var510, $z1=var1399, r16=var3378, $r8=var3536, $r9=var290, $c0=var803, java.lang.Character=var3303, $c1=var2475, $r11=var204, $i2=var3003, $r10=var1742, $r12=var777, r17=var1867, java.lang.invoke.MethodHandle=var2077, $r13=var3695, jdk.internal.dynalink.linker.GuardedInvocation=var3660, $r6=var655, $r7=var1602, java.lang.ClassCastException=var1824, $r18=var1006, java.lang.invoke.SwitchPoint=var3193, null=var3072, null_type=var1074}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: jdk.nashorn.internal.runtime.ScriptObject;	r0 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor;	r4 := @parameter1: jdk.internal.dynalink.linker.LinkRequest;	r1 = interfaceinvoke r0.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.invoke.MethodType getMethodType()>();	r2 = virtualinvoke r1.<java.lang.invoke.MethodType: java.lang.Class returnType()>();	$z0 = virtualinvoke r2.<java.lang.Class: boolean isPrimitive()>();	if $z0 == 0 goto $r15 = class "Ljava/lang/Object;";	$r15 = r2;	goto [?= r3 = $r15];	r3 = $r15;	$r14 = virtualinvoke r1.<java.lang.invoke.MethodType: java.lang.Class parameterType(int)>(1);	$z2 = staticinvoke <jdk.nashorn.internal.runtime.linker.NashornGuards: boolean explicitInstanceOfCheck(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r4);	$z1 = virtualinvoke $r15.<java.lang.Class: boolean isPrimitive()>();	if $z1 == 0 goto r17 = "get";	r16 = virtualinvoke $r15.<java.lang.Class: java.lang.String getName()>();	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$c0 = virtualinvoke r16.<java.lang.String: char charAt(int)>(0);	$c1 = staticinvoke <java.lang.Character: char toUpperCase(char)>($c0);	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1);	$i2 = virtualinvoke r16.<java.lang.String: int length()>();	$r10 = virtualinvoke r16.<java.lang.String: java.lang.String substring(int,int)>(1, $i2);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	r17 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r13 = virtualinvoke r5.<jdk.nashorn.internal.runtime.ScriptObject: java.lang.invoke.MethodHandle findGetIndexMethodHandle(java.lang.Class,java.lang.String,java.lang.Class,jdk.internal.dynalink.CallSiteDescriptor)>(r3, r17, $r14, r0)];	$r13 = virtualinvoke r5.<jdk.nashorn.internal.runtime.ScriptObject: java.lang.invoke.MethodHandle findGetIndexMethodHandle(java.lang.Class,java.lang.String,java.lang.Class,jdk.internal.dynalink.CallSiteDescriptor)>(r3, r17, $r14, r0);	$r6 = new jdk.internal.dynalink.linker.GuardedInvocation;	$r7 = staticinvoke <jdk.nashorn.internal.runtime.ScriptObject: java.lang.invoke.MethodHandle getScriptObjectGuard(java.lang.invoke.MethodType,boolean)>(r1, $z2);	if $z2 == 0 goto $r18 = class "Ljava/lang/ClassCastException;";	$r18 = class "Ljava/lang/ClassCastException;";	specialinvoke $r6.<jdk.internal.dynalink.linker.GuardedInvocation: void <init>(java.lang.invoke.MethodHandle,java.lang.invoke.MethodHandle,java.lang.invoke.SwitchPoint,java.lang.Class)>($r13, $r7, null, $r18);	return $r6
;block_num 7