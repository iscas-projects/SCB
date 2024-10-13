(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var600 0)
(declare-sort var1477 0)
(declare-sort var3440 0)
(declare-sort var2574 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1477_isDiagnosticsEnabled/-1004161365 () Bool)
(declare-const null-var600 var600)
(declare-const var1477-factories var3440)
(declare-const null-var2574 var2574)
(declare-const var434 var600) ; Statement: r0 := @parameter0: java.lang.ClassLoader 
(assert (not (= var434 null-var600)))
(define-const var1015 Bool var1477_isDiagnosticsEnabled/-1004161365) ; Statement: $z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z0 == 0 goto $r10 = <org.apache.commons.logging.LogFactory: java.util.Hashtable factories> 
(assert (= (ite var1015 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2404 var3440 var1477-factories) ; Statement: $r10 = <org.apache.commons.logging.LogFactory: java.util.Hashtable factories> 
 ; Statement: entermonitor $r10 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1673 var2574) ; Statement: $r11 := @caughtexception 
(assert (not (= var1673 null-var2574)))
(assert true) ; Non Conditional
 ; Statement: exitmonitor $r10 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1673!1 var2574) ; Statement: $r11 := @caughtexception 
(assert (not (= var1673!1 null-var2574)))
(assert true) ; Non Conditional
 ; Statement: exitmonitor $r10 
(assert true) ; Non Conditional
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var1477_isDiagnosticsEnabled/-1004161365=([], boolean)}
; {var600=java.lang.ClassLoader, var434=r0, var1477=org.apache.commons.logging.LogFactory, var1015=$z0, var3440=java.util.Hashtable, var2404=$r10, var2574=java.lang.Throwable, var1673=$r11}
; {java.lang.ClassLoader=var600, r0=var434, org.apache.commons.logging.LogFactory=var1477, $z0=var1015, java.util.Hashtable=var3440, $r10=var2404, java.lang.Throwable=var2574, $r11=var1673}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.ClassLoader;	$z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>();	if $z0 == 0 goto $r10 = <org.apache.commons.logging.LogFactory: java.util.Hashtable factories>;	$r10 = <org.apache.commons.logging.LogFactory: java.util.Hashtable factories>;	entermonitor $r10;	$r11 := @caughtexception;	exitmonitor $r10;	$r11 := @caughtexception;	exitmonitor $r10;	throw $r11
;block_num 7