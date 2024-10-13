(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1896 0)
(declare-sort var1079 0)
(declare-sort var1601 0)
(declare-sort var128 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTaskType/1957558293 (var1079) String)
(declare-fun cast-from-var1896-to-var1079 (var1896) var1079)
(declare-fun source/-68748554 (var1896) var1601)
(declare-fun dest/-68748554 (var1896) var1601)
(declare-fun var128-init () var128)
(declare-fun <init>/1864341934 (var128 String) void)
(declare-const null-var1896 var1896)
(declare-const null-var1601 var1601)
(declare-const var3448 var1896) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand 
(assert (not (= var3448 null-var1896)))
(define-const var3314 String "expand") ; Statement: $r2 = "expand" 
(assert true)
(define-const var596 String (getTaskType/1957558293 (cast-from-var1896-to-var1079 var3448))) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand: java.lang.String getTaskType()>() 
(assert true)
(define-const var3459 Bool (= var3314 var596)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand: java.io.File source> 
(assert (= (ite var3459 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3798 var1601 (source/-68748554 var3448)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand: java.io.File source> 
 ; Statement: if $r3 != null goto $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand: java.io.File dest> 
(assert (not (= var3798 null-var1601))) ; Cond: $r3 != null 
(define-const var3662 var1601 (dest/-68748554 var3448)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand: java.io.File dest> 
 ; Statement: if $r4 != null goto $r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand: java.io.File dest> 
(assert (not (not (= var3662 null-var1601)))) ; Negate: Cond: $r4 != null  
(define-const var3407 var128 var128-init) ; Statement: $r48 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert true)
;(assert (<init>/1864341934 var3407 "Dest attribute must be specified")) ; Statement: specialinvoke $r48.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>("Dest attribute must be specified") 

(declare-const var3407!1 var128)
(declare-const var1060 String)
 ; Statement: throw $r48 
(check-sat)
(get-model)
(get-unsat-core)
; {getTaskType/1957558293=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task], java.lang.String), cast-from-var1896-to-var1079=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), source/-68748554=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand], java.io.File), dest/-68748554=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand], java.io.File), var128-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var1896=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand, var3448=r0, var3314=$r2, var1079=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var596=$r1, var3459=$z0, var1601=java.io.File, var3798=$r3, var3662=$r4, var128=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var3407=$r48, var1060="Dest attribute must be specified"}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand=var1896, r0=var3448, $r2=var3314, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var1079, $r1=var596, $z0=var3459, java.io.File=var1601, $r3=var3798, $r4=var3662, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var128, $r48=var3407, "Dest attribute must be specified"=var1060}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand;	$r2 = "expand";	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand: java.lang.String getTaskType()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand: java.io.File source>;	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand: java.io.File source>;	if $r3 != null goto $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand: java.io.File dest>;	$r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand: java.io.File dest>;	if $r4 != null goto $r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Expand: java.io.File dest>;	$r48 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	specialinvoke $r48.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>("Dest attribute must be specified");	throw $r48
;block_num 4