(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2079 0)
(declare-sort var230 0)
(declare-sort var1969 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toLowerCase/1946809429 (String var1969) String)
(declare-fun version/570131187 (var2079) String)
(declare-const null-var2079 var2079)
(declare-const null-String String)
(declare-const var1969-ENGLISH var1969)
(declare-const var2606 var2079) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Os 
(assert (not (= var2606 null-var2079)))
(declare-const var2597 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2597 null-String)))
(define-const var353 var1969 var1969-ENGLISH) ; Statement: $r2 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var3729 String (toLowerCase/1946809429 var2597 var353)) ; Statement: $r3 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
(declare-const var2606!1 var2079)
(assert (not (= var2606!1 null-var2079)))
(assert (= (version/570131187 var2606!1) var3729)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Os: java.lang.String version> = $r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), version/570131187=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Os], java.lang.String)}
; {var2079=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Os, var2606=r0, var2597=r1, var230=null_type, var1969=java.util.Locale, var353=$r2, var3729=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Os=var2079, r0=var2606, r1=var2597, null_type=var230, java.util.Locale=var1969, $r2=var353, $r3=var3729}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Os;	r1 := @parameter0: java.lang.String;	$r2 = <java.util.Locale: java.util.Locale ENGLISH>;	$r3 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Os: java.lang.String version> = $r3;	return
;block_num 1