(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2498 0)
(declare-sort var2118 0)
(declare-sort var1302 0)
(declare-sort var2610 0)
(declare-sort var3687 0)
(declare-sort var3247 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nestedCreator/-985051630 (var2498) var2118)
(declare-fun parent/-985051630 (var2498) var1302)
(declare-fun nestedObject/-985051630 (var2498) var1302)
(declare-fun store/-1826046229 (var2118 var1302 var1302) void)
(declare-fun var3687-init () var3687)
(declare-fun <init>/-198444851 (var3687 var3247) void)
(declare-fun cast-from-var2610-to-var3247 (var2610) var3247)
(declare-const null-var2498 var2498)
(declare-const null-var2610 var2610)
(declare-const var528 var2498) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$Creator 
(assert (not (= var528 null-var2498)))
(define-const var569 var2118 (nestedCreator/-985051630 var528)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$Creator: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator nestedCreator> 
(define-const var2674 var1302 (parent/-985051630 var528)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$Creator: java.lang.Object parent> 
(define-const var2279 var1302 (nestedObject/-985051630 var528)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$Creator: java.lang.Object nestedObject> 
(assert true) ; Non Conditional
(assert true)
;(assert (store/-1826046229 var569 var2674 var2279)) ; Statement: virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator: void store(java.lang.Object,java.lang.Object)>($r2, $r1) 

(declare-const var569!1 var2118)
(declare-const var2674!1 var1302)
(declare-const var2279!1 var1302)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2930 var2610) ; Statement: $r14 := @caughtexception 
(assert (not (= var2930 null-var2610)))
(define-const var3809 var3687 var3687-init) ; Statement: $r15 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert true)
;(assert (<init>/-198444851 var3809 (cast-from-var2610-to-var3247 var2930))) ; Statement: specialinvoke $r15.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.Throwable)>($r14) 

(declare-const var3809!1 var3687)
(declare-const var2930!1 var2610)
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {nestedCreator/-985051630=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$Creator], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator), parent/-985051630=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$Creator], java.lang.Object), nestedObject/-985051630=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$Creator], java.lang.Object), store/-1826046229=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator, java.lang.Object, java.lang.Object], void), var3687-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), <init>/-198444851=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.Throwable], void), cast-from-var2610-to-var3247=([java.lang.ReflectiveOperationException], java.lang.Throwable)}
; {var2498=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$Creator, var528=r0, var2118=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator, var569=$r3, var1302=java.lang.Object, var2674=$r2, var2279=$r1, var2610=java.lang.ReflectiveOperationException, var2930=$r14, var3687=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var3809=$r15, var3247=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$Creator=var2498, r0=var528, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator=var2118, $r3=var569, java.lang.Object=var1302, $r2=var2674, $r1=var2279, java.lang.ReflectiveOperationException=var2610, $r14=var2930, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3687, $r15=var3809, java.lang.Throwable=var3247}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$Creator;	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$Creator: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator nestedCreator>;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$Creator: java.lang.Object parent>;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$Creator: java.lang.Object nestedObject>;	virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator: void store(java.lang.Object,java.lang.Object)>($r2, $r1);	$r14 := @caughtexception;	$r15 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	specialinvoke $r15.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.Throwable)>($r14);	throw $r15
;block_num 3