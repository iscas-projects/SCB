(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var903 0)
(declare-sort var3080 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun innerGetTypeClass/-1905018958 (var903) ClassObject)
(declare-const null-var903 var903)
(declare-const null-var3080 var3080)
(declare-const var2261 var903) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition 
(assert (not (= var2261 null-var903)))
(declare-const var3330 var3080) ; Statement: r3 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var3330 null-var3080)))
(assert true) ; Non Conditional
(assert true)
(define-const var3094 ClassObject (innerGetTypeClass/-1905018958 var2261)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition: java.lang.Class innerGetTypeClass()>() 
(assert true) ; Non Conditional
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {innerGetTypeClass/-1905018958=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition], java.lang.Class)}
; {var903=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition, var2261=r0, var3080=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var3330=r3, var3094=$r1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition=var903, r0=var2261, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var3080, r3=var3330, $r1=var3094}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition;	r3 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition: java.lang.Class innerGetTypeClass()>();	return $r1
;block_num 3