(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3004 0)
(declare-sort var3181 0)
(declare-sort var3282 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun var3004_get/1088891777 (var3004 var3282) var3282)
(declare-fun cast-from-Int-to-var3282 (Int) var3282)
(declare-fun cast-from-var3282-to-ClassObject (var3282) ClassObject)
(declare-const null-Int Int)
(declare-const var3181-MESSAGE_TYPE_TO_CLASS var3004)
(declare-const null-ClassObject ClassObject)
(declare-const var1133 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1133 null-Int)))
(define-const var2892 var3004 var3181-MESSAGE_TYPE_TO_CLASS) ; Statement: $r0 = <com.mysql.cj.protocol.x.MessageConstants: java.util.Map MESSAGE_TYPE_TO_CLASS> 
(define-const var237 Int (Int_valueOf/-1371140006 var1133)) ; Statement: $r1 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(define-const var467 var3282 (var3004_get/1088891777 var2892 (cast-from-Int-to-var3282 var237))) ; Statement: $r2 = interfaceinvoke $r0.<java.util.Map: java.lang.Object get(java.lang.Object)>($r1) 
(define-const var928 ClassObject (cast-from-var3282-to-ClassObject var467)) ; Statement: r3 = (java.lang.Class) $r2 
 ; Statement: if r3 != null goto return r3 
(assert (not (= var928 null-ClassObject))) ; Cond: r3 != null 
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {Int_valueOf/-1371140006=([int], java.lang.Integer), var3004_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-Int-to-var3282=([java.lang.Integer], java.lang.Object), cast-from-var3282-to-ClassObject=([java.lang.Object], java.lang.Class)}
; {var1133=i0, var3004=java.util.Map, var3181=com.mysql.cj.protocol.x.MessageConstants, var2892=$r0, var237=$r1, var3282=java.lang.Object, var467=$r2, var928=r3}
; {i0=var1133, java.util.Map=var3004, com.mysql.cj.protocol.x.MessageConstants=var3181, $r0=var2892, $r1=var237, java.lang.Object=var3282, $r2=var467, r3=var928}
;seq 
;cnt {}
;stmts i0 := @parameter0: int;	$r0 = <com.mysql.cj.protocol.x.MessageConstants: java.util.Map MESSAGE_TYPE_TO_CLASS>;	$r1 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r2 = interfaceinvoke $r0.<java.util.Map: java.lang.Object get(java.lang.Object)>($r1);	r3 = (java.lang.Class) $r2;	if r3 != null goto return r3;	return r3
;block_num 2