(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var567 0)
(declare-sort var2488 0)
(declare-sort var1585 0)
(declare-sort var3182 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var567_getSystemProperty/-1097177229 (String String) String)
(declare-const null-String String)
(declare-const var3182-err var1585)
(define-const var2176 String (var567_getSystemProperty/-1097177229 "org.apache.commons.logging.diagnostics.dest" null-String)) ; Statement: r0 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.String getSystemProperty(java.lang.String,java.lang.String)>("org.apache.commons.logging.diagnostics.dest", null) 
(assert true) ; Non Conditional
 ; Statement: if r0 != null goto (branch) 
(assert (not (= var2176 null-String))) ; Cond: r0 != null 
 ; Statement: goto [?= $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("STDOUT")] 
(assert true) ; Non Conditional
(assert true)
(define-const var1770 Bool (= var2176 "STDOUT")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("STDOUT") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("STDERR") 
(assert (= (ite var1770 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var915 Bool (= var2176 "STDERR")) ; Statement: $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("STDERR") 
 ; Statement: if $z1 == 0 goto $r1 = new java.io.FileOutputStream 
(assert (not (= (ite var915 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var376 var1585 var3182-err) ; Statement: $r5 = <java.lang.System: java.io.PrintStream err> 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var567_getSystemProperty/-1097177229=([java.lang.String, java.lang.String], java.lang.String)}
; {var567=org.apache.commons.logging.LogFactory, var2488=null_type, var2176=r0, var1770=$z0, var915=$z1, var1585=java.io.PrintStream, var3182=java.lang.System, var376=$r5}
; {org.apache.commons.logging.LogFactory=var567, null_type=var2488, r0=var2176, $z0=var1770, $z1=var915, java.io.PrintStream=var1585, java.lang.System=var3182, $r5=var376}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r0 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.String getSystemProperty(java.lang.String,java.lang.String)>("org.apache.commons.logging.diagnostics.dest", null);	if r0 != null goto (branch);	goto [?= $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("STDOUT")];	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("STDOUT");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("STDERR");	$z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("STDERR");	if $z1 == 0 goto $r1 = new java.io.FileOutputStream;	$r5 = <java.lang.System: java.io.PrintStream err>;	return $r5
;block_num 6