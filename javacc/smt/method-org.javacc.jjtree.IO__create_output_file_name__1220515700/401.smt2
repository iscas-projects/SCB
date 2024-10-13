(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1616 0)
(declare-sort var6 0)
(declare-sort var2450 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2450_getOutputFile/2044331849 () String)
(declare-const null-var1616 var1616)
(declare-const null-String String)
(declare-const var157 var1616) ; Statement: r11 := @this: org.javacc.jjtree.IO 
(assert (not (= var157 null-var1616)))
(declare-const var2728 String) ; Statement: r12 := @parameter0: java.lang.String 
(assert (not (= var2728 null-String)))
(define-const var3762 String var2450_getOutputFile/2044331849) ; Statement: r13 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getOutputFile()>() 
(assert true)
(define-const var251 Bool (= var3762 "")) ; Statement: $z0 = virtualinvoke r13.<java.lang.String: boolean equals(java.lang.Object)>("") 
 ; Statement: if $z0 == 0 goto return r13 
(assert (= (ite var251 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var2450_getOutputFile/2044331849=([], java.lang.String)}
; {var1616=org.javacc.jjtree.IO, var157=r11, var2728=r12, var6=null_type, var2450=org.javacc.jjtree.JJTreeOptions, var3762=r13, var251=$z0}
; {org.javacc.jjtree.IO=var1616, r11=var157, r12=var2728, null_type=var6, org.javacc.jjtree.JJTreeOptions=var2450, r13=var3762, $z0=var251}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r11 := @this: org.javacc.jjtree.IO;	r12 := @parameter0: java.lang.String;	r13 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getOutputFile()>();	$z0 = virtualinvoke r13.<java.lang.String: boolean equals(java.lang.Object)>("");	if $z0 == 0 goto return r13;	return r13
;block_num 2