(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var598 0)
(declare-sort var2011 0)
(declare-sort var1436 0)
(declare-sort var642 0)
(declare-sort var704 0)
(declare-sort var1872 0)
(declare-sort var3964 0)
(declare-sort var1557 0)
(declare-sort var2798 0)
(declare-sort var3608 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const Float64!class ClassObject)
(declare-fun var598_getPrimitiveType/-1467592133 (ClassObject) ClassObject)
(declare-fun methodHandle/-825013009 (var1872) var1557)
(declare-fun type/705534411 (var1557) var2798)
(declare-fun changeReturnType/857383285 (var2798 ClassObject) var2798)
(declare-fun var642_explicitCastArguments/473922198 (var642 var1557 var2798) var1557)
(declare-fun var2011_put/1464166817 (var2011 var3608 var3608) var3608)
(declare-fun cast-from-ClassObject-to-var3608 (ClassObject) var3608)
(declare-fun cast-from-var1557-to-var3608 (var1557) var3608)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var1436_findOwnMH/-1278559619 (String ClassObject (Array Int ClassObject)) var1557)
(declare-fun var642_filterReturnValue/1055213386 (var642 var1557 var1557) var1557)
(declare-const null-ClassObject ClassObject)
(declare-const var1436-CONVERTERS var2011)
(declare-const var704-MH var642)
(declare-const var3964-TO_NUMBER var1872)
(declare-const var1436-TO_DOUBLE var1557)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const var1071 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var1071 null-ClassObject)))
(define-const var3121 ClassObject (var598_getPrimitiveType/-1467592133 var1071)) ; Statement: r1 = staticinvoke <jdk.internal.dynalink.support.TypeUtilities: java.lang.Class getPrimitiveType(java.lang.Class)>(r0) 
(define-const var3373 var2011 var1436-CONVERTERS) ; Statement: $r3 = <jdk.nashorn.internal.runtime.linker.JavaArgumentConverters: java.util.Map CONVERTERS> 
(define-const var17 var642 var704-MH) ; Statement: $r4 = <jdk.nashorn.internal.lookup.Lookup: jdk.nashorn.internal.lookup.MethodHandleFunctionality MH> 
(define-const var344 var1872 var3964-TO_NUMBER) ; Statement: $r2 = <jdk.nashorn.internal.runtime.JSType: jdk.nashorn.internal.codegen.CompilerConstants$Call TO_NUMBER> 
(assert true)
(define-const var1674 var1557 (methodHandle/-825013009 var344)) ; Statement: $r9 = virtualinvoke $r2.<jdk.nashorn.internal.codegen.CompilerConstants$Call: java.lang.invoke.MethodHandle methodHandle()>() 
(define-const var2845 var1872 var3964-TO_NUMBER) ; Statement: $r5 = <jdk.nashorn.internal.runtime.JSType: jdk.nashorn.internal.codegen.CompilerConstants$Call TO_NUMBER> 
(assert true)
(define-const var1608 var1557 (methodHandle/-825013009 var2845)) ; Statement: $r6 = virtualinvoke $r5.<jdk.nashorn.internal.codegen.CompilerConstants$Call: java.lang.invoke.MethodHandle methodHandle()>() 
(assert true)
(define-const var3320 var2798 (type/705534411 var1608)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.invoke.MethodHandle: java.lang.invoke.MethodType type()>() 
(assert true)
(define-const var2217 var2798 (changeReturnType/857383285 var3320 var3121)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.invoke.MethodType: java.lang.invoke.MethodType changeReturnType(java.lang.Class)>(r1) 
(define-const var1924 var1557 (var642_explicitCastArguments/473922198 var17 var1674 var2217)) ; Statement: $r10 = interfaceinvoke $r4.<jdk.nashorn.internal.lookup.MethodHandleFunctionality: java.lang.invoke.MethodHandle explicitCastArguments(java.lang.invoke.MethodHandle,java.lang.invoke.MethodType)>($r9, $r8) 
;(assert (var2011_put/1464166817 var3373 (cast-from-ClassObject-to-var3608 var3121) (cast-from-var1557-to-var3608 var1924))) ; Statement: interfaceinvoke $r3.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r1, $r10) 

(declare-const var3373!1 var2011)
(declare-const var3121!1 ClassObject)
(declare-const var1924!1 var1557)
(define-const var570 var2011 var1436-CONVERTERS) ; Statement: $r12 = <jdk.nashorn.internal.runtime.linker.JavaArgumentConverters: java.util.Map CONVERTERS> 
(define-const var3313 var642 var704-MH) ; Statement: $r13 = <jdk.nashorn.internal.lookup.Lookup: jdk.nashorn.internal.lookup.MethodHandleFunctionality MH> 
(define-const var1754 var1557 var1436-TO_DOUBLE) ; Statement: $r14 = <jdk.nashorn.internal.runtime.linker.JavaArgumentConverters: java.lang.invoke.MethodHandle TO_DOUBLE> 
(define-const var2225 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2225)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2225!1 String)
(assert (= var2225!1 ""))
(assert true)
(define-const var698 String (getName/-1958580599 var3121!1)) ; Statement: $r15 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2699 String (append/672562846 var2225!1 var698)) ; Statement: $r16 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var2225!2 String)
(assert (= var2225!2 (str.++ var2225!1 var698)))
(assert true)
(define-const var1431 String (append/672562846 var2699 "Value")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Value") 
(declare-const var2699!1 String)
(assert (= var2699!1 (str.++ var2699 "Value")))
(assert true)
(define-const var55 String (toString/-2075883882 var1431)) ; Statement: $r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2501 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r18 = newarray (java.lang.Class)[1] 
(declare-const var2501!1 (Array Int ClassObject))
(assert (not (= var2501!1 null-__Array__Int__ClassObject__)))
(assert (= (select var2501!1 0) Float64!class)) ; Statement: $r18[0] = class "Ljava/lang/Double;" 
(define-const var2006 var1557 (var1436_findOwnMH/-1278559619 var55 var1071 var2501!1)) ; Statement: $r20 = staticinvoke <jdk.nashorn.internal.runtime.linker.JavaArgumentConverters: java.lang.invoke.MethodHandle findOwnMH(java.lang.String,java.lang.Class,java.lang.Class[])>($r19, r0, $r18) 
(define-const var3768 var1557 (var642_filterReturnValue/1055213386 var3313 var1754 var2006)) ; Statement: $r21 = interfaceinvoke $r13.<jdk.nashorn.internal.lookup.MethodHandleFunctionality: java.lang.invoke.MethodHandle filterReturnValue(java.lang.invoke.MethodHandle,java.lang.invoke.MethodHandle)>($r14, $r20) 
;(assert (var2011_put/1464166817 var570 (cast-from-ClassObject-to-var3608 var1071) (cast-from-var1557-to-var3608 var3768))) ; Statement: interfaceinvoke $r12.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r0, $r21) 

