(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1792 0)
(declare-sort var2959 0)
(declare-sort var513 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun project/-241981961 (var1792) var2959)
(declare-fun getReferencedObject/1412026365 (var1792 var2959) var513)
(declare-const null-var1792 var1792)
(declare-const null-var2959 var2959)
(declare-const var735 var1792) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Reference 
(assert (not (= var735 null-var1792)))
(define-const var1847 var2959 (project/-241981961 var735)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Reference: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project project> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Reference: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project project> 
(assert (not (= var1847 null-var2959))) ; Cond: $r1 != null 
(define-const var1213 var2959 (project/-241981961 var735)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Reference: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project project> 
(assert true)
(define-const var2177 var513 (getReferencedObject/1412026365 var735 var1213)) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Reference: java.lang.Object getReferencedObject(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project)>($r2) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {project/-241981961=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Reference], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), getReferencedObject/1412026365=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Reference, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project], java.lang.Object)}
; {var1792=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Reference, var735=r0, var2959=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var1847=$r1, var1213=$r2, var513=java.lang.Object, var2177=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Reference=var1792, r0=var735, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var2959, $r1=var1847, $r2=var1213, java.lang.Object=var513, $r3=var2177}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Reference;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Reference: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project project>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Reference: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project project>;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Reference: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project project>;	$r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Reference: java.lang.Object getReferencedObject(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project)>($r2);	return $r3
;block_num 2