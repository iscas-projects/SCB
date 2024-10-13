(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3900 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buildArgsPrefix/2045986213 (var3900) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var3900 var3900)
(declare-const var3156 var3900) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool 
(assert (not (= var3156 null-var3900)))
(assert true)
(define-const var1367 String (buildArgsPrefix/2045986213 var3156)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.StringBuffer buildArgsPrefix()>() 
(assert true)
(define-const var492 String (toString/-222306083 var1367)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {buildArgsPrefix/2045986213=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var3900=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool, var3156=r0, var1367=$r1, var492=$r2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool=var3900, r0=var3156, $r1=var1367, $r2=var492}
;seq <java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.StringBuffer buildArgsPrefix()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.String toString()>();	return $r2
;block_num 1