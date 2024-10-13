(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var337 0)
(declare-sort var1428 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun defaultrequested/1840861790 (var337) Bool)
(declare-fun add/1840861790 (var337) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun remove/1840861790 (var337) String)
(declare-fun echo/1840861790 (var337) Bool)
(declare-fun var1428-init () var1428)
(declare-fun <init>/1864341934 (var1428 String) void)
(declare-const null-var337 var337)
(declare-const var1734 var337) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DefaultExcludes 
(assert (not (= var1734 null-var337)))
(define-const var2597 Bool (defaultrequested/1840861790 var1734)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DefaultExcludes: boolean defaultrequested> 
 ; Statement: if $z0 != 0 goto $z7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DefaultExcludes: boolean defaultrequested> 
(assert (not (not (= (ite var2597 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2692 String (add/1840861790 var1734)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DefaultExcludes: java.lang.String add> 
(assert true)
(define-const var1242 Bool (isEmpty/-1285796103 var2692)) ; Statement: $z4 = virtualinvoke $r12.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z4 == 0 goto $z7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DefaultExcludes: boolean defaultrequested> 
(assert (not (= (ite var1242 1 0) 0))) ; Negate: Cond: $z4 == 0  
(define-const var34 String (remove/1840861790 var1734)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DefaultExcludes: java.lang.String remove> 
(assert true)
(define-const var911 Bool (isEmpty/-1285796103 var34)) ; Statement: $z5 = virtualinvoke $r13.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z5 == 0 goto $z7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DefaultExcludes: boolean defaultrequested> 
(assert (not (= (ite var911 1 0) 0))) ; Negate: Cond: $z5 == 0  
(define-const var2667 Bool (echo/1840861790 var1734)) ; Statement: $z6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DefaultExcludes: boolean echo> 
 ; Statement: if $z6 != 0 goto $z7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DefaultExcludes: boolean defaultrequested> 
(assert (not (not (= (ite var2667 1 0) 0)))) ; Negate: Cond: $z6 != 0  
(define-const var1156 var1428 var1428-init) ; Statement: $r14 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert true)
;(assert (<init>/1864341934 var1156 "<defaultexcludes> task must set at least one attribute (echo=\u0022false\u0022 doesn\u0027t count since that is the default")) ; Statement: specialinvoke $r14.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>("<defaultexcludes> task must set at least one attribute (echo=\"false\" doesn\'t count since that is the default") 

(declare-const var1156!1 var1428)
(declare-const var347 String)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {defaultrequested/1840861790=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DefaultExcludes], boolean), add/1840861790=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DefaultExcludes], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), remove/1840861790=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DefaultExcludes], java.lang.String), echo/1840861790=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DefaultExcludes], boolean), var1428-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var337=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DefaultExcludes, var1734=r0, var2597=$z0, var2692=$r12, var1242=$z4, var34=$r13, var911=$z5, var2667=$z6, var1428=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1156=$r14, var347="<defaultexcludes> task must set at least one attribute (echo=\"false\" doesn\'t count since that is the default"}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DefaultExcludes=var337, r0=var1734, $z0=var2597, $r12=var2692, $z4=var1242, $r13=var34, $z5=var911, $z6=var2667, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1428, $r14=var1156, "<defaultexcludes> task must set at least one attribute (echo=\"false\" doesn\'t count since that is the default"=var347}
;seq <java.lang.String: boolean isEmpty()>;	<java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DefaultExcludes;	$z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DefaultExcludes: boolean defaultrequested>;	if $z0 != 0 goto $z7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DefaultExcludes: boolean defaultrequested>;	$r12 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DefaultExcludes: java.lang.String add>;	$z4 = virtualinvoke $r12.<java.lang.String: boolean isEmpty()>();	if $z4 == 0 goto $z7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DefaultExcludes: boolean defaultrequested>;	$r13 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DefaultExcludes: java.lang.String remove>;	$z5 = virtualinvoke $r13.<java.lang.String: boolean isEmpty()>();	if $z5 == 0 goto $z7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DefaultExcludes: boolean defaultrequested>;	$z6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DefaultExcludes: boolean echo>;	if $z6 != 0 goto $z7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.DefaultExcludes: boolean defaultrequested>;	$r14 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	specialinvoke $r14.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>("<defaultexcludes> task must set at least one attribute (echo=\"false\" doesn\'t count since that is the default");	throw $r14
;block_num 5