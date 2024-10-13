(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1710 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-String String)
(declare-const var1389 String) ; Statement: r1 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1389 null-String)))
(declare-const var2405 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2405 null-String)))
 ; Statement: if r0 != null goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(assert (not (not (= var2405 null-String)))) ; Negate: Cond: r0 != null  
(assert true)
;(assert (append/672562846 var1389 "null")) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("null") 
(declare-const var1389!1 String)
(assert (= var1389!1 (str.++ var1389 "null")))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var1389=r1, var2405=r0, var1710=null_type}
; {r1=var1389, r0=var2405, null_type=var1710}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r1 := @parameter0: java.lang.StringBuilder;	r0 := @parameter1: java.lang.String;	if r0 != null goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("null");	return
;block_num 2