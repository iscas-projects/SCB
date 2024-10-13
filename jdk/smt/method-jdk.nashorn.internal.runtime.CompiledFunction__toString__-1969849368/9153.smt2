(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3171 0)
(declare-sort var3592 0)
(declare-sort var541 0)
(declare-sort var72 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getLinkLogicClass/1087430017 (var3171) ClassObject)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun invoker/1830175048 (var3171) var3592)
(declare-fun type/705534411 (var3592) var541)
(declare-fun append/-1031950772 (String var72) String)
(declare-fun cast-from-var541-to-var72 (var541) var72)
(declare-fun constructor/1830175048 (var3171) var3592)
(declare-fun cast-from-var3592-to-var72 (var3592) var72)
(declare-fun weight/1009741186 (var3171) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3171 var3171)
(declare-const null-ClassObject ClassObject)
(declare-const var1924 var3171) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.CompiledFunction 
(assert (not (= var1924 null-var3171)))
(define-const var143 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var143)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var143!1 String)
(assert (= var143!1 ""))
(assert true)
(define-const var1758 ClassObject (getLinkLogicClass/1087430017 var1924)) ; Statement: r2 = virtualinvoke r1.<jdk.nashorn.internal.runtime.CompiledFunction: java.lang.Class getLinkLogicClass()>() 
(assert true)
(define-const var12 String (append/672562846 var143!1 "[invokerType=")) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[invokerType=") 
(declare-const var143!2 String)
(assert (= var143!2 (str.++ var143!1 "[invokerType=")))
(define-const var573 var3592 (invoker/1830175048 var1924)) ; Statement: $r3 = r1.<jdk.nashorn.internal.runtime.CompiledFunction: java.lang.invoke.MethodHandle invoker> 
(assert true)
(define-const var2074 var541 (type/705534411 var573)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.invoke.MethodHandle: java.lang.invoke.MethodType type()>() 
(assert true)
(define-const var2394 String (append/-1031950772 var12 (cast-from-var541-to-var72 var2074))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var12!1 String)
(assert (str.prefixof var12 var12!1))
(assert true)
(define-const var2891 String (append/672562846 var2394 " ctor=")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ctor=") 
(declare-const var2394!1 String)
(assert (= var2394!1 (str.++ var2394 " ctor=")))
(define-const var3393 var3592 (constructor/1830175048 var1924)) ; Statement: $r7 = r1.<jdk.nashorn.internal.runtime.CompiledFunction: java.lang.invoke.MethodHandle constructor> 
(assert true)
(define-const var2604 String (append/-1031950772 var2891 (cast-from-var3592-to-var72 var3393))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7) 
(declare-const var2891!1 String)
(assert (str.prefixof var2891 var2891!1))
(assert true)
(define-const var2030 String (append/672562846 var2604 " weight=")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" weight=") 
(declare-const var2604!1 String)
(assert (= var2604!1 (str.++ var2604 " weight=")))
(assert true)
(define-const var694 Int (weight/1009741186 var1924)) ; Statement: $i0 = virtualinvoke r1.<jdk.nashorn.internal.runtime.CompiledFunction: int weight()>() 
(assert true)
(define-const var937 String (append/-1001720160 var2030 var694)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var2030!1 String)
(assert (str.prefixof var2030 var2030!1))
(assert true)
(define-const var3426 String (append/672562846 var937 " linkLogic=")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" linkLogic=") 
(declare-const var937!1 String)
(assert (= var937!1 (str.++ var937 " linkLogic=")))
 ; Statement: if r2 == null goto $r14 = "none" 
(assert (= var1758 null-ClassObject)) ; Cond: r2 == null 
(define-const var3142 String "none") ; Statement: $r14 = "none" 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var3426 var3142)) ; Statement: virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var3426!1 String)
(assert (= var3426!1 (str.++ var3426 var3142)))
(assert true)
(define-const var704 String (toString/-2075883882 var143!2)) ; Statement: $r13 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getLinkLogicClass/1087430017=([jdk.nashorn.internal.runtime.CompiledFunction], java.lang.Class), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), invoker/1830175048=([jdk.nashorn.internal.runtime.CompiledFunction], java.lang.invoke.MethodHandle), type/705534411=([java.lang.invoke.MethodHandle], java.lang.invoke.MethodType), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var541-to-var72=([java.lang.invoke.MethodType], java.lang.Object), constructor/1830175048=([jdk.nashorn.internal.runtime.CompiledFunction], java.lang.invoke.MethodHandle), cast-from-var3592-to-var72=([java.lang.invoke.MethodHandle], java.lang.Object), weight/1009741186=([jdk.nashorn.internal.runtime.CompiledFunction], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3171=jdk.nashorn.internal.runtime.CompiledFunction, var1924=r1, var143=$r0, var1758=r2, var12=$r5, var3592=java.lang.invoke.MethodHandle, var573=$r3, var541=java.lang.invoke.MethodType, var2074=$r4, var72=java.lang.Object, var2394=$r6, var2891=$r8, var3393=$r7, var2604=$r9, var2030=$r10, var694=$i0, var937=$r11, var3426=$r12, var3142=$r14, var704=$r13}
; {jdk.nashorn.internal.runtime.CompiledFunction=var3171, r1=var1924, $r0=var143, r2=var1758, $r5=var12, java.lang.invoke.MethodHandle=var3592, $r3=var573, java.lang.invoke.MethodType=var541, $r4=var2074, java.lang.Object=var72, $r6=var2394, $r8=var2891, $r7=var3393, $r9=var2604, $r10=var2030, $i0=var694, $r11=var937, $r12=var3426, $r14=var3142, $r13=var704}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.CompiledFunction;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	r2 = virtualinvoke r1.<jdk.nashorn.internal.runtime.CompiledFunction: java.lang.Class getLinkLogicClass()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[invokerType=");	$r3 = r1.<jdk.nashorn.internal.runtime.CompiledFunction: java.lang.invoke.MethodHandle invoker>;	$r4 = virtualinvoke $r3.<java.lang.invoke.MethodHandle: java.lang.invoke.MethodType type()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ctor=");	$r7 = r1.<jdk.nashorn.internal.runtime.CompiledFunction: java.lang.invoke.MethodHandle constructor>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" weight=");	$i0 = virtualinvoke r1.<jdk.nashorn.internal.runtime.CompiledFunction: int weight()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" linkLogic=");	if r2 == null goto $r14 = "none";	$r14 = "none";	virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r13 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 3