(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var5 0)
(declare-sort var2047 0)
(declare-sort var2658 0)
(declare-sort var2019 0)
(declare-sort var2141 0)
(declare-sort var775 0)
(declare-sort var1127 0)
(declare-sort var462 0)
(declare-sort var2041 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const __Array__Int__var462__!class ClassObject)
(declare-fun getNashornDescriptor/-950359974 (var2019) var2658)
(declare-fun cast-from-var5-to-var2019 (var5) var2019)
(declare-fun isTraceMisses/-1236149079 (var2658) Bool)
(declare-fun type/705534411 (var2047) var2141)
(declare-fun arr-var462-init () (Array Int var462))
(declare-fun cast-from-var5-to-var462 (var5) var462)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2019_access$400/272100068 () String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun cast-from-String-to-var462 (String) var462)
(declare-fun var775_insertArguments/168863401 (var775 var2047 Int (Array Int var462)) var2047)
(declare-fun parameterCount/-1075445345 (var2141) Int)
(declare-fun var775_asCollector/-442495848 (var775 var2047 ClassObject Int) var2047)
(declare-fun changeReturnType/857383285 (var2141 ClassObject) var2141)
(declare-fun var775_asType/1145272139 (var775 var2047 var2141) var2047)
(declare-fun var775_foldArguments/-1192232426 (var775 var2047 var2047) var2047)
(declare-const null-var5 var5)
(declare-const null-var2047 var2047)
(declare-const var1127-MH var775)
(declare-const var5-TRACEMISS var2047)
(declare-const null-__Array__Int__var462__ (Array Int var462))
(declare-const var2041-TYPE ClassObject)
(declare-const var3398 var5) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.linker.LinkerCallSite$TracingLinkerCallSite 
(assert (not (= var3398 null-var5)))
(declare-const var1922 var2047) ; Statement: r2 := @parameter0: java.lang.invoke.MethodHandle 
(assert (not (= var1922 null-var2047)))
(assert true)
(define-const var3837 var2658 (getNashornDescriptor/-950359974 (cast-from-var5-to-var2019 var3398))) ; Statement: $r1 = virtualinvoke r0.<jdk.nashorn.internal.runtime.linker.LinkerCallSite$TracingLinkerCallSite: jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor getNashornDescriptor()>() 
(assert true)
(define-const var3369 Bool (isTraceMisses/-1236149079 var3837)) ; Statement: $z0 = virtualinvoke $r1.<jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: boolean isTraceMisses()>() 
 ; Statement: if $z0 != 0 goto r3 = virtualinvoke r2.<java.lang.invoke.MethodHandle: java.lang.invoke.MethodType type()>() 
