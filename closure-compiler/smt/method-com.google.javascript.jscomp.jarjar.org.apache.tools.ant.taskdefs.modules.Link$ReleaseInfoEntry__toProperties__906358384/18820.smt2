(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2345 0)
(declare-sort var945 0)
(declare-sort var3426 0)
(declare-sort var3938 0)
(declare-sort var1617 0)
(declare-sort var3483 0)
(declare-sort var681 0)
(declare-sort var1440 0)
(declare-sort var1011 0)
(declare-sort var174 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var945-init () var945)
(declare-fun <init>/964458484 (var945) void)
(declare-fun file/980999332 (var2345) var3426)
(declare-fun var1617-init () var1617)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3483) String)
(declare-fun cast-from-var3426-to-var3483 (var3426) var3483)
(declare-fun cast-from-var3938-to-var3483 (var3938) var3483)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun this$0/980999332 (var2345) var681)
(declare-fun getLocation/851674571 (var1011) var1440)
(declare-fun cast-from-var681-to-var1011 (var681) var1011)
(declare-fun <init>/1933136886 (var1617 String var174 var1440) void)
(declare-fun cast-from-var3938-to-var174 (var3938) var174)
(declare-const null-var2345 var2345)
(declare-const null-var3426 var3426)
(declare-const null-var3938 var3938)
(declare-const var552 var2345) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$ReleaseInfoEntry 
(assert (not (= var552 null-var2345)))
(define-const var2586 var945 var945-init) ; Statement: $r0 = new java.util.Properties 
(assert true)
;(assert (<init>/964458484 var2586)) ; Statement: specialinvoke $r0.<java.util.Properties: void <init>()>() 

(declare-const var2586!1 var945)
(define-const var1271 var3426 (file/980999332 var552)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$ReleaseInfoEntry: java.io.File file> 
 ; Statement: if $r2 == null goto $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$ReleaseInfoEntry: java.lang.String key> 
(assert (not (= var1271 null-var3426))) ; Negate: Cond: $r2 == null  
(define-const var2389 var3426 (file/980999332 var552)) ; Statement: $r5 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$ReleaseInfoEntry: java.io.File file> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2350 var3938) ; Statement: $r9 := @caughtexception 
(assert (not (= var2350 null-var3938)))
(define-const var788 var1617 var1617-init) ; Statement: $r10 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var3420 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3420)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3420!1 String)
(assert (= var3420!1 ""))
(assert true)
(define-const var708 String (append/672562846 var3420!1 "Cannot read release info file \u0022")) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot read release info file \"") 
(declare-const var3420!2 String)
(assert (= var3420!2 (str.++ var3420!1 "Cannot read release info file \u0022")))
(define-const var839 var3426 (file/980999332 var552)) ; Statement: $r12 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$ReleaseInfoEntry: java.io.File file> 
(assert true)
(define-const var25 String (append/-1031950772 var708 (cast-from-var3426-to-var3483 var839))) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r12) 
(declare-const var708!1 String)
(assert (str.prefixof var708 var708!1))
(assert true)
(define-const var2644 String (append/672562846 var25 "\u0022: ")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\": ") 
(declare-const var25!1 String)
(assert (= var25!1 (str.++ var25 "\u0022: ")))
(assert true)
(define-const var3554 String (append/-1031950772 var2644 (cast-from-var3938-to-var3483 var2350))) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r9) 
(declare-const var2644!1 String)
(assert (str.prefixof var2644 var2644!1))
(assert true)
(define-const var3814 String (toString/-2075883882 var3554)) ; Statement: $r19 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var971 var681 (this$0/980999332 var552)) ; Statement: $r17 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$ReleaseInfoEntry: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link this$0> 
(assert true)
(define-const var846 var1440 (getLocation/851674571 (cast-from-var681-to-var1011 var971))) ; Statement: $r18 = virtualinvoke $r17.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/1933136886 var788 var3814 (cast-from-var3938-to-var174 var2350) var846)) ; Statement: specialinvoke $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r19, $r9, $r18) 

(declare-const var788!1 var1617)
(declare-const var3814!1 String)
(declare-const var2350!1 var3938)
(declare-const var846!1 var1440)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var945-init=([], java.util.Properties), <init>/964458484=([java.util.Properties], void), file/980999332=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$ReleaseInfoEntry], java.io.File), var1617-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3426-to-var3483=([java.io.File], java.lang.Object), cast-from-var3938-to-var3483=([java.io.IOException], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), this$0/980999332=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$ReleaseInfoEntry], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var681-to-var1011=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/1933136886=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void), cast-from-var3938-to-var174=([java.io.IOException], java.lang.Throwable)}
; {var2345=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$ReleaseInfoEntry, var552=r1, var945=java.util.Properties, var2586=$r0, var3426=java.io.File, var1271=$r2, var2389=$r5, var3938=java.io.IOException, var2350=$r9, var1617=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var788=$r10, var3420=$r11, var708=$r13, var839=$r12, var3483=java.lang.Object, var25=$r14, var2644=$r15, var3554=$r16, var3814=$r19, var681=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link, var971=$r17, var1440=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var1011=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var846=$r18, var174=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$ReleaseInfoEntry=var2345, r1=var552, java.util.Properties=var945, $r0=var2586, java.io.File=var3426, $r2=var1271, $r5=var2389, java.io.IOException=var3938, $r9=var2350, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1617, $r10=var788, $r11=var3420, $r13=var708, $r12=var839, java.lang.Object=var3483, $r14=var25, $r15=var2644, $r16=var3554, $r19=var3814, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link=var681, $r17=var971, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var1440, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var1011, $r18=var846, java.lang.Throwable=var174}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$ReleaseInfoEntry;	$r0 = new java.util.Properties;	specialinvoke $r0.<java.util.Properties: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$ReleaseInfoEntry: java.io.File file>;	if $r2 == null goto $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$ReleaseInfoEntry: java.lang.String key>;	$r5 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$ReleaseInfoEntry: java.io.File file>;	$r9 := @caughtexception;	$r10 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot read release info file \"");	$r12 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$ReleaseInfoEntry: java.io.File file>;	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\": ");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r9);	$r19 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	$r17 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$ReleaseInfoEntry: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link this$0>;	$r18 = virtualinvoke $r17.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r19, $r9, $r18);	throw $r10
;block_num 3