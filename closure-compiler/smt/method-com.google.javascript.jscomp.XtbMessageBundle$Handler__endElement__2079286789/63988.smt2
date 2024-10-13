(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2153 0)
(declare-sort var541 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var2153 var2153)
(declare-const null-String String)
(declare-const var1573 var2153) ; Statement: r2 := @this: com.google.javascript.jscomp.XtbMessageBundle$Handler 
(assert (not (= var1573 null-var2153)))
(declare-const var1392 String) ; Statement: r12 := @parameter0: java.lang.String 
(assert (not (= var1392 null-String)))
(declare-const var299 String) ; Statement: r13 := @parameter1: java.lang.String 
(assert (not (= var299 null-String)))
(declare-const var3878 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var3878 null-String)))
(define-const var190 String "translation") ; Statement: $r1 = "translation" 
(assert true)
(define-const var2541 Bool (= var190 var3878)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var2541 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var2153=com.google.javascript.jscomp.XtbMessageBundle$Handler, var1573=r2, var1392=r12, var541=null_type, var299=r13, var3878=r0, var190=$r1, var2541=$z0}
; {com.google.javascript.jscomp.XtbMessageBundle$Handler=var2153, r2=var1573, r12=var1392, null_type=var541, r13=var299, r0=var3878, $r1=var190, $z0=var2541}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.XtbMessageBundle$Handler;	r12 := @parameter0: java.lang.String;	r13 := @parameter1: java.lang.String;	r0 := @parameter2: java.lang.String;	$r1 = "translation";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto return;	return
;block_num 2