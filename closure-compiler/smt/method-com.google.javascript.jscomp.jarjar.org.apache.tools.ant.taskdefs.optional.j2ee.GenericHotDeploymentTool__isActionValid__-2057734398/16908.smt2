(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3491 0)
(declare-sort var2991 0)
(declare-sort var2233 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTask/870774918 (var2233) var2991)
(declare-fun cast-from-var3491-to-var2233 (var3491) var2233)
(declare-fun getAction/2030029772 (var2991) String)
(declare-const null-var3491 var3491)
(declare-const var3491-VALID_ACTIONS (Array Int String))
(declare-const var1966 var3491) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.GenericHotDeploymentTool 
(assert (not (= var1966 null-var3491)))
(assert true)
(define-const var3436 var2991 (getTask/870774918 (cast-from-var3491-to-var2233 var1966))) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.GenericHotDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy getTask()>() 
(assert true)
(define-const var2472 String (getAction/2030029772 var3436)) ; Statement: $r4 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy: java.lang.String getAction()>() 
(define-const var3749 (Array Int String) var3491-VALID_ACTIONS) ; Statement: $r2 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.GenericHotDeploymentTool: java.lang.String[] VALID_ACTIONS> 
(define-const var1374 String (select var3749 0)) ; Statement: $r3 = $r2[0] 
(assert true)
(define-const var1621 Bool (= var2472 var1374)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {getTask/870774918=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.AbstractHotDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy), cast-from-var3491-to-var2233=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.GenericHotDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.AbstractHotDeploymentTool), getAction/2030029772=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy], java.lang.String)}
; {var3491=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.GenericHotDeploymentTool, var1966=r0, var2991=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy, var2233=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.AbstractHotDeploymentTool, var3436=$r1, var2472=$r4, var3749=$r2, var1374=$r3, var1621=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.GenericHotDeploymentTool=var3491, r0=var1966, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy=var2991, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.AbstractHotDeploymentTool=var2233, $r1=var3436, $r4=var2472, $r2=var3749, $r3=var1374, $z0=var1621}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.GenericHotDeploymentTool;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.GenericHotDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy getTask()>();	$r4 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy: java.lang.String getAction()>();	$r2 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.GenericHotDeploymentTool: java.lang.String[] VALID_ACTIONS>;	$r3 = $r2[0];	$z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3);	return $z0
;block_num 1