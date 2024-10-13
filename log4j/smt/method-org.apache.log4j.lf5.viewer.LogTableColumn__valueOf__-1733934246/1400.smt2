(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1250 0)
(declare-sort var763 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const null-var763 var763)
(declare-const var2933 String) ; Statement: r10 := @parameter0: java.lang.String 
(assert (not (= var2933 null-String)))
(define-const var3113 var763 null-var763) ; Statement: r11 = null 
 ; Statement: if r10 == null goto (branch) 
(assert (= var2933 null-String)) ; Cond: r10 == null 
 ; Statement: if r11 != null goto return r11 
(assert (not (= var3113 null-var763))) ; Cond: r11 != null 
 ; Statement: return r11 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var2933=r10, var1250=null_type, var763=org.apache.log4j.lf5.viewer.LogTableColumn, var3113=r11}
; {r10=var2933, null_type=var1250, org.apache.log4j.lf5.viewer.LogTableColumn=var763, r11=var3113}
;seq 
;cnt {}
;stmts r10 := @parameter0: java.lang.String;	r11 = null;	if r10 == null goto (branch);	if r11 != null goto return r11;	return r11
;block_num 3