(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1872 0)
(declare-sort var3798 0)
(declare-sort var2266 0)
(declare-sort var3756 0)
(declare-sort var3906 0)
(declare-sort var766 0)
(declare-sort var2648 0)
(declare-sort var3527 0)
(declare-sort var3541 0)
(declare-sort var2938 0)
(declare-sort var2606 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3906!class ClassObject)
(declare-fun var3798_getMethodType/-466914787 (var3798) var3756)
(declare-fun returnType/-1833759760 (var3756) ClassObject)
(declare-fun isPrimitive/-473230874 (ClassObject) Bool)
(declare-fun parameterType/-1774229988 (var3756 Int) ClassObject)
(declare-fun var766_explicitInstanceOfCheck/534363824 (var3798 var2266) Bool)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var2648_toUpperCase/1913344327 (Int) Int)
(declare-fun append/-1166366385 (String Int) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun findGetIndexMethodHandle/-1145191930 (var1872 ClassObject String ClassObject var3798) var3527)
(declare-fun var3541-init () var3541)
(declare-fun var1872_getScriptObjectGuard/-1702191085 (var3756 Bool) var3527)
(declare-fun <init>/-1026995654 (var3541 var3527 var3527 var2938 ClassObject) void)
(declare-const null-var1872 var1872)
(declare-const null-var3798 var3798)
(declare-const null-var2266 var2266)
(declare-const null-ClassObject ClassObject)
(declare-const null-NullType var2606)
(declare-const null-var2938 var2938)
(declare-const var3101 var1872) ; Statement: r5 := @this: jdk.nashorn.internal.runtime.ScriptObject 
(assert (not (= var3101 null-var1872)))
(declare-const var3087 var3798) ; Statement: r0 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor 
(assert (not (= var3087 null-var3798)))
(declare-const var1717 var2266) ; Statement: r4 := @parameter1: jdk.internal.dynalink.linker.LinkRequest 
(assert (not (= var1717 null-var2266)))
(define-const var1363 var3756 (var3798_getMethodType/-466914787 var3087)) ; Statement: r1 = interfaceinvoke r0.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.invoke.MethodType getMethodType()>() 
(assert true)
(define-const var2726 ClassObject (returnType/-1833759760 var1363)) ; Statement: r2 = virtualinvoke r1.<java.lang.invoke.MethodType: java.lang.Class returnType()>() 
(assert true)
(define-const var3324 Bool (isPrimitive/-473230874 var2726)) ; Statement: $z0 = virtualinvoke r2.<java.lang.Class: boolean isPrimitive()>() 
 ; Statement: if $z0 == 0 goto $r15 = class "Ljava/lang/Object;" 
