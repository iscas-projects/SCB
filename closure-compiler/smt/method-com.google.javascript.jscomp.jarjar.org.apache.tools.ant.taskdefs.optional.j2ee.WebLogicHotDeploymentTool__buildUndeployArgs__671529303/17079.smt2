(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var745 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buildArgsPrefix/2045986213 (var745) String)
(declare-fun application/1200311564 (var745) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var745 var745)
(declare-const var790 var745) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool 
(assert (not (= var790 null-var745)))
(assert true)
(define-const var3097 String (buildArgsPrefix/2045986213 var790)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.StringBuffer buildArgsPrefix()>() 
(define-const var319 String (application/1200311564 var790)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.String application> 
(assert true)
(define-const var1645 String (append/1560614132 var3097 var319)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r1) 
(declare-const var3097!1 String)
(assert (str.prefixof var3097 var3097!1))
(assert true)
(define-const var418 String (append/1560614132 var1645 " ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ") 
(declare-const var1645!1 String)
(assert (str.prefixof var1645 var1645!1))
(assert true)
(define-const var1321 String (toString/-222306083 var418)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {buildArgsPrefix/2045986213=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool], java.lang.StringBuffer), application/1200311564=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var745=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool, var790=r0, var3097=$r2, var319=$r1, var1645=$r3, var418=$r4, var1321=$r5}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool=var745, r0=var790, $r2=var3097, $r1=var319, $r3=var1645, $r4=var418, $r5=var1321}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool;	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.StringBuffer buildArgsPrefix()>();	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.String application>;	$r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ");	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.String toString()>();	return $r5
;block_num 1