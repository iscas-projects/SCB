(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var276 0)
(declare-sort var3192 0)
(declare-sort var1264 0)
(declare-sort var1392 0)
(declare-sort var2236 0)
(declare-sort var886 0)
(declare-sort var1800 0)
(declare-sort var869 0)
(declare-sort var2964 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var886_extractUriFromComponentName/-258959328 (String) String)
(declare-fun var886_extractNameFromComponentName/2068873951 (String) String)
(declare-fun nestedCreators/1960194218 (var276) var869)
(declare-fun toLowerCase/1946809429 (String var2964) String)
(declare-fun var869_get/1088891777 (var869 var1392) var1392)
(declare-fun cast-from-String-to-var1392 (String) var1392)
(declare-fun cast-from-var1392-to-var1800 (var1392) var1800)
(declare-const null-var276 var276)
(declare-const null-var3192 var3192)
(declare-const null-String String)
(declare-const null-var1392 var1392)
(declare-const null-var2236 var2236)
(declare-const null-var1800 var1800)
(declare-const var2964-ENGLISH var2964)
(declare-const var2203 var276) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper 
(assert (not (= var2203 null-var276)))
(declare-const var2489 var3192) ; Statement: r7 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var2489 null-var3192)))
(declare-const var1515 String) ; Statement: r13 := @parameter1: java.lang.String 
(assert (not (= var1515 null-String)))
(declare-const var1988 var1392) ; Statement: r8 := @parameter2: java.lang.Object 
(assert (not (= var1988 null-var1392)))
(declare-const var2839 String) ; Statement: r0 := @parameter3: java.lang.String 
(assert (not (= var2839 null-String)))
(declare-const var3204 var2236) ; Statement: r9 := @parameter4: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement 
(assert (not (= var3204 null-var2236)))
(define-const var3788 String (var886_extractUriFromComponentName/-258959328 var2839)) ; Statement: r14 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelper: java.lang.String extractUriFromComponentName(java.lang.String)>(r0) 
(define-const var826 String (var886_extractNameFromComponentName/2068873951 var2839)) ; Statement: r1 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelper: java.lang.String extractNameFromComponentName(java.lang.String)>(r0) 
(assert true)
(define-const var292 Bool (= var3788 "antlib:org.apache.tools.ant")) ; Statement: $z0 = virtualinvoke r14.<java.lang.String: boolean equals(java.lang.Object)>("antlib:org.apache.tools.ant") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r13.<java.lang.String: boolean equals(java.lang.Object)>("antlib:org.apache.tools.ant") 
(assert (= (ite var292 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3937 Bool (= var1515 "antlib:org.apache.tools.ant")) ; Statement: $z1 = virtualinvoke r13.<java.lang.String: boolean equals(java.lang.Object)>("antlib:org.apache.tools.ant") 
 ; Statement: if $z1 == 0 goto r15 = null 
(assert (= (ite var3937 1 0) 0)) ; Cond: $z1 == 0 
(define-const var200 var1800 null-var1800) ; Statement: r15 = null 
(assert true)
(define-const var2039 Bool (= var3788 var1515)) ; Statement: $z2 = virtualinvoke r14.<java.lang.String: boolean equals(java.lang.Object)>(r13) 
 ; Statement: if $z2 != 0 goto $r4 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.util.Map nestedCreators> 
(assert (not (= (ite var2039 1 0) 0))) ; Cond: $z2 != 0 
(define-const var3181 var869 (nestedCreators/1960194218 var2203)) ; Statement: $r4 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.util.Map nestedCreators> 
(define-const var2940 var2964 var2964-ENGLISH) ; Statement: $r3 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var1895 String (toLowerCase/1946809429 var826 var2940)) ; Statement: $r5 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r3) 
(define-const var3769 var1392 (var869_get/1088891777 var3181 (cast-from-String-to-var1392 var1895))) ; Statement: $r6 = interfaceinvoke $r4.<java.util.Map: java.lang.Object get(java.lang.Object)>($r5) 
(define-const var200!1 var1800 (cast-from-var1392-to-var1800 var3769)) ; Statement: r15 = (com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator) $r6 
(assert true) ; Non Conditional
 ; Statement: if r15 != null goto (branch) 
(assert (not (= var200!1 null-var1800))) ; Cond: r15 != null 
 ; Statement: if r15 != null goto (branch) 
(assert (not (= var200!1 null-var1800))) ; Cond: r15 != null 
 ; Statement: if r15 != null goto return r15 
(assert (not (= var200!1 null-var1800))) ; Cond: r15 != null 
 ; Statement: return r15 
(check-sat)
(get-model)
(get-unsat-core)
; {var886_extractUriFromComponentName/-258959328=([java.lang.String], java.lang.String), var886_extractNameFromComponentName/2068873951=([java.lang.String], java.lang.String), nestedCreators/1960194218=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper], java.util.Map), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), var869_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var1392=([java.lang.String], java.lang.Object), cast-from-var1392-to-var1800=([java.lang.Object], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator)}
; {var276=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper, var2203=r2, var3192=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var2489=r7, var1515=r13, var1264=null_type, var1392=java.lang.Object, var1988=r8, var2839=r0, var2236=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement, var3204=r9, var886=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelper, var3788=r14, var826=r1, var292=$z0, var3937=$z1, var1800=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator, var200=r15, var2039=$z2, var869=java.util.Map, var3181=$r4, var2964=java.util.Locale, var2940=$r3, var1895=$r5, var3769=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper=var276, r2=var2203, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var3192, r7=var2489, r13=var1515, null_type=var1264, java.lang.Object=var1392, r8=var1988, r0=var2839, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement=var2236, r9=var3204, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelper=var886, r14=var3788, r1=var826, $z0=var292, $z1=var3937, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator=var1800, r15=var200, $z2=var2039, java.util.Map=var869, $r4=var3181, java.util.Locale=var2964, $r3=var2940, $r5=var1895, $r6=var3769}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 3,"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper;	r7 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	r13 := @parameter1: java.lang.String;	r8 := @parameter2: java.lang.Object;	r0 := @parameter3: java.lang.String;	r9 := @parameter4: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement;	r14 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelper: java.lang.String extractUriFromComponentName(java.lang.String)>(r0);	r1 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelper: java.lang.String extractNameFromComponentName(java.lang.String)>(r0);	$z0 = virtualinvoke r14.<java.lang.String: boolean equals(java.lang.Object)>("antlib:org.apache.tools.ant");	if $z0 == 0 goto $z1 = virtualinvoke r13.<java.lang.String: boolean equals(java.lang.Object)>("antlib:org.apache.tools.ant");	$z1 = virtualinvoke r13.<java.lang.String: boolean equals(java.lang.Object)>("antlib:org.apache.tools.ant");	if $z1 == 0 goto r15 = null;	r15 = null;	$z2 = virtualinvoke r14.<java.lang.String: boolean equals(java.lang.Object)>(r13);	if $z2 != 0 goto $r4 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.util.Map nestedCreators>;	$r4 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.util.Map nestedCreators>;	$r3 = <java.util.Locale: java.util.Locale ENGLISH>;	$r5 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r3);	$r6 = interfaceinvoke $r4.<java.util.Map: java.lang.Object get(java.lang.Object)>($r5);	r15 = (com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator) $r6;	if r15 != null goto (branch);	if r15 != null goto (branch);	if r15 != null goto return r15;	return r15
;block_num 8