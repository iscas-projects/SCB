(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1500 0)
(declare-sort var1114 0)
(declare-sort var1652 0)
(declare-sort var149 0)
(declare-sort var1544 0)
(declare-sort var3543 0)
(declare-sort var2796 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/-372021799 (var1114) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/1006881114 (var1652 String Int) void)
(declare-fun cast-from-var1500-to-var1652 (var1500) var1652)
(declare-fun getProject/416672769 (var1544) var149)
(declare-fun cast-from-var1114-to-var1544 (var1114) var1544)
(declare-fun createClassLoader/-1162867620 (var149 var1114) var3543)
(declare-const null-var1500 var1500)
(declare-const null-var1114 var1114)
(declare-const null-var2796 var2796)
(declare-const null-var3543 var3543)
(declare-const var3975 var1500) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool 
(assert (not (= var3975 null-var1500)))
(declare-const var1386 var1114) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path 
(assert (not (= var1386 null-var1114)))
(define-const var920 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var920)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var920!1 String)
(assert (= var920!1 ""))
(assert true)
(define-const var45 String (append/672562846 var920!1 "Looking for GenIC class in classpath: ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Looking for GenIC class in classpath: ") 
(declare-const var920!2 String)
(assert (= var920!2 (str.++ var920!1 "Looking for GenIC class in classpath: ")))
(assert true)
(define-const var2223 String (toString/-372021799 var1386)) ; Statement: $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path: java.lang.String toString()>() 
(assert true)
(define-const var2263 String (append/672562846 var45 var2223)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var45!1 String)
(assert (= var45!1 (str.++ var45 var2223)))
(assert true)
(define-const var1876 String (toString/-2075883882 var2263)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/1006881114 (cast-from-var1500-to-var1652 var3975) var1876 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool: void log(java.lang.String,int)>($r6, 3) 

(declare-const var3975!1 var1500)
(declare-const var1876!1 String)
(declare-const var618 Int)
(assert true)
(define-const var1106 var149 (getProject/416672769 (cast-from-var1114-to-var1544 var1386))) ; Statement: $r7 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(assert true)
(define-const var1186 var3543 (createClassLoader/-1162867620 var1106 var1386)) ; Statement: r8 = virtualinvoke $r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader createClassLoader(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path)>(r2) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3226 var2796) ; Statement: $r10 := @caughtexception 
(assert (not (= var3226 null-var2796)))
 ; Statement: if r8 == null goto throw $r10 
(assert (= var1186 null-var3543)) ; Cond: r8 == null 
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-372021799=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/1006881114=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, java.lang.String, int], void), cast-from-var1500-to-var1652=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool), getProject/416672769=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), cast-from-var1114-to-var1544=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), createClassLoader/-1162867620=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader)}
; {var1500=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool, var3975=r0, var1114=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path, var1386=r2, var920=$r1, var45=$r4, var2223=$r3, var2263=$r5, var1876=$r6, var1652=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, var618=3, var149=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var1544=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var1106=$r7, var3543=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader, var1186=r8, var2796=java.lang.Throwable, var3226=$r10}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool=var1500, r0=var3975, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path=var1114, r2=var1386, $r1=var920, $r4=var45, $r3=var2223, $r5=var2263, $r6=var1876, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool=var1652, 3=var618, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var149, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var1544, $r7=var1106, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader=var3543, r8=var1186, java.lang.Throwable=var2796, $r10=var3226}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool;	r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Looking for GenIC class in classpath: ");	$r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path: java.lang.String toString()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool: void log(java.lang.String,int)>($r6, 3);	$r7 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	r8 = virtualinvoke $r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader createClassLoader(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path)>(r2);	$r10 := @caughtexception;	if r8 == null goto throw $r10;	throw $r10
;block_num 3