(assert (not (= (ite var3369 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var34 var2141 (type/705534411 var1922)) ; Statement: r3 = virtualinvoke r2.<java.lang.invoke.MethodHandle: java.lang.invoke.MethodType type()>() 
(define-const var2638 var775 var1127-MH) ; Statement: $r6 = <jdk.nashorn.internal.lookup.Lookup: jdk.nashorn.internal.lookup.MethodHandleFunctionality MH> 
(define-const var1276 var775 var1127-MH) ; Statement: $r7 = <jdk.nashorn.internal.lookup.Lookup: jdk.nashorn.internal.lookup.MethodHandleFunctionality MH> 
(define-const var1700 var775 var1127-MH) ; Statement: $r8 = <jdk.nashorn.internal.lookup.Lookup: jdk.nashorn.internal.lookup.MethodHandleFunctionality MH> 
(define-const var1840 var775 var1127-MH) ; Statement: $r9 = <jdk.nashorn.internal.lookup.Lookup: jdk.nashorn.internal.lookup.MethodHandleFunctionality MH> 
(define-const var2655 var2047 var5-TRACEMISS) ; Statement: $r10 = <jdk.nashorn.internal.runtime.linker.LinkerCallSite$TracingLinkerCallSite: java.lang.invoke.MethodHandle TRACEMISS> 
(define-const var1647 (Array Int var462) arr-var462-init) ; Statement: $r4 = newarray (java.lang.Object)[2] 
(declare-const var1647!1 (Array Int var462))
(assert (not (= var1647!1 null-__Array__Int__var462__)))
(assert (= (select var1647!1 0) (cast-from-var5-to-var462 var3398))) ; Statement: $r4[0] = r0 
(define-const var355 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var355)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var355!1 String)
(assert (= var355!1 ""))
(assert true)
(define-const var1921 String (append/672562846 var355!1 "MISS ")) ; Statement: $r12 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("MISS ") 
(declare-const var355!2 String)
(assert (= var355!2 (str.++ var355!1 "MISS ")))
(define-const var2739 String var2019_access$400/272100068) ; Statement: $r11 = staticinvoke <jdk.nashorn.internal.runtime.linker.LinkerCallSite: java.lang.String access$400()>() 
(assert true)
(define-const var2458 String (append/672562846 var1921 var2739)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var1921!1 String)
(assert (= var1921!1 (str.++ var1921 var2739)))
(assert true)
(define-const var1167 String (append/672562846 var2458 " ")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var2458!1 String)
(assert (= var2458!1 (str.++ var2458 " ")))
(assert true)
(define-const var3945 String (toString/-2075883882 var1167)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var1647!2 (Array Int var462))
(assert (not (= var1647!2 null-__Array__Int__var462__)))
(assert (= (select var1647!2 1) (cast-from-String-to-var462 var3945))) ; Statement: $r4[1] = $r15 
(define-const var320 var2047 (var775_insertArguments/168863401 var1840 var2655 0 var1647!2)) ; Statement: $r16 = interfaceinvoke $r9.<jdk.nashorn.internal.lookup.MethodHandleFunctionality: java.lang.invoke.MethodHandle insertArguments(java.lang.invoke.MethodHandle,int,java.lang.Object[])>($r10, 0, $r4) 
(assert true)
(define-const var2949 Int (parameterCount/-1075445345 var34)) ; Statement: $i0 = virtualinvoke r3.<java.lang.invoke.MethodType: int parameterCount()>() 
(define-const var1274 var2047 (var775_asCollector/-442495848 var1700 var320 __Array__Int__var462__!class var2949)) ; Statement: $r19 = interfaceinvoke $r8.<jdk.nashorn.internal.lookup.MethodHandleFunctionality: java.lang.invoke.MethodHandle asCollector(java.lang.invoke.MethodHandle,java.lang.Class,int)>($r16, class "[Ljava/lang/Object;", $i0) 
(define-const var3819 ClassObject var2041-TYPE) ; Statement: $r17 = <java.lang.Void: java.lang.Class TYPE> 
(assert true)
(define-const var1930 var2141 (changeReturnType/857383285 var34 var3819)) ; Statement: $r18 = virtualinvoke r3.<java.lang.invoke.MethodType: java.lang.invoke.MethodType changeReturnType(java.lang.Class)>($r17) 
(define-const var3105 var2047 (var775_asType/1145272139 var1276 var1274 var1930)) ; Statement: $r20 = interfaceinvoke $r7.<jdk.nashorn.internal.lookup.MethodHandleFunctionality: java.lang.invoke.MethodHandle asType(java.lang.invoke.MethodHandle,java.lang.invoke.MethodType)>($r19, $r18) 
(define-const var2857 var2047 (var775_foldArguments/-1192232426 var2638 var1922 var3105)) ; Statement: $r21 = interfaceinvoke $r6.<jdk.nashorn.internal.lookup.MethodHandleFunctionality: java.lang.invoke.MethodHandle foldArguments(java.lang.invoke.MethodHandle,java.lang.invoke.MethodHandle)>(r2, $r20) 
 ; Statement: return $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {getNashornDescriptor/-950359974=([jdk.nashorn.internal.runtime.linker.LinkerCallSite], jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor), cast-from-var5-to-var2019=([jdk.nashorn.internal.runtime.linker.LinkerCallSite$TracingLinkerCallSite], jdk.nashorn.internal.runtime.linker.LinkerCallSite), isTraceMisses/-1236149079=([jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor], boolean), type/705534411=([java.lang.invoke.MethodHandle], java.lang.invoke.MethodType), arr-var462-init=([], java.lang.Object[]), cast-from-var5-to-var462=([jdk.nashorn.internal.runtime.linker.LinkerCallSite$TracingLinkerCallSite], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2019_access$400/272100068=([], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), cast-from-String-to-var462=([java.lang.String], java.lang.Object), var775_insertArguments/168863401=([jdk.nashorn.internal.lookup.MethodHandleFunctionality, java.lang.invoke.MethodHandle, int, java.lang.Object[]], java.lang.invoke.MethodHandle), parameterCount/-1075445345=([java.lang.invoke.MethodType], int), var775_asCollector/-442495848=([jdk.nashorn.internal.lookup.MethodHandleFunctionality, java.lang.invoke.MethodHandle, java.lang.Class, int], java.lang.invoke.MethodHandle), changeReturnType/857383285=([java.lang.invoke.MethodType, java.lang.Class], java.lang.invoke.MethodType), var775_asType/1145272139=([jdk.nashorn.internal.lookup.MethodHandleFunctionality, java.lang.invoke.MethodHandle, java.lang.invoke.MethodType], java.lang.invoke.MethodHandle), var775_foldArguments/-1192232426=([jdk.nashorn.internal.lookup.MethodHandleFunctionality, java.lang.invoke.MethodHandle, java.lang.invoke.MethodHandle], java.lang.invoke.MethodHandle)}
; {var5=jdk.nashorn.internal.runtime.linker.LinkerCallSite$TracingLinkerCallSite, var3398=r0, var2047=java.lang.invoke.MethodHandle, var1922=r2, var2658=jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor, var2019=jdk.nashorn.internal.runtime.linker.LinkerCallSite, var3837=$r1, var3369=$z0, var2141=java.lang.invoke.MethodType, var34=r3, var775=jdk.nashorn.internal.lookup.MethodHandleFunctionality, var1127=jdk.nashorn.internal.lookup.Lookup, var2638=$r6, var1276=$r7, var1700=$r8, var1840=$r9, var2655=$r10, var462=java.lang.Object, var1647=$r4, var355=$r5, var1921=$r12, var2739=$r11, var2458=$r13, var1167=$r14, var3945=$r15, var320=$r16, var2949=$i0, var1274=$r19, var2041=java.lang.Void, var3819=$r17, var1930=$r18, var3105=$r20, var2857=$r21}
; {jdk.nashorn.internal.runtime.linker.LinkerCallSite$TracingLinkerCallSite=var5, r0=var3398, java.lang.invoke.MethodHandle=var2047, r2=var1922, jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor=var2658, jdk.nashorn.internal.runtime.linker.LinkerCallSite=var2019, $r1=var3837, $z0=var3369, java.lang.invoke.MethodType=var2141, r3=var34, jdk.nashorn.internal.lookup.MethodHandleFunctionality=var775, jdk.nashorn.internal.lookup.Lookup=var1127, $r6=var2638, $r7=var1276, $r8=var1700, $r9=var1840, $r10=var2655, java.lang.Object=var462, $r4=var1647, $r5=var355, $r12=var1921, $r11=var2739, $r13=var2458, $r14=var1167, $r15=var3945, $r16=var320, $i0=var2949, $r19=var1274, java.lang.Void=var2041, $r17=var3819, $r18=var1930, $r20=var3105, $r21=var2857}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.linker.LinkerCallSite$TracingLinkerCallSite;	r2 := @parameter0: java.lang.invoke.MethodHandle;	$r1 = virtualinvoke r0.<jdk.nashorn.internal.runtime.linker.LinkerCallSite$TracingLinkerCallSite: jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor getNashornDescriptor()>();	$z0 = virtualinvoke $r1.<jdk.nashorn.internal.runtime.linker.NashornCallSiteDescriptor: boolean isTraceMisses()>();	if $z0 != 0 goto r3 = virtualinvoke r2.<java.lang.invoke.MethodHandle: java.lang.invoke.MethodType type()>();	r3 = virtualinvoke r2.<java.lang.invoke.MethodHandle: java.lang.invoke.MethodType type()>();	$r6 = <jdk.nashorn.internal.lookup.Lookup: jdk.nashorn.internal.lookup.MethodHandleFunctionality MH>;	$r7 = <jdk.nashorn.internal.lookup.Lookup: jdk.nashorn.internal.lookup.MethodHandleFunctionality MH>;	$r8 = <jdk.nashorn.internal.lookup.Lookup: jdk.nashorn.internal.lookup.MethodHandleFunctionality MH>;	$r9 = <jdk.nashorn.internal.lookup.Lookup: jdk.nashorn.internal.lookup.MethodHandleFunctionality MH>;	$r10 = <jdk.nashorn.internal.runtime.linker.LinkerCallSite$TracingLinkerCallSite: java.lang.invoke.MethodHandle TRACEMISS>;	$r4 = newarray (java.lang.Object)[2];	$r4[0] = r0;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("MISS ");	$r11 = staticinvoke <jdk.nashorn.internal.runtime.linker.LinkerCallSite: java.lang.String access$400()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$r4[1] = $r15;	$r16 = interfaceinvoke $r9.<jdk.nashorn.internal.lookup.MethodHandleFunctionality: java.lang.invoke.MethodHandle insertArguments(java.lang.invoke.MethodHandle,int,java.lang.Object[])>($r10, 0, $r4);	$i0 = virtualinvoke r3.<java.lang.invoke.MethodType: int parameterCount()>();	$r19 = interfaceinvoke $r8.<jdk.nashorn.internal.lookup.MethodHandleFunctionality: java.lang.invoke.MethodHandle asCollector(java.lang.invoke.MethodHandle,java.lang.Class,int)>($r16, class "[Ljava/lang/Object;", $i0);	$r17 = <java.lang.Void: java.lang.Class TYPE>;	$r18 = virtualinvoke r3.<java.lang.invoke.MethodType: java.lang.invoke.MethodType changeReturnType(java.lang.Class)>($r17);	$r20 = interfaceinvoke $r7.<jdk.nashorn.internal.lookup.MethodHandleFunctionality: java.lang.invoke.MethodHandle asType(java.lang.invoke.MethodHandle,java.lang.invoke.MethodType)>($r19, $r18);	$r21 = interfaceinvoke $r6.<jdk.nashorn.internal.lookup.MethodHandleFunctionality: java.lang.invoke.MethodHandle foldArguments(java.lang.invoke.MethodHandle,java.lang.invoke.MethodHandle)>(r2, $r20);	return $r21
;block_num 2