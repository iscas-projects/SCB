(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2694 0)
(declare-sort var1340 0)
(declare-sort var1517 0)
(declare-sort var1884 0)
(declare-sort var3294 0)
(declare-sort var897 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun validate/-326703549 (var2694) void)
(declare-fun getProject/416672769 (var1517) var1340)
(declare-fun cast-from-var2694-to-var1517 (var2694) var1517)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun requiredExtension/-33416602 (var2694) var1884)
(declare-fun append/-1031950772 (String var3294) String)
(declare-fun cast-from-var1884-to-var3294 (var1884) var3294)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/2093317233 (var1340 String Int) void)
(declare-fun propertyName/-33416602 (var2694) String)
(declare-fun getProperty/-1126216426 (var1340 String) String)
(declare-fun failOnError/-33416602 (var2694) Bool)
(declare-const null-var2694 var2694)
(declare-const null-String String)
(declare-const var575 var2694) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibResolveTask 
(assert (not (= var575 null-var2694)))
(assert true)
;(assert (validate/-326703549 var575)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibResolveTask: void validate()>() 

(declare-const var575!1 var2694)
(assert true)
(define-const var2155 var1340 (getProject/416672769 (cast-from-var2694-to-var1517 var575!1))) ; Statement: $r6 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibResolveTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(define-const var2124 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2124)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2124!1 String)
(assert (= var2124!1 ""))
(assert true)
(define-const var2976 String (append/672562846 var2124!1 "Resolving extension: ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Resolving extension: ") 
(declare-const var2124!2 String)
(assert (= var2124!2 (str.++ var2124!1 "Resolving extension: ")))
(define-const var3718 var1884 (requiredExtension/-33416602 var575!1)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibResolveTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension requiredExtension> 
(assert true)
(define-const var3177 String (append/-1031950772 var2976 (cast-from-var1884-to-var3294 var3718))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2976!1 String)
(assert (str.prefixof var2976 var2976!1))
(assert true)
(define-const var2985 String (toString/-2075883882 var3177)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/2093317233 var2155 var2985 3)) ; Statement: virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void log(java.lang.String,int)>($r5, 3) 

(declare-const var2155!1 var1340)
(declare-const var2985!1 String)
(declare-const var1457 Int)
(assert true)
(define-const var1250 var1340 (getProject/416672769 (cast-from-var2694-to-var1517 var575!1))) ; Statement: $r8 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibResolveTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(define-const var108 String (propertyName/-33416602 var575!1)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibResolveTask: java.lang.String propertyName> 
(assert true)
(define-const var836 String (getProperty/-1126216426 var1250 var108)) ; Statement: r9 = virtualinvoke $r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>($r7) 
 ; Statement: if null == r9 goto $r10 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibResolveTask: java.util.List resolvers> 
(assert (not (= null-String var836))) ; Negate: Cond: null == r9  
(define-const var1438 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1438)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1438!1 String)
(assert (= var1438!1 ""))
(assert true)
(define-const var3203 String (append/672562846 var1438!1 "Property Already set to: ")) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Property Already set to: ") 
(declare-const var1438!2 String)
(assert (= var1438!2 (str.++ var1438!1 "Property Already set to: ")))
(assert true)
(define-const var1236 String (append/672562846 var3203 var836)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9) 
(declare-const var3203!1 String)
(assert (= var3203!1 (str.++ var3203 var836)))
(assert true)
(define-const var2727 String (toString/-2075883882 var1236)) ; Statement: r42 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var558 Bool (failOnError/-33416602 var575!1)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibResolveTask: boolean failOnError> 
 ; Statement: if $z1 == 0 goto $r23 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibResolveTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(assert (= (ite var558 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var2079 var1340 (getProject/416672769 (cast-from-var2694-to-var1517 var575!1))) ; Statement: $r23 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibResolveTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(assert true)
;(assert (log/2093317233 var2079 var2727 0)) ; Statement: virtualinvoke $r23.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void log(java.lang.String,int)>(r42, 0) 

(declare-const var2079!1 var1340)
(declare-const var2727!1 String)
(declare-const var2314 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {validate/-326703549=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibResolveTask], void), getProject/416672769=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), cast-from-var2694-to-var1517=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibResolveTask], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), requiredExtension/-33416602=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibResolveTask], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1884-to-var3294=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/2093317233=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String, int], void), propertyName/-33416602=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibResolveTask], java.lang.String), getProperty/-1126216426=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String], java.lang.String), failOnError/-33416602=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibResolveTask], boolean)}
; {var2694=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibResolveTask, var575=r0, var1340=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var1517=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var2155=$r6, var2124=$r1, var2976=$r3, var1884=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension, var3718=$r2, var3294=java.lang.Object, var3177=$r4, var2985=$r5, var1457=3, var1250=$r8, var108=$r7, var836=r9, var897=null_type, var1438=$r20, var3203=$r21, var1236=$r22, var2727=r42, var558=$z1, var2079=$r23, var2314=0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibResolveTask=var2694, r0=var575, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var1340, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var1517, $r6=var2155, $r1=var2124, $r3=var2976, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension=var1884, $r2=var3718, java.lang.Object=var3294, $r4=var3177, $r5=var2985, 3=var1457, $r8=var1250, $r7=var108, r9=var836, null_type=var897, $r20=var1438, $r21=var3203, $r22=var1236, r42=var2727, $z1=var558, $r23=var2079, 0=var2314}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibResolveTask;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibResolveTask: void validate()>();	$r6 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibResolveTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Resolving extension: ");	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibResolveTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Extension requiredExtension>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void log(java.lang.String,int)>($r5, 3);	$r8 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibResolveTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	$r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibResolveTask: java.lang.String propertyName>;	r9 = virtualinvoke $r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>($r7);	if null == r9 goto $r10 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibResolveTask: java.util.List resolvers>;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Property Already set to: ");	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9);	r42 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>();	$z1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibResolveTask: boolean failOnError>;	if $z1 == 0 goto $r23 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibResolveTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	$r23 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.JarLibResolveTask: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	virtualinvoke $r23.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void log(java.lang.String,int)>(r42, 0);	return
;block_num 3