(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3686 0)
(declare-sort var2558 0)
(declare-sort var3022 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toLowerCase/1946809429 (String var3022) String)
(declare-fun arch/570131187 (var3686) String)
(declare-const null-var3686 var3686)
(declare-const null-String String)
(declare-const var3022-ENGLISH var3022)
(declare-const var468 var3686) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Os 
(assert (not (= var468 null-var3686)))
(declare-const var1796 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1796 null-String)))
(define-const var2399 var3022 var3022-ENGLISH) ; Statement: $r2 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var1613 String (toLowerCase/1946809429 var1796 var2399)) ; Statement: $r3 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
(declare-const var468!1 var3686)
(assert (not (= var468!1 null-var3686)))
(assert (= (arch/570131187 var468!1) var1613)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Os: java.lang.String arch> = $r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), arch/570131187=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Os], java.lang.String)}
; {var3686=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Os, var468=r0, var1796=r1, var2558=null_type, var3022=java.util.Locale, var2399=$r2, var1613=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Os=var3686, r0=var468, r1=var1796, null_type=var2558, java.util.Locale=var3022, $r2=var2399, $r3=var1613}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Os;	r1 := @parameter0: java.lang.String;	$r2 = <java.util.Locale: java.util.Locale ENGLISH>;	$r3 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Os: java.lang.String arch> = $r3;	return
;block_num 1