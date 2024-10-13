(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var856 0)
(declare-sort var3145 0)
(declare-sort var3911 0)
(declare-sort var340 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3911_access$000/-295439901 (String) Bool)
(declare-fun toLowerCase/1946809429 (String var340) String)
(declare-fun name/1092105884 (var856) String)
(declare-const null-var856 var856)
(declare-const null-String String)
(declare-const var340-ENGLISH var340)
(declare-const var2850 var856) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef$Text 
(assert (not (= var2850 null-var856)))
(declare-const var89 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var89 null-String)))
(define-const var3936 Bool (var3911_access$000/-295439901 var89)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef: boolean access$000(java.lang.String)>(r0) 
 ; Statement: if $z0 != 0 goto $r2 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert (not (= (ite var3936 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3578 var340 var340-ENGLISH) ; Statement: $r2 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var3593 String (toLowerCase/1946809429 var89 var3578)) ; Statement: $r3 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
(declare-const var2850!1 var856)
(assert (not (= var2850!1 null-var856)))
(assert (= (name/1092105884 var2850!1) var3593)) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef$Text: java.lang.String name> = $r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3911_access$000/-295439901=([java.lang.String], boolean), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), name/1092105884=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef$Text], java.lang.String)}
; {var856=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef$Text, var2850=r1, var89=r0, var3145=null_type, var3911=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef, var3936=$z0, var340=java.util.Locale, var3578=$r2, var3593=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef$Text=var856, r1=var2850, r0=var89, null_type=var3145, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef=var3911, $z0=var3936, java.util.Locale=var340, $r2=var3578, $r3=var3593}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef$Text;	r0 := @parameter0: java.lang.String;	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef: boolean access$000(java.lang.String)>(r0);	if $z0 != 0 goto $r2 = <java.util.Locale: java.util.Locale ENGLISH>;	$r2 = <java.util.Locale: java.util.Locale ENGLISH>;	$r3 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef$Text: java.lang.String name> = $r3;	return
;block_num 2