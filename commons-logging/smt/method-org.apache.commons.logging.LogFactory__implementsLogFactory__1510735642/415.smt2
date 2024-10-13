(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1553 0)
(declare-sort var1531 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1531_logDiagnostic/1268238408 (String) void)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1553 var1553)
(declare-const var3793 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var3793 null-ClassObject)))
(define-const var2923 Bool (ite (= 1 0) true false)) ; Statement: z0 = 0 
 ; Statement: if r0 == null goto return z0 
(assert (not (= var3793 null-ClassObject))) ; Negate: Cond: r0 == null  
(declare-const var1946 var1553) ; Statement: $r13 := @caughtexception 
(assert (not (= var1946 null-var1553)))
;(assert (var1531_logDiagnostic/1268238408 "[CUSTOM LOG FACTORY] LogFactory class cannot be loaded by the class loader which loaded the custom LogFactory implementation. Is the custom factory in the right class loader?")) ; Statement: staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>("[CUSTOM LOG FACTORY] LogFactory class cannot be loaded by the class loader which loaded the custom LogFactory implementation. Is the custom factory in the right class loader?") 

(declare-const var2208 String)
(assert true) ; Non Conditional
 ; Statement: return z0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1531_logDiagnostic/1268238408=([java.lang.String], void)}
; {var3793=r0, var2923=z0, var1553=java.lang.ClassNotFoundException, var1946=$r13, var1531=org.apache.commons.logging.LogFactory, var2208="[CUSTOM LOG FACTORY] LogFactory class cannot be loaded by the class loader which loaded the custom LogFactory implementation. Is the custom factory in the right class loader?"}
; {r0=var3793, z0=var2923, java.lang.ClassNotFoundException=var1553, $r13=var1946, org.apache.commons.logging.LogFactory=var1531, "[CUSTOM LOG FACTORY] LogFactory class cannot be loaded by the class loader which loaded the custom LogFactory implementation. Is the custom factory in the right class loader?"=var2208}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.Class;	z0 = 0;	if r0 == null goto return z0;	$r13 := @caughtexception;	staticinvoke <org.apache.commons.logging.LogFactory: void logDiagnostic(java.lang.String)>("[CUSTOM LOG FACTORY] LogFactory class cannot be loaded by the class loader which loaded the custom LogFactory implementation. Is the custom factory in the right class loader?");	return z0
;block_num 3