(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1984 0)
(declare-sort var344 0)
(declare-sort var3435 0)
(declare-sort var3571 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1984_get/1088891777 (var1984 var3435) var3435)
(declare-fun cast-from-Int-to-var3435 (Int) var3435)
(declare-fun cast-from-var3435-to-String (var3435) String)
(declare-const null-Int Int)
(declare-const var344-ISOLATION_VALUE_CONSTANT_NAME_MAP var1984)
(declare-const null-String String)
(declare-const var2072 Int) ; Statement: r0 := @parameter0: java.lang.Integer 
(assert (not (= var2072 null-Int)))
(define-const var2768 var1984 var344-ISOLATION_VALUE_CONSTANT_NAME_MAP) ; Statement: $r1 = <org.hibernate.engine.jdbc.connections.internal.ConnectionProviderInitiator: java.util.Map ISOLATION_VALUE_CONSTANT_NAME_MAP> 
(define-const var2916 var3435 (var1984_get/1088891777 var2768 (cast-from-Int-to-var3435 var2072))) ; Statement: $r2 = interfaceinvoke $r1.<java.util.Map: java.lang.Object get(java.lang.Object)>(r0) 
(define-const var504 String (cast-from-var3435-to-String var2916)) ; Statement: r3 = (java.lang.String) $r2 
 ; Statement: if r3 != null goto return r3 
(assert (not (= var504 null-String))) ; Cond: r3 != null 
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var1984_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-Int-to-var3435=([java.lang.Integer], java.lang.Object), cast-from-var3435-to-String=([java.lang.Object], java.lang.String)}
; {var2072=r0, var1984=java.util.Map, var344=org.hibernate.engine.jdbc.connections.internal.ConnectionProviderInitiator, var2768=$r1, var3435=java.lang.Object, var2916=$r2, var504=r3, var3571=null_type}
; {r0=var2072, java.util.Map=var1984, org.hibernate.engine.jdbc.connections.internal.ConnectionProviderInitiator=var344, $r1=var2768, java.lang.Object=var3435, $r2=var2916, r3=var504, null_type=var3571}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.Integer;	$r1 = <org.hibernate.engine.jdbc.connections.internal.ConnectionProviderInitiator: java.util.Map ISOLATION_VALUE_CONSTANT_NAME_MAP>;	$r2 = interfaceinvoke $r1.<java.util.Map: java.lang.Object get(java.lang.Object)>(r0);	r3 = (java.lang.String) $r2;	if r3 != null goto return r3;	return r3
;block_num 2