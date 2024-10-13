(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3273 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3273_getRawType/305663496 (var3273) ClassObject)
(define-fun cast-from-ClassObject-to-ClassObject ((arg ClassObject)) ClassObject arg)
(declare-const null-var3273 var3273)
(declare-const var3181 var3273) ; Statement: r0 := @parameter0: java.lang.reflect.ParameterizedType 
(assert (not (= var3181 null-var3273)))
(define-const var974 ClassObject (var3273_getRawType/305663496 var3181)) ; Statement: r1 = interfaceinvoke r0.<java.lang.reflect.ParameterizedType: java.lang.reflect.Type getRawType()>() 
(define-const var1511 Bool true) ; Statement: $z0 = r1 instanceof java.lang.Class 
 ; Statement: if $z0 != 0 goto $r2 = (java.lang.Class) r1 
(assert (not (= (ite var1511 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1713 ClassObject (cast-from-ClassObject-to-ClassObject var974)) ; Statement: $r2 = (java.lang.Class) r1 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var3273_getRawType/305663496=([java.lang.reflect.ParameterizedType], java.lang.reflect.Type), cast-from-ClassObject-to-ClassObject=([java.lang.reflect.Type], java.lang.Class)}
; {var3273=java.lang.reflect.ParameterizedType, var3181=r0, var974=r1, var1511=$z0, var1713=$r2}
; {java.lang.reflect.ParameterizedType=var3273, r0=var3181, r1=var974, $z0=var1511, $r2=var1713}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.reflect.ParameterizedType;	r1 = interfaceinvoke r0.<java.lang.reflect.ParameterizedType: java.lang.reflect.Type getRawType()>();	$z0 = r1 instanceof java.lang.Class;	if $z0 != 0 goto $r2 = (java.lang.Class) r1;	$r2 = (java.lang.Class) r1;	return $r2
;block_num 2