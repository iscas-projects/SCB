(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2333 0)
(declare-sort var2520 0)
(declare-sort var1442 0)
(declare-sort var2986 0)
(declare-sort var2826 0)
(declare-sort var2803 0)
(declare-sort var1567 0)
(declare-sort var3891 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const Int!class ClassObject)
(declare-fun var2333_getPrimitiveType/-1467592133 (ClassObject) ClassObject)
(declare-fun type/705534411 (var2803) var1567)
(declare-fun changeReturnType/857383285 (var1567 ClassObject) var1567)
(declare-fun var2986_explicitCastArguments/473922198 (var2986 var2803 var1567) var2803)
(declare-fun var2520_put/1464166817 (var2520 var3891 var3891) var3891)
(declare-fun cast-from-ClassObject-to-var3891 (ClassObject) var3891)
(declare-fun cast-from-var2803-to-var3891 (var2803) var3891)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var1442_findOwnMH/-1278559619 (String ClassObject (Array Int ClassObject)) var2803)
(declare-fun var2986_filterReturnValue/1055213386 (var2986 var2803 var2803) var2803)
(declare-const null-ClassObject ClassObject)
(declare-const var1442-CONVERTERS var2520)
(declare-const var2826-MH var2986)
(declare-const var1442-TO_LONG_PRIMITIVE var2803)
(declare-const var1442-TO_LONG var2803)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const var3762 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var3762 null-ClassObject)))
(define-const var3104 ClassObject (var2333_getPrimitiveType/-1467592133 var3762)) ; Statement: r1 = staticinvoke <jdk.internal.dynalink.support.TypeUtilities: java.lang.Class getPrimitiveType(java.lang.Class)>(r0) 
(define-const var2126 var2520 var1442-CONVERTERS) ; Statement: $r3 = <jdk.nashorn.internal.runtime.linker.JavaArgumentConverters: java.util.Map CONVERTERS> 
(define-const var2009 var2986 var2826-MH) ; Statement: $r4 = <jdk.nashorn.internal.lookup.Lookup: jdk.nashorn.internal.lookup.MethodHandleFunctionality MH> 
(define-const var2064 var2803 var1442-TO_LONG_PRIMITIVE) ; Statement: $r5 = <jdk.nashorn.internal.runtime.linker.JavaArgumentConverters: java.lang.invoke.MethodHandle TO_LONG_PRIMITIVE> 
(define-const var1514 var2803 var1442-TO_LONG_PRIMITIVE) ; Statement: $r2 = <jdk.nashorn.internal.runtime.linker.JavaArgumentConverters: java.lang.invoke.MethodHandle TO_LONG_PRIMITIVE> 
(assert true)
(define-const var2460 var1567 (type/705534411 var1514)) ; Statement: $r6 = virtualinvoke $r2.<java.lang.invoke.MethodHandle: java.lang.invoke.MethodType type()>() 
(assert true)
(define-const var1840 var1567 (changeReturnType/857383285 var2460 var3104)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.invoke.MethodType: java.lang.invoke.MethodType changeReturnType(java.lang.Class)>(r1) 
(define-const var3796 var2803 (var2986_explicitCastArguments/473922198 var2009 var2064 var1840)) ; Statement: $r8 = interfaceinvoke $r4.<jdk.nashorn.internal.lookup.MethodHandleFunctionality: java.lang.invoke.MethodHandle explicitCastArguments(java.lang.invoke.MethodHandle,java.lang.invoke.MethodType)>($r5, $r7) 
;(assert (var2520_put/1464166817 var2126 (cast-from-ClassObject-to-var3891 var3104) (cast-from-var2803-to-var3891 var3796))) ; Statement: interfaceinvoke $r3.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r1, $r8) 

