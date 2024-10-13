(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var783 0)
(declare-sort var3609 0)
(declare-sort var582 0)
(declare-sort var1567 0)
(declare-sort var682 0)
(declare-sort var237 0)
(declare-sort var3779 0)
(declare-sort var142 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3779!class ClassObject)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getDescriptor/-2067960571 (var237) var682)
(declare-fun cast-from-var783-to-var237 (var783) var237)
(declare-fun var682_getName/1879150825 (var682) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var783_getScriptLocation/1015363244 () String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3609_bindTo/-1319251165 (var3609 var1567 var3779) var1567)
(declare-fun cast-from-String-to-var3779 (String) var3779)
(declare-fun type/705534411 (var1567) var142)
(declare-fun changeParameterType/1689491581 (var142 Int ClassObject) var142)
(declare-fun changeReturnType/857383285 (var142 ClassObject) var142)
(declare-fun var3609_asType/1145272139 (var3609 var1567 var142) var1567)
(declare-const null-var783 var783)
(declare-const null-ClassObject ClassObject)
(declare-const var582-MH var3609)
(declare-const var783-INCREASE_MISS_COUNTER var1567)
(declare-const var108 var783) ; Statement: r3 := @this: jdk.nashorn.internal.runtime.linker.LinkerCallSite 
(assert (not (= var108 null-var783)))
(declare-const var733 ClassObject) ; Statement: r12 := @parameter0: java.lang.Class 
(assert (not (= var733 null-ClassObject)))
(define-const var2993 var3609 var582-MH) ; Statement: $r1 = <jdk.nashorn.internal.lookup.Lookup: jdk.nashorn.internal.lookup.MethodHandleFunctionality MH> 
(define-const var3124 var1567 var783-INCREASE_MISS_COUNTER) ; Statement: $r2 = <jdk.nashorn.internal.runtime.linker.LinkerCallSite: java.lang.invoke.MethodHandle INCREASE_MISS_COUNTER> 
(define-const var122 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var122)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var122!1 String)
(assert (= var122!1 ""))
(assert true)
(define-const var1770 var682 (getDescriptor/-2067960571 (cast-from-var783-to-var237 var108))) ; Statement: $r4 = virtualinvoke r3.<jdk.nashorn.internal.runtime.linker.LinkerCallSite: jdk.internal.dynalink.CallSiteDescriptor getDescriptor()>() 
(define-const var2391 String (var682_getName/1879150825 var1770)) ; Statement: $r5 = interfaceinvoke $r4.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.String getName()>() 
(assert true)
(define-const var2880 String (append/672562846 var122!1 var2391)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var122!2 String)
(assert (= var122!2 (str.++ var122!1 var2391)))
(assert true)
(define-const var3150 String (append/672562846 var2880 " @ ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" @ ") 
(declare-const var2880!1 String)
(assert (= var2880!1 (str.++ var2880 " @ ")))
(define-const var2316 String var783_getScriptLocation/1015363244) ; Statement: $r7 = staticinvoke <jdk.nashorn.internal.runtime.linker.LinkerCallSite: java.lang.String getScriptLocation()>() 
(assert true)
(define-const var2286 String (append/672562846 var3150 var2316)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3150!1 String)
(assert (= var3150!1 (str.++ var3150 var2316)))
(assert true)
(define-const var784 String (toString/-2075883882 var2286)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2519 var1567 (var3609_bindTo/-1319251165 var2993 var3124 (cast-from-String-to-var3779 var784))) ; Statement: r11 = interfaceinvoke $r1.<jdk.nashorn.internal.lookup.MethodHandleFunctionality: java.lang.invoke.MethodHandle bindTo(java.lang.invoke.MethodHandle,java.lang.Object)>($r2, $r10) 
 ; Statement: if r12 != class "Ljava/lang/Object;" goto $r13 = <jdk.nashorn.internal.lookup.Lookup: jdk.nashorn.internal.lookup.MethodHandleFunctionality MH> 
(assert (not (= var733 var3779!class))) ; Cond: r12 != class "Ljava/lang/Object;" 
(define-const var1843 var3609 var582-MH) ; Statement: $r13 = <jdk.nashorn.internal.lookup.Lookup: jdk.nashorn.internal.lookup.MethodHandleFunctionality MH> 
(assert true)
(define-const var3345 var142 (type/705534411 var2519)) ; Statement: $r14 = virtualinvoke r11.<java.lang.invoke.MethodHandle: java.lang.invoke.MethodType type()>() 
(assert true)
(define-const var1772 var142 (changeParameterType/1689491581 var3345 0 var733)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.invoke.MethodType: java.lang.invoke.MethodType changeParameterType(int,java.lang.Class)>(0, r12) 
(assert true)
(define-const var2189 var142 (changeReturnType/857383285 var1772 var733)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.invoke.MethodType: java.lang.invoke.MethodType changeReturnType(java.lang.Class)>(r12) 
(define-const var964 var1567 (var3609_asType/1145272139 var1843 var2519 var2189)) ; Statement: $r17 = interfaceinvoke $r13.<jdk.nashorn.internal.lookup.MethodHandleFunctionality: java.lang.invoke.MethodHandle asType(java.lang.invoke.MethodHandle,java.lang.invoke.MethodType)>(r11, $r16) 
 ; Statement: return $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getDescriptor/-2067960571=([jdk.internal.dynalink.support.AbstractRelinkableCallSite], jdk.internal.dynalink.CallSiteDescriptor), cast-from-var783-to-var237=([jdk.nashorn.internal.runtime.linker.LinkerCallSite], jdk.internal.dynalink.support.AbstractRelinkableCallSite), var682_getName/1879150825=([jdk.internal.dynalink.CallSiteDescriptor], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var783_getScriptLocation/1015363244=([], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3609_bindTo/-1319251165=([jdk.nashorn.internal.lookup.MethodHandleFunctionality, java.lang.invoke.MethodHandle, java.lang.Object], java.lang.invoke.MethodHandle), cast-from-String-to-var3779=([java.lang.String], java.lang.Object), type/705534411=([java.lang.invoke.MethodHandle], java.lang.invoke.MethodType), changeParameterType/1689491581=([java.lang.invoke.MethodType, int, java.lang.Class], java.lang.invoke.MethodType), changeReturnType/857383285=([java.lang.invoke.MethodType, java.lang.Class], java.lang.invoke.MethodType), var3609_asType/1145272139=([jdk.nashorn.internal.lookup.MethodHandleFunctionality, java.lang.invoke.MethodHandle, java.lang.invoke.MethodType], java.lang.invoke.MethodHandle)}
; {var783=jdk.nashorn.internal.runtime.linker.LinkerCallSite, var108=r3, var733=r12, var3609=jdk.nashorn.internal.lookup.MethodHandleFunctionality, var582=jdk.nashorn.internal.lookup.Lookup, var2993=$r1, var1567=java.lang.invoke.MethodHandle, var3124=$r2, var122=$r0, var682=jdk.internal.dynalink.CallSiteDescriptor, var237=jdk.internal.dynalink.support.AbstractRelinkableCallSite, var1770=$r4, var2391=$r5, var2880=$r6, var3150=$r8, var2316=$r7, var2286=$r9, var784=$r10, var3779=java.lang.Object, var2519=r11, var1843=$r13, var142=java.lang.invoke.MethodType, var3345=$r14, var1772=$r15, var2189=$r16, var964=$r17}
; {jdk.nashorn.internal.runtime.linker.LinkerCallSite=var783, r3=var108, r12=var733, jdk.nashorn.internal.lookup.MethodHandleFunctionality=var3609, jdk.nashorn.internal.lookup.Lookup=var582, $r1=var2993, java.lang.invoke.MethodHandle=var1567, $r2=var3124, $r0=var122, jdk.internal.dynalink.CallSiteDescriptor=var682, jdk.internal.dynalink.support.AbstractRelinkableCallSite=var237, $r4=var1770, $r5=var2391, $r6=var2880, $r8=var3150, $r7=var2316, $r9=var2286, $r10=var784, java.lang.Object=var3779, r11=var2519, $r13=var1843, java.lang.invoke.MethodType=var142, $r14=var3345, $r15=var1772, $r16=var2189, $r17=var964}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: jdk.nashorn.internal.runtime.linker.LinkerCallSite;	r12 := @parameter0: java.lang.Class;	$r1 = <jdk.nashorn.internal.lookup.Lookup: jdk.nashorn.internal.lookup.MethodHandleFunctionality MH>;	$r2 = <jdk.nashorn.internal.runtime.linker.LinkerCallSite: java.lang.invoke.MethodHandle INCREASE_MISS_COUNTER>;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke r3.<jdk.nashorn.internal.runtime.linker.LinkerCallSite: jdk.internal.dynalink.CallSiteDescriptor getDescriptor()>();	$r5 = interfaceinvoke $r4.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.String getName()>();	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" @ ");	$r7 = staticinvoke <jdk.nashorn.internal.runtime.linker.LinkerCallSite: java.lang.String getScriptLocation()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	r11 = interfaceinvoke $r1.<jdk.nashorn.internal.lookup.MethodHandleFunctionality: java.lang.invoke.MethodHandle bindTo(java.lang.invoke.MethodHandle,java.lang.Object)>($r2, $r10);	if r12 != class "Ljava/lang/Object;" goto $r13 = <jdk.nashorn.internal.lookup.Lookup: jdk.nashorn.internal.lookup.MethodHandleFunctionality MH>;	$r13 = <jdk.nashorn.internal.lookup.Lookup: jdk.nashorn.internal.lookup.MethodHandleFunctionality MH>;	$r14 = virtualinvoke r11.<java.lang.invoke.MethodHandle: java.lang.invoke.MethodType type()>();	$r15 = virtualinvoke $r14.<java.lang.invoke.MethodType: java.lang.invoke.MethodType changeParameterType(int,java.lang.Class)>(0, r12);	$r16 = virtualinvoke $r15.<java.lang.invoke.MethodType: java.lang.invoke.MethodType changeReturnType(java.lang.Class)>(r12);	$r17 = interfaceinvoke $r13.<jdk.nashorn.internal.lookup.MethodHandleFunctionality: java.lang.invoke.MethodHandle asType(java.lang.invoke.MethodHandle,java.lang.invoke.MethodType)>(r11, $r16);	return $r17
;block_num 2