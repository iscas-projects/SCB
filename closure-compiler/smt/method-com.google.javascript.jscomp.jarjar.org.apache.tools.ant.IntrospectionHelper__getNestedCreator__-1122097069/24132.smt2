(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1392 0)
(declare-sort var2326 0)
(declare-sort var1300 0)
(declare-sort var2093 0)
(declare-sort var1216 0)
(declare-sort var604 0)
(declare-sort var3541 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var604_extractUriFromComponentName/-258959328 (String) String)
(declare-fun var604_extractNameFromComponentName/2068873951 (String) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var1392 var1392)
(declare-const null-var2326 var2326)
(declare-const null-String String)
(declare-const null-var2093 var2093)
(declare-const null-var1216 var1216)
(declare-const null-var3541 var3541)
(declare-const var1537 var1392) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper 
(assert (not (= var1537 null-var1392)))
(declare-const var221 var2326) ; Statement: r7 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var221 null-var2326)))
(declare-const var1321 String) ; Statement: r13 := @parameter1: java.lang.String 
(assert (not (= var1321 null-String)))
(declare-const var3702 var2093) ; Statement: r8 := @parameter2: java.lang.Object 
(assert (not (= var3702 null-var2093)))
(declare-const var3496 String) ; Statement: r0 := @parameter3: java.lang.String 
(assert (not (= var3496 null-String)))
(declare-const var2792 var1216) ; Statement: r9 := @parameter4: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement 
(assert (not (= var2792 null-var1216)))
(define-const var1885 String (var604_extractUriFromComponentName/-258959328 var3496)) ; Statement: r14 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelper: java.lang.String extractUriFromComponentName(java.lang.String)>(r0) 
(define-const var2985 String (var604_extractNameFromComponentName/2068873951 var3496)) ; Statement: r1 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelper: java.lang.String extractNameFromComponentName(java.lang.String)>(r0) 
(assert true)
(define-const var1021 Bool (= var1885 "antlib:org.apache.tools.ant")) ; Statement: $z0 = virtualinvoke r14.<java.lang.String: boolean equals(java.lang.Object)>("antlib:org.apache.tools.ant") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r13.<java.lang.String: boolean equals(java.lang.Object)>("antlib:org.apache.tools.ant") 
(assert (= (ite var1021 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3228 Bool (= var1321 "antlib:org.apache.tools.ant")) ; Statement: $z1 = virtualinvoke r13.<java.lang.String: boolean equals(java.lang.Object)>("antlib:org.apache.tools.ant") 
 ; Statement: if $z1 == 0 goto r15 = null 
(assert (= (ite var3228 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2532 var3541 null-var3541) ; Statement: r15 = null 
(assert true)
(define-const var387 Bool (= var1885 var1321)) ; Statement: $z2 = virtualinvoke r14.<java.lang.String: boolean equals(java.lang.Object)>(r13) 
 ; Statement: if $z2 != 0 goto $r4 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.util.Map nestedCreators> 
(assert (not (not (= (ite var387 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(assert true)
(define-const var1178 Bool (isEmpty/-1285796103 var1885)) ; Statement: $z5 = virtualinvoke r14.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z5 == 0 goto (branch) 
(assert (= (ite var1178 1 0) 0)) ; Cond: $z5 == 0 
 ; Statement: if r15 != null goto (branch) 
(assert (not (= var2532 null-var3541))) ; Cond: r15 != null 
 ; Statement: if r15 != null goto (branch) 
(assert (not (= var2532 null-var3541))) ; Cond: r15 != null 
 ; Statement: if r15 != null goto return r15 
(assert (not (= var2532 null-var3541))) ; Cond: r15 != null 
 ; Statement: return r15 
(check-sat)
(get-model)
(get-unsat-core)
; {var604_extractUriFromComponentName/-258959328=([java.lang.String], java.lang.String), var604_extractNameFromComponentName/2068873951=([java.lang.String], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var1392=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper, var1537=r2, var2326=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var221=r7, var1321=r13, var1300=null_type, var2093=java.lang.Object, var3702=r8, var3496=r0, var1216=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement, var2792=r9, var604=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelper, var1885=r14, var2985=r1, var1021=$z0, var3228=$z1, var3541=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator, var2532=r15, var387=$z2, var1178=$z5}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper=var1392, r2=var1537, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var2326, r7=var221, r13=var1321, null_type=var1300, java.lang.Object=var2093, r8=var3702, r0=var3496, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement=var1216, r9=var2792, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelper=var604, r14=var1885, r1=var2985, $z0=var1021, $z1=var3228, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator=var3541, r15=var2532, $z2=var387, $z5=var1178}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 3,"<java.lang.String: boolean isEmpty()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper;	r7 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	r13 := @parameter1: java.lang.String;	r8 := @parameter2: java.lang.Object;	r0 := @parameter3: java.lang.String;	r9 := @parameter4: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnknownElement;	r14 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelper: java.lang.String extractUriFromComponentName(java.lang.String)>(r0);	r1 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelper: java.lang.String extractNameFromComponentName(java.lang.String)>(r0);	$z0 = virtualinvoke r14.<java.lang.String: boolean equals(java.lang.Object)>("antlib:org.apache.tools.ant");	if $z0 == 0 goto $z1 = virtualinvoke r13.<java.lang.String: boolean equals(java.lang.Object)>("antlib:org.apache.tools.ant");	$z1 = virtualinvoke r13.<java.lang.String: boolean equals(java.lang.Object)>("antlib:org.apache.tools.ant");	if $z1 == 0 goto r15 = null;	r15 = null;	$z2 = virtualinvoke r14.<java.lang.String: boolean equals(java.lang.Object)>(r13);	if $z2 != 0 goto $r4 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.util.Map nestedCreators>;	$z5 = virtualinvoke r14.<java.lang.String: boolean isEmpty()>();	if $z5 == 0 goto (branch);	if r15 != null goto (branch);	if r15 != null goto (branch);	if r15 != null goto return r15;	return r15
;block_num 8