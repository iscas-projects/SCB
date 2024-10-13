(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2756 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var2756 var2756)
(declare-const null-String String)
(declare-const var3146 var2756) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut$BelowAll 
(assert (not (= var3146 null-var2756)))
(declare-const var1588 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1588 null-String)))
(assert true)
;(assert (append/672562846 var1588 "(-\u221e")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(-\u221e") 
(declare-const var1588!1 String)
(assert (= var1588!1 (str.++ var1588 "(-\u221e")))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var2756=com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut$BelowAll, var3146=r1, var1588=r0}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut$BelowAll=var2756, r1=var3146, r0=var1588}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Cut$BelowAll;	r0 := @parameter0: java.lang.StringBuilder;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(-\u221e");	return
;block_num 1