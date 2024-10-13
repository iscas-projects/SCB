(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1401 0)
(declare-sort var2706 0)
(declare-sort var1332 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toLowerCase/1946809429 (String var1332) String)
(declare-fun name/1357669473 (var1401) String)
(declare-const null-var1401 var1401)
(declare-const null-String String)
(declare-const var1332-ENGLISH var1332)
(declare-const var2494 var1401) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.script.ScriptDef$Attribute 
(assert (not (= var2494 null-var1401)))
(declare-const var1856 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1856 null-String)))
(define-const var2670 var1332 var1332-ENGLISH) ; Statement: $r2 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var1317 String (toLowerCase/1946809429 var1856 var2670)) ; Statement: $r3 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
(declare-const var2494!1 var1401)
(assert (not (= var2494!1 null-var1401)))
(assert (= (name/1357669473 var2494!1) var1317)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.script.ScriptDef$Attribute: java.lang.String name> = $r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), name/1357669473=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.script.ScriptDef$Attribute], java.lang.String)}
; {var1401=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.script.ScriptDef$Attribute, var2494=r0, var1856=r1, var2706=null_type, var1332=java.util.Locale, var2670=$r2, var1317=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.script.ScriptDef$Attribute=var1401, r0=var2494, r1=var1856, null_type=var2706, java.util.Locale=var1332, $r2=var2670, $r3=var1317}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.script.ScriptDef$Attribute;	r1 := @parameter0: java.lang.String;	$r2 = <java.util.Locale: java.util.Locale ENGLISH>;	$r3 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.script.ScriptDef$Attribute: java.lang.String name> = $r3;	return
;block_num 1