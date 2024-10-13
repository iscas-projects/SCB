(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1479 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAsString/1431914449 (var1479) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-const null-var1479 var1479)
(declare-const var2380 var1479) ; Statement: r0 := @this: com.google.gson.JsonPrimitive 
(assert (not (= var2380 null-var1479)))
(assert true)
(define-const var263 String (getAsString/1431914449 var2380)) ; Statement: r1 = virtualinvoke r0.<com.google.gson.JsonPrimitive: java.lang.String getAsString()>() 
(assert true)
(define-const var2783 Bool (isEmpty/-1285796103 var263)) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $c0 = virtualinvoke r1.<java.lang.String: char charAt(int)>(0) 
(assert (= (ite var2783 1 0) 0)) ; Cond: $z0 == 0 
(assert (and true (and (> (str.len var263) 0) (<= 0 0))))
(define-const var2551 Int (charAt/698050440 var263 0)) ; Statement: $c0 = virtualinvoke r1.<java.lang.String: char charAt(int)>(0) 
 ; Statement: return $c0 
(check-sat)
(get-model)
(get-unsat-core)
; {getAsString/1431914449=([com.google.gson.JsonPrimitive], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), charAt/698050440=([java.lang.String, int], char)}
; {var1479=com.google.gson.JsonPrimitive, var2380=r0, var263=r1, var2783=$z0, var2551=$c0}
; {com.google.gson.JsonPrimitive=var1479, r0=var2380, r1=var263, $z0=var2783, $c0=var2551}
;seq <java.lang.String: boolean isEmpty()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: boolean isEmpty()>": 1,"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: com.google.gson.JsonPrimitive;	r1 = virtualinvoke r0.<com.google.gson.JsonPrimitive: java.lang.String getAsString()>();	$z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $c0 = virtualinvoke r1.<java.lang.String: char charAt(int)>(0);	$c0 = virtualinvoke r1.<java.lang.String: char charAt(int)>(0);	return $c0
;block_num 2