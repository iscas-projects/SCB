(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3647 0)
(declare-sort var918 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun text/72062773 (var3647) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var3647 var3647)
(declare-const null-String String)
(declare-const var763 var3647) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$Html 
(assert (not (= var763 null-var3647)))
(declare-const var3616 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3616 null-String)))
(define-const var3999 String (text/72062773 var763)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$Html: java.lang.StringBuffer text> 
(assert true)
;(assert (append/1560614132 var3999 var3616)) ; Statement: virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1) 
(declare-const var3999!1 String)
(assert (str.prefixof var3999 var3999!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {text/72062773=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$Html], java.lang.StringBuffer), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer)}
; {var3647=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$Html, var763=r0, var3616=r1, var918=null_type, var3999=$r2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$Html=var3647, r0=var763, r1=var3616, null_type=var918, $r2=var3999}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$Html;	r1 := @parameter0: java.lang.String;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$Html: java.lang.StringBuffer text>;	virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1);	return
;block_num 1