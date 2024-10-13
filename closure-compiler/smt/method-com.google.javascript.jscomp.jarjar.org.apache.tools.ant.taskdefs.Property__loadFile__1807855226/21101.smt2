(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3647 0)
(declare-sort var3724 0)
(declare-sort var792 0)
(declare-sort var1660 0)
(declare-sort var2811 0)
(declare-sort var2540 0)
(declare-sort var2860 0)
(declare-sort var1924 0)
(declare-sort var1339 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var792-init () var792)
(declare-fun <init>/964458484 (var792) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getAbsolutePath/-802773300 (var3724) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var1660 String Int) void)
(declare-fun cast-from-var3647-to-var1660 (var3647) var1660)
(declare-fun var2540-init () var2540)
(declare-fun getLocation/851674571 (var1924) var2860)
(declare-fun cast-from-var3647-to-var1924 (var3647) var1924)
(declare-fun <init>/1600772885 (var2540 var1339 var2860) void)
(declare-fun cast-from-var2811-to-var1339 (var2811) var1339)
(declare-const null-var3647 var3647)
(declare-const null-var3724 var3724)
(declare-const null-var2811 var2811)
(declare-const var1126 var3647) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property 
(assert (not (= var1126 null-var3647)))
(declare-const var2993 var3724) ; Statement: r3 := @parameter0: java.io.File 
(assert (not (= var2993 null-var3724)))
(define-const var3794 var792 var792-init) ; Statement: $r0 = new java.util.Properties 
(assert true)
;(assert (<init>/964458484 var3794)) ; Statement: specialinvoke $r0.<java.util.Properties: void <init>()>() 

(declare-const var3794!1 var792)
(define-const var600 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var600)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var600!1 String)
(assert (= var600!1 ""))
(assert true)
(define-const var2904 String (append/672562846 var600!1 "Loading ")) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Loading ") 
(declare-const var600!2 String)
(assert (= var600!2 (str.++ var600!1 "Loading ")))
(assert true)
(define-const var1475 String (getAbsolutePath/-802773300 var2993)) ; Statement: $r4 = virtualinvoke r3.<java.io.File: java.lang.String getAbsolutePath()>() 
(assert true)
(define-const var3825 String (append/672562846 var2904 var1475)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2904!1 String)
(assert (= var2904!1 (str.++ var2904 var1475)))
(assert true)
(define-const var680 String (toString/-2075883882 var3825)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var3647-to-var1660 var1126) var680 3)) ; Statement: virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property: void log(java.lang.String,int)>($r7, 3) 

(declare-const var1126!1 var3647)
(declare-const var680!1 String)
(declare-const var57 Int)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3508 var2811) ; Statement: $r16 := @caughtexception 
(assert (not (= var3508 null-var2811)))
(define-const var3057 var2540 var2540-init) ; Statement: $r17 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert true)
(define-const var1639 var2860 (getLocation/851674571 (cast-from-var3647-to-var1924 var1126!1))) ; Statement: $r18 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/1600772885 var3057 (cast-from-var2811-to-var1339 var3508) var1639)) ; Statement: specialinvoke $r17.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.Throwable,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r16, $r18) 

(declare-const var3057!1 var2540)
(declare-const var3508!1 var2811)
(declare-const var1639!1 var2860)
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {var792-init=([], java.util.Properties), <init>/964458484=([java.util.Properties], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getAbsolutePath/-802773300=([java.io.File], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var3647-to-var1660=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), var2540-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var3647-to-var1924=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/1600772885=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.Throwable, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void), cast-from-var2811-to-var1339=([java.io.IOException], java.lang.Throwable)}
; {var3647=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property, var1126=r1, var3724=java.io.File, var2993=r3, var792=java.util.Properties, var3794=$r0, var600=$r2, var2904=$r5, var1475=$r4, var3825=$r6, var680=$r7, var1660=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var57=3, var2811=java.io.IOException, var3508=$r16, var2540=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var3057=$r17, var2860=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var1924=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var1639=$r18, var1339=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property=var3647, r1=var1126, java.io.File=var3724, r3=var2993, java.util.Properties=var792, $r0=var3794, $r2=var600, $r5=var2904, $r4=var1475, $r6=var3825, $r7=var680, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var1660, 3=var57, java.io.IOException=var2811, $r16=var3508, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var2540, $r17=var3057, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var2860, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var1924, $r18=var1639, java.lang.Throwable=var1339}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property;	r3 := @parameter0: java.io.File;	$r0 = new java.util.Properties;	specialinvoke $r0.<java.util.Properties: void <init>()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Loading ");	$r4 = virtualinvoke r3.<java.io.File: java.lang.String getAbsolutePath()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property: void log(java.lang.String,int)>($r7, 3);	$r16 := @caughtexception;	$r17 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r18 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r17.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.Throwable,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r16, $r18);	throw $r17
;block_num 2