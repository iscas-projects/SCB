(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1412 0)
(declare-sort var1289 0)
(declare-sort var3922 0)
(declare-sort var48 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1289_isDiagnosticsEnabled/-1004161365 () Bool)
(declare-const null-var1412 var1412)
(declare-const var1289-factories var3922)
(declare-const null-var48 var48)
(declare-const var1076 var1412) ; Statement: r0 := @parameter0: java.lang.ClassLoader 
(assert (not (= var1076 null-var1412)))
(define-const var827 Bool var1289_isDiagnosticsEnabled/-1004161365) ; Statement: $z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z0 == 0 goto $r10 = <org.apache.commons.logging.LogFactory: java.util.Hashtable factories> 
(assert (= (ite var827 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1043 var3922 var1289-factories) ; Statement: $r10 = <org.apache.commons.logging.LogFactory: java.util.Hashtable factories> 
 ; Statement: entermonitor $r10 
(assert true) ; Non Conditional
 ; Statement: if r0 != null goto $r1 = virtualinvoke $r10.<java.util.Hashtable: java.lang.Object get(java.lang.Object)>(r0) 
(assert (not (not (= var1076 null-var1412)))) ; Negate: Cond: r0 != null  
(declare-const var678 var48) ; Statement: $r11 := @caughtexception 
(assert (not (= var678 null-var48)))
(assert true) ; Non Conditional
 ; Statement: exitmonitor $r10 
(assert true) ; Non Conditional
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var1289_isDiagnosticsEnabled/-1004161365=([], boolean)}
; {var1412=java.lang.ClassLoader, var1076=r0, var1289=org.apache.commons.logging.LogFactory, var827=$z0, var3922=java.util.Hashtable, var1043=$r10, var48=java.lang.Throwable, var678=$r11}
; {java.lang.ClassLoader=var1412, r0=var1076, org.apache.commons.logging.LogFactory=var1289, $z0=var827, java.util.Hashtable=var3922, $r10=var1043, java.lang.Throwable=var48, $r11=var678}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.ClassLoader;	$z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>();	if $z0 == 0 goto $r10 = <org.apache.commons.logging.LogFactory: java.util.Hashtable factories>;	$r10 = <org.apache.commons.logging.LogFactory: java.util.Hashtable factories>;	entermonitor $r10;	if r0 != null goto $r1 = virtualinvoke $r10.<java.util.Hashtable: java.lang.Object get(java.lang.Object)>(r0);	$r11 := @caughtexception;	exitmonitor $r10;	throw $r11
;block_num 6