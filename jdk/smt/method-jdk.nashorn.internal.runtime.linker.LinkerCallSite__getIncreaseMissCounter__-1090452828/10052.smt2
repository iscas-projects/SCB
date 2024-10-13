(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1727 0)
(declare-sort var3677 0)
(declare-sort var536 0)
(declare-sort var817 0)
(declare-sort var247 0)
(declare-sort var3462 0)
(declare-sort var2775 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2775!class ClassObject)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getDescriptor/-2067960571 (var3462) var247)
(declare-fun cast-from-var1727-to-var3462 (var1727) var3462)
(declare-fun var247_getName/1879150825 (var247) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1727_getScriptLocation/1015363244 () String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3677_bindTo/-1319251165 (var3677 var817 var2775) var817)
(declare-fun cast-from-String-to-var2775 (String) var2775)
(declare-const null-var1727 var1727)
(declare-const null-ClassObject ClassObject)
(declare-const var536-MH var3677)
(declare-const var1727-INCREASE_MISS_COUNTER var817)
(declare-const var3581 var1727) ; Statement: r3 := @this: jdk.nashorn.internal.runtime.linker.LinkerCallSite 
(assert (not (= var3581 null-var1727)))
(declare-const var1031 ClassObject) ; Statement: r12 := @parameter0: java.lang.Class 
(assert (not (= var1031 null-ClassObject)))
(define-const var1589 var3677 var536-MH) ; Statement: $r1 = <jdk.nashorn.internal.lookup.Lookup: jdk.nashorn.internal.lookup.MethodHandleFunctionality MH> 
(define-const var3154 var817 var1727-INCREASE_MISS_COUNTER) ; Statement: $r2 = <jdk.nashorn.internal.runtime.linker.LinkerCallSite: java.lang.invoke.MethodHandle INCREASE_MISS_COUNTER> 
(define-const var3949 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3949)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3949!1 String)
(assert (= var3949!1 ""))
(assert true)
(define-const var2244 var247 (getDescriptor/-2067960571 (cast-from-var1727-to-var3462 var3581))) ; Statement: $r4 = virtualinvoke r3.<jdk.nashorn.internal.runtime.linker.LinkerCallSite: jdk.internal.dynalink.CallSiteDescriptor getDescriptor()>() 
(define-const var2476 String (var247_getName/1879150825 var2244)) ; Statement: $r5 = interfaceinvoke $r4.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.String getName()>() 
(assert true)
(define-const var2330 String (append/672562846 var3949!1 var2476)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3949!2 String)
(assert (= var3949!2 (str.++ var3949!1 var2476)))
(assert true)
(define-const var1588 String (append/672562846 var2330 " @ ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" @ ") 
(declare-const var2330!1 String)
(assert (= var2330!1 (str.++ var2330 " @ ")))
(define-const var3985 String var1727_getScriptLocation/1015363244) ; Statement: $r7 = staticinvoke <jdk.nashorn.internal.runtime.linker.LinkerCallSite: java.lang.String getScriptLocation()>() 
(assert true)
(define-const var2029 String (append/672562846 var1588 var3985)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1588!1 String)
(assert (= var1588!1 (str.++ var1588 var3985)))
(assert true)
(define-const var206 String (toString/-2075883882 var2029)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1820 var817 (var3677_bindTo/-1319251165 var1589 var3154 (cast-from-String-to-var2775 var206))) ; Statement: r11 = interfaceinvoke $r1.<jdk.nashorn.internal.lookup.MethodHandleFunctionality: java.lang.invoke.MethodHandle bindTo(java.lang.invoke.MethodHandle,java.lang.Object)>($r2, $r10) 
 ; Statement: if r12 != class "Ljava/lang/Object;" goto $r13 = <jdk.nashorn.internal.lookup.Lookup: jdk.nashorn.internal.lookup.MethodHandleFunctionality MH> 
(assert (not (not (= var1031 var2775!class)))) ; Negate: Cond: r12 != class "Ljava/lang/Object;"  
 ; Statement: return r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getDescriptor/-2067960571=([jdk.internal.dynalink.support.AbstractRelinkableCallSite], jdk.internal.dynalink.CallSiteDescriptor), cast-from-var1727-to-var3462=([jdk.nashorn.internal.runtime.linker.LinkerCallSite], jdk.internal.dynalink.support.AbstractRelinkableCallSite), var247_getName/1879150825=([jdk.internal.dynalink.CallSiteDescriptor], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1727_getScriptLocation/1015363244=([], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3677_bindTo/-1319251165=([jdk.nashorn.internal.lookup.MethodHandleFunctionality, java.lang.invoke.MethodHandle, java.lang.Object], java.lang.invoke.MethodHandle), cast-from-String-to-var2775=([java.lang.String], java.lang.Object)}
; {var1727=jdk.nashorn.internal.runtime.linker.LinkerCallSite, var3581=r3, var1031=r12, var3677=jdk.nashorn.internal.lookup.MethodHandleFunctionality, var536=jdk.nashorn.internal.lookup.Lookup, var1589=$r1, var817=java.lang.invoke.MethodHandle, var3154=$r2, var3949=$r0, var247=jdk.internal.dynalink.CallSiteDescriptor, var3462=jdk.internal.dynalink.support.AbstractRelinkableCallSite, var2244=$r4, var2476=$r5, var2330=$r6, var1588=$r8, var3985=$r7, var2029=$r9, var206=$r10, var2775=java.lang.Object, var1820=r11}
; {jdk.nashorn.internal.runtime.linker.LinkerCallSite=var1727, r3=var3581, r12=var1031, jdk.nashorn.internal.lookup.MethodHandleFunctionality=var3677, jdk.nashorn.internal.lookup.Lookup=var536, $r1=var1589, java.lang.invoke.MethodHandle=var817, $r2=var3154, $r0=var3949, jdk.internal.dynalink.CallSiteDescriptor=var247, jdk.internal.dynalink.support.AbstractRelinkableCallSite=var3462, $r4=var2244, $r5=var2476, $r6=var2330, $r8=var1588, $r7=var3985, $r9=var2029, $r10=var206, java.lang.Object=var2775, r11=var1820}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: jdk.nashorn.internal.runtime.linker.LinkerCallSite;	r12 := @parameter0: java.lang.Class;	$r1 = <jdk.nashorn.internal.lookup.Lookup: jdk.nashorn.internal.lookup.MethodHandleFunctionality MH>;	$r2 = <jdk.nashorn.internal.runtime.linker.LinkerCallSite: java.lang.invoke.MethodHandle INCREASE_MISS_COUNTER>;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke r3.<jdk.nashorn.internal.runtime.linker.LinkerCallSite: jdk.internal.dynalink.CallSiteDescriptor getDescriptor()>();	$r5 = interfaceinvoke $r4.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.String getName()>();	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" @ ");	$r7 = staticinvoke <jdk.nashorn.internal.runtime.linker.LinkerCallSite: java.lang.String getScriptLocation()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	r11 = interfaceinvoke $r1.<jdk.nashorn.internal.lookup.MethodHandleFunctionality: java.lang.invoke.MethodHandle bindTo(java.lang.invoke.MethodHandle,java.lang.Object)>($r2, $r10);	if r12 != class "Ljava/lang/Object;" goto $r13 = <jdk.nashorn.internal.lookup.Lookup: jdk.nashorn.internal.lookup.MethodHandleFunctionality MH>;	return r11
;block_num 2