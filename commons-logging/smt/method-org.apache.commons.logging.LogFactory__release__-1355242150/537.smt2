(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var16 0)
(declare-sort var2600 0)
(declare-sort var3765 0)
(declare-sort var1333 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2600_isDiagnosticsEnabled/-1004161365 () Bool)
(declare-const null-var16 var16)
(declare-const var2600-factories var3765)
(declare-const null-var1333 var1333)
(declare-const var544 var16) ; Statement: r0 := @parameter0: java.lang.ClassLoader 
(assert (not (= var544 null-var16)))
(define-const var2139 Bool var2600_isDiagnosticsEnabled/-1004161365) ; Statement: $z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z0 == 0 goto $r10 = <org.apache.commons.logging.LogFactory: java.util.Hashtable factories> 
(assert (= (ite var2139 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3935 var3765 var2600-factories) ; Statement: $r10 = <org.apache.commons.logging.LogFactory: java.util.Hashtable factories> 
 ; Statement: entermonitor $r10 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1617 var1333) ; Statement: $r11 := @caughtexception 
(assert (not (= var1617 null-var1333)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1617!1 var1333) ; Statement: $r11 := @caughtexception 
(assert (not (= var1617!1 null-var1333)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1617!2 var1333) ; Statement: $r11 := @caughtexception 
(assert (not (= var1617!2 null-var1333)))
(assert true) ; Non Conditional
 ; Statement: exitmonitor $r10 
(assert true) ; Non Conditional
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var2600_isDiagnosticsEnabled/-1004161365=([], boolean)}
; {var16=java.lang.ClassLoader, var544=r0, var2600=org.apache.commons.logging.LogFactory, var2139=$z0, var3765=java.util.Hashtable, var3935=$r10, var1333=java.lang.Throwable, var1617=$r11}
; {java.lang.ClassLoader=var16, r0=var544, org.apache.commons.logging.LogFactory=var2600, $z0=var2139, java.util.Hashtable=var3765, $r10=var3935, java.lang.Throwable=var1333, $r11=var1617}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.ClassLoader;	$z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>();	if $z0 == 0 goto $r10 = <org.apache.commons.logging.LogFactory: java.util.Hashtable factories>;	$r10 = <org.apache.commons.logging.LogFactory: java.util.Hashtable factories>;	entermonitor $r10;	$r11 := @caughtexception;	$r11 := @caughtexception;	$r11 := @caughtexception;	exitmonitor $r10;	throw $r11
;block_num 7