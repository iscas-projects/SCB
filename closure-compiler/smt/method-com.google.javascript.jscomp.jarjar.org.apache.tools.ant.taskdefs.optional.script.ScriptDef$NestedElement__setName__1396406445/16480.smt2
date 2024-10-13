(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3797 0)
(declare-sort var633 0)
(declare-sort var1091 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toLowerCase/1946809429 (String var1091) String)
(declare-fun name/74445130 (var3797) String)
(declare-const null-var3797 var3797)
(declare-const null-String String)
(declare-const var1091-ENGLISH var1091)
(declare-const var3354 var3797) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.script.ScriptDef$NestedElement 
(assert (not (= var3354 null-var3797)))
(declare-const var577 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var577 null-String)))
(define-const var3185 var1091 var1091-ENGLISH) ; Statement: $r2 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var2490 String (toLowerCase/1946809429 var577 var3185)) ; Statement: $r3 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
(declare-const var3354!1 var3797)
(assert (not (= var3354!1 null-var3797)))
(assert (= (name/74445130 var3354!1) var2490)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.script.ScriptDef$NestedElement: java.lang.String name> = $r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), name/74445130=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.script.ScriptDef$NestedElement], java.lang.String)}
; {var3797=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.script.ScriptDef$NestedElement, var3354=r0, var577=r1, var633=null_type, var1091=java.util.Locale, var3185=$r2, var2490=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.script.ScriptDef$NestedElement=var3797, r0=var3354, r1=var577, null_type=var633, java.util.Locale=var1091, $r2=var3185, $r3=var2490}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.script.ScriptDef$NestedElement;	r1 := @parameter0: java.lang.String;	$r2 = <java.util.Locale: java.util.Locale ENGLISH>;	$r3 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.script.ScriptDef$NestedElement: java.lang.String name> = $r3;	return
;block_num 1