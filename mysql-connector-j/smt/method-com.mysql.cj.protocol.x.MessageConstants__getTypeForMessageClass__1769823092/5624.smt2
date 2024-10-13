(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var957 0)
(declare-sort var3994 0)
(declare-sort var3601 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var957_get/1088891777 (var957 var3601) var3601)
(declare-fun cast-from-ClassObject-to-var3601 (ClassObject) var3601)
(declare-fun cast-from-var3601-to-Int (var3601) Int)
(declare-fun intValue/-1815674922 (Int) Int)
(declare-const null-ClassObject ClassObject)
(declare-const var3994-MESSAGE_CLASS_TO_CLIENT_MESSAGE_TYPE var957)
(declare-const null-Int Int)
(declare-const var1703 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var1703 null-ClassObject)))
(define-const var357 var957 var3994-MESSAGE_CLASS_TO_CLIENT_MESSAGE_TYPE) ; Statement: $r1 = <com.mysql.cj.protocol.x.MessageConstants: java.util.Map MESSAGE_CLASS_TO_CLIENT_MESSAGE_TYPE> 
(define-const var592 var3601 (var957_get/1088891777 var357 (cast-from-ClassObject-to-var3601 var1703))) ; Statement: $r2 = interfaceinvoke $r1.<java.util.Map: java.lang.Object get(java.lang.Object)>(r0) 
(define-const var163 Int (cast-from-var3601-to-Int var592)) ; Statement: r3 = (java.lang.Integer) $r2 
 ; Statement: if r3 != null goto $i0 = virtualinvoke r3.<java.lang.Integer: int intValue()>() 
(assert (not (= var163 null-Int))) ; Cond: r3 != null 
(assert true)
(define-const var977 Int (intValue/-1815674922 var163)) ; Statement: $i0 = virtualinvoke r3.<java.lang.Integer: int intValue()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {var957_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-ClassObject-to-var3601=([java.lang.Class], java.lang.Object), cast-from-var3601-to-Int=([java.lang.Object], java.lang.Integer), intValue/-1815674922=([java.lang.Integer], int)}
; {var1703=r0, var957=java.util.Map, var3994=com.mysql.cj.protocol.x.MessageConstants, var357=$r1, var3601=java.lang.Object, var592=$r2, var163=r3, var977=$i0}
; {r0=var1703, java.util.Map=var957, com.mysql.cj.protocol.x.MessageConstants=var3994, $r1=var357, java.lang.Object=var3601, $r2=var592, r3=var163, $i0=var977}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.Class;	$r1 = <com.mysql.cj.protocol.x.MessageConstants: java.util.Map MESSAGE_CLASS_TO_CLIENT_MESSAGE_TYPE>;	$r2 = interfaceinvoke $r1.<java.util.Map: java.lang.Object get(java.lang.Object)>(r0);	r3 = (java.lang.Integer) $r2;	if r3 != null goto $i0 = virtualinvoke r3.<java.lang.Integer: int intValue()>();	$i0 = virtualinvoke r3.<java.lang.Integer: int intValue()>();	return $i0
;block_num 2