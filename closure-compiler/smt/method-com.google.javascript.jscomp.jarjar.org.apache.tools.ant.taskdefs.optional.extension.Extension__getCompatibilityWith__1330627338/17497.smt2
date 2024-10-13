(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3623 0)
(declare-sort var1221 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun extensionName/349185246 (var3623) String)
(declare-fun getExtensionName/864983470 (var3623) String)
(declare-const null-var3623 var3623)
(declare-const var3623-INCOMPATIBLE var1221)
(declare-const var2973 var3623) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension 
(assert (not (= var2973 null-var3623)))
(declare-const var101 var3623) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension 
(assert (not (= var101 null-var3623)))
(define-const var3022 String (extensionName/349185246 var2973)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: java.lang.String extensionName> 
(assert true)
(define-const var2274 String (getExtensionName/864983470 var101)) ; Statement: $r3 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: java.lang.String getExtensionName()>() 
(assert true)
(define-const var2568 Bool (= var3022 var2274)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r3) 
 ; Statement: if $z0 != 0 goto r4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal getSpecificationVersion()>() 
(assert (not (not (= (ite var2568 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3204 var1221 var3623-INCOMPATIBLE) ; Statement: $r17 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Compatibility INCOMPATIBLE> 
 ; Statement: return $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {extensionName/349185246=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension], java.lang.String), getExtensionName/864983470=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension], java.lang.String)}
; {var3623=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension, var2973=r0, var101=r1, var3022=$r2, var2274=$r3, var2568=$z0, var1221=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Compatibility, var3204=$r17}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension=var3623, r0=var2973, r1=var101, $r2=var3022, $r3=var2274, $z0=var2568, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Compatibility=var1221, $r17=var3204}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: java.lang.String extensionName>;	$r3 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: java.lang.String getExtensionName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r3);	if $z0 != 0 goto r4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal getSpecificationVersion()>();	$r17 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Compatibility INCOMPATIBLE>;	return $r17
;block_num 2