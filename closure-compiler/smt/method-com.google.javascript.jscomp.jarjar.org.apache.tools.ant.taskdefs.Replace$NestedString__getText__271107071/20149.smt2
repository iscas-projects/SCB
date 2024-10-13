(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2706 0)
(declare-sort var1006 0)
(declare-sort var2584 0)
(declare-sort var3414 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buf/-605703340 (var2706) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun expandProperties/-605703340 (var2706) Bool)
(declare-fun this$0/-605703340 (var2706) var1006)
(declare-fun getProject/416672769 (var3414) var2584)
(declare-fun cast-from-var1006-to-var3414 (var1006) var3414)
(declare-fun replaceProperties/-453140326 (var2584 String) String)
(declare-const null-var2706 var2706)
(declare-const var1151 var2706) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$NestedString 
(assert (not (= var1151 null-var2706)))
(define-const var1332 String (buf/-605703340 var1151)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$NestedString: java.lang.StringBuffer buf> 
(assert true)
(define-const var1971 String (toString/-222306083 var1332)) ; Statement: r2 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.String toString()>() 
(define-const var2911 Bool (expandProperties/-605703340 var1151)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$NestedString: boolean expandProperties> 
 ; Statement: if $z0 == 0 goto $r5 = r2 
(assert (not (= (ite var2911 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1951 var1006 (this$0/-605703340 var1151)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$NestedString: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace this$0> 
(assert true)
(define-const var2244 var2584 (getProject/416672769 (cast-from-var1006-to-var3414 var1951))) ; Statement: $r4 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(assert true)
(define-const var3822 String (replaceProperties/-453140326 var2244 var1971)) ; Statement: $r5 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String replaceProperties(java.lang.String)>(r2) 
 ; Statement: goto [?= return $r5] 
(assert true) ; Non Conditional
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {buf/-605703340=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$NestedString], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), expandProperties/-605703340=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$NestedString], boolean), this$0/-605703340=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$NestedString], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace), getProject/416672769=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), cast-from-var1006-to-var3414=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), replaceProperties/-453140326=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String], java.lang.String)}
; {var2706=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$NestedString, var1151=r0, var1332=$r1, var1971=r2, var2911=$z0, var1006=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace, var1951=$r3, var2584=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var3414=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var2244=$r4, var3822=$r5}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$NestedString=var2706, r0=var1151, $r1=var1332, r2=var1971, $z0=var2911, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace=var1006, $r3=var1951, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var2584, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var3414, $r4=var2244, $r5=var3822}
;seq <java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$NestedString;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$NestedString: java.lang.StringBuffer buf>;	r2 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.String toString()>();	$z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$NestedString: boolean expandProperties>;	if $z0 == 0 goto $r5 = r2;	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace$NestedString: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace this$0>;	$r4 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Replace: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	$r5 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String replaceProperties(java.lang.String)>(r2);	goto [?= return $r5];	return $r5
;block_num 3