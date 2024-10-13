(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2942 0)
(declare-sort var148 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun textBuffer/-134376592 (var2942) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var2942 var2942)
(declare-const null-String String)
(declare-const var2775 var2942) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat 
(assert (not (= var2775 null-var2942)))
(declare-const var3141 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3141 null-String)))
(define-const var2827 String (textBuffer/-134376592 var2775)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat: java.lang.StringBuffer textBuffer> 
 ; Statement: if $r1 != null goto $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat: java.lang.StringBuffer textBuffer> 
(assert (not (= var2827 null-String))) ; Cond: $r1 != null 
(define-const var1759 String (textBuffer/-134376592 var2775)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat: java.lang.StringBuffer textBuffer> 
(assert true)
;(assert (append/1560614132 var1759 var3141)) ; Statement: virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r2) 
(declare-const var1759!1 String)
(assert (str.prefixof var1759 var1759!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {textBuffer/-134376592=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat], java.lang.StringBuffer), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer)}
; {var2942=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat, var2775=r0, var3141=r2, var148=null_type, var2827=$r1, var1759=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat=var2942, r0=var2775, r2=var3141, null_type=var148, $r1=var2827, $r3=var1759}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat;	r2 := @parameter0: java.lang.String;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat: java.lang.StringBuffer textBuffer>;	if $r1 != null goto $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat: java.lang.StringBuffer textBuffer>;	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat: java.lang.StringBuffer textBuffer>;	virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r2);	return
;block_num 2