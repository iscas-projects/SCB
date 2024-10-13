(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var35 0)
(declare-sort var1892 0)
(declare-sort var3458 0)
(declare-sort var2632 0)
(declare-sort var1196 0)
(declare-sort var1997 0)
(declare-sort var2190 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun attributeSetters/1960194218 (var35) var1196)
(declare-fun toLowerCase/1946809429 (String var1997) String)
(declare-fun var1196_get/1088891777 (var1196 var3458) var3458)
(declare-fun cast-from-String-to-var3458 (String) var3458)
(declare-fun cast-from-var3458-to-var2190 (var3458) var2190)
(declare-const null-var35 var35)
(declare-const null-var1892 var1892)
(declare-const null-var3458 var3458)
(declare-const null-String String)
(declare-const var1997-ENGLISH var1997)
(declare-const null-var2190 var2190)
(declare-const var3404 var35) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper 
(assert (not (= var3404 null-var35)))
(declare-const var24 var1892) ; Statement: r7 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var24 null-var1892)))
(declare-const var3403 var3458) ; Statement: r8 := @parameter1: java.lang.Object 
(assert (not (= var3403 null-var3458)))
(declare-const var2597 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var2597 null-String)))
(declare-const var3540 var3458) ; Statement: r9 := @parameter3: java.lang.Object 
(assert (not (= var3540 null-var3458)))
(define-const var2637 var1196 (attributeSetters/1960194218 var3404)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.util.Map attributeSetters> 
(define-const var278 var1997 var1997-ENGLISH) ; Statement: $r2 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var569 String (toLowerCase/1946809429 var2597 var278)) ; Statement: $r4 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
(define-const var55 var3458 (var1196_get/1088891777 var2637 (cast-from-String-to-var3458 var569))) ; Statement: $r5 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>($r4) 
(define-const var3190 var2190 (cast-from-var3458-to-var2190 var55)) ; Statement: r6 = (com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter) $r5 
 ; Statement: if r6 != null goto (branch) 
(assert (not (= var3190 null-var2190))) ; Cond: r6 != null 
 ; Statement: if r6 == null goto return 
(assert (= var3190 null-var2190)) ; Cond: r6 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {attributeSetters/1960194218=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper], java.util.Map), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), var1196_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var3458=([java.lang.String], java.lang.Object), cast-from-var3458-to-var2190=([java.lang.Object], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter)}
; {var35=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper, var3404=r0, var1892=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var24=r7, var3458=java.lang.Object, var3403=r8, var2597=r1, var2632=null_type, var3540=r9, var1196=java.util.Map, var2637=$r3, var1997=java.util.Locale, var278=$r2, var569=$r4, var55=$r5, var2190=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter, var3190=r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper=var35, r0=var3404, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var1892, r7=var24, java.lang.Object=var3458, r8=var3403, r1=var2597, null_type=var2632, r9=var3540, java.util.Map=var1196, $r3=var2637, java.util.Locale=var1997, $r2=var278, $r4=var569, $r5=var55, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter=var2190, r6=var3190}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper;	r7 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	r8 := @parameter1: java.lang.Object;	r1 := @parameter2: java.lang.String;	r9 := @parameter3: java.lang.Object;	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.util.Map attributeSetters>;	$r2 = <java.util.Locale: java.util.Locale ENGLISH>;	$r4 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	$r5 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>($r4);	r6 = (com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter) $r5;	if r6 != null goto (branch);	if r6 == null goto return;	return
;block_num 3