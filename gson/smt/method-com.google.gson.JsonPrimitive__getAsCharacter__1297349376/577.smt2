(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var782 0)
(declare-sort var2043 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAsString/1431914449 (var782) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var2043-init () var2043)
(declare-fun <init>/-630064361 (var2043 String) void)
(declare-const null-var782 var782)
(declare-const var1206 var782) ; Statement: r0 := @this: com.google.gson.JsonPrimitive 
(assert (not (= var1206 null-var782)))
(assert true)
(define-const var3991 String (getAsString/1431914449 var1206)) ; Statement: r1 = virtualinvoke r0.<com.google.gson.JsonPrimitive: java.lang.String getAsString()>() 
(assert true)
(define-const var3155 Bool (isEmpty/-1285796103 var3991)) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $c0 = virtualinvoke r1.<java.lang.String: char charAt(int)>(0) 
(assert (not (= (ite var3155 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var33 var2043 var2043-init) ; Statement: $r2 = new java.lang.UnsupportedOperationException 
(assert true)
;(assert (<init>/-630064361 var33 "String value is empty")) ; Statement: specialinvoke $r2.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>("String value is empty") 

(declare-const var33!1 var2043)
(declare-const var3932 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {getAsString/1431914449=([com.google.gson.JsonPrimitive], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), var2043-init=([], java.lang.UnsupportedOperationException), <init>/-630064361=([java.lang.UnsupportedOperationException, java.lang.String], void)}
; {var782=com.google.gson.JsonPrimitive, var1206=r0, var3991=r1, var3155=$z0, var2043=java.lang.UnsupportedOperationException, var33=$r2, var3932="String value is empty"}
; {com.google.gson.JsonPrimitive=var782, r0=var1206, r1=var3991, $z0=var3155, java.lang.UnsupportedOperationException=var2043, $r2=var33, "String value is empty"=var3932}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.gson.JsonPrimitive;	r1 = virtualinvoke r0.<com.google.gson.JsonPrimitive: java.lang.String getAsString()>();	$z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $c0 = virtualinvoke r1.<java.lang.String: char charAt(int)>(0);	$r2 = new java.lang.UnsupportedOperationException;	specialinvoke $r2.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>("String value is empty");	throw $r2
;block_num 2