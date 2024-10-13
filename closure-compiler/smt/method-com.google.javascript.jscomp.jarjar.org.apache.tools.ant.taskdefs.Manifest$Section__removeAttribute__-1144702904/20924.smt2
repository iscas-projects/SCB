(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var934 0)
(declare-sort var2669 0)
(declare-sort var155 0)
(declare-sort var344 0)
(declare-sort var3586 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toLowerCase/1946809429 (String var155) String)
(declare-fun attributes/-1600565588 (var934) var344)
(declare-fun var344_remove/-1201052315 (var344 var3586) var3586)
(declare-fun cast-from-String-to-var3586 (String) var3586)
(declare-const null-var934 var934)
(declare-const null-String String)
(declare-const var155-ENGLISH var155)
(declare-const var1811 var934) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Section 
(assert (not (= var1811 null-var934)))
(declare-const var233 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var233 null-String)))
(define-const var3672 var155 var155-ENGLISH) ; Statement: $r1 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var219 String (toLowerCase/1946809429 var233 var3672)) ; Statement: r2 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
(define-const var1271 var344 (attributes/-1600565588 var1811)) ; Statement: $r4 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Section: java.util.Map attributes> 
;(assert (var344_remove/-1201052315 var1271 (cast-from-String-to-var3586 var219))) ; Statement: interfaceinvoke $r4.<java.util.Map: java.lang.Object remove(java.lang.Object)>(r2) 

(declare-const var1271!1 var344)
(declare-const var219!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), attributes/-1600565588=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Section], java.util.Map), var344_remove/-1201052315=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var3586=([java.lang.String], java.lang.Object)}
; {var934=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Section, var1811=r3, var233=r0, var2669=null_type, var155=java.util.Locale, var3672=$r1, var219=r2, var344=java.util.Map, var1271=$r4, var3586=java.lang.Object}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Section=var934, r3=var1811, r0=var233, null_type=var2669, java.util.Locale=var155, $r1=var3672, r2=var219, java.util.Map=var344, $r4=var1271, java.lang.Object=var3586}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Section;	r0 := @parameter0: java.lang.String;	$r1 = <java.util.Locale: java.util.Locale ENGLISH>;	r2 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	$r4 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Section: java.util.Map attributes>;	interfaceinvoke $r4.<java.util.Map: java.lang.Object remove(java.lang.Object)>(r2);	return
;block_num 1