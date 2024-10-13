(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3588 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-String String)
(declare-const var984 String) ; Statement: r1 := @parameter0: java.lang.StringBuffer 
(assert (not (= var984 null-String)))
(declare-const var2764 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2764 null-String)))
 ; Statement: if r0 != null goto virtualinvoke r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r0) 
(assert (not (not (= var2764 null-String)))) ; Negate: Cond: r0 != null  
(assert true)
;(assert (append/1560614132 var984 "?")) ; Statement: virtualinvoke r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("?") 
(declare-const var984!1 String)
(assert (str.prefixof var984 var984!1))
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer)}
; {var984=r1, var2764=r0, var3588=null_type}
; {r1=var984, r0=var2764, null_type=var3588}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r1 := @parameter0: java.lang.StringBuffer;	r0 := @parameter1: java.lang.String;	if r0 != null goto virtualinvoke r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r0);	virtualinvoke r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("?");	goto [?= return];	return
;block_num 3