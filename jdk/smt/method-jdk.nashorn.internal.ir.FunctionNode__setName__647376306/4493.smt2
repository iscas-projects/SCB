(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3497 0)
(declare-sort var1653 0)
(declare-sort var3975 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/2138424918 (var3497) String)
(declare-const null-var3497 var3497)
(declare-const null-var1653 var1653)
(declare-const null-String String)
(declare-const var1749 var3497) ; Statement: r0 := @this: jdk.nashorn.internal.ir.FunctionNode 
(assert (not (= var1749 null-var3497)))
(declare-const var2123 var1653) ; Statement: r3 := @parameter0: jdk.nashorn.internal.ir.LexicalContext 
(assert (not (= var2123 null-var1653)))
(declare-const var2843 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2843 null-String)))
(define-const var1722 String (name/2138424918 var1749)) ; Statement: $r2 = r0.<jdk.nashorn.internal.ir.FunctionNode: java.lang.String name> 
(assert true)
(define-const var2904 Bool (= var1722 var2843)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r4 = new jdk.nashorn.internal.ir.FunctionNode 
(assert (not (= (ite var2904 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {name/2138424918=([jdk.nashorn.internal.ir.FunctionNode], java.lang.String)}
; {var3497=jdk.nashorn.internal.ir.FunctionNode, var1749=r0, var1653=jdk.nashorn.internal.ir.LexicalContext, var2123=r3, var2843=r1, var3975=null_type, var1722=$r2, var2904=$z0}
; {jdk.nashorn.internal.ir.FunctionNode=var3497, r0=var1749, jdk.nashorn.internal.ir.LexicalContext=var1653, r3=var2123, r1=var2843, null_type=var3975, $r2=var1722, $z0=var2904}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.ir.FunctionNode;	r3 := @parameter0: jdk.nashorn.internal.ir.LexicalContext;	r1 := @parameter1: java.lang.String;	$r2 = r0.<jdk.nashorn.internal.ir.FunctionNode: java.lang.String name>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $r4 = new jdk.nashorn.internal.ir.FunctionNode;	return r0
;block_num 2