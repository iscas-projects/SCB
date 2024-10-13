(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1545 0)
(declare-sort var3581 0)
(declare-sort var558 0)
(declare-sort var3308 0)
(declare-sort var1275 0)
(declare-sort var3764 0)
(declare-sort var2832 0)
(declare-sort var3953 0)
(declare-sort var2775 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun attributeSetters/1960194218 (var1545) var1275)
(declare-fun toLowerCase/1946809429 (String var3764) String)
(declare-fun var1275_get/1088891777 (var1275 var558) var558)
(declare-fun cast-from-String-to-var558 (String) var558)
(declare-fun cast-from-var558-to-var2832 (var558) var2832)
(declare-fun var1545_extractBuildException/-962569140 (var3953) var2775)
(declare-const null-var1545 var1545)
(declare-const null-var3581 var3581)
(declare-const null-var558 var558)
(declare-const null-String String)
(declare-const var3764-ENGLISH var3764)
(declare-const null-var2832 var2832)
(declare-const null-var3953 var3953)
(declare-const var2316 var1545) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper 
(assert (not (= var2316 null-var1545)))
(declare-const var1054 var3581) ; Statement: r7 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var1054 null-var3581)))
(declare-const var2595 var558) ; Statement: r8 := @parameter1: java.lang.Object 
(assert (not (= var2595 null-var558)))
(declare-const var1957 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var1957 null-String)))
(declare-const var3427 var558) ; Statement: r9 := @parameter3: java.lang.Object 
(assert (not (= var3427 null-var558)))
(define-const var1569 var1275 (attributeSetters/1960194218 var2316)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.util.Map attributeSetters> 
(define-const var1351 var3764 var3764-ENGLISH) ; Statement: $r2 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var3004 String (toLowerCase/1946809429 var1957 var1351)) ; Statement: $r4 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
(define-const var2430 var558 (var1275_get/1088891777 var1569 (cast-from-String-to-var558 var3004))) ; Statement: $r5 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>($r4) 
(define-const var3911 var2832 (cast-from-var558-to-var2832 var2430)) ; Statement: r6 = (com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter) $r5 
 ; Statement: if r6 != null goto (branch) 
(assert (not (= var3911 null-var2832))) ; Cond: r6 != null 
 ; Statement: if r6 == null goto return 
(assert (not (= var3911 null-var2832))) ; Negate: Cond: r6 == null  
(declare-const var3642 var3953) ; Statement: $r30 := @caughtexception 
(assert (not (= var3642 null-var3953)))
(define-const var1026 var2775 (var1545_extractBuildException/-962569140 var3642)) ; Statement: $r31 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException extractBuildException(java.lang.reflect.InvocationTargetException)>($r30) 
 ; Statement: throw $r31 
(check-sat)
(get-model)
(get-unsat-core)
; {attributeSetters/1960194218=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper], java.util.Map), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), var1275_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var558=([java.lang.String], java.lang.Object), cast-from-var558-to-var2832=([java.lang.Object], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter), var1545_extractBuildException/-962569140=([java.lang.reflect.InvocationTargetException], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException)}
; {var1545=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper, var2316=r0, var3581=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var1054=r7, var558=java.lang.Object, var2595=r8, var1957=r1, var3308=null_type, var3427=r9, var1275=java.util.Map, var1569=$r3, var3764=java.util.Locale, var1351=$r2, var3004=$r4, var2430=$r5, var2832=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter, var3911=r6, var3953=java.lang.reflect.InvocationTargetException, var3642=$r30, var2775=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1026=$r31}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper=var1545, r0=var2316, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var3581, r7=var1054, java.lang.Object=var558, r8=var2595, r1=var1957, null_type=var3308, r9=var3427, java.util.Map=var1275, $r3=var1569, java.util.Locale=var3764, $r2=var1351, $r4=var3004, $r5=var2430, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter=var2832, r6=var3911, java.lang.reflect.InvocationTargetException=var3953, $r30=var3642, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var2775, $r31=var1026}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper;	r7 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	r8 := @parameter1: java.lang.Object;	r1 := @parameter2: java.lang.String;	r9 := @parameter3: java.lang.Object;	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.util.Map attributeSetters>;	$r2 = <java.util.Locale: java.util.Locale ENGLISH>;	$r4 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	$r5 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>($r4);	r6 = (com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter) $r5;	if r6 != null goto (branch);	if r6 == null goto return;	$r30 := @caughtexception;	$r31 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException extractBuildException(java.lang.reflect.InvocationTargetException)>($r30);	throw $r31
;block_num 3