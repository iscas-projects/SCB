(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var307 0)
(declare-sort var250 0)
(declare-sort var561 0)
(declare-sort var1714 0)
(declare-sort var817 0)
(declare-sort var3121 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun attributes/-1600565588 (var307) var561)
(declare-fun toLowerCase/1946809429 (String var1714) String)
(declare-fun var561_get/1088891777 (var561 var817) var817)
(declare-fun cast-from-String-to-var817 (String) var817)
(declare-fun cast-from-var817-to-var3121 (var817) var3121)
(declare-const null-var307 var307)
(declare-const null-String String)
(declare-const var1714-ENGLISH var1714)
(declare-const var1915 var307) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Section 
(assert (not (= var1915 null-var307)))
(declare-const var1561 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1561 null-String)))
(define-const var2725 var561 (attributes/-1600565588 var1915)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Section: java.util.Map attributes> 
(define-const var2226 var1714 var1714-ENGLISH) ; Statement: $r2 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var2212 String (toLowerCase/1946809429 var1561 var2226)) ; Statement: $r4 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
(define-const var2265 var817 (var561_get/1088891777 var2725 (cast-from-String-to-var817 var2212))) ; Statement: $r5 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>($r4) 
(define-const var554 var3121 (cast-from-var817-to-var3121 var2265)) ; Statement: $r6 = (com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute) $r5 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {attributes/-1600565588=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Section], java.util.Map), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), var561_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var817=([java.lang.String], java.lang.Object), cast-from-var817-to-var3121=([java.lang.Object], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute)}
; {var307=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Section, var1915=r0, var1561=r1, var250=null_type, var561=java.util.Map, var2725=$r3, var1714=java.util.Locale, var2226=$r2, var2212=$r4, var817=java.lang.Object, var2265=$r5, var3121=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute, var554=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Section=var307, r0=var1915, r1=var1561, null_type=var250, java.util.Map=var561, $r3=var2725, java.util.Locale=var1714, $r2=var2226, $r4=var2212, java.lang.Object=var817, $r5=var2265, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute=var3121, $r6=var554}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Section;	r1 := @parameter0: java.lang.String;	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Section: java.util.Map attributes>;	$r2 = <java.util.Locale: java.util.Locale ENGLISH>;	$r4 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	$r5 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>($r4);	$r6 = (com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Manifest$Attribute) $r5;	return $r6
;block_num 1