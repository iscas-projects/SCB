(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1290 0)
(declare-sort var1444 0)
(declare-sort var1687 0)
(declare-sort var1407 0)
(declare-sort var1634 0)
(declare-sort var1121 0)
(declare-sort var2087 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun addText/1960194218 (var1290) var1634)
(declare-fun arr-var1687-init () (Array Int var1687))
(declare-fun cast-from-String-to-var1687 (String) var1687)
(declare-fun var1290_extractBuildException/-962569140 (var1121) var2087)
(declare-const null-var1290 var1290)
(declare-const null-var1444 var1444)
(declare-const null-var1687 var1687)
(declare-const null-String String)
(declare-const null-var1634 var1634)
(declare-const null-__Array__Int__var1687__ (Array Int var1687))
(declare-const null-var1121 var1121)
(declare-const var2594 var1290) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper 
(assert (not (= var2594 null-var1290)))
(declare-const var1073 var1444) ; Statement: r7 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var1073 null-var1444)))
(declare-const var3511 var1687) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var3511 null-var1687)))
(declare-const var3443 String) ; Statement: r19 := @parameter2: java.lang.String 
(assert (not (= var3443 null-String)))
(define-const var1007 var1634 (addText/1960194218 var2594)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.lang.reflect.Method addText> 
 ; Statement: if $r1 != null goto $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.lang.reflect.Method addText> 
(assert (not (= var1007 null-var1634))) ; Cond: $r1 != null 
(define-const var3165 var1634 (addText/1960194218 var2594)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.lang.reflect.Method addText> 
(define-const var3752 (Array Int var1687) arr-var1687-init) ; Statement: $r3 = newarray (java.lang.Object)[1] 
(declare-const var3752!1 (Array Int var1687))
(assert (not (= var3752!1 null-__Array__Int__var1687__)))
(assert (= (select var3752!1 0) (cast-from-String-to-var1687 var3443))) ; Statement: $r3[0] = r19 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1866 var1121) ; Statement: $r15 := @caughtexception 
(assert (not (= var1866 null-var1121)))
(define-const var2474 var2087 (var1290_extractBuildException/-962569140 var1866)) ; Statement: $r16 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException extractBuildException(java.lang.reflect.InvocationTargetException)>($r15) 
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {addText/1960194218=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper], java.lang.reflect.Method), arr-var1687-init=([], java.lang.Object[]), cast-from-String-to-var1687=([java.lang.String], java.lang.Object), var1290_extractBuildException/-962569140=([java.lang.reflect.InvocationTargetException], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException)}
; {var1290=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper, var2594=r0, var1444=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var1073=r7, var1687=java.lang.Object, var3511=r2, var3443=r19, var1407=null_type, var1634=java.lang.reflect.Method, var1007=$r1, var3165=$r4, var3752=$r3, var1121=java.lang.reflect.InvocationTargetException, var1866=$r15, var2087=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2474=$r16}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper=var1290, r0=var2594, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var1444, r7=var1073, java.lang.Object=var1687, r2=var3511, r19=var3443, null_type=var1407, java.lang.reflect.Method=var1634, $r1=var1007, $r4=var3165, $r3=var3752, java.lang.reflect.InvocationTargetException=var1121, $r15=var1866, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var2087, $r16=var2474}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper;	r7 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	r2 := @parameter1: java.lang.Object;	r19 := @parameter2: java.lang.String;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.lang.reflect.Method addText>;	if $r1 != null goto $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.lang.reflect.Method addText>;	$r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.lang.reflect.Method addText>;	$r3 = newarray (java.lang.Object)[1];	$r3[0] = r19;	$r15 := @caughtexception;	$r16 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException extractBuildException(java.lang.reflect.InvocationTargetException)>($r15);	throw $r16
;block_num 3