(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3029 0)
(declare-sort var1459 0)
(declare-sort var3085 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun config/-208040463 (var3029) var1459)
(declare-fun analyzer/2019956101 (var1459) String)
(declare-const null-var3029 var3029)
(declare-const null-String String)
(declare-const var933 var3029) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool 
(assert (not (= var933 null-var3029)))
(define-const var3899 var1459 (config/-208040463 var933)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config config> 
(define-const var2184 String (analyzer/2019956101 var3899)) ; Statement: r20 = $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.lang.String analyzer> 
 ; Statement: if r20 != null goto $z0 = virtualinvoke r20.<java.lang.String: boolean equals(java.lang.Object)>("none") 
(assert (not (= var2184 null-String))) ; Cond: r20 != null 
(assert true)
(define-const var1420 Bool (= var2184 "none")) ; Statement: $z0 = virtualinvoke r20.<java.lang.String: boolean equals(java.lang.Object)>("none") 
 ; Statement: if $z0 == 0 goto b1 = -1 
(assert (not (= (ite var1420 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {config/-208040463=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config), analyzer/2019956101=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config], java.lang.String)}
; {var3029=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, var933=r0, var1459=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config, var3899=$r1, var2184=r20, var3085=null_type, var1420=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool=var3029, r0=var933, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config=var1459, $r1=var3899, r20=var2184, null_type=var3085, $z0=var1420}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config config>;	r20 = $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.lang.String analyzer>;	if r20 != null goto $z0 = virtualinvoke r20.<java.lang.String: boolean equals(java.lang.Object)>("none");	$z0 = virtualinvoke r20.<java.lang.String: boolean equals(java.lang.Object)>("none");	if $z0 == 0 goto b1 = -1;	return
;block_num 3