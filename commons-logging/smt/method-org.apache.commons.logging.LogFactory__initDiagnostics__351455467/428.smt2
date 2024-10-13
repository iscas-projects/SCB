(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1117 0)
(declare-sort var2219 0)
(declare-sort var2708 0)
(declare-sort var1242 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1117_getSystemProperty/-1097177229 (String String) String)
(declare-const null-String String)
(declare-const var1242-out var2708)
(define-const var58 String (var1117_getSystemProperty/-1097177229 "org.apache.commons.logging.diagnostics.dest" null-String)) ; Statement: r0 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.String getSystemProperty(java.lang.String,java.lang.String)>("org.apache.commons.logging.diagnostics.dest", null) 
(assert true) ; Non Conditional
 ; Statement: if r0 != null goto (branch) 
(assert (not (= var58 null-String))) ; Cond: r0 != null 
 ; Statement: goto [?= $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("STDOUT")] 
(assert true) ; Non Conditional
(assert true)
(define-const var3585 Bool (= var58 "STDOUT")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("STDOUT") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("STDERR") 
(assert (not (= (ite var3585 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1976 var2708 var1242-out) ; Statement: $r6 = <java.lang.System: java.io.PrintStream out> 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var1117_getSystemProperty/-1097177229=([java.lang.String, java.lang.String], java.lang.String)}
; {var1117=org.apache.commons.logging.LogFactory, var2219=null_type, var58=r0, var3585=$z0, var2708=java.io.PrintStream, var1242=java.lang.System, var1976=$r6}
; {org.apache.commons.logging.LogFactory=var1117, null_type=var2219, r0=var58, $z0=var3585, java.io.PrintStream=var2708, java.lang.System=var1242, $r6=var1976}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 = staticinvoke <org.apache.commons.logging.LogFactory: java.lang.String getSystemProperty(java.lang.String,java.lang.String)>("org.apache.commons.logging.diagnostics.dest", null);	if r0 != null goto (branch);	goto [?= $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("STDOUT")];	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("STDOUT");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("STDERR");	$r6 = <java.lang.System: java.io.PrintStream out>;	return $r6
;block_num 5