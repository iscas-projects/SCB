(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3686 0)
(declare-sort var227 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var3686 var3686)
(declare-const null-String String)
(declare-const null-var227 var227)
(declare-const var1124 var3686) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture 
(assert (not (= var1124 null-var3686)))
(declare-const var2056 String) ; Statement: r2 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2056 null-String)))
(declare-const var36 var227) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var36 null-var227)))
 ; Statement: if r0 != null goto (branch) 
(assert (not (not (= var36 null-var227)))) ; Negate: Cond: r0 != null  
(assert true)
;(assert (append/672562846 var2056 "null")) ; Statement: virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("null") 
(declare-const var2056!1 String)
(assert (= var2056!1 (str.++ var2056 "null")))
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var3686=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture, var1124=r1, var2056=r2, var227=java.lang.Object, var36=r0}
; {com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture=var3686, r1=var1124, r2=var2056, java.lang.Object=var227, r0=var36}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.AbstractFuture;	r2 := @parameter0: java.lang.StringBuilder;	r0 := @parameter1: java.lang.Object;	if r0 != null goto (branch);	virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("null");	goto [?= return];	return
;block_num 3