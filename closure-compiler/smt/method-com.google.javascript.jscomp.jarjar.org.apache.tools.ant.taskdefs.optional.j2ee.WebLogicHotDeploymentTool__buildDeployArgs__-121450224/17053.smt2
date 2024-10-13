(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2045 0)
(declare-sort var2832 0)
(declare-sort var249 0)
(declare-sort var3020 0)
(declare-sort var2572 0)
(declare-sort var865 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buildArgsPrefix/2045986213 (var2045) String)
(declare-fun application/1200311564 (var2045) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getTask/870774918 (var249) var2832)
(declare-fun cast-from-var2045-to-var249 (var2045) var249)
(declare-fun getSource/-212113548 (var2832) var3020)
(declare-fun append/-143899486 (String var2572) String)
(declare-fun cast-from-var3020-to-var2572 (var3020) var2572)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun component/1200311564 (var2045) String)
(declare-const null-var2045 var2045)
(declare-const null-String String)
(declare-const var750 var2045) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool 
(assert (not (= var750 null-var2045)))
(assert true)
(define-const var2440 String (buildArgsPrefix/2045986213 var750)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.StringBuffer buildArgsPrefix()>() 
(define-const var3033 String (application/1200311564 var750)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.String application> 
(assert true)
(define-const var3915 String (append/1560614132 var2440 var3033)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r1) 
(declare-const var2440!1 String)
(assert (str.prefixof var2440 var2440!1))
(assert true)
(define-const var1484 String (append/1560614132 var3915 " ")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ") 
(declare-const var3915!1 String)
(assert (str.prefixof var3915 var3915!1))
(assert true)
(define-const var859 var2832 (getTask/870774918 (cast-from-var2045-to-var249 var750))) ; Statement: $r4 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy getTask()>() 
(assert true)
(define-const var1996 var3020 (getSource/-212113548 var859)) ; Statement: $r5 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy: java.io.File getSource()>() 
(assert true)
(define-const var2789 String (append/-143899486 var1484 (cast-from-var3020-to-var2572 var1996))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>($r5) 
(assert true)
(define-const var2807 String (toString/-222306083 var2789)) ; Statement: r15 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
(define-const var1335 String (component/1200311564 var750)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.String component> 
 ; Statement: if $r8 == null goto return r15 
(assert (= var1335 null-String)) ; Cond: $r8 == null 
 ; Statement: return r15 
(check-sat)
(get-model)
(get-unsat-core)
; {buildArgsPrefix/2045986213=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool], java.lang.StringBuffer), application/1200311564=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), getTask/870774918=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.AbstractHotDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy), cast-from-var2045-to-var249=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.AbstractHotDeploymentTool), getSource/-212113548=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy], java.io.File), append/-143899486=([java.lang.StringBuffer, java.lang.Object], java.lang.StringBuffer), cast-from-var3020-to-var2572=([java.io.File], java.lang.Object), toString/-222306083=([java.lang.StringBuffer], java.lang.String), component/1200311564=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool], java.lang.String)}
; {var2045=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool, var750=r0, var2440=$r2, var3033=$r1, var3915=$r3, var1484=$r6, var2832=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy, var249=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.AbstractHotDeploymentTool, var859=$r4, var3020=java.io.File, var1996=$r5, var2572=java.lang.Object, var2789=$r7, var2807=r15, var1335=$r8, var865=null_type}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool=var2045, r0=var750, $r2=var2440, $r1=var3033, $r3=var3915, $r6=var1484, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy=var2832, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.AbstractHotDeploymentTool=var249, $r4=var859, java.io.File=var3020, $r5=var1996, java.lang.Object=var2572, $r7=var2789, r15=var2807, $r8=var1335, null_type=var865}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool;	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.StringBuffer buildArgsPrefix()>();	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.String application>;	$r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r1);	$r6 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ");	$r4 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy getTask()>();	$r5 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy: java.io.File getSource()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>($r5);	r15 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	$r8 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.String component>;	if $r8 == null goto return r15;	return r15
;block_num 2