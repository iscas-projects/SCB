(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var19 0)
(declare-sort var929 0)
(declare-sort var2469 0)
(declare-sort var3279 0)
(declare-sort var3558 0)
(declare-sort var1134 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2469_checkObject/89169552 (var19) var929)
(declare-fun get/1511403156 (var929 var19) var19)
(declare-fun cast-from-String-to-var19 (String) var19)
(declare-fun cast-from-var3279-to-var19 (var3279) var19)
(declare-fun var1134_toString/-1831155339 (var19) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var19 var19)
(declare-const var3558-UNDEFINED var3279)
(declare-const var3613 var19) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var3613 null-var19)))
(define-const var1427 var929 (var2469_checkObject/89169552 var3613)) ; Statement: r1 = staticinvoke <jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject checkObject(java.lang.Object)>(r0) 
(assert true)
(define-const var3040 var19 (get/1511403156 var1427 (cast-from-String-to-var19 "name"))) ; Statement: r12 = virtualinvoke r1.<jdk.nashorn.internal.runtime.ScriptObject: java.lang.Object get(java.lang.Object)>("name") 
(define-const var2085 var3279 var3558-UNDEFINED) ; Statement: $r2 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED> 
 ; Statement: if r12 != $r2 goto r13 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>(r12) 
(assert (not (= var3040 (cast-from-var3279-to-var19 var2085)))) ; Cond: r12 != $r2 
(define-const var3136 String (var1134_toString/-1831155339 var3040)) ; Statement: r13 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>(r12) 
(assert true) ; Non Conditional
(assert true)
(define-const var3340 var19 (get/1511403156 var1427 (cast-from-String-to-var19 "message"))) ; Statement: $r11 = virtualinvoke r1.<jdk.nashorn.internal.runtime.ScriptObject: java.lang.Object get(java.lang.Object)>("message") 
(define-const var3938 var3279 var3558-UNDEFINED) ; Statement: $r3 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED> 
 ; Statement: if $r11 != $r3 goto r14 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>($r11) 
(assert (not (not (= var3340 (cast-from-var3279-to-var19 var3938))))) ; Negate: Cond: $r11 != $r3  
(define-const var1082 String "") ; Statement: r14 = "" 
 ; Statement: goto [?= $r4 = (java.lang.String) r13] 
(assert true) ; Non Conditional
(define-const var1783 String (cast-from-String-to-String var3136)) ; Statement: $r4 = (java.lang.String) r13 
(assert true)
(define-const var3058 Bool (isEmpty/-1285796103 var1783)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r5 = (java.lang.String) r14 
(assert (not (= (ite var3058 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var2469_checkObject/89169552=([java.lang.Object], jdk.nashorn.internal.runtime.ScriptObject), get/1511403156=([jdk.nashorn.internal.runtime.ScriptObject, java.lang.Object], java.lang.Object), cast-from-String-to-var19=([java.lang.String], java.lang.Object), cast-from-var3279-to-var19=([jdk.nashorn.internal.runtime.Undefined], java.lang.Object), var1134_toString/-1831155339=([java.lang.Object], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var19=java.lang.Object, var3613=r0, var929=jdk.nashorn.internal.runtime.ScriptObject, var2469=jdk.nashorn.internal.objects.Global, var1427=r1, var3040=r12, var3279=jdk.nashorn.internal.runtime.Undefined, var3558=jdk.nashorn.internal.runtime.ScriptRuntime, var2085=$r2, var1134=jdk.nashorn.internal.runtime.JSType, var3136=r13, var3340=$r11, var3938=$r3, var1082=r14, var1783=$r4, var3058=$z0}
; {java.lang.Object=var19, r0=var3613, jdk.nashorn.internal.runtime.ScriptObject=var929, jdk.nashorn.internal.objects.Global=var2469, r1=var1427, r12=var3040, jdk.nashorn.internal.runtime.Undefined=var3279, jdk.nashorn.internal.runtime.ScriptRuntime=var3558, $r2=var2085, jdk.nashorn.internal.runtime.JSType=var1134, r13=var3136, $r11=var3340, $r3=var3938, r14=var1082, $r4=var1783, $z0=var3058}
;seq <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>;	<java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @parameter0: java.lang.Object;	r1 = staticinvoke <jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.ScriptObject checkObject(java.lang.Object)>(r0);	r12 = virtualinvoke r1.<jdk.nashorn.internal.runtime.ScriptObject: java.lang.Object get(java.lang.Object)>("name");	$r2 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED>;	if r12 != $r2 goto r13 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>(r12);	r13 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>(r12);	$r11 = virtualinvoke r1.<jdk.nashorn.internal.runtime.ScriptObject: java.lang.Object get(java.lang.Object)>("message");	$r3 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED>;	if $r11 != $r3 goto r14 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>($r11);	r14 = "";	goto [?= $r4 = (java.lang.String) r13];	$r4 = (java.lang.String) r13;	$z0 = virtualinvoke $r4.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r5 = (java.lang.String) r14;	return r14
;block_num 6