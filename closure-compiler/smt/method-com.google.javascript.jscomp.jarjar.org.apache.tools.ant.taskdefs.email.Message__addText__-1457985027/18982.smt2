(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3720 0)
(declare-sort var3952 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buffer/-1672746023 (var3720) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var3720 var3720)
(declare-const null-String String)
(declare-const var668 var3720) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message 
(assert (not (= var668 null-var3720)))
(declare-const var2164 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2164 null-String)))
(define-const var3184 String (buffer/-1672746023 var668)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: java.lang.StringBuffer buffer> 
(assert true)
;(assert (append/1560614132 var3184 var2164)) ; Statement: virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1) 
(declare-const var3184!1 String)
(assert (str.prefixof var3184 var3184!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {buffer/-1672746023=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message], java.lang.StringBuffer), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer)}
; {var3720=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message, var668=r0, var2164=r1, var3952=null_type, var3184=$r2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message=var3720, r0=var668, r1=var2164, null_type=var3952, $r2=var3184}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message;	r1 := @parameter0: java.lang.String;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.Message: java.lang.StringBuffer buffer>;	virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1);	return
;block_num 1