(declare-const var570!1 var2011)
(declare-const var1071!1 ClassObject)
(declare-const var3768!1 var1557)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var598_getPrimitiveType/-1467592133=([java.lang.Class], java.lang.Class), methodHandle/-825013009=([jdk.nashorn.internal.codegen.CompilerConstants$Call], java.lang.invoke.MethodHandle), type/705534411=([java.lang.invoke.MethodHandle], java.lang.invoke.MethodType), changeReturnType/857383285=([java.lang.invoke.MethodType, java.lang.Class], java.lang.invoke.MethodType), var642_explicitCastArguments/473922198=([jdk.nashorn.internal.lookup.MethodHandleFunctionality, java.lang.invoke.MethodHandle, java.lang.invoke.MethodType], java.lang.invoke.MethodHandle), var2011_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-ClassObject-to-var3608=([java.lang.Class], java.lang.Object), cast-from-var1557-to-var3608=([java.lang.invoke.MethodHandle], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), arr-ClassObject-init=([], java.lang.Class[]), var1436_findOwnMH/-1278559619=([java.lang.String, java.lang.Class, java.lang.Class[]], java.lang.invoke.MethodHandle), var642_filterReturnValue/1055213386=([jdk.nashorn.internal.lookup.MethodHandleFunctionality, java.lang.invoke.MethodHandle, java.lang.invoke.MethodHandle], java.lang.invoke.MethodHandle)}
; {var1071=r0, var598=jdk.internal.dynalink.support.TypeUtilities, var3121=r1, var2011=java.util.Map, var1436=jdk.nashorn.internal.runtime.linker.JavaArgumentConverters, var3373=$r3, var642=jdk.nashorn.internal.lookup.MethodHandleFunctionality, var704=jdk.nashorn.internal.lookup.Lookup, var17=$r4, var1872=jdk.nashorn.internal.codegen.CompilerConstants$Call, var3964=jdk.nashorn.internal.runtime.JSType, var344=$r2, var1557=java.lang.invoke.MethodHandle, var1674=$r9, var2845=$r5, var1608=$r6, var2798=java.lang.invoke.MethodType, var3320=$r7, var2217=$r8, var1924=$r10, var3608=java.lang.Object, var570=$r12, var3313=$r13, var1754=$r14, var2225=$r11, var698=$r15, var2699=$r16, var1431=$r17, var55=$r19, var2501=$r18, var2006=$r20, var3768=$r21}
; {r0=var1071, jdk.internal.dynalink.support.TypeUtilities=var598, r1=var3121, java.util.Map=var2011, jdk.nashorn.internal.runtime.linker.JavaArgumentConverters=var1436, $r3=var3373, jdk.nashorn.internal.lookup.MethodHandleFunctionality=var642, jdk.nashorn.internal.lookup.Lookup=var704, $r4=var17, jdk.nashorn.internal.codegen.CompilerConstants$Call=var1872, jdk.nashorn.internal.runtime.JSType=var3964, $r2=var344, java.lang.invoke.MethodHandle=var1557, $r9=var1674, $r5=var2845, $r6=var1608, java.lang.invoke.MethodType=var2798, $r7=var3320, $r8=var2217, $r10=var1924, java.lang.Object=var3608, $r12=var570, $r13=var3313, $r14=var1754, $r11=var2225, $r15=var698, $r16=var2699, $r17=var1431, $r19=var55, $r18=var2501, $r20=var2006, $r21=var3768}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	r1 = staticinvoke <jdk.internal.dynalink.support.TypeUtilities: java.lang.Class getPrimitiveType(java.lang.Class)>(r0);	$r3 = <jdk.nashorn.internal.runtime.linker.JavaArgumentConverters: java.util.Map CONVERTERS>;	$r4 = <jdk.nashorn.internal.lookup.Lookup: jdk.nashorn.internal.lookup.MethodHandleFunctionality MH>;	$r2 = <jdk.nashorn.internal.runtime.JSType: jdk.nashorn.internal.codegen.CompilerConstants$Call TO_NUMBER>;	$r9 = virtualinvoke $r2.<jdk.nashorn.internal.codegen.CompilerConstants$Call: java.lang.invoke.MethodHandle methodHandle()>();	$r5 = <jdk.nashorn.internal.runtime.JSType: jdk.nashorn.internal.codegen.CompilerConstants$Call TO_NUMBER>;	$r6 = virtualinvoke $r5.<jdk.nashorn.internal.codegen.CompilerConstants$Call: java.lang.invoke.MethodHandle methodHandle()>();	$r7 = virtualinvoke $r6.<java.lang.invoke.MethodHandle: java.lang.invoke.MethodType type()>();	$r8 = virtualinvoke $r7.<java.lang.invoke.MethodType: java.lang.invoke.MethodType changeReturnType(java.lang.Class)>(r1);	$r10 = interfaceinvoke $r4.<jdk.nashorn.internal.lookup.MethodHandleFunctionality: java.lang.invoke.MethodHandle explicitCastArguments(java.lang.invoke.MethodHandle,java.lang.invoke.MethodType)>($r9, $r8);	interfaceinvoke $r3.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r1, $r10);	$r12 = <jdk.nashorn.internal.runtime.linker.JavaArgumentConverters: java.util.Map CONVERTERS>;	$r13 = <jdk.nashorn.internal.lookup.Lookup: jdk.nashorn.internal.lookup.MethodHandleFunctionality MH>;	$r14 = <jdk.nashorn.internal.runtime.linker.JavaArgumentConverters: java.lang.invoke.MethodHandle TO_DOUBLE>;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>();	$r16 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Value");	$r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	$r18 = newarray (java.lang.Class)[1];	$r18[0] = class "Ljava/lang/Double;";	$r20 = staticinvoke <jdk.nashorn.internal.runtime.linker.JavaArgumentConverters: java.lang.invoke.MethodHandle findOwnMH(java.lang.String,java.lang.Class,java.lang.Class[])>($r19, r0, $r18);	$r21 = interfaceinvoke $r13.<jdk.nashorn.internal.lookup.MethodHandleFunctionality: java.lang.invoke.MethodHandle filterReturnValue(java.lang.invoke.MethodHandle,java.lang.invoke.MethodHandle)>($r14, $r20);	interfaceinvoke $r12.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r0, $r21);	return
;block_num 1