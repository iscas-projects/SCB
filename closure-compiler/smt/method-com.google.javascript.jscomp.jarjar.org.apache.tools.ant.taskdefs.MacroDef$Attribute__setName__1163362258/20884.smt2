(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1132 0)
(declare-sort var3110 0)
(declare-sort var3462 0)
(declare-sort var1487 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3462_access$000/-295439901 (String) Bool)
(declare-fun toLowerCase/1946809429 (String var1487) String)
(declare-fun name/568215181 (var1132) String)
(declare-const null-var1132 var1132)
(declare-const null-String String)
(declare-const var1487-ENGLISH var1487)
(declare-const var2958 var1132) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef$Attribute 
(assert (not (= var2958 null-var1132)))
(declare-const var3820 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3820 null-String)))
(define-const var3585 Bool (var3462_access$000/-295439901 var3820)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef: boolean access$000(java.lang.String)>(r0) 
 ; Statement: if $z0 != 0 goto $r2 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert (not (= (ite var3585 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2841 var1487 var1487-ENGLISH) ; Statement: $r2 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var792 String (toLowerCase/1946809429 var3820 var2841)) ; Statement: $r3 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
(declare-const var2958!1 var1132)
(assert (not (= var2958!1 null-var1132)))
(assert (= (name/568215181 var2958!1) var792)) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef$Attribute: java.lang.String name> = $r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3462_access$000/-295439901=([java.lang.String], boolean), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), name/568215181=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef$Attribute], java.lang.String)}
; {var1132=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef$Attribute, var2958=r1, var3820=r0, var3110=null_type, var3462=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef, var3585=$z0, var1487=java.util.Locale, var2841=$r2, var792=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef$Attribute=var1132, r1=var2958, r0=var3820, null_type=var3110, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef=var3462, $z0=var3585, java.util.Locale=var1487, $r2=var2841, $r3=var792}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef$Attribute;	r0 := @parameter0: java.lang.String;	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef: boolean access$000(java.lang.String)>(r0);	if $z0 != 0 goto $r2 = <java.util.Locale: java.util.Locale ENGLISH>;	$r2 = <java.util.Locale: java.util.Locale ENGLISH>;	$r3 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.MacroDef$Attribute: java.lang.String name> = $r3;	return
;block_num 2