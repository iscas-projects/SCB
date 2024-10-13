(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3573 0)
(declare-sort var1514 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun replaceFirst/750800361 (String String String) String)
(declare-const null-var3573 var3573)
(declare-const null-String String)
(declare-const var3853 var3573) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool 
(assert (not (= var3853 null-var3573)))
(declare-const var2495 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2495 null-String)))
(assert true)
(define-const var1298 String (replaceFirst/750800361 var2495 "\u005c.java$" ".class")) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String replaceFirst(java.lang.String,java.lang.String)>("\\.java$", ".class") 
(assert (= (replaceFirst/750800361 var2495 "\u005c.java$" ".class") (str.replace_re var2495 (str.to_re ".java$") ".class")))
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {replaceFirst/750800361=([java.lang.String, java.lang.String, java.lang.String], java.lang.String)}
; {var3573=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool, var3853=r2, var2495=r0, var1514=null_type, var1298=$r1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool=var3573, r2=var3853, r0=var2495, null_type=var1514, $r1=var1298}
;seq <java.lang.String: java.lang.String replaceFirst(java.lang.String,java.lang.String)>
;cnt {"<java.lang.String: java.lang.String replaceFirst(java.lang.String,java.lang.String)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool;	r0 := @parameter0: java.lang.String;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String replaceFirst(java.lang.String,java.lang.String)>("\\.java$", ".class");	return $r1
;block_num 1