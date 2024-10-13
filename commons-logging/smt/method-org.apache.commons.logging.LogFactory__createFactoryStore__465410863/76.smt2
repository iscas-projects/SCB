(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var834 0)
(declare-sort var2652 0)
(declare-sort var7 0)
(declare-sort var3626 0)
(declare-sort var2526 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2526_handleThrowable/-1293181344 (var3626) void)
(declare-const null-var834 var834)
(declare-const null-var2652 var2652)
(declare-const null-String String)
(declare-const null-var3626 var3626)
(define-const var3732 var834 null-var834) ; Statement: r10 = null 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2710 var2652) ; Statement: $r9 := @caughtexception 
(assert (not (= var2710 null-var2652)))
(define-const var3789 String null-String) ; Statement: r11 = null 
(assert true) ; Non Conditional
 ; Statement: if r11 != null goto $r5 = staticinvoke <java.lang.Class: java.lang.Class forName(java.lang.String)>(r11) 
(assert (not (not (= var3789 null-String)))) ; Negate: Cond: r11 != null  
(declare-const var806 var3626) ; Statement: $r6 := @caughtexception 
(assert (not (= var806 null-var3626)))
;(assert (var2526_handleThrowable/-1293181344 var806)) ; Statement: staticinvoke <org.apache.commons.logging.LogFactory: void handleThrowable(java.lang.Throwable)>($r6) 

(declare-const var806!1 var3626)
(define-const var385 String "org.apache.commons.logging.impl.WeakHashtable") ; Statement: $r7 = "org.apache.commons.logging.impl.WeakHashtable" 
(assert true)
(define-const var801 Bool (= var385 var3789)) ; Statement: $z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>(r11) 
 ; Statement: if $z0 != 0 goto (branch) 
(assert (not (= (ite var801 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: if r10 != null goto return r10 
(assert (not (= var3732 null-var834))) ; Cond: r10 != null 
 ; Statement: return r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var2526_handleThrowable/-1293181344=([java.lang.Throwable], void)}
; {var834=java.util.Hashtable, var3732=r10, var2652=java.lang.SecurityException, var2710=$r9, var7=null_type, var3789=r11, var3626=java.lang.Throwable, var806=$r6, var2526=org.apache.commons.logging.LogFactory, var385=$r7, var801=$z0}
; {java.util.Hashtable=var834, r10=var3732, java.lang.SecurityException=var2652, $r9=var2710, null_type=var7, r11=var3789, java.lang.Throwable=var3626, $r6=var806, org.apache.commons.logging.LogFactory=var2526, $r7=var385, $z0=var801}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r10 = null;	$r9 := @caughtexception;	r11 = null;	if r11 != null goto $r5 = staticinvoke <java.lang.Class: java.lang.Class forName(java.lang.String)>(r11);	$r6 := @caughtexception;	staticinvoke <org.apache.commons.logging.LogFactory: void handleThrowable(java.lang.Throwable)>($r6);	$r7 = "org.apache.commons.logging.impl.WeakHashtable";	$z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>(r11);	if $z0 != 0 goto (branch);	if r10 != null goto return r10;	return r10
;block_num 6