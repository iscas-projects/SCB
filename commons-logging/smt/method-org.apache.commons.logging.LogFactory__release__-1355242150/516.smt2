(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var379 0)
(declare-sort var164 0)
(declare-sort var3706 0)
(declare-sort var1624 0)
(declare-sort var1886 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var164_isDiagnosticsEnabled/-1004161365 () Bool)
(declare-fun get/-1721276195 (var3706 var1624) var1624)
(declare-fun cast-from-var379-to-var1624 (var379) var1624)
(declare-const null-var379 var379)
(declare-const var164-factories var3706)
(declare-const null-var1886 var1886)
(declare-const var1124 var379) ; Statement: r0 := @parameter0: java.lang.ClassLoader 
(assert (not (= var1124 null-var379)))
(define-const var2478 Bool var164_isDiagnosticsEnabled/-1004161365) ; Statement: $z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z0 == 0 goto $r10 = <org.apache.commons.logging.LogFactory: java.util.Hashtable factories> 
(assert (= (ite var2478 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2461 var3706 var164-factories) ; Statement: $r10 = <org.apache.commons.logging.LogFactory: java.util.Hashtable factories> 
 ; Statement: entermonitor $r10 
(assert true) ; Non Conditional
 ; Statement: if r0 != null goto $r1 = virtualinvoke $r10.<java.util.Hashtable: java.lang.Object get(java.lang.Object)>(r0) 
(assert (not (= var1124 null-var379))) ; Cond: r0 != null 
(assert true)
(define-const var309 var1624 (get/-1721276195 var2461 (cast-from-var379-to-var1624 var1124))) ; Statement: $r1 = virtualinvoke $r10.<java.util.Hashtable: java.lang.Object get(java.lang.Object)>(r0) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2060 var1886) ; Statement: $r11 := @caughtexception 
(assert (not (= var2060 null-var1886)))
(assert true) ; Non Conditional
 ; Statement: exitmonitor $r10 
(assert true) ; Non Conditional
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var164_isDiagnosticsEnabled/-1004161365=([], boolean), get/-1721276195=([java.util.Hashtable, java.lang.Object], java.lang.Object), cast-from-var379-to-var1624=([java.lang.ClassLoader], java.lang.Object)}
; {var379=java.lang.ClassLoader, var1124=r0, var164=org.apache.commons.logging.LogFactory, var2478=$z0, var3706=java.util.Hashtable, var2461=$r10, var1624=java.lang.Object, var309=$r1, var1886=java.lang.Throwable, var2060=$r11}
; {java.lang.ClassLoader=var379, r0=var1124, org.apache.commons.logging.LogFactory=var164, $z0=var2478, java.util.Hashtable=var3706, $r10=var2461, java.lang.Object=var1624, $r1=var309, java.lang.Throwable=var1886, $r11=var2060}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.ClassLoader;	$z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>();	if $z0 == 0 goto $r10 = <org.apache.commons.logging.LogFactory: java.util.Hashtable factories>;	$r10 = <org.apache.commons.logging.LogFactory: java.util.Hashtable factories>;	entermonitor $r10;	if r0 != null goto $r1 = virtualinvoke $r10.<java.util.Hashtable: java.lang.Object get(java.lang.Object)>(r0);	$r1 = virtualinvoke $r10.<java.util.Hashtable: java.lang.Object get(java.lang.Object)>(r0);	$r11 := @caughtexception;	exitmonitor $r10;	throw $r11
;block_num 7