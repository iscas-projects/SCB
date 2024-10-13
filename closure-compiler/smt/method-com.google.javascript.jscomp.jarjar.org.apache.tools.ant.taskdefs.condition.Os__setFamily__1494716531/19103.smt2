(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3581 0)
(declare-sort var2446 0)
(declare-sort var2115 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toLowerCase/1946809429 (String var2115) String)
(declare-fun family/570131187 (var3581) String)
(declare-const null-var3581 var3581)
(declare-const null-String String)
(declare-const var2115-ENGLISH var2115)
(declare-const var3791 var3581) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Os 
(assert (not (= var3791 null-var3581)))
(declare-const var1138 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1138 null-String)))
(define-const var3904 var2115 var2115-ENGLISH) ; Statement: $r2 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var1010 String (toLowerCase/1946809429 var1138 var3904)) ; Statement: $r3 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
(declare-const var3791!1 var3581)
(assert (not (= var3791!1 null-var3581)))
(assert (= (family/570131187 var3791!1) var1010)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Os: java.lang.String family> = $r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), family/570131187=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Os], java.lang.String)}
; {var3581=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Os, var3791=r0, var1138=r1, var2446=null_type, var2115=java.util.Locale, var3904=$r2, var1010=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Os=var3581, r0=var3791, r1=var1138, null_type=var2446, java.util.Locale=var2115, $r2=var3904, $r3=var1010}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Os;	r1 := @parameter0: java.lang.String;	$r2 = <java.util.Locale: java.util.Locale ENGLISH>;	$r3 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Os: java.lang.String family> = $r3;	return
;block_num 1