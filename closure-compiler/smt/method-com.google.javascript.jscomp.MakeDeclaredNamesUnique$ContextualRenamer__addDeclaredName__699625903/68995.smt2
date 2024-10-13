(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1101 0)
(declare-sort var3832 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var1101 var1101)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3624 var1101) ; Statement: r1 := @this: com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenamer 
(assert (not (= var3624 null-var1101)))
(declare-const var2940 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2940 null-String)))
(declare-const var1958 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1958 null-Bool)))
 ; Statement: if z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("arguments") 
(assert (= (ite var1958 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var1235 Bool (= var2940 "arguments")) ; Statement: $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("arguments") 
 ; Statement: if $z1 != 0 goto return 
(assert (not (= (ite var1235 1 0) 0))) ; Cond: $z1 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var1101=com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenamer, var3624=r1, var2940=r0, var3832=null_type, var1958=z0, var1235=$z1}
; {com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenamer=var1101, r1=var3624, r0=var2940, null_type=var3832, z0=var1958, $z1=var1235}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.MakeDeclaredNamesUnique$ContextualRenamer;	r0 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	if z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("arguments");	$z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("arguments");	if $z1 != 0 goto return;	return
;block_num 3