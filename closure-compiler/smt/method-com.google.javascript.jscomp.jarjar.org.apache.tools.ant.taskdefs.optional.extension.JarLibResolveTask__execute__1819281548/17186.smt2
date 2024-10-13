(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1655 0)
(declare-sort var3043 0)
(declare-sort var2108 0)
(declare-sort var2878 0)
(declare-sort var2380 0)
(declare-sort var2899 0)
(declare-sort var3549 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun validate/-326703549 (var1655) void)
(declare-fun getProject/416672769 (var2108) var3043)
(declare-fun cast-from-var1655-to-var2108 (var1655) var2108)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun requiredExtension/-33416602 (var1655) var2878)
(declare-fun append/-1031950772 (String var2380) String)
(declare-fun cast-from-var2878-to-var2380 (var2878) var2380)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/2093317233 (var3043 String Int) void)
(declare-fun propertyName/-33416602 (var1655) String)
(declare-fun getProperty/-1126216426 (var3043 String) String)
(declare-fun failOnError/-33416602 (var1655) Bool)
(declare-fun var3549-init () var3549)
(declare-fun <init>/1864341934 (var3549 String) void)
(declare-const null-var1655 var1655)
(declare-const null-String String)
(declare-const var1865 var1655) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibResolveTask 
(assert (not (= var1865 null-var1655)))
(assert true)
;(assert (validate/-326703549 var1865)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibResolveTask: void validate()>() 

(declare-const var1865!1 var1655)
(assert true)
(define-const var2311 var3043 (getProject/416672769 (cast-from-var1655-to-var2108 var1865!1))) ; Statement: $r6 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibResolveTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(define-const var2941 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2941)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2941!1 String)
(assert (= var2941!1 ""))
(assert true)
(define-const var1860 String (append/672562846 var2941!1 "Resolving extension: ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Resolving extension: ") 
(declare-const var2941!2 String)
(assert (= var2941!2 (str.++ var2941!1 "Resolving extension: ")))
(define-const var3222 var2878 (requiredExtension/-33416602 var1865!1)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibResolveTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension requiredExtension> 
(assert true)
(define-const var3486 String (append/-1031950772 var1860 (cast-from-var2878-to-var2380 var3222))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var1860!1 String)
(assert (str.prefixof var1860 var1860!1))
(assert true)
(define-const var3799 String (toString/-2075883882 var3486)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/2093317233 var2311 var3799 3)) ; Statement: virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void log(java.lang.String,int)>($r5, 3) 

(declare-const var2311!1 var3043)
(declare-const var3799!1 String)
(declare-const var614 Int)
(assert true)
(define-const var117 var3043 (getProject/416672769 (cast-from-var1655-to-var2108 var1865!1))) ; Statement: $r8 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibResolveTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(define-const var361 String (propertyName/-33416602 var1865!1)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibResolveTask: java.lang.String propertyName> 
(assert true)
(define-const var1600 String (getProperty/-1126216426 var117 var361)) ; Statement: r9 = virtualinvoke $r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>($r7) 
 ; Statement: if null == r9 goto $r10 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibResolveTask: java.util.List resolvers> 
(assert (not (= null-String var1600))) ; Negate: Cond: null == r9  
(define-const var1264 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1264)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1264!1 String)
(assert (= var1264!1 ""))
(assert true)
(define-const var3628 String (append/672562846 var1264!1 "Property Already set to: ")) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Property Already set to: ") 
(declare-const var1264!2 String)
(assert (= var1264!2 (str.++ var1264!1 "Property Already set to: ")))
(assert true)
(define-const var3900 String (append/672562846 var3628 var1600)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9) 
(declare-const var3628!1 String)
(assert (= var3628!1 (str.++ var3628 var1600)))
(assert true)
(define-const var51 String (toString/-2075883882 var3900)) ; Statement: r42 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var596 Bool (failOnError/-33416602 var1865!1)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibResolveTask: boolean failOnError> 
 ; Statement: if $z1 == 0 goto $r23 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibResolveTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(assert (not (= (ite var596 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3282 var3549 var3549-init) ; Statement: $r24 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert true)
;(assert (<init>/1864341934 var3282 var51)) ; Statement: specialinvoke $r24.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>(r42) 

(declare-const var3282!1 var3549)
(declare-const var51!1 String)
 ; Statement: throw $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {validate/-326703549=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibResolveTask], void), getProject/416672769=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), cast-from-var1655-to-var2108=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibResolveTask], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), requiredExtension/-33416602=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibResolveTask], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2878-to-var2380=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/2093317233=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String, int], void), propertyName/-33416602=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibResolveTask], java.lang.String), getProperty/-1126216426=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String], java.lang.String), failOnError/-33416602=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibResolveTask], boolean), var3549-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var1655=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibResolveTask, var1865=r0, var3043=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var2108=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var2311=$r6, var2941=$r1, var1860=$r3, var2878=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension, var3222=$r2, var2380=java.lang.Object, var3486=$r4, var3799=$r5, var614=3, var117=$r8, var361=$r7, var1600=r9, var2899=null_type, var1264=$r20, var3628=$r21, var3900=$r22, var51=r42, var596=$z1, var3549=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var3282=$r24}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibResolveTask=var1655, r0=var1865, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var3043, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var2108, $r6=var2311, $r1=var2941, $r3=var1860, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension=var2878, $r2=var3222, java.lang.Object=var2380, $r4=var3486, $r5=var3799, 3=var614, $r8=var117, $r7=var361, r9=var1600, null_type=var2899, $r20=var1264, $r21=var3628, $r22=var3900, r42=var51, $z1=var596, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3549, $r24=var3282}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibResolveTask;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibResolveTask: void validate()>();	$r6 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibResolveTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Resolving extension: ");	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibResolveTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension requiredExtension>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void log(java.lang.String,int)>($r5, 3);	$r8 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibResolveTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	$r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibResolveTask: java.lang.String propertyName>;	r9 = virtualinvoke $r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>($r7);	if null == r9 goto $r10 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibResolveTask: java.util.List resolvers>;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Property Already set to: ");	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9);	r42 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>();	$z1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibResolveTask: boolean failOnError>;	if $z1 == 0 goto $r23 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibResolveTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	$r24 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	specialinvoke $r24.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>(r42);	throw $r24
;block_num 3