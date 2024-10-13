(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var184 0)
(declare-sort var1952 0)
(declare-sort var169 0)
(declare-sort var2275 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getModifiers/698981592 (ClassObject) Int)
(declare-fun var1952_isInterface/-1826253995 (Int) Bool)
(declare-fun var169-init () var169)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1031950772 (String var2275) String)
(declare-fun cast-from-ClassObject-to-var2275 (ClassObject) var2275)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var169 var2275) void)
(declare-fun cast-from-String-to-var2275 (String) var2275)
(declare-const null-var184 var184)
(declare-const null-ClassObject ClassObject)
(declare-const var184-$assertionsDisabled Bool)
(declare-const var3823 var184) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.linker.JavaAdapterBytecodeGenerator 
(assert (not (= var3823 null-var184)))
(declare-const var2245 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var2245 null-ClassObject)))
(define-const var2464 Bool var184-$assertionsDisabled) ; Statement: $z0 = <jdk.nashorn.internal.runtime.linker.JavaAdapterBytecodeGenerator: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $r2 = r1.<jdk.nashorn.internal.runtime.linker.JavaAdapterBytecodeGenerator: java.lang.Class superClass> 
(assert (not (not (= (ite var2464 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var1298 Int (getModifiers/698981592 var2245)) ; Statement: $i0 = virtualinvoke r0.<java.lang.Class: int getModifiers()>() 
(define-const var1123 Bool (var1952_isInterface/-1826253995 var1298)) ; Statement: $z4 = staticinvoke <java.lang.reflect.Modifier: boolean isInterface(int)>($i0) 
 ; Statement: if $z4 != 0 goto $r2 = r1.<jdk.nashorn.internal.runtime.linker.JavaAdapterBytecodeGenerator: java.lang.Class superClass> 
(assert (not (not (= (ite var1123 1 0) 0)))) ; Negate: Cond: $z4 != 0  
(define-const var684 var169 var169-init) ; Statement: $r13 = new java.lang.AssertionError 
(define-const var205 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var205)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var205!1 String)
(assert (= var205!1 ""))
(assert true)
(define-const var2562 String (append/-1031950772 var205!1 (cast-from-ClassObject-to-var2275 var2245))) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var205!2 String)
(assert (str.prefixof var205!1 var205!2))
(assert true)
(define-const var2800 String (append/672562846 var2562 " is not an interface")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not an interface") 
(declare-const var2562!1 String)
(assert (= var2562!1 (str.++ var2562 " is not an interface")))
(assert true)
(define-const var1554 String (toString/-2075883882 var2800)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var684 (cast-from-String-to-var2275 var1554))) ; Statement: specialinvoke $r13.<java.lang.AssertionError: void <init>(java.lang.Object)>($r17) 

(declare-const var684!1 var169)
(declare-const var1554!1 String)
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {getModifiers/698981592=([java.lang.Class], int), var1952_isInterface/-1826253995=([int], boolean), var169-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var2275=([java.lang.Class], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var2275=([java.lang.String], java.lang.Object)}
; {var184=jdk.nashorn.internal.runtime.linker.JavaAdapterBytecodeGenerator, var3823=r1, var2245=r0, var2464=$z0, var1298=$i0, var1952=java.lang.reflect.Modifier, var1123=$z4, var169=java.lang.AssertionError, var684=$r13, var205=$r14, var2275=java.lang.Object, var2562=$r15, var2800=$r16, var1554=$r17}
; {jdk.nashorn.internal.runtime.linker.JavaAdapterBytecodeGenerator=var184, r1=var3823, r0=var2245, $z0=var2464, $i0=var1298, java.lang.reflect.Modifier=var1952, $z4=var1123, java.lang.AssertionError=var169, $r13=var684, $r14=var205, java.lang.Object=var2275, $r15=var2562, $r16=var2800, $r17=var1554}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.linker.JavaAdapterBytecodeGenerator;	r0 := @parameter0: java.lang.Class;	$z0 = <jdk.nashorn.internal.runtime.linker.JavaAdapterBytecodeGenerator: boolean $assertionsDisabled>;	if $z0 != 0 goto $r2 = r1.<jdk.nashorn.internal.runtime.linker.JavaAdapterBytecodeGenerator: java.lang.Class superClass>;	$i0 = virtualinvoke r0.<java.lang.Class: int getModifiers()>();	$z4 = staticinvoke <java.lang.reflect.Modifier: boolean isInterface(int)>($i0);	if $z4 != 0 goto $r2 = r1.<jdk.nashorn.internal.runtime.linker.JavaAdapterBytecodeGenerator: java.lang.Class superClass>;	$r13 = new java.lang.AssertionError;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not an interface");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<java.lang.AssertionError: void <init>(java.lang.Object)>($r17);	throw $r13
;block_num 3