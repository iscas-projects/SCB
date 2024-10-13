(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2317 0)
(declare-sort var577 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var2317 var2317)
(declare-const var577-nodePackageName String)
(declare-const var653 var2317) ; Statement: r1 := @parameter0: java.io.PrintWriter 
(assert (not (= var653 null-var2317)))
(define-const var2451 String var577-nodePackageName) ; Statement: $r0 = <org.javacc.jjtree.JJTreeGlobals: java.lang.String nodePackageName> 
(assert true)
(define-const var1340 Bool (= var2451 "")) ; Statement: $z0 = virtualinvoke $r0.<java.lang.String: boolean equals(java.lang.Object)>("") 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var1340 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var2317=java.io.PrintWriter, var653=r1, var577=org.javacc.jjtree.JJTreeGlobals, var2451=$r0, var1340=$z0}
; {java.io.PrintWriter=var2317, r1=var653, org.javacc.jjtree.JJTreeGlobals=var577, $r0=var2451, $z0=var1340}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @parameter0: java.io.PrintWriter;	$r0 = <org.javacc.jjtree.JJTreeGlobals: java.lang.String nodePackageName>;	$z0 = virtualinvoke $r0.<java.lang.String: boolean equals(java.lang.Object)>("");	if $z0 != 0 goto return;	return
;block_num 2