(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3914 0)
(declare-sort var3928 0)
(declare-sort var3013 0)
(declare-sort var1033 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3928_isDiagnosticsEnabled/-1004161365 () Bool)
(declare-const null-var3914 var3914)
(declare-const var3928-factories var3013)
(declare-const null-var1033 var1033)
(declare-const var2781 var3914) ; Statement: r0 := @parameter0: java.lang.ClassLoader 
(assert (not (= var2781 null-var3914)))
(define-const var470 Bool var3928_isDiagnosticsEnabled/-1004161365) ; Statement: $z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z0 == 0 goto $r10 = <org.apache.commons.logging.LogFactory: java.util.Hashtable factories> 
(assert (= (ite var470 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3055 var3013 var3928-factories) ; Statement: $r10 = <org.apache.commons.logging.LogFactory: java.util.Hashtable factories> 
 ; Statement: entermonitor $r10 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3618 var1033) ; Statement: $r11 := @caughtexception 
(assert (not (= var3618 null-var1033)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3618!1 var1033) ; Statement: $r11 := @caughtexception 
(assert (not (= var3618!1 null-var1033)))
(assert true) ; Non Conditional
 ; Statement: exitmonitor $r10 
(assert true) ; Non Conditional
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var3928_isDiagnosticsEnabled/-1004161365=([], boolean)}
; {var3914=java.lang.ClassLoader, var2781=r0, var3928=org.apache.commons.logging.LogFactory, var470=$z0, var3013=java.util.Hashtable, var3055=$r10, var1033=java.lang.Throwable, var3618=$r11}
; {java.lang.ClassLoader=var3914, r0=var2781, org.apache.commons.logging.LogFactory=var3928, $z0=var470, java.util.Hashtable=var3013, $r10=var3055, java.lang.Throwable=var1033, $r11=var3618}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.ClassLoader;	$z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>();	if $z0 == 0 goto $r10 = <org.apache.commons.logging.LogFactory: java.util.Hashtable factories>;	$r10 = <org.apache.commons.logging.LogFactory: java.util.Hashtable factories>;	entermonitor $r10;	$r11 := @caughtexception;	$r11 := @caughtexception;	exitmonitor $r10;	throw $r11
;block_num 6