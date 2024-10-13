(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var759 0)
(declare-sort var80 0)
(declare-sort var3263 0)
(declare-sort var2861 0)
(declare-sort var1494 0)
(declare-sort var1776 0)
(declare-sort var3650 0)
(declare-sort var3803 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getProject/416672769 (var2861) var3263)
(declare-fun cast-from-var759-to-var2861 (var759) var2861)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun resolveFile/-2142186458 (var3263 String) var1494)
(declare-fun append/-1031950772 (String var3650) String)
(declare-fun cast-from-var1494-to-var3650 (var1494) var3650)
(declare-fun log/456963423 (var3803 String Int) void)
(declare-fun cast-from-var759-to-var3803 (var759) var3803)
(declare-fun loaded/965132528 (var759) Bool)
(declare-const null-var759 var759)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-var1776 var1776)
(declare-const var81 var759) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate 
(assert (not (= var81 null-var759)))
(declare-const var1304 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1304 null-String)))
(declare-const var3139 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3139 null-Int)))
(declare-const var583 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var583 null-Bool)))
(assert true)
(define-const var2696 var3263 (getProject/416672769 (cast-from-var759-to-var2861 var81))) ; Statement: $r6 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(define-const var187 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var187)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var187!1 String)
(assert (= var187!1 ""))
(assert true)
(define-const var1700 String (append/672562846 var187!1 var1304)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var187!2 String)
(assert (= var187!2 (str.++ var187!1 var1304)))
(assert true)
(define-const var3201 String (append/672562846 var1700 ".properties")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".properties") 
(declare-const var1700!1 String)
(assert (= var1700!1 (str.++ var1700 ".properties")))
(assert true)
(define-const var3191 String (toString/-2075883882 var3201)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1868 var1494 (resolveFile/-2142186458 var2696 var3191)) ; Statement: r7 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.io.File resolveFile(java.lang.String)>($r5) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3898 var1776) ; Statement: $r15 := @caughtexception 
(assert (not (= var3898 null-var1776)))
(define-const var1673 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1673)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1673!1 String)
(assert (= var1673!1 ""))
(assert true)
(define-const var1230 String (append/-1031950772 var1673!1 (cast-from-var1494-to-var3650 var1868))) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7) 
(declare-const var1673!2 String)
(assert (str.prefixof var1673!1 var1673!2))
(assert true)
(define-const var3700 String (append/672562846 var1230 " not found.")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" not found.") 
(declare-const var1230!1 String)
(assert (= var1230!1 (str.++ var1230 " not found.")))
(assert true)
(define-const var3260 String (toString/-2075883882 var3700)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var759-to-var3803 var81) var3260 4)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void log(java.lang.String,int)>($r19, 4) 

(declare-const var81!1 var759)
(declare-const var3260!1 String)
(declare-const var2854 Int)
(define-const var718 Bool (loaded/965132528 var81!1)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: boolean loaded> 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var718 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getProject/416672769=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), cast-from-var759-to-var2861=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), resolveFile/-2142186458=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String], java.io.File), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1494-to-var3650=([java.io.File], java.lang.Object), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var759-to-var3803=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), loaded/965132528=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate], boolean)}
; {var759=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate, var81=r0, var1304=r2, var80=null_type, var3139=i0, var583=z1, var3263=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var2861=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var2696=$r6, var187=$r1, var1700=$r3, var3201=$r4, var3191=$r5, var1494=java.io.File, var1868=r7, var1776=java.io.IOException, var3898=$r15, var1673=$r16, var3650=java.lang.Object, var1230=$r17, var3700=$r18, var3260=$r19, var3803=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var2854=4, var718=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate=var759, r0=var81, r2=var1304, null_type=var80, i0=var3139, z1=var583, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var3263, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var2861, $r6=var2696, $r1=var187, $r3=var1700, $r4=var3201, $r5=var3191, java.io.File=var1494, r7=var1868, java.io.IOException=var1776, $r15=var3898, $r16=var1673, java.lang.Object=var3650, $r17=var1230, $r18=var3700, $r19=var3260, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var3803, 4=var2854, $z0=var718}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate;	r2 := @parameter0: java.lang.String;	i0 := @parameter1: int;	z1 := @parameter2: boolean;	$r6 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".properties");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	r7 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.io.File resolveFile(java.lang.String)>($r5);	$r15 := @caughtexception;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r7);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" not found.");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: void log(java.lang.String,int)>($r19, 4);	$z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.i18n.Translate: boolean loaded>;	if $z0 != 0 goto return;	return
;block_num 3