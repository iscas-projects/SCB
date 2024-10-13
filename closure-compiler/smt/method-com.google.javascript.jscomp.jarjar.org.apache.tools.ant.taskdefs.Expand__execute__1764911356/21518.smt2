(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2402 0)
(declare-sort var3836 0)
(declare-sort var721 0)
(declare-sort var3912 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTaskType/1957558293 (var3836) String)
(declare-fun cast-from-var2402-to-var3836 (var2402) var3836)
(declare-fun source/-68748554 (var2402) var721)
(declare-fun resourcesSpecified/-68748554 (var2402) Bool)
(declare-fun var3912-init () var3912)
(declare-fun <init>/1864341934 (var3912 String) void)
(declare-const null-var2402 var2402)
(declare-const null-var721 var721)
(declare-const var3394 var2402) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand 
(assert (not (= var3394 null-var2402)))
(define-const var46 String "expand") ; Statement: $r2 = "expand" 
(assert true)
(define-const var12 String (getTaskType/1957558293 (cast-from-var2402-to-var3836 var3394))) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand: java.lang.String getTaskType()>() 
(assert true)
(define-const var3568 Bool (= var46 var12)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand: java.io.File source> 
(assert (= (ite var3568 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1276 var721 (source/-68748554 var3394)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand: java.io.File source> 
 ; Statement: if $r3 != null goto $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand: java.io.File dest> 
(assert (not (not (= var1276 null-var721)))) ; Negate: Cond: $r3 != null  
(define-const var505 Bool (resourcesSpecified/-68748554 var3394)) ; Statement: $z7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand: boolean resourcesSpecified> 
 ; Statement: if $z7 != 0 goto $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand: java.io.File dest> 
(assert (not (not (= (ite var505 1 0) 0)))) ; Negate: Cond: $z7 != 0  
(define-const var3209 var3912 var3912-init) ; Statement: $r49 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert true)
;(assert (<init>/1864341934 var3209 "src attribute and/or resources must be specified")) ; Statement: specialinvoke $r49.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>("src attribute and/or resources must be specified") 

(declare-const var3209!1 var3912)
(declare-const var3463 String)
 ; Statement: throw $r49 
(check-sat)
(get-model)
(get-unsat-core)
; {getTaskType/1957558293=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task], java.lang.String), cast-from-var2402-to-var3836=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), source/-68748554=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand], java.io.File), resourcesSpecified/-68748554=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand], boolean), var3912-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var2402=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand, var3394=r0, var46=$r2, var3836=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var12=$r1, var3568=$z0, var721=java.io.File, var1276=$r3, var505=$z7, var3912=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var3209=$r49, var3463="src attribute and/or resources must be specified"}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand=var2402, r0=var3394, $r2=var46, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var3836, $r1=var12, $z0=var3568, java.io.File=var721, $r3=var1276, $z7=var505, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3912, $r49=var3209, "src attribute and/or resources must be specified"=var3463}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand;	$r2 = "expand";	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand: java.lang.String getTaskType()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand: java.io.File source>;	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand: java.io.File source>;	if $r3 != null goto $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand: java.io.File dest>;	$z7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand: boolean resourcesSpecified>;	if $z7 != 0 goto $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand: java.io.File dest>;	$r49 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	specialinvoke $r49.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>("src attribute and/or resources must be specified");	throw $r49
;block_num 4