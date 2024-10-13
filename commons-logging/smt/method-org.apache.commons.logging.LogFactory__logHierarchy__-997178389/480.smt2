(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3651 0)
(declare-sort var2578 0)
(declare-sort var1989 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1989_isDiagnosticsEnabled/-1004161365 () Bool)
(declare-fun var2578_getSystemClassLoader/-483392723 () var2578)
(declare-const null-String String)
(declare-const null-var2578 var2578)
(declare-const var1763 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1763 null-String)))
(declare-const var3497 var2578) ; Statement: r24 := @parameter1: java.lang.ClassLoader 
(assert (not (= var3497 null-var2578)))
(define-const var2732 Bool var1989_isDiagnosticsEnabled/-1004161365) ; Statement: $z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>() 
 ; Statement: if $z0 != 0 goto (branch) 
(assert (not (= (ite var2732 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: if r24 == null goto $r17 = staticinvoke <java.lang.ClassLoader: java.lang.ClassLoader getSystemClassLoader()>() 
(assert (= var3497 null-var2578)) ; Cond: r24 == null 
(define-const var806 var2578 var2578_getSystemClassLoader/-483392723) ; Statement: $r17 = staticinvoke <java.lang.ClassLoader: java.lang.ClassLoader getSystemClassLoader()>() 
(assert true) ; Non Conditional
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r24 == null goto return 
(assert (= var3497 null-var2578)) ; Cond: r24 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1989_isDiagnosticsEnabled/-1004161365=([], boolean), var2578_getSystemClassLoader/-483392723=([], java.lang.ClassLoader)}
; {var1763=r2, var3651=null_type, var2578=java.lang.ClassLoader, var3497=r24, var1989=org.apache.commons.logging.LogFactory, var2732=$z0, var806=$r17}
; {r2=var1763, null_type=var3651, java.lang.ClassLoader=var2578, r24=var3497, org.apache.commons.logging.LogFactory=var1989, $z0=var2732, $r17=var806}
;seq 
;cnt {}
;stmts r2 := @parameter0: java.lang.String;	r24 := @parameter1: java.lang.ClassLoader;	$z0 = staticinvoke <org.apache.commons.logging.LogFactory: boolean isDiagnosticsEnabled()>();	if $z0 != 0 goto (branch);	if r24 == null goto $r17 = staticinvoke <java.lang.ClassLoader: java.lang.ClassLoader getSystemClassLoader()>();	$r17 = staticinvoke <java.lang.ClassLoader: java.lang.ClassLoader getSystemClassLoader()>();	goto [?= (branch)];	if r24 == null goto return;	return
;block_num 6