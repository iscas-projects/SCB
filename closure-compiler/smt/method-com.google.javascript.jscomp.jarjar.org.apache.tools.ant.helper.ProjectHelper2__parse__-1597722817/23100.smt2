(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var439 0)
(declare-sort var2706 0)
(declare-sort var1212 0)
(declare-sort var2600 0)
(declare-sort var2290 0)
(declare-sort var1421 0)
(declare-sort var3278 0)
(declare-sort var3911 0)
(declare-sort var2299 0)
(declare-sort var3361 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2600_access$000/1439561 (var2600) var2290)
(declare-fun cast-from-var1212-to-var1421 (var1212) var1421)
(declare-fun var2299-init () var2299)
(declare-fun <init>/-198444851 (var2299 var3361) void)
(declare-fun cast-from-var3911-to-var3361 (var3911) var3361)
(declare-const null-var439 var439)
(declare-const null-var2706 var2706)
(declare-const null-var1212 var1212)
(declare-const null-var2600 var2600)
(declare-const null-var1421 var1421)
(declare-const null-var3278 var3278)
(declare-const null-var3911 var3911)
(declare-const var3092 var439) ; Statement: r67 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2 
(assert (not (= var3092 null-var439)))
(declare-const var1110 var2706) ; Statement: r11 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var1110 null-var2706)))
(declare-const var239 var1212) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var239 null-var1212)))
(declare-const var1051 var2600) ; Statement: r0 := @parameter2: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$RootHandler 
(assert (not (= var1051 null-var2600)))
(define-const var2930 var2290 (var2600_access$000/1439561 var1051)) ; Statement: r1 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$RootHandler: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext access$000(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$RootHandler)>(r0) 
(define-const var2949 var1421 null-var1421) ; Statement: r68 = null 
(define-const var651 var3278 null-var3278) ; Statement: r69 = null 
(define-const var3191 Bool false) ; Statement: $z0 = r2 instanceof java.io.File 
 ; Statement: if $z0 == 0 goto $z1 = r2 instanceof java.net.URL 
(assert (not (= (ite var3191 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2949!1 var1421 (cast-from-var1212-to-var1421 var239)) ; Statement: r68 = (java.io.File) r2 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r68 == null goto (branch) 
(assert (= var2949!1 null-var1421)) ; Cond: r68 == null 
 ; Statement: if r69 == null goto $r85 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert (not (= var651 null-var3278))) ; Negate: Cond: r69 == null  
(declare-const var870 var3911) ; Statement: $r65 := @caughtexception 
(assert (not (= var870 null-var3911)))
(define-const var2795 var2299 var2299-init) ; Statement: $r83 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert true)
;(assert (<init>/-198444851 var2795 (cast-from-var3911-to-var3361 var870))) ; Statement: specialinvoke $r83.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.Throwable)>($r65) 

(declare-const var2795!1 var2299)
(declare-const var870!1 var3911)
 ; Statement: throw $r83 
(check-sat)
(get-model)
(get-unsat-core)
; {var2600_access$000/1439561=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$RootHandler], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext), cast-from-var1212-to-var1421=([java.lang.Object], java.io.File), var2299-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), <init>/-198444851=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.Throwable], void), cast-from-var3911-to-var3361=([java.net.MalformedURLException], java.lang.Throwable)}
; {var439=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2, var3092=r67, var2706=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var1110=r11, var1212=java.lang.Object, var239=r2, var2600=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$RootHandler, var1051=r0, var2290=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext, var2930=r1, var1421=java.io.File, var2949=r68, var3278=java.net.URL, var651=r69, var3191=$z0, var3911=java.net.MalformedURLException, var870=$r65, var2299=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2795=$r83, var3361=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2=var439, r67=var3092, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var2706, r11=var1110, java.lang.Object=var1212, r2=var239, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$RootHandler=var2600, r0=var1051, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext=var2290, r1=var2930, java.io.File=var1421, r68=var2949, java.net.URL=var3278, r69=var651, $z0=var3191, java.net.MalformedURLException=var3911, $r65=var870, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var2299, $r83=var2795, java.lang.Throwable=var3361}
;seq 
;cnt {}
;stmts r67 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2;	r11 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	r2 := @parameter1: java.lang.Object;	r0 := @parameter2: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$RootHandler;	r1 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$RootHandler: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext access$000(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$RootHandler)>(r0);	r68 = null;	r69 = null;	$z0 = r2 instanceof java.io.File;	if $z0 == 0 goto $z1 = r2 instanceof java.net.URL;	r68 = (java.io.File) r2;	goto [?= (branch)];	if r68 == null goto (branch);	if r69 == null goto $r85 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r65 := @caughtexception;	$r83 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	specialinvoke $r83.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.Throwable)>($r65);	throw $r83
;block_num 5