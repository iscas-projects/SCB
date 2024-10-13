(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3710 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var3710 var3710)
(declare-const null-String String)
(declare-const var3489 var3710) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut$AboveAll 
(assert (not (= var3489 null-var3710)))
(declare-const var1233 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1233 null-String)))
(assert true)
;(assert (append/672562846 var1233 "+\u221e)")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("+\u221e)") 
(declare-const var1233!1 String)
(assert (= var1233!1 (str.++ var1233 "+\u221e)")))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var3710=com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut$AboveAll, var3489=r1, var1233=r0}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut$AboveAll=var3710, r1=var3489, r0=var1233}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut$AboveAll;	r0 := @parameter0: java.lang.StringBuilder;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("+\u221e)");	return
;block_num 1