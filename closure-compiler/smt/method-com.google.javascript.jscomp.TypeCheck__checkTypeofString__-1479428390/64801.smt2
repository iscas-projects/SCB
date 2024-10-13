(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2851 0)
(declare-sort var40 0)
(declare-sort var682 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var2851 var2851)
(declare-const null-var40 var40)
(declare-const null-String String)
(declare-const var381 var2851) ; Statement: r1 := @this: com.google.javascript.jscomp.TypeCheck 
(assert (not (= var381 null-var2851)))
(declare-const var3493 var40) ; Statement: r2 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var3493 null-var40)))
(declare-const var1951 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1951 null-String)))
(assert true)
(define-const var209 Bool (= var1951 "number")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("number") 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var209 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var2851=com.google.javascript.jscomp.TypeCheck, var381=r1, var40=com.google.javascript.rhino.Node, var3493=r2, var1951=r0, var682=null_type, var209=$z0}
; {com.google.javascript.jscomp.TypeCheck=var2851, r1=var381, com.google.javascript.rhino.Node=var40, r2=var3493, r0=var1951, null_type=var682, $z0=var209}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.TypeCheck;	r2 := @parameter0: com.google.javascript.rhino.Node;	r0 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("number");	if $z0 != 0 goto return;	return
;block_num 2