(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3891 0)
(declare-sort var1466 0)
(declare-sort var2846 0)
(declare-sort var1959 0)
(declare-sort var3732 0)
(declare-sort var1089 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2846_extractNameFromComponentName/2068873951 (String) String)
(declare-fun nestedCreators/1960194218 (var3891) var1959)
(declare-fun toLowerCase/1946809429 (String var3732) String)
(declare-fun var1959_containsKey/1715618542 (var1959 var1089) Bool)
(declare-fun cast-from-String-to-var1089 (String) var1089)
(declare-const null-var3891 var3891)
(declare-const null-String String)
(declare-const var3732-ENGLISH var3732)
(declare-const var3235 var3891) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper 
(assert (not (= var3235 null-var3891)))
(declare-const var2651 String) ; Statement: r7 := @parameter0: java.lang.String 
(assert (not (= var2651 null-String)))
(declare-const var1750 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1750 null-String)))
(define-const var3044 String (var2846_extractNameFromComponentName/2068873951 var1750)) ; Statement: r1 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelper: java.lang.String extractNameFromComponentName(java.lang.String)>(r0) 
(define-const var272 var1959 (nestedCreators/1960194218 var3235)) ; Statement: $r4 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.util.Map nestedCreators> 
(define-const var3501 var3732 var3732-ENGLISH) ; Statement: $r3 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var3069 String (toLowerCase/1946809429 var3044 var3501)) ; Statement: $r5 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r3) 
(define-const var2786 Bool (var1959_containsKey/1715618542 var272 (cast-from-String-to-var1089 var3069))) ; Statement: $z0 = interfaceinvoke $r4.<java.util.Map: boolean containsKey(java.lang.Object)>($r5) 
 ; Statement: if $z0 != 0 goto r6 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelper: java.lang.String extractUriFromComponentName(java.lang.String)>(r0) 
(assert (not (not (= (ite var2786 1 0) 0)))) ; Negate: Cond: $z0 != 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2846_extractNameFromComponentName/2068873951=([java.lang.String], java.lang.String), nestedCreators/1960194218=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper], java.util.Map), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), var1959_containsKey/1715618542=([java.util.Map, java.lang.Object], boolean), cast-from-String-to-var1089=([java.lang.String], java.lang.Object)}
; {var3891=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper, var3235=r2, var2651=r7, var1466=null_type, var1750=r0, var2846=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelper, var3044=r1, var1959=java.util.Map, var272=$r4, var3732=java.util.Locale, var3501=$r3, var3069=$r5, var1089=java.lang.Object, var2786=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper=var3891, r2=var3235, r7=var2651, null_type=var1466, r0=var1750, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelper=var2846, r1=var3044, java.util.Map=var1959, $r4=var272, java.util.Locale=var3732, $r3=var3501, $r5=var3069, java.lang.Object=var1089, $z0=var2786}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper;	r7 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	r1 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelper: java.lang.String extractNameFromComponentName(java.lang.String)>(r0);	$r4 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.util.Map nestedCreators>;	$r3 = <java.util.Locale: java.util.Locale ENGLISH>;	$r5 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r3);	$z0 = interfaceinvoke $r4.<java.util.Map: boolean containsKey(java.lang.Object)>($r5);	if $z0 != 0 goto r6 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelper: java.lang.String extractUriFromComponentName(java.lang.String)>(r0);	return 0
;block_num 2