(declare-const var2126!1 var2520)
(declare-const var3104!1 ClassObject)
(declare-const var3796!1 var2803)
(define-const var3300 var2520 var1442-CONVERTERS) ; Statement: $r10 = <jdk.nashorn.internal.runtime.linker.JavaArgumentConverters: java.util.Map CONVERTERS> 
(define-const var54 var2986 var2826-MH) ; Statement: $r11 = <jdk.nashorn.internal.lookup.Lookup: jdk.nashorn.internal.lookup.MethodHandleFunctionality MH> 
(define-const var1165 var2803 var1442-TO_LONG) ; Statement: $r12 = <jdk.nashorn.internal.runtime.linker.JavaArgumentConverters: java.lang.invoke.MethodHandle TO_LONG> 
(define-const var763 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var763)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var763!1 String)
(assert (= var763!1 ""))
(assert true)
(define-const var544 String (getName/-1958580599 var3104!1)) ; Statement: $r13 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2851 String (append/672562846 var763!1 var544)) ; Statement: $r14 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var763!2 String)
(assert (= var763!2 (str.++ var763!1 var544)))
(assert true)
(define-const var3567 String (append/672562846 var2851 "Value")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Value") 
(declare-const var2851!1 String)
(assert (= var2851!1 (str.++ var2851 "Value")))
(assert true)
(define-const var2649 String (toString/-2075883882 var3567)) ; Statement: $r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2005 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r16 = newarray (java.lang.Class)[1] 
(declare-const var2005!1 (Array Int ClassObject))
(assert (not (= var2005!1 null-__Array__Int__ClassObject__)))
(assert (= (select var2005!1 0) Int!class)) ; Statement: $r16[0] = class "Ljava/lang/Long;" 
(define-const var2371 var2803 (var1442_findOwnMH/-1278559619 var2649 var3762 var2005!1)) ; Statement: $r18 = staticinvoke <jdk.nashorn.internal.runtime.linker.JavaArgumentConverters: java.lang.invoke.MethodHandle findOwnMH(java.lang.String,java.lang.Class,java.lang.Class[])>($r17, r0, $r16) 
(define-const var1939 var2803 (var2986_filterReturnValue/1055213386 var54 var1165 var2371)) ; Statement: $r19 = interfaceinvoke $r11.<jdk.nashorn.internal.lookup.MethodHandleFunctionality: java.lang.invoke.MethodHandle filterReturnValue(java.lang.invoke.MethodHandle,java.lang.invoke.MethodHandle)>($r12, $r18) 
;(assert (var2520_put/1464166817 var3300 (cast-from-ClassObject-to-var3891 var3762) (cast-from-var2803-to-var3891 var1939))) ; Statement: interfaceinvoke $r10.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r0, $r19) 

