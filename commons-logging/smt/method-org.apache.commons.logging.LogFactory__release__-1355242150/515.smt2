(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var890 0)
(declare-sort var2329 0)
(declare-sort var3001 0)
(declare-sort var2324 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2329_isDiagnosticsEnabled/-1004161365 () Bool)
(declare-const null-var890 var890)
(declare-const var2329-factories var3001)
(declare-const var2329-nullClassLoaderFactory var2329)
(declare-const null-var2324 var2324)
(declare-const var1746 var890) ; Statement: r0 := @parameter0: java.lang.ClassLoader 
(assert (not (= var1746 null-var890)))
(define-const var3956 Bool var2329_isDiagnosticsEnabled/-1004161365) ; Statement: $z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z0 == 0 goto $r10 = <org.apache.commons.logging.LogFactory: java.util.Hashtable factories> 
(assert (= (ite var3956 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2875 var3001 var2329-factories) ; Statement: $r10 = <org.apache.commons.logging.LogFactory: java.util.Hashtable factories> 
 ; Statement: entermonitor $r10 
(assert true) ; Non Conditional
 ; Statement: if r0 != null goto $r1 = virtualinvoke $r10.<java.util.Hashtable: java.lang.Object get(java.lang.Object)>(r0) 
(assert (not (not (= var1746 null-var890)))) ; Negate: Cond: r0 != null  
(define-const var528 var2329 var2329-nullClassLoaderFactory) ; Statement: $r3 = <org.apache.commons.logging.LogFactory: org.apache.commons.logging.LogFactory nullClassLoaderFactory> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var565 var2324) ; Statement: $r11 := @caughtexception 
(assert (not (= var565 null-var2324)))
(assert true) ; Non Conditional
 ; Statement: exitmonitor $r10 
(assert true) ; Non Conditional
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var2329_isDiagnosticsEnabled/-1004161365=([], boolean)}
; {var890=java.lang.ClassLoader, var1746=r0, var2329=org.apache.commons.logging.LogFactory, var3956=$z0, var3001=java.util.Hashtable, var2875=$r10, var528=$r3, var2324=java.lang.Throwable, var565=$r11}
; {java.lang.ClassLoader=var890, r0=var1746, org.apache.commons.logging.LogFactory=var2329, $z0=var3956, java.util.Hashtable=var3001, $r10=var2875, $r3=var528, java.lang.Throwable=var2324, $r11=var565}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.ClassLoader;	$z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>();	if $z0 == 0 goto $r10 = <org.apache.commons.logging.LogFactory: java.util.Hashtable factories>;	$r10 = <org.apache.commons.logging.LogFactory: java.util.Hashtable factories>;	entermonitor $r10;	if r0 != null goto $r1 = virtualinvoke $r10.<java.util.Hashtable: java.lang.Object get(java.lang.Object)>(r0);	$r3 = <org.apache.commons.logging.LogFactory: org.apache.commons.logging.LogFactory nullClassLoaderFactory>;	$r11 := @caughtexception;	exitmonitor $r10;	throw $r11
;block_num 7