(assert (= (ite var3324 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2632 ClassObject var3906!class) ; Statement: $r15 = class "Ljava/lang/Object;" 
(assert true) ; Non Conditional
(define-const var329 ClassObject var2632) ; Statement: r3 = $r15 
(assert true)
(define-const var2053 ClassObject (parameterType/-1774229988 var1363 1)) ; Statement: $r14 = virtualinvoke r1.<java.lang.invoke.MethodType: java.lang.Class parameterType(int)>(1) 
(define-const var2842 Bool (var766_explicitInstanceOfCheck/534363824 var3087 var1717)) ; Statement: $z2 = staticinvoke <jdk.nashorn.internal.runtime.linker.NashornGuards: boolean explicitInstanceOfCheck(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r4) 
(assert true)
(define-const var1263 Bool (isPrimitive/-473230874 var2632)) ; Statement: $z1 = virtualinvoke $r15.<java.lang.Class: boolean isPrimitive()>() 
 ; Statement: if $z1 == 0 goto r17 = "get" 
(assert (not (= (ite var1263 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
(define-const var553 String (getName/-1958580599 var2632)) ; Statement: r16 = virtualinvoke $r15.<java.lang.Class: java.lang.String getName()>() 
(define-const var1946 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1946)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1946!1 String)
(assert (= var1946!1 ""))
(assert true)
(define-const var2378 String (append/672562846 var1946!1 "get")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get") 
(declare-const var1946!2 String)
(assert (= var1946!2 (str.++ var1946!1 "get")))
(assert (and true (and (> (str.len var553) 0) (<= 0 0))))
(define-const var2098 Int (charAt/698050440 var553 0)) ; Statement: $c0 = virtualinvoke r16.<java.lang.String: char charAt(int)>(0) 
(define-const var3483 Int (var2648_toUpperCase/1913344327 var2098)) ; Statement: $c1 = staticinvoke <java.lang.Character: char toUpperCase(char)>($c0) 
(assert true)
(define-const var2658 String (append/-1166366385 var2378 var3483)) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1) 
(declare-const var2378!1 String)
(assert (str.prefixof var2378 var2378!1))
(assert true)
(define-const var3004 Int (length/-134980193 var553)) ; Statement: $i2 = virtualinvoke r16.<java.lang.String: int length()>() 
(assert (and true (and (>= 1 0) (>= (str.len var553) var3004) (>= var3004 1))))
(define-const var695 String (substring/-1240304868 var553 1 var3004)) ; Statement: $r10 = virtualinvoke r16.<java.lang.String: java.lang.String substring(int,int)>(1, $i2) 
(assert true)
(define-const var81 String (append/672562846 var2658 var695)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var2658!1 String)
(assert (= var2658!1 (str.++ var2658 var695)))
(assert true)
(define-const var1425 String (toString/-2075883882 var81)) ; Statement: r17 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r13 = virtualinvoke r5.<jdk.nashorn.internal.runtime.ScriptObject: java.lang.invoke.MethodHandle findGetIndexMethodHandle(java.lang.Class,java.lang.String,java.lang.Class,jdk.internal.dynalink.CallSiteDescriptor)>(r3, r17, $r14, r0)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3709 var3527 (findGetIndexMethodHandle/-1145191930 var3101 var329 var1425 var2053 var3087)) ; Statement: $r13 = virtualinvoke r5.<jdk.nashorn.internal.runtime.ScriptObject: java.lang.invoke.MethodHandle findGetIndexMethodHandle(java.lang.Class,java.lang.String,java.lang.Class,jdk.internal.dynalink.CallSiteDescriptor)>(r3, r17, $r14, r0) 
(define-const var3841 var3541 var3541-init) ; Statement: $r6 = new jdk.internal.dynalink.linker.GuardedInvocation 
(define-const var3703 var3527 (var1872_getScriptObjectGuard/-1702191085 var1363 var2842)) ; Statement: $r7 = staticinvoke <jdk.nashorn.internal.runtime.ScriptObject: java.lang.invoke.MethodHandle getScriptObjectGuard(java.lang.invoke.MethodType,boolean)>(r1, $z2) 
 ; Statement: if $z2 == 0 goto $r18 = class "Ljava/lang/ClassCastException;" 
(assert (not (= (ite var2842 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var2429 ClassObject null-ClassObject) ; Statement: $r18 = null 
 ; Statement: goto [?= specialinvoke $r6.<jdk.internal.dynalink.linker.GuardedInvocation: void <init>(java.lang.invoke.MethodHandle,java.lang.invoke.MethodHandle,java.lang.invoke.SwitchPoint,java.lang.Class)>($r13, $r7, null, $r18)] 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/-1026995654 var3841 var3709 var3703 null-var2938 var2429)) ; Statement: specialinvoke $r6.<jdk.internal.dynalink.linker.GuardedInvocation: void <init>(java.lang.invoke.MethodHandle,java.lang.invoke.MethodHandle,java.lang.invoke.SwitchPoint,java.lang.Class)>($r13, $r7, null, $r18) 

(declare-const var3841!1 var3541)
(declare-const var3709!1 var3527)
(declare-const var3703!1 var3527)
(declare-const var1144 var2606)
(declare-const var2429!1 ClassObject)
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var3798_getMethodType/-466914787=([jdk.internal.dynalink.CallSiteDescriptor], java.lang.invoke.MethodType), returnType/-1833759760=([java.lang.invoke.MethodType], java.lang.Class), isPrimitive/-473230874=([java.lang.Class], boolean), parameterType/-1774229988=([java.lang.invoke.MethodType, int], java.lang.Class), var766_explicitInstanceOfCheck/534363824=([jdk.internal.dynalink.CallSiteDescriptor, jdk.internal.dynalink.linker.LinkRequest], boolean), getName/-1958580599=([java.lang.Class], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), charAt/698050440=([java.lang.String, int], char), var2648_toUpperCase/1913344327=([char], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), findGetIndexMethodHandle/-1145191930=([jdk.nashorn.internal.runtime.ScriptObject, java.lang.Class, java.lang.String, java.lang.Class, jdk.internal.dynalink.CallSiteDescriptor], java.lang.invoke.MethodHandle), var3541-init=([], jdk.internal.dynalink.linker.GuardedInvocation), var1872_getScriptObjectGuard/-1702191085=([java.lang.invoke.MethodType, boolean], java.lang.invoke.MethodHandle), <init>/-1026995654=([jdk.internal.dynalink.linker.GuardedInvocation, java.lang.invoke.MethodHandle, java.lang.invoke.MethodHandle, java.lang.invoke.SwitchPoint, java.lang.Class], void)}
; {var1872=jdk.nashorn.internal.runtime.ScriptObject, var3101=r5, var3798=jdk.internal.dynalink.CallSiteDescriptor, var3087=r0, var2266=jdk.internal.dynalink.linker.LinkRequest, var1717=r4, var3756=java.lang.invoke.MethodType, var1363=r1, var2726=r2, var3324=$z0, var3906=java.lang.Object, var2632=$r15, var329=r3, var2053=$r14, var766=jdk.nashorn.internal.runtime.linker.NashornGuards, var2842=$z2, var1263=$z1, var553=r16, var1946=$r8, var2378=$r9, var2098=$c0, var2648=java.lang.Character, var3483=$c1, var2658=$r11, var3004=$i2, var695=$r10, var81=$r12, var1425=r17, var3527=java.lang.invoke.MethodHandle, var3709=$r13, var3541=jdk.internal.dynalink.linker.GuardedInvocation, var3841=$r6, var3703=$r7, var2429=$r18, var2938=java.lang.invoke.SwitchPoint, var1144=null, var2606=null_type}
; {jdk.nashorn.internal.runtime.ScriptObject=var1872, r5=var3101, jdk.internal.dynalink.CallSiteDescriptor=var3798, r0=var3087, jdk.internal.dynalink.linker.LinkRequest=var2266, r4=var1717, java.lang.invoke.MethodType=var3756, r1=var1363, r2=var2726, $z0=var3324, java.lang.Object=var3906, $r15=var2632, r3=var329, $r14=var2053, jdk.nashorn.internal.runtime.linker.NashornGuards=var766, $z2=var2842, $z1=var1263, r16=var553, $r8=var1946, $r9=var2378, $c0=var2098, java.lang.Character=var2648, $c1=var3483, $r11=var2658, $i2=var3004, $r10=var695, $r12=var81, r17=var1425, java.lang.invoke.MethodHandle=var3527, $r13=var3709, jdk.internal.dynalink.linker.GuardedInvocation=var3541, $r6=var3841, $r7=var3703, $r18=var2429, java.lang.invoke.SwitchPoint=var2938, null=var1144, null_type=var2606}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: jdk.nashorn.internal.runtime.ScriptObject;	r0 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor;	r4 := @parameter1: jdk.internal.dynalink.linker.LinkRequest;	r1 = interfaceinvoke r0.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.invoke.MethodType getMethodType()>();	r2 = virtualinvoke r1.<java.lang.invoke.MethodType: java.lang.Class returnType()>();	$z0 = virtualinvoke r2.<java.lang.Class: boolean isPrimitive()>();	if $z0 == 0 goto $r15 = class "Ljava/lang/Object;";	$r15 = class "Ljava/lang/Object;";	r3 = $r15;	$r14 = virtualinvoke r1.<java.lang.invoke.MethodType: java.lang.Class parameterType(int)>(1);	$z2 = staticinvoke <jdk.nashorn.internal.runtime.linker.NashornGuards: boolean explicitInstanceOfCheck(jdk.internal.dynalink.CallSiteDescriptor,jdk.internal.dynalink.linker.LinkRequest)>(r0, r4);	$z1 = virtualinvoke $r15.<java.lang.Class: boolean isPrimitive()>();	if $z1 == 0 goto r17 = "get";	r16 = virtualinvoke $r15.<java.lang.Class: java.lang.String getName()>();	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$c0 = virtualinvoke r16.<java.lang.String: char charAt(int)>(0);	$c1 = staticinvoke <java.lang.Character: char toUpperCase(char)>($c0);	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1);	$i2 = virtualinvoke r16.<java.lang.String: int length()>();	$r10 = virtualinvoke r16.<java.lang.String: java.lang.String substring(int,int)>(1, $i2);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	r17 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r13 = virtualinvoke r5.<jdk.nashorn.internal.runtime.ScriptObject: java.lang.invoke.MethodHandle findGetIndexMethodHandle(java.lang.Class,java.lang.String,java.lang.Class,jdk.internal.dynalink.CallSiteDescriptor)>(r3, r17, $r14, r0)];	$r13 = virtualinvoke r5.<jdk.nashorn.internal.runtime.ScriptObject: java.lang.invoke.MethodHandle findGetIndexMethodHandle(java.lang.Class,java.lang.String,java.lang.Class,jdk.internal.dynalink.CallSiteDescriptor)>(r3, r17, $r14, r0);	$r6 = new jdk.internal.dynalink.linker.GuardedInvocation;	$r7 = staticinvoke <jdk.nashorn.internal.runtime.ScriptObject: java.lang.invoke.MethodHandle getScriptObjectGuard(java.lang.invoke.MethodType,boolean)>(r1, $z2);	if $z2 == 0 goto $r18 = class "Ljava/lang/ClassCastException;";	$r18 = null;	goto [?= specialinvoke $r6.<jdk.internal.dynalink.linker.GuardedInvocation: void <init>(java.lang.invoke.MethodHandle,java.lang.invoke.MethodHandle,java.lang.invoke.SwitchPoint,java.lang.Class)>($r13, $r7, null, $r18)];	specialinvoke $r6.<jdk.internal.dynalink.linker.GuardedInvocation: void <init>(java.lang.invoke.MethodHandle,java.lang.invoke.MethodHandle,java.lang.invoke.SwitchPoint,java.lang.Class)>($r13, $r7, null, $r18);	return $r6
;block_num 7