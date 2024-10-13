(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var28 0)
(declare-sort var1056 0)
(declare-sort var553 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toLowerCase/1946809429 (String var553) String)
(declare-fun osFamily/-1956698350 (var28) String)
(declare-const null-var28 var28)
(declare-const null-String String)
(declare-const var553-ENGLISH var553)
(declare-const var2417 var28) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask 
(assert (not (= var2417 null-var28)))
(declare-const var311 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var311 null-String)))
(define-const var229 var553 var553-ENGLISH) ; Statement: $r2 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var2199 String (toLowerCase/1946809429 var311 var229)) ; Statement: $r3 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
(declare-const var2417!1 var28)
(assert (not (= var2417!1 null-var28)))
(assert (= (osFamily/-1956698350 var2417!1) var2199)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask: java.lang.String osFamily> = $r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), osFamily/-1956698350=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask], java.lang.String)}
; {var28=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask, var2417=r0, var311=r1, var1056=null_type, var553=java.util.Locale, var229=$r2, var2199=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask=var28, r0=var2417, r1=var311, null_type=var1056, java.util.Locale=var553, $r2=var229, $r3=var2199}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask;	r1 := @parameter0: java.lang.String;	$r2 = <java.util.Locale: java.util.Locale ENGLISH>;	$r3 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask: java.lang.String osFamily> = $r3;	return
;block_num 1