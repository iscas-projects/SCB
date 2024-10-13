(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3768 0)
(declare-sort var62 0)
(declare-sort var374 0)
(declare-sort var231 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var374_access$000/-295439901 (String) Bool)
(declare-fun toLowerCase/1946809429 (String var231) String)
(declare-fun name/-169414573 (var3768) String)
(declare-const null-var3768 var3768)
(declare-const null-String String)
(declare-const var231-ENGLISH var231)
(declare-const var3149 var3768) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef$TemplateElement 
(assert (not (= var3149 null-var3768)))
(declare-const var3042 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3042 null-String)))
(define-const var3013 Bool (var374_access$000/-295439901 var3042)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef: boolean access$000(java.lang.String)>(r0) 
 ; Statement: if $z0 != 0 goto $r2 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert (not (= (ite var3013 1 0) 0))) ; Cond: $z0 != 0 
(define-const var886 var231 var231-ENGLISH) ; Statement: $r2 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var3272 String (toLowerCase/1946809429 var3042 var886)) ; Statement: $r3 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
(declare-const var3149!1 var3768)
(assert (not (= var3149!1 null-var3768)))
(assert (= (name/-169414573 var3149!1) var3272)) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef$TemplateElement: java.lang.String name> = $r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var374_access$000/-295439901=([java.lang.String], boolean), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), name/-169414573=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef$TemplateElement], java.lang.String)}
; {var3768=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef$TemplateElement, var3149=r1, var3042=r0, var62=null_type, var374=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef, var3013=$z0, var231=java.util.Locale, var886=$r2, var3272=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef$TemplateElement=var3768, r1=var3149, r0=var3042, null_type=var62, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef=var374, $z0=var3013, java.util.Locale=var231, $r2=var886, $r3=var3272}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef$TemplateElement;	r0 := @parameter0: java.lang.String;	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef: boolean access$000(java.lang.String)>(r0);	if $z0 != 0 goto $r2 = <java.util.Locale: java.util.Locale ENGLISH>;	$r2 = <java.util.Locale: java.util.Locale ENGLISH>;	$r3 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef$TemplateElement: java.lang.String name> = $r3;	return
;block_num 2