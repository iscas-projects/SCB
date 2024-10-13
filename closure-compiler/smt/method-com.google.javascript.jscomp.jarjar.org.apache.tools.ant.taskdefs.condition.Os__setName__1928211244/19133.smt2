(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3591 0)
(declare-sort var2165 0)
(declare-sort var1883 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toLowerCase/1946809429 (String var1883) String)
(declare-fun name/570131187 (var3591) String)
(declare-const null-var3591 var3591)
(declare-const null-String String)
(declare-const var1883-ENGLISH var1883)
(declare-const var2358 var3591) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Os 
(assert (not (= var2358 null-var3591)))
(declare-const var2763 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2763 null-String)))
(define-const var3358 var1883 var1883-ENGLISH) ; Statement: $r2 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var2741 String (toLowerCase/1946809429 var2763 var3358)) ; Statement: $r3 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
(declare-const var2358!1 var3591)
(assert (not (= var2358!1 null-var3591)))
(assert (= (name/570131187 var2358!1) var2741)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Os: java.lang.String name> = $r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), name/570131187=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Os], java.lang.String)}
; {var3591=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Os, var2358=r0, var2763=r1, var2165=null_type, var1883=java.util.Locale, var3358=$r2, var2741=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Os=var3591, r0=var2358, r1=var2763, null_type=var2165, java.util.Locale=var1883, $r2=var3358, $r3=var2741}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Os;	r1 := @parameter0: java.lang.String;	$r2 = <java.util.Locale: java.util.Locale ENGLISH>;	$r3 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Os: java.lang.String name> = $r3;	return
;block_num 1