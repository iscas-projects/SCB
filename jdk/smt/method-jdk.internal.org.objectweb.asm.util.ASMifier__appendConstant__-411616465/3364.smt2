(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2031 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-String String)
(declare-const null-var2031 var2031)
(declare-const var610 String) ; Statement: r2 := @parameter0: java.lang.StringBuffer 
(assert (not (= var610 null-String)))
(declare-const var1348 var2031) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var1348 null-var2031)))
 ; Statement: if r0 != null goto $z0 = r0 instanceof java.lang.String 
(assert (not (not (= var1348 null-var2031)))) ; Negate: Cond: r0 != null  
(assert true)
;(assert (append/1560614132 var610 "null")) ; Statement: virtualinvoke r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("null") 
(declare-const var610!1 String)
(assert (str.prefixof var610 var610!1))
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer)}
; {var610=r2, var2031=java.lang.Object, var1348=r0}
; {r2=var610, java.lang.Object=var2031, r0=var1348}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r2 := @parameter0: java.lang.StringBuffer;	r0 := @parameter1: java.lang.Object;	if r0 != null goto $z0 = r0 instanceof java.lang.String;	virtualinvoke r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("null");	goto [?= return];	return
;block_num 3