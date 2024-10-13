(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3301 0)
(declare-sort var1128 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const null-var1128 var1128)
(declare-const var2112 String) ; Statement: r14 := @parameter0: java.lang.String 
(assert (not (= var2112 null-String)))
(define-const var1973 var1128 null-var1128) ; Statement: r15 = null 
 ; Statement: if r14 == null goto (branch) 
(assert (= var2112 null-String)) ; Cond: r14 == null 
 ; Statement: if r15 != null goto (branch) 
(assert (not (= var1973 null-var1128))) ; Cond: r15 != null 
 ; Statement: if r15 != null goto return r15 
(assert (not (= var1973 null-var1128))) ; Cond: r15 != null 
 ; Statement: return r15 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var2112=r14, var3301=null_type, var1128=org.apache.log4j.lf5.LogLevel, var1973=r15}
; {r14=var2112, null_type=var3301, org.apache.log4j.lf5.LogLevel=var1128, r15=var1973}
;seq 
;cnt {}
;stmts r14 := @parameter0: java.lang.String;	r15 = null;	if r14 == null goto (branch);	if r15 != null goto (branch);	if r15 != null goto return r15;	return r15
;block_num 4