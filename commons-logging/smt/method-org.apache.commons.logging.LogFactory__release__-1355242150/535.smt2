(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1070 0)
(declare-sort var776 0)
(declare-sort var1469 0)
(declare-sort var3961 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var776_isDiagnosticsEnabled/-1004161365 () Bool)
(declare-const null-var1070 var1070)
(declare-const var776-factories var1469)
(declare-const null-var3961 var3961)
(declare-const var3257 var1070) ; Statement: r0 := @parameter0: java.lang.ClassLoader 
(assert (not (= var3257 null-var1070)))
(define-const var888 Bool var776_isDiagnosticsEnabled/-1004161365) ; Statement: $z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z0 == 0 goto $r10 = <org.apache.commons.logging.LogFactory: java.util.Hashtable factories> 
(assert (= (ite var888 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3191 var1469 var776-factories) ; Statement: $r10 = <org.apache.commons.logging.LogFactory: java.util.Hashtable factories> 
 ; Statement: entermonitor $r10 
(assert true) ; Non Conditional
 ; Statement: if r0 != null goto $r1 = virtualinvoke $r10.<java.util.Hashtable: java.lang.Object get(java.lang.Object)>(r0) 
(assert (not (not (= var3257 null-var1070)))) ; Negate: Cond: r0 != null  
(declare-const var43 var3961) ; Statement: $r11 := @caughtexception 
(assert (not (= var43 null-var3961)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var43!1 var3961) ; Statement: $r11 := @caughtexception 
(assert (not (= var43!1 null-var3961)))
(assert true) ; Non Conditional
 ; Statement: exitmonitor $r10 
(assert true) ; Non Conditional
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var776_isDiagnosticsEnabled/-1004161365=([], boolean)}
; {var1070=java.lang.ClassLoader, var3257=r0, var776=org.apache.commons.logging.LogFactory, var888=$z0, var1469=java.util.Hashtable, var3191=$r10, var3961=java.lang.Throwable, var43=$r11}
; {java.lang.ClassLoader=var1070, r0=var3257, org.apache.commons.logging.LogFactory=var776, $z0=var888, java.util.Hashtable=var1469, $r10=var3191, java.lang.Throwable=var3961, $r11=var43}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.ClassLoader;	$z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>();	if $z0 == 0 goto $r10 = <org.apache.commons.logging.LogFactory: java.util.Hashtable factories>;	$r10 = <org.apache.commons.logging.LogFactory: java.util.Hashtable factories>;	entermonitor $r10;	if r0 != null goto $r1 = virtualinvoke $r10.<java.util.Hashtable: java.lang.Object get(java.lang.Object)>(r0);	$r11 := @caughtexception;	$r11 := @caughtexception;	exitmonitor $r10;	throw $r11
;block_num 7