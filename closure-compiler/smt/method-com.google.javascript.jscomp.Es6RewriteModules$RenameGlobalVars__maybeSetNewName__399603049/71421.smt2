(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3520 0)
(declare-sort var2530 0)
(declare-sort var3365 0)
(declare-sort var1383 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var3520 var3520)
(declare-const null-var2530 var2530)
(declare-const null-var3365 var3365)
(declare-const null-String String)
(declare-const var2192 var3520) ; Statement: r4 := @this: com.google.javascript.jscomp.Es6RewriteModules$RenameGlobalVars 
(assert (not (= var2192 null-var3520)))
(declare-const var1301 var2530) ; Statement: r3 := @parameter0: com.google.javascript.jscomp.NodeTraversal 
(assert (not (= var1301 null-var2530)))
(declare-const var2377 var3365) ; Statement: r2 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var2377 null-var3365)))
(declare-const var385 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var385 null-String)))
(declare-const var1586 String) ; Statement: r1 := @parameter3: java.lang.String 
(assert (not (= var1586 null-String)))
(assert true)
(define-const var3954 Bool (= var385 var1586)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var3954 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var3520=com.google.javascript.jscomp.Es6RewriteModules$RenameGlobalVars, var2192=r4, var2530=com.google.javascript.jscomp.NodeTraversal, var1301=r3, var3365=com.google.javascript.rhino.Node, var2377=r2, var385=r0, var1383=null_type, var1586=r1, var3954=$z0}
; {com.google.javascript.jscomp.Es6RewriteModules$RenameGlobalVars=var3520, r4=var2192, com.google.javascript.jscomp.NodeTraversal=var2530, r3=var1301, com.google.javascript.rhino.Node=var3365, r2=var2377, r0=var385, null_type=var1383, r1=var1586, $z0=var3954}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r4 := @this: com.google.javascript.jscomp.Es6RewriteModules$RenameGlobalVars;	r3 := @parameter0: com.google.javascript.jscomp.NodeTraversal;	r2 := @parameter1: com.google.javascript.rhino.Node;	r0 := @parameter2: java.lang.String;	r1 := @parameter3: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 != 0 goto return;	return
;block_num 2