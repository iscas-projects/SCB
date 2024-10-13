(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2683 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun text/72062773 (var2683) String)
(declare-fun substring/1996688697 (String Int) String)
(declare-const null-var2683 var2683)
(declare-const var265 var2683) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$Html 
(assert (not (= var265 null-var2683)))
(define-const var812 String (text/72062773 var265)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$Html: java.lang.StringBuffer text> 
(assert true)
(define-const var2676 String (substring/1996688697 var812 0)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.String substring(int)>(0) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {text/72062773=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$Html], java.lang.StringBuffer), substring/1996688697=([java.lang.StringBuffer, int], java.lang.String)}
; {var2683=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$Html, var265=r0, var812=$r1, var2676=$r2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$Html=var2683, r0=var265, $r1=var812, $r2=var2676}
;seq <java.lang.StringBuffer: java.lang.String substring(int)>
;cnt {"<java.lang.StringBuffer: java.lang.String substring(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$Html;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$Html: java.lang.StringBuffer text>;	$r2 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.String substring(int)>(0);	return $r2
;block_num 1