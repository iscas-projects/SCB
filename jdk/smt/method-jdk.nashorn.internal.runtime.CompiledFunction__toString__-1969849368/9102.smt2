(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var949 0)
(declare-sort var1289 0)
(declare-sort var2293 0)
(declare-sort var2060 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getLinkLogicClass/1087430017 (var949) ClassObject)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun invoker/1830175048 (var949) var1289)
(declare-fun type/705534411 (var1289) var2293)
(declare-fun append/-1031950772 (String var2060) String)
(declare-fun cast-from-var2293-to-var2060 (var2293) var2060)
(declare-fun constructor/1830175048 (var949) var1289)
(declare-fun cast-from-var1289-to-var2060 (var1289) var2060)
(declare-fun weight/1009741186 (var949) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var949 var949)
(declare-const null-ClassObject ClassObject)
(declare-const var3213 var949) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.CompiledFunction 
(assert (not (= var3213 null-var949)))
(define-const var1094 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1094)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1094!1 String)
(assert (= var1094!1 ""))
(assert true)
(define-const var3453 ClassObject (getLinkLogicClass/1087430017 var3213)) ; Statement: r2 = virtualinvoke r1.<jdk.nashorn.internal.runtime.CompiledFunction: java.lang.Class getLinkLogicClass()>() 
(assert true)
(define-const var2173 String (append/672562846 var1094!1 "[invokerType=")) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[invokerType=") 
(declare-const var1094!2 String)
(assert (= var1094!2 (str.++ var1094!1 "[invokerType=")))
(define-const var1066 var1289 (invoker/1830175048 var3213)) ; Statement: $r3 = r1.<jdk.nashorn.internal.runtime.CompiledFunction: java.lang.invoke.MethodHandle invoker> 
(assert true)
(define-const var1578 var2293 (type/705534411 var1066)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.invoke.MethodHandle: java.lang.invoke.MethodType type()>() 
(assert true)
(define-const var1920 String (append/-1031950772 var2173 (cast-from-var2293-to-var2060 var1578))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var2173!1 String)
(assert (str.prefixof var2173 var2173!1))
(assert true)
(define-const var1302 String (append/672562846 var1920 " ctor=")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ctor=") 
(declare-const var1920!1 String)
(assert (= var1920!1 (str.++ var1920 " ctor=")))
(define-const var3906 var1289 (constructor/1830175048 var3213)) ; Statement: $r7 = r1.<jdk.nashorn.internal.runtime.CompiledFunction: java.lang.invoke.MethodHandle constructor> 
(assert true)
(define-const var2157 String (append/-1031950772 var1302 (cast-from-var1289-to-var2060 var3906))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7) 
(declare-const var1302!1 String)
(assert (str.prefixof var1302 var1302!1))
(assert true)
(define-const var3569 String (append/672562846 var2157 " weight=")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" weight=") 
(declare-const var2157!1 String)
(assert (= var2157!1 (str.++ var2157 " weight=")))
(assert true)
(define-const var3561 Int (weight/1009741186 var3213)) ; Statement: $i0 = virtualinvoke r1.<jdk.nashorn.internal.runtime.CompiledFunction: int weight()>() 
(assert true)
(define-const var1035 String (append/-1001720160 var3569 var3561)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var3569!1 String)
(assert (str.prefixof var3569 var3569!1))
(assert true)
(define-const var403 String (append/672562846 var1035 " linkLogic=")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" linkLogic=") 
(declare-const var1035!1 String)
(assert (= var1035!1 (str.++ var1035 " linkLogic=")))
 ; Statement: if r2 == null goto $r14 = "none" 
(assert (not (= var3453 null-ClassObject))) ; Negate: Cond: r2 == null  
(assert true)
(define-const var1264 String (getSimpleName/-390194377 var3453)) ; Statement: $r14 = virtualinvoke r2.<java.lang.Class: java.lang.String getSimpleName()>() 
 ; Statement: goto [?= virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var403 var1264)) ; Statement: virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var403!1 String)
(assert (= var403!1 (str.++ var403 var1264)))
(assert true)
(define-const var1671 String (toString/-2075883882 var1094!2)) ; Statement: $r13 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getLinkLogicClass/1087430017=([jdk.nashorn.internal.runtime.CompiledFunction], java.lang.Class), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), invoker/1830175048=([jdk.nashorn.internal.runtime.CompiledFunction], java.lang.invoke.MethodHandle), type/705534411=([java.lang.invoke.MethodHandle], java.lang.invoke.MethodType), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2293-to-var2060=([java.lang.invoke.MethodType], java.lang.Object), constructor/1830175048=([jdk.nashorn.internal.runtime.CompiledFunction], java.lang.invoke.MethodHandle), cast-from-var1289-to-var2060=([java.lang.invoke.MethodHandle], java.lang.Object), weight/1009741186=([jdk.nashorn.internal.runtime.CompiledFunction], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getSimpleName/-390194377=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var949=jdk.nashorn.internal.runtime.CompiledFunction, var3213=r1, var1094=$r0, var3453=r2, var2173=$r5, var1289=java.lang.invoke.MethodHandle, var1066=$r3, var2293=java.lang.invoke.MethodType, var1578=$r4, var2060=java.lang.Object, var1920=$r6, var1302=$r8, var3906=$r7, var2157=$r9, var3569=$r10, var3561=$i0, var1035=$r11, var403=$r12, var1264=$r14, var1671=$r13}
; {jdk.nashorn.internal.runtime.CompiledFunction=var949, r1=var3213, $r0=var1094, r2=var3453, $r5=var2173, java.lang.invoke.MethodHandle=var1289, $r3=var1066, java.lang.invoke.MethodType=var2293, $r4=var1578, java.lang.Object=var2060, $r6=var1920, $r8=var1302, $r7=var3906, $r9=var2157, $r10=var3569, $i0=var3561, $r11=var1035, $r12=var403, $r14=var1264, $r13=var1671}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.CompiledFunction;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	r2 = virtualinvoke r1.<jdk.nashorn.internal.runtime.CompiledFunction: java.lang.Class getLinkLogicClass()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[invokerType=");	$r3 = r1.<jdk.nashorn.internal.runtime.CompiledFunction: java.lang.invoke.MethodHandle invoker>;	$r4 = virtualinvoke $r3.<java.lang.invoke.MethodHandle: java.lang.invoke.MethodType type()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ctor=");	$r7 = r1.<jdk.nashorn.internal.runtime.CompiledFunction: java.lang.invoke.MethodHandle constructor>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" weight=");	$i0 = virtualinvoke r1.<jdk.nashorn.internal.runtime.CompiledFunction: int weight()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" linkLogic=");	if r2 == null goto $r14 = "none";	$r14 = virtualinvoke r2.<java.lang.Class: java.lang.String getSimpleName()>();	goto [?= virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14)];	virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r13 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 3