(declare-const var3300!1 var2520)
(declare-const var3762!1 ClassObject)
(declare-const var1939!1 var2803)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2333_getPrimitiveType/-1467592133=([java.lang.Class], java.lang.Class), type/705534411=([java.lang.invoke.MethodHandle], java.lang.invoke.MethodType), changeReturnType/857383285=([java.lang.invoke.MethodType, java.lang.Class], java.lang.invoke.MethodType), var2986_explicitCastArguments/473922198=([jdk.nashorn.internal.lookup.MethodHandleFunctionality, java.lang.invoke.MethodHandle, java.lang.invoke.MethodType], java.lang.invoke.MethodHandle), var2520_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-ClassObject-to-var3891=([java.lang.Class], java.lang.Object), cast-from-var2803-to-var3891=([java.lang.invoke.MethodHandle], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), arr-ClassObject-init=([], java.lang.Class[]), var1442_findOwnMH/-1278559619=([java.lang.String, java.lang.Class, java.lang.Class[]], java.lang.invoke.MethodHandle), var2986_filterReturnValue/1055213386=([jdk.nashorn.internal.lookup.MethodHandleFunctionality, java.lang.invoke.MethodHandle, java.lang.invoke.MethodHandle], java.lang.invoke.MethodHandle)}
; {var3762=r0, var2333=jdk.internal.dynalink.support.TypeUtilities, var3104=r1, var2520=java.util.Map, var1442=jdk.nashorn.internal.runtime.linker.JavaArgumentConverters, var2126=$r3, var2986=jdk.nashorn.internal.lookup.MethodHandleFunctionality, var2826=jdk.nashorn.internal.lookup.Lookup, var2009=$r4, var2803=java.lang.invoke.MethodHandle, var2064=$r5, var1514=$r2, var1567=java.lang.invoke.MethodType, var2460=$r6, var1840=$r7, var3796=$r8, var3891=java.lang.Object, var3300=$r10, var54=$r11, var1165=$r12, var763=$r9, var544=$r13, var2851=$r14, var3567=$r15, var2649=$r17, var2005=$r16, var2371=$r18, var1939=$r19}
; {r0=var3762, jdk.internal.dynalink.support.TypeUtilities=var2333, r1=var3104, java.util.Map=var2520, jdk.nashorn.internal.runtime.linker.JavaArgumentConverters=var1442, $r3=var2126, jdk.nashorn.internal.lookup.MethodHandleFunctionality=var2986, jdk.nashorn.internal.lookup.Lookup=var2826, $r4=var2009, java.lang.invoke.MethodHandle=var2803, $r5=var2064, $r2=var1514, java.lang.invoke.MethodType=var1567, $r6=var2460, $r7=var1840, $r8=var3796, java.lang.Object=var3891, $r10=var3300, $r11=var54, $r12=var1165, $r9=var763, $r13=var544, $r14=var2851, $r15=var3567, $r17=var2649, $r16=var2005, $r18=var2371, $r19=var1939}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	r1 = staticinvoke <jdk.internal.dynalink.support.TypeUtilities: java.lang.Class getPrimitiveType(java.lang.Class)>(r0);	$r3 = <jdk.nashorn.internal.runtime.linker.JavaArgumentConverters: java.util.Map CONVERTERS>;	$r4 = <jdk.nashorn.internal.lookup.Lookup: jdk.nashorn.internal.lookup.MethodHandleFunctionality MH>;	$r5 = <jdk.nashorn.internal.runtime.linker.JavaArgumentConverters: java.lang.invoke.MethodHandle TO_LONG_PRIMITIVE>;	$r2 = <jdk.nashorn.internal.runtime.linker.JavaArgumentConverters: java.lang.invoke.MethodHandle TO_LONG_PRIMITIVE>;	$r6 = virtualinvoke $r2.<java.lang.invoke.MethodHandle: java.lang.invoke.MethodType type()>();	$r7 = virtualinvoke $r6.<java.lang.invoke.MethodType: java.lang.invoke.MethodType changeReturnType(java.lang.Class)>(r1);	$r8 = interfaceinvoke $r4.<jdk.nashorn.internal.lookup.MethodHandleFunctionality: java.lang.invoke.MethodHandle explicitCastArguments(java.lang.invoke.MethodHandle,java.lang.invoke.MethodType)>($r5, $r7);	interfaceinvoke $r3.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r1, $r8);	$r10 = <jdk.nashorn.internal.runtime.linker.JavaArgumentConverters: java.util.Map CONVERTERS>;	$r11 = <jdk.nashorn.internal.lookup.Lookup: jdk.nashorn.internal.lookup.MethodHandleFunctionality MH>;	$r12 = <jdk.nashorn.internal.runtime.linker.JavaArgumentConverters: java.lang.invoke.MethodHandle TO_LONG>;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>();	$r14 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Value");	$r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	$r16 = newarray (java.lang.Class)[1];	$r16[0] = class "Ljava/lang/Long;";	$r18 = staticinvoke <jdk.nashorn.internal.runtime.linker.JavaArgumentConverters: java.lang.invoke.MethodHandle findOwnMH(java.lang.String,java.lang.Class,java.lang.Class[])>($r17, r0, $r16);	$r19 = interfaceinvoke $r11.<jdk.nashorn.internal.lookup.MethodHandleFunctionality: java.lang.invoke.MethodHandle filterReturnValue(java.lang.invoke.MethodHandle,java.lang.invoke.MethodHandle)>($r12, $r18);	interfaceinvoke $r10.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r0, $r19);	return
;block_num 1