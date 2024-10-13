(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var272 0)
(declare-sort var1910 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var272 var272)
(declare-const null-String String)
(declare-const var2437 var272) ; Statement: r2 := @parameter0: org.javacc.parser.Token 
(assert (not (= var2437 null-var272)))
(declare-const var1322 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1322 null-String)))
(declare-const var2243 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var2243 null-String)))
(assert true)
(define-const var191 Bool (= var2243 var1322)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var191 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var272=org.javacc.parser.Token, var2437=r2, var1322=r1, var1910=null_type, var2243=r0, var191=$z0}
; {org.javacc.parser.Token=var272, r2=var2437, r1=var1322, null_type=var1910, r0=var2243, $z0=var191}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @parameter0: org.javacc.parser.Token;	r1 := @parameter1: java.lang.String;	r0 := @parameter2: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 != 0 goto return;	return
;block_num 2