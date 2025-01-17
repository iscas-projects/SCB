(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3556 0)
(declare-sort var2548 0)
(declare-sort var239 0)
(declare-sort var502 0)
(declare-sort var3779 0)
(declare-sort var1765 0)
(declare-sort var2572 0)
(declare-sort var3182 0)
(declare-sort var3381 0)
(declare-sort var2506 0)
(declare-sort var3036 0)
(declare-sort var2293 0)
(declare-sort var1945 0)
(declare-sort var3154 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3779!class ClassObject)
(declare-fun var239_getContextTrusted/-302620867 () var239)
(declare-fun getLogger/-1961765090 (var239 ClassObject) var502)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1765) String)
(declare-fun cast-from-var3556-to-var1765 (var3556) var1765)
(declare-fun append/-388390247 (String Bool) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun warning/884040667 (var502 String) void)
(declare-fun arr-var1765-init () (Array Int var1765))
(declare-fun cast-from-String-to-var1765 (String) var1765)
(declare-fun var3036_valueOf/1602327315 (Bool) var3036)
(declare-fun cast-from-var3036-to-var1765 (var3036) var1765)
(declare-fun var2293_isScope/594705680 (var3556) Bool)
(declare-fun var2572_insertArguments/168863401 (var2572 var3381 Int (Array Int var1765)) var3381)
(declare-fun var3556_getMethodType/-466914787 (var3556) var1945)
(declare-fun var2506_getScriptObjectGuard/-1702191085 (var1945 Bool) var3381)
(declare-fun var3154-init () var3154)
(declare-fun <init>/1865624782 (var3154 var3381 var3381) void)
(declare-const null-var3556 var3556)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3182-MH var2572)
(declare-const var2506-MEGAMORPHIC_GET var3381)
(declare-const null-__Array__Int__var1765__ (Array Int var1765))
(declare-const var3468 var3556) ; Statement: r2 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor 
(assert (not (= var3468 null-var3556)))
(declare-const var2998 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var2998 null-String)))
(declare-const var887 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var887 null-Bool)))
(define-const var1673 var239 var239_getContextTrusted/-302620867) ; Statement: $r0 = staticinvoke <jdk.nashorn.internal.runtime.Context: jdk.nashorn.internal.runtime.Context getContextTrusted()>() 
(assert true)
(define-const var1244 var502 (getLogger/-1961765090 var1673 var3779!class)) ; Statement: $r11 = virtualinvoke $r0.<jdk.nashorn.internal.runtime.Context: jdk.nashorn.internal.runtime.logging.DebugLogger getLogger(java.lang.Class)>(class "Ljdk/nashorn/internal/codegen/ObjectClassGenerator;") 
(define-const var930 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var930)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var930!1 String)
(assert (= var930!1 ""))
(assert true)
(define-const var174 String (append/672562846 var930!1 "Megamorphic getter: ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Megamorphic getter: ") 
(declare-const var930!2 String)
(assert (= var930!2 (str.++ var930!1 "Megamorphic getter: ")))
(assert true)
(define-const var1069 String (append/-1031950772 var174 (cast-from-var3556-to-var1765 var3468))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var174!1 String)
(assert (str.prefixof var174 var174!1))
(assert true)
(define-const var2719 String (append/672562846 var1069 " ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var1069!1 String)
(assert (= var1069!1 (str.++ var1069 " ")))
(assert true)
(define-const var2812 String (append/672562846 var2719 var2998)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var2719!1 String)
(assert (= var2719!1 (str.++ var2719 var2998)))
(assert true)
(define-const var3827 String (append/672562846 var2812 " ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var2812!1 String)
(assert (= var2812!1 (str.++ var2812 " ")))
(assert true)
(define-const var2354 String (append/-388390247 var3827 var887)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>(z0) 
(declare-const var3827!1 String)
(assert (str.prefixof var3827 var3827!1))
(assert true)
(define-const var2006 String (toString/-2075883882 var2354)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (warning/884040667 var1244 var2006)) ; Statement: virtualinvoke $r11.<jdk.nashorn.internal.runtime.logging.DebugLogger: void warning(java.lang.String)>($r10) 

(declare-const var1244!1 var502)
(declare-const var2006!1 String)
(define-const var2390 var2572 var3182-MH) ; Statement: $r13 = <jdk.nashorn.internal.lookup.Lookup: jdk.nashorn.internal.lookup.MethodHandleFunctionality MH> 
(define-const var1510 var3381 var2506-MEGAMORPHIC_GET) ; Statement: $r14 = <jdk.nashorn.internal.runtime.ScriptObject: java.lang.invoke.MethodHandle MEGAMORPHIC_GET> 
(define-const var380 (Array Int var1765) arr-var1765-init) ; Statement: $r12 = newarray (java.lang.Object)[3] 
(declare-const var380!1 (Array Int var1765))
(assert (not (= var380!1 null-__Array__Int__var1765__)))
(assert (= (select var380!1 0) (cast-from-String-to-var1765 var2998))) ; Statement: $r12[0] = r5 
(define-const var741 var3036 (var3036_valueOf/1602327315 var887)) ; Statement: $r15 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(z0) 
(declare-const var380!2 (Array Int var1765))
(assert (not (= var380!2 null-__Array__Int__var1765__)))
(assert (= (select var380!2 1) (cast-from-var3036-to-var1765 var741))) ; Statement: $r12[1] = $r15 
(define-const var2884 Bool (var2293_isScope/594705680 var3468)) ; Statement: $z1 = staticinvoke <jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: boolean isScope(jdk.internal.dynalink.CallSiteDescriptor)>(r2) 
(define-const var3792 var3036 (var3036_valueOf/1602327315 var2884)) ; Statement: $r16 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>($z1) 
(declare-const var380!3 (Array Int var1765))
(assert (not (= var380!3 null-__Array__Int__var1765__)))
(assert (= (select var380!3 2) (cast-from-var3036-to-var1765 var3792))) ; Statement: $r12[2] = $r16 
(define-const var296 var3381 (var2572_insertArguments/168863401 var2390 var1510 1 var380!3)) ; Statement: r17 = interfaceinvoke $r13.<jdk.nashorn.internal.lookup.MethodHandleFunctionality: java.lang.invoke.MethodHandle insertArguments(java.lang.invoke.MethodHandle,int,java.lang.Object[])>($r14, 1, $r12) 
(define-const var3080 var1945 (var3556_getMethodType/-466914787 var3468)) ; Statement: $r18 = interfaceinvoke r2.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.invoke.MethodType getMethodType()>() 
(define-const var353 var3381 (var2506_getScriptObjectGuard/-1702191085 var3080 (ite (= 1 1) true false))) ; Statement: r19 = staticinvoke <jdk.nashorn.internal.runtime.ScriptObject: java.lang.invoke.MethodHandle getScriptObjectGuard(java.lang.invoke.MethodType,boolean)>($r18, 1) 
(define-const var468 var3154 var3154-init) ; Statement: $r20 = new jdk.internal.dynalink.linker.GuardedInvocation 
(assert true)
;(assert (<init>/1865624782 var468 var296 var353)) ; Statement: specialinvoke $r20.<jdk.internal.dynalink.linker.GuardedInvocation: void <init>(java.lang.invoke.MethodHandle,java.lang.invoke.MethodHandle)>(r17, r19) 

(declare-const var468!1 var3154)
(declare-const var296!1 var3381)
(declare-const var353!1 var3381)
 ; Statement: return $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {var239_getContextTrusted/-302620867=([], jdk.nashorn.internal.runtime.Context), getLogger/-1961765090=([jdk.nashorn.internal.runtime.Context, java.lang.Class], jdk.nashorn.internal.runtime.logging.DebugLogger), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3556-to-var1765=([jdk.internal.dynalink.CallSiteDescriptor], java.lang.Object), append/-388390247=([java.lang.StringBuilder, boolean], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), warning/884040667=([jdk.nashorn.internal.runtime.logging.DebugLogger, java.lang.String], void), arr-var1765-init=([], java.lang.Object[]), cast-from-String-to-var1765=([java.lang.String], java.lang.Object), var3036_valueOf/1602327315=([boolean], java.lang.Boolean), cast-from-var3036-to-var1765=([java.lang.Boolean], java.lang.Object), var2293_isScope/594705680=([jdk.internal.dynalink.CallSiteDescriptor], boolean), var2572_insertArguments/168863401=([jdk.nashorn.internal.lookup.MethodHandleFunctionality, java.lang.invoke.MethodHandle, int, java.lang.Object[]], java.lang.invoke.MethodHandle), var3556_getMethodType/-466914787=([jdk.internal.dynalink.CallSiteDescriptor], java.lang.invoke.MethodType), var2506_getScriptObjectGuard/-1702191085=([java.lang.invoke.MethodType, boolean], java.lang.invoke.MethodHandle), var3154-init=([], jdk.internal.dynalink.linker.GuardedInvocation), <init>/1865624782=([jdk.internal.dynalink.linker.GuardedInvocation, java.lang.invoke.MethodHandle, java.lang.invoke.MethodHandle], void)}
; {var3556=jdk.internal.dynalink.CallSiteDescriptor, var3468=r2, var2998=r5, var2548=null_type, var887=z0, var239=jdk.nashorn.internal.runtime.Context, var1673=$r0, var502=jdk.nashorn.internal.runtime.logging.DebugLogger, var3779=jdk.nashorn.internal.codegen.ObjectClassGenerator, var1244=$r11, var930=$r1, var174=$r3, var1765=java.lang.Object, var1069=$r4, var2719=$r6, var2812=$r7, var3827=$r8, var2354=$r9, var2006=$r10, var2572=jdk.nashorn.internal.lookup.MethodHandleFunctionality, var3182=jdk.nashorn.internal.lookup.Lookup, var2390=$r13, var3381=java.lang.invoke.MethodHandle, var2506=jdk.nashorn.internal.runtime.ScriptObject, var1510=$r14, var380=$r12, var3036=java.lang.Boolean, var741=$r15, var2293=jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor, var2884=$z1, var3792=$r16, var296=r17, var1945=java.lang.invoke.MethodType, var3080=$r18, var353=r19, var3154=jdk.internal.dynalink.linker.GuardedInvocation, var468=$r20}
; {jdk.internal.dynalink.CallSiteDescriptor=var3556, r2=var3468, r5=var2998, null_type=var2548, z0=var887, jdk.nashorn.internal.runtime.Context=var239, $r0=var1673, jdk.nashorn.internal.runtime.logging.DebugLogger=var502, jdk.nashorn.internal.codegen.ObjectClassGenerator=var3779, $r11=var1244, $r1=var930, $r3=var174, java.lang.Object=var1765, $r4=var1069, $r6=var2719, $r7=var2812, $r8=var3827, $r9=var2354, $r10=var2006, jdk.nashorn.internal.lookup.MethodHandleFunctionality=var2572, jdk.nashorn.internal.lookup.Lookup=var3182, $r13=var2390, java.lang.invoke.MethodHandle=var3381, jdk.nashorn.internal.runtime.ScriptObject=var2506, $r14=var1510, $r12=var380, java.lang.Boolean=var3036, $r15=var741, jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor=var2293, $z1=var2884, $r16=var3792, r17=var296, java.lang.invoke.MethodType=var1945, $r18=var3080, r19=var353, jdk.internal.dynalink.linker.GuardedInvocation=var3154, $r20=var468}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: jdk.internal.dynalink.CallSiteDescriptor;	r5 := @parameter1: java.lang.String;	z0 := @parameter2: boolean;	$r0 = staticinvoke <jdk.nashorn.internal.runtime.Context: jdk.nashorn.internal.runtime.Context getContextTrusted()>();	$r11 = virtualinvoke $r0.<jdk.nashorn.internal.runtime.Context: jdk.nashorn.internal.runtime.logging.DebugLogger getLogger(java.lang.Class)>(class "Ljdk/nashorn/internal/codegen/ObjectClassGenerator;");	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Megamorphic getter: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>(z0);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r11.<jdk.nashorn.internal.runtime.logging.DebugLogger: void warning(java.lang.String)>($r10);	$r13 = <jdk.nashorn.internal.lookup.Lookup: jdk.nashorn.internal.lookup.MethodHandleFunctionality MH>;	$r14 = <jdk.nashorn.internal.runtime.ScriptObject: java.lang.invoke.MethodHandle MEGAMORPHIC_GET>;	$r12 = newarray (java.lang.Object)[3];	$r12[0] = r5;	$r15 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(z0);	$r12[1] = $r15;	$z1 = staticinvoke <jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: boolean isScope(jdk.internal.dynalink.CallSiteDescriptor)>(r2);	$r16 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>($z1);	$r12[2] = $r16;	r17 = interfaceinvoke $r13.<jdk.nashorn.internal.lookup.MethodHandleFunctionality: java.lang.invoke.MethodHandle insertArguments(java.lang.invoke.MethodHandle,int,java.lang.Object[])>($r14, 1, $r12);	$r18 = interfaceinvoke r2.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.invoke.MethodType getMethodType()>();	r19 = staticinvoke <jdk.nashorn.internal.runtime.ScriptObject: java.lang.invoke.MethodHandle getScriptObjectGuard(java.lang.invoke.MethodType,boolean)>($r18, 1);	$r20 = new jdk.internal.dynalink.linker.GuardedInvocation;	specialinvoke $r20.<jdk.internal.dynalink.linker.GuardedInvocation: void <init>(java.lang.invoke.MethodHandle,java.lang.invoke.MethodHandle)>(r17, r19);	return $r20
;block_num 1