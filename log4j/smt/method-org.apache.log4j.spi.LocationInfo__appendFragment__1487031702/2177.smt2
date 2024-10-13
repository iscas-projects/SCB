(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1500 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-String String)
(declare-const var2020 String) ; Statement: r1 := @parameter0: java.lang.StringBuffer 
(assert (not (= var2020 null-String)))
(declare-const var2330 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2330 null-String)))
 ; Statement: if r0 != null goto virtualinvoke r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r0) 
(assert (not (= var2330 null-String))) ; Cond: r0 != null 
(assert true)
;(assert (append/1560614132 var2020 var2330)) ; Statement: virtualinvoke r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r0) 
(declare-const var2020!1 String)
(assert (str.prefixof var2020 var2020!1))
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer)}
; {var2020=r1, var2330=r0, var1500=null_type}
; {r1=var2020, r0=var2330, null_type=var1500}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r1 := @parameter0: java.lang.StringBuffer;	r0 := @parameter1: java.lang.String;	if r0 != null goto virtualinvoke r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r0);	virtualinvoke r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r0);	return
;block_num 3