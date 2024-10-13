(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var710 0)
(declare-sort var2577 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun clazz/-1461999723 (var710) ClassObject)
(declare-fun adapterClass/-1461999723 (var710) ClassObject)
(declare-const null-var710 var710)
(declare-const null-var2577 var2577)
(declare-const null-ClassObject ClassObject)
(declare-const var2841 var710) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition 
(assert (not (= var2841 null-var710)))
(declare-const var1548 var2577) ; Statement: r4 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var1548 null-var2577)))
(define-const var3197 ClassObject (clazz/-1461999723 var2841)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition: java.lang.Class clazz> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition: java.lang.Class adapterClass> 
(assert (not (= var3197 null-ClassObject))) ; Cond: $r1 != null 
(define-const var3857 ClassObject (adapterClass/-1461999723 var2841)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition: java.lang.Class adapterClass> 
 ; Statement: if $r2 == null goto return 
(assert (= var3857 null-ClassObject)) ; Cond: $r2 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {clazz/-1461999723=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition], java.lang.Class), adapterClass/-1461999723=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition], java.lang.Class)}
; {var710=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition, var2841=r0, var2577=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var1548=r4, var3197=$r1, var3857=$r2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition=var710, r0=var2841, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var2577, r4=var1548, $r1=var3197, $r2=var3857}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition;	r4 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition: java.lang.Class clazz>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition: java.lang.Class adapterClass>;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition: java.lang.Class adapterClass>;	if $r2 == null goto return;	return
;block_num 3