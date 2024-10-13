(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3102 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3102 null-String)))
(declare-const var2511 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2511 null-Int)))
 ; Statement: if i0 != 0 goto i6 = 32 
(assert (not (not (= var2511 0)))) ; Negate: Cond: i0 != 0  
(assert true)
;(assert (append/672562846 var3102 "0x0")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("0x0") 
(declare-const var3102!1 String)
(assert (= var3102!1 (str.++ var3102 "0x0")))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var3102=r0, var2511=i0}
; {r0=var3102, i0=var2511}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.StringBuilder;	i0 := @parameter1: int;	if i0 != 0 goto i6 = 32;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("0x0");	return
;block_num 2