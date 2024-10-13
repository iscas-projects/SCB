(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var523 0)
(declare-sort var2258 0)
(declare-sort var1758 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTask/870774918 (var1758) var2258)
(declare-fun cast-from-var523-to-var1758 (var523) var1758)
(declare-fun getAction/2030029772 (var2258) String)
(declare-fun buildDeployArgs/-121450224 (var523) String)
(declare-const null-var523 var523)
(declare-const var1007 var523) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool 
(assert (not (= var1007 null-var523)))
(assert true)
(define-const var2926 var2258 (getTask/870774918 (cast-from-var523-to-var1758 var1007))) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy getTask()>() 
(assert true)
(define-const var3866 String (getAction/2030029772 var2926)) ; Statement: r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy: java.lang.String getAction()>() 
(assert true)
(define-const var2326 Bool (= var3866 "deploy")) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("deploy") 
 ; Statement: if $z0 != 0 goto $r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.String buildDeployArgs()>() 
(assert (not (= (ite var2326 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var3663 String (buildDeployArgs/-121450224 var1007)) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.String buildDeployArgs()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getTask/870774918=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.AbstractHotDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy), cast-from-var523-to-var1758=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.AbstractHotDeploymentTool), getAction/2030029772=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy], java.lang.String), buildDeployArgs/-121450224=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool], java.lang.String)}
; {var523=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool, var1007=r0, var2258=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy, var1758=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.AbstractHotDeploymentTool, var2926=$r1, var3866=r2, var2326=$z0, var3663=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool=var523, r0=var1007, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy=var2258, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.AbstractHotDeploymentTool=var1758, $r1=var2926, r2=var3866, $z0=var2326, $r3=var3663}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy getTask()>();	r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy: java.lang.String getAction()>();	$z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("deploy");	if $z0 != 0 goto $r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.String buildDeployArgs()>();	$r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.String buildDeployArgs()>();	return $r3
;block_num 2