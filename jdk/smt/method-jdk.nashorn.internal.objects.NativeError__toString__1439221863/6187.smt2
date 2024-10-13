(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var907 0)
(declare-sort var3942 0)
(declare-sort var847 0)
(declare-sort var2809 0)
(declare-sort var3044 0)
(declare-sort var1457 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var847_checkObject/89169552 (var907) var3942)
(declare-fun get/1511403156 (var3942 var907) var907)
(declare-fun cast-from-String-to-var907 (String) var907)
(declare-fun cast-from-var2809-to-var907 (var2809) var907)
(declare-fun var1457_toString/-1831155339 (var907) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var907 var907)
(declare-const var3044-UNDEFINED var2809)
(declare-const var2392 var907) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var2392 null-var907)))
(define-const var1507 var3942 (var847_checkObject/89169552 var2392)) ; Statement: r1 = staticinvoke <jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject checkObject(java.lang.Object)>(r0) 
(assert true)
(define-const var2723 var907 (get/1511403156 var1507 (cast-from-String-to-var907 "name"))) ; Statement: r12 = virtualinvoke r1.<jdk.nashorn.internal.runtime.ScriptObject: java.lang.Object get(java.lang.Object)>("name") 
(define-const var2545 var2809 var3044-UNDEFINED) ; Statement: $r2 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED> 
 ; Statement: if r12 != $r2 goto r13 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>(r12) 
(assert (not (not (= var2723 (cast-from-var2809-to-var907 var2545))))) ; Negate: Cond: r12 != $r2  
(define-const var1485 String "Error") ; Statement: r13 = "Error" 
 ; Statement: goto [?= $r11 = virtualinvoke r1.<jdk.nashorn.internal.runtime.ScriptObject: java.lang.Object get(java.lang.Object)>("message")] 
(assert true) ; Non Conditional
(assert true)
(define-const var2600 var907 (get/1511403156 var1507 (cast-from-String-to-var907 "message"))) ; Statement: $r11 = virtualinvoke r1.<jdk.nashorn.internal.runtime.ScriptObject: java.lang.Object get(java.lang.Object)>("message") 
(define-const var2173 var2809 var3044-UNDEFINED) ; Statement: $r3 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED> 
 ; Statement: if $r11 != $r3 goto r14 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>($r11) 
(assert (not (= var2600 (cast-from-var2809-to-var907 var2173)))) ; Cond: $r11 != $r3 
(define-const var1441 String (var1457_toString/-1831155339 var2600)) ; Statement: r14 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>($r11) 
(assert true) ; Non Conditional
(define-const var337 String (cast-from-String-to-String var1485)) ; Statement: $r4 = (java.lang.String) r13 
(assert true)
(define-const var2277 Bool (isEmpty/-1285796103 var337)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r5 = (java.lang.String) r14 
(assert (not (= (ite var2277 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var847_checkObject/89169552=([java.lang.Object], jdk.nashorn.internal.runtime.ScriptObject), get/1511403156=([jdk.nashorn.internal.runtime.ScriptObject, java.lang.Object], java.lang.Object), cast-from-String-to-var907=([java.lang.String], java.lang.Object), cast-from-var2809-to-var907=([jdk.nashorn.internal.runtime.Undefined], java.lang.Object), var1457_toString/-1831155339=([java.lang.Object], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var907=java.lang.Object, var2392=r0, var3942=jdk.nashorn.internal.runtime.ScriptObject, var847=jdk.nashorn.internal.objects.Global, var1507=r1, var2723=r12, var2809=jdk.nashorn.internal.runtime.Undefined, var3044=jdk.nashorn.internal.runtime.ScriptRuntime, var2545=$r2, var1485=r13, var2600=$r11, var2173=$r3, var1457=jdk.nashorn.internal.runtime.JSType, var1441=r14, var337=$r4, var2277=$z0}
; {java.lang.Object=var907, r0=var2392, jdk.nashorn.internal.runtime.ScriptObject=var3942, jdk.nashorn.internal.objects.Global=var847, r1=var1507, r12=var2723, jdk.nashorn.internal.runtime.Undefined=var2809, jdk.nashorn.internal.runtime.ScriptRuntime=var3044, $r2=var2545, r13=var1485, $r11=var2600, $r3=var2173, jdk.nashorn.internal.runtime.JSType=var1457, r14=var1441, $r4=var337, $z0=var2277}
;seq <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>;	<java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @parameter0: java.lang.Object;	r1 = staticinvoke <jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject checkObject(java.lang.Object)>(r0);	r12 = virtualinvoke r1.<jdk.nashorn.internal.runtime.ScriptObject: java.lang.Object get(java.lang.Object)>("name");	$r2 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED>;	if r12 != $r2 goto r13 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>(r12);	r13 = "Error";	goto [?= $r11 = virtualinvoke r1.<jdk.nashorn.internal.runtime.ScriptObject: java.lang.Object get(java.lang.Object)>("message")];	$r11 = virtualinvoke r1.<jdk.nashorn.internal.runtime.ScriptObject: java.lang.Object get(java.lang.Object)>("message");	$r3 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED>;	if $r11 != $r3 goto r14 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>($r11);	r14 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>($r11);	$r4 = (java.lang.String) r13;	$z0 = virtualinvoke $r4.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r5 = (java.lang.String) r14;	return r14
;block_num 6