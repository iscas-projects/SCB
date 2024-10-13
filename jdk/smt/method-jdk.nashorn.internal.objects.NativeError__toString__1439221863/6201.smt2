(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3455 0)
(declare-sort var20 0)
(declare-sort var3390 0)
(declare-sort var2408 0)
(declare-sort var169 0)
(declare-sort var3513 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3390_checkObject/89169552 (var3455) var20)
(declare-fun get/1511403156 (var20 var3455) var3455)
(declare-fun cast-from-String-to-var3455 (String) var3455)
(declare-fun cast-from-var2408-to-var3455 (var2408) var3455)
(declare-fun var3513_toString/-1831155339 (var3455) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var3455 var3455)
(declare-const var169-UNDEFINED var2408)
(declare-const var1959 var3455) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var1959 null-var3455)))
(define-const var863 var20 (var3390_checkObject/89169552 var1959)) ; Statement: r1 = staticinvoke <jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject checkObject(java.lang.Object)>(r0) 
(assert true)
(define-const var2571 var3455 (get/1511403156 var863 (cast-from-String-to-var3455 "name"))) ; Statement: r12 = virtualinvoke r1.<jdk.nashorn.internal.runtime.ScriptObject: java.lang.Object get(java.lang.Object)>("name") 
(define-const var1749 var2408 var169-UNDEFINED) ; Statement: $r2 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED> 
 ; Statement: if r12 != $r2 goto r13 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>(r12) 
(assert (not (= var2571 (cast-from-var2408-to-var3455 var1749)))) ; Cond: r12 != $r2 
(define-const var1359 String (var3513_toString/-1831155339 var2571)) ; Statement: r13 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>(r12) 
(assert true) ; Non Conditional
(assert true)
(define-const var2146 var3455 (get/1511403156 var863 (cast-from-String-to-var3455 "message"))) ; Statement: $r11 = virtualinvoke r1.<jdk.nashorn.internal.runtime.ScriptObject: java.lang.Object get(java.lang.Object)>("message") 
(define-const var878 var2408 var169-UNDEFINED) ; Statement: $r3 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED> 
 ; Statement: if $r11 != $r3 goto r14 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>($r11) 
(assert (not (= var2146 (cast-from-var2408-to-var3455 var878)))) ; Cond: $r11 != $r3 
(define-const var3532 String (var3513_toString/-1831155339 var2146)) ; Statement: r14 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>($r11) 
(assert true) ; Non Conditional
(define-const var2445 String (cast-from-String-to-String var1359)) ; Statement: $r4 = (java.lang.String) r13 
(assert true)
(define-const var1184 Bool (isEmpty/-1285796103 var2445)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r5 = (java.lang.String) r14 
(assert (not (= (ite var1184 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var3390_checkObject/89169552=([java.lang.Object], jdk.nashorn.internal.runtime.ScriptObject), get/1511403156=([jdk.nashorn.internal.runtime.ScriptObject, java.lang.Object], java.lang.Object), cast-from-String-to-var3455=([java.lang.String], java.lang.Object), cast-from-var2408-to-var3455=([jdk.nashorn.internal.runtime.Undefined], java.lang.Object), var3513_toString/-1831155339=([java.lang.Object], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var3455=java.lang.Object, var1959=r0, var20=jdk.nashorn.internal.runtime.ScriptObject, var3390=jdk.nashorn.internal.objects.Global, var863=r1, var2571=r12, var2408=jdk.nashorn.internal.runtime.Undefined, var169=jdk.nashorn.internal.runtime.ScriptRuntime, var1749=$r2, var3513=jdk.nashorn.internal.runtime.JSType, var1359=r13, var2146=$r11, var878=$r3, var3532=r14, var2445=$r4, var1184=$z0}
; {java.lang.Object=var3455, r0=var1959, jdk.nashorn.internal.runtime.ScriptObject=var20, jdk.nashorn.internal.objects.Global=var3390, r1=var863, r12=var2571, jdk.nashorn.internal.runtime.Undefined=var2408, jdk.nashorn.internal.runtime.ScriptRuntime=var169, $r2=var1749, jdk.nashorn.internal.runtime.JSType=var3513, r13=var1359, $r11=var2146, $r3=var878, r14=var3532, $r4=var2445, $z0=var1184}
;seq <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>;	<jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>;	<java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @parameter0: java.lang.Object;	r1 = staticinvoke <jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject checkObject(java.lang.Object)>(r0);	r12 = virtualinvoke r1.<jdk.nashorn.internal.runtime.ScriptObject: java.lang.Object get(java.lang.Object)>("name");	$r2 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED>;	if r12 != $r2 goto r13 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>(r12);	r13 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>(r12);	$r11 = virtualinvoke r1.<jdk.nashorn.internal.runtime.ScriptObject: java.lang.Object get(java.lang.Object)>("message");	$r3 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED>;	if $r11 != $r3 goto r14 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>($r11);	r14 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>($r11);	$r4 = (java.lang.String) r13;	$z0 = virtualinvoke $r4.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r5 = (java.lang.String) r14;	return r14
;block_num 6