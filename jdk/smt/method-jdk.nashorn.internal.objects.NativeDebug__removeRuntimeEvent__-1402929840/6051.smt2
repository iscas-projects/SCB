(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2760 0)
(declare-sort var3174 0)
(declare-sort var3940 0)
(declare-sort var3440 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3940_getEventQueue/-344971887 (var2760) var3174)
(declare-fun var3940_getEvent/841420639 (var2760) var3440)
(declare-fun remove/1218620827 (var3174 var2760) Bool)
(declare-fun cast-from-var3440-to-var2760 (var3440) var2760)
(declare-const null-var2760 var2760)
(declare-const var907 var2760) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var907 null-var2760)))
(declare-const var2435 var2760) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var2435 null-var2760)))
(define-const var3969 var3174 (var3940_getEventQueue/-344971887 var907)) ; Statement: r1 = staticinvoke <jdk.nashorn.internal.objects.NativeDebug: java.util.LinkedList getEventQueue(java.lang.Object)>(r0) 
(define-const var88 var3440 (var3940_getEvent/841420639 var2435)) ; Statement: r3 = staticinvoke <jdk.nashorn.internal.objects.NativeDebug: jdk.nashorn.internal.runtime.events.RuntimeEvent getEvent(java.lang.Object)>(r2) 
(assert true)
(define-const var1925 Bool (remove/1218620827 var3969 (cast-from-var3440-to-var2760 var88))) ; Statement: $z0 = virtualinvoke r1.<java.util.LinkedList: boolean remove(java.lang.Object)>(r3) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var1925 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3940_getEventQueue/-344971887=([java.lang.Object], java.util.LinkedList), var3940_getEvent/841420639=([java.lang.Object], jdk.nashorn.internal.runtime.events.RuntimeEvent), remove/1218620827=([java.util.LinkedList, java.lang.Object], boolean), cast-from-var3440-to-var2760=([jdk.nashorn.internal.runtime.events.RuntimeEvent], java.lang.Object)}
; {var2760=java.lang.Object, var907=r0, var2435=r2, var3174=java.util.LinkedList, var3940=jdk.nashorn.internal.objects.NativeDebug, var3969=r1, var3440=jdk.nashorn.internal.runtime.events.RuntimeEvent, var88=r3, var1925=$z0}
; {java.lang.Object=var2760, r0=var907, r2=var2435, java.util.LinkedList=var3174, jdk.nashorn.internal.objects.NativeDebug=var3940, r1=var3969, jdk.nashorn.internal.runtime.events.RuntimeEvent=var3440, r3=var88, $z0=var1925}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.Object;	r2 := @parameter1: java.lang.Object;	r1 = staticinvoke <jdk.nashorn.internal.objects.NativeDebug: java.util.LinkedList getEventQueue(java.lang.Object)>(r0);	r3 = staticinvoke <jdk.nashorn.internal.objects.NativeDebug: jdk.nashorn.internal.runtime.events.RuntimeEvent getEvent(java.lang.Object)>(r2);	$z0 = virtualinvoke r1.<java.util.LinkedList: boolean remove(java.lang.Object)>(r3);	if $z0 != 0 goto return;	return
;block_num 2