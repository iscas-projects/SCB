(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var139 0)
(declare-sort var2122 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var139 var139)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var887 var139) ; Statement: r6 := @this: com.mysql.cj.jdbc.util.BaseBugReport 
(assert (not (= var887 null-var139)))
(declare-const var3831 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3831 null-String)))
(declare-const var2291 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var2291 null-Bool)))
 ; Statement: if z0 != 0 goto return 
(assert (not (= (ite var2291 1 0) 0))) ; Cond: z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var139=com.mysql.cj.jdbc.util.BaseBugReport, var887=r6, var3831=r2, var2122=null_type, var2291=z0}
; {com.mysql.cj.jdbc.util.BaseBugReport=var139, r6=var887, r2=var3831, null_type=var2122, z0=var2291}
;seq 
;cnt {}
;stmts r6 := @this: com.mysql.cj.jdbc.util.BaseBugReport;	r2 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	if z0 != 0 goto return;	return
;block_num 2