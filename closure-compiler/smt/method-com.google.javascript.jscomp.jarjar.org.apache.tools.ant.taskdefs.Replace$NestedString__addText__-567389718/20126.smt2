(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2006 0)
(declare-sort var861 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-605703340 (var2006) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var2006 var2006)
(declare-const null-String String)
(declare-const var1982 var2006) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$NestedString 
(assert (not (= var1982 null-var2006)))
(declare-const var1438 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1438 null-String)))
(define-const var448 String (buf/-605703340 var1982)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$NestedString: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var448 var1438)) ; Statement: virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1) 
(declare-const var448!1 String)
(assert (str.prefixof var448 var448!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-605703340=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$NestedString], java.lang.StringBuffer), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer)}
; {var2006=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$NestedString, var1982=r0, var1438=r1, var861=null_type, var448=$r2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$NestedString=var2006, r0=var1982, r1=var1438, null_type=var861, $r2=var448}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$NestedString;	r1 := @parameter0: java.lang.String;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$NestedString: java.lang.StringBuffer buf>;	virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1);	return
;block_num 1