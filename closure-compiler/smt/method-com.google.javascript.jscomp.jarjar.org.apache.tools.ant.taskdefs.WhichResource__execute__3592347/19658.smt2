(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3978 0)
(declare-sort var90 0)
(declare-sort var78 0)
(declare-sort var65 0)
(declare-sort var2363 0)
(declare-sort var969 0)
(declare-sort var411 0)
(declare-sort var1188 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun validate/-778493932 (var3978) void)
(declare-fun classpath/-1343157905 (var3978) var90)
(declare-fun var90-init () var90)
(declare-fun getProject/416672769 (var65) var78)
(declare-fun cast-from-var3978-to-var65 (var3978) var65)
(declare-fun <init>/-1939937668 (var90 var78) void)
(declare-fun concatSystemClasspath/1727310258 (var90 String) var90)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2363) String)
(declare-fun cast-from-var90-to-var2363 (var90) var2363)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/2093317233 (var78 String Int) void)
(declare-fun getCoreLoader/-1339909158 (var78) var969)
(declare-fun var411_newAntClassLoader/-1502267653 (var969 var78 var90 Bool) var411)
(declare-const null-var3978 var3978)
(declare-const null-var90 var90)
(declare-const null-var1188 var1188)
(declare-const null-var411 var411)
(declare-const var3073 var3978) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WhichResource 
(assert (not (= var3073 null-var3978)))
(assert true)
;(assert (validate/-778493932 var3073)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WhichResource: void validate()>() 

(declare-const var3073!1 var3978)
(define-const var2453 var90 (classpath/-1343157905 var3073!1)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WhichResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path classpath> 
 ; Statement: if $r1 == null goto $r2 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path 
(assert (= var2453 null-var90)) ; Cond: $r1 == null 
(define-const var2219 var90 var90-init) ; Statement: $r2 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path 
(assert true)
(define-const var1440 var78 (getProject/416672769 (cast-from-var3978-to-var65 var3073!1))) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WhichResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(assert true)
;(assert (<init>/-1939937668 var2219 var1440)) ; Statement: specialinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path: void <init>(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project)>($r3) 

(declare-const var2219!1 var90)
(declare-const var1440!1 var78)
(declare-const var3073!2 var3978)
(assert (not (= var3073!2 null-var3978)))
(assert (= (classpath/-1343157905 var3073!2) var2219!1)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WhichResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path classpath> = $r2 
(define-const var1928 var90 (classpath/-1343157905 var3073!2)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WhichResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path classpath> 
(assert true)
(define-const var980 var90 (concatSystemClasspath/1727310258 var1928 "only")) ; Statement: $r5 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path concatSystemClasspath(java.lang.String)>("only") 
(declare-const var3073!3 var3978)
(assert (not (= var3073!3 null-var3978)))
(assert (= (classpath/-1343157905 var3073!3) var980)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WhichResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path classpath> = $r5 
(assert true)
(define-const var1414 var78 (getProject/416672769 (cast-from-var3978-to-var65 var3073!3))) ; Statement: $r11 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WhichResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(define-const var870 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var870)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var870!1 String)
(assert (= var870!1 ""))
(assert true)
(define-const var1845 String (append/672562846 var870!1 "using system classpath: ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("using system classpath: ") 
(declare-const var870!2 String)
(assert (= var870!2 (str.++ var870!1 "using system classpath: ")))
(define-const var889 var90 (classpath/-1343157905 var3073!3)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WhichResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path classpath> 
(assert true)
(define-const var1752 String (append/-1031950772 var1845 (cast-from-var90-to-var2363 var889))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7) 
(declare-const var1845!1 String)
(assert (str.prefixof var1845 var1845!1))
(assert true)
(define-const var1897 String (toString/-2075883882 var1752)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/2093317233 var1414 var1897 4)) ; Statement: virtualinvoke $r11.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void log(java.lang.String,int)>($r10, 4) 

(declare-const var1414!1 var78)
(declare-const var1897!1 String)
(declare-const var1765 Int)
(assert true) ; Non Conditional
(assert true)
(define-const var431 var78 (getProject/416672769 (cast-from-var3978-to-var65 var3073!3))) ; Statement: $r12 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WhichResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(assert true)
(define-const var3520 var969 (getCoreLoader/-1339909158 var431)) ; Statement: $r15 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.ClassLoader getCoreLoader()>() 
(assert true)
(define-const var3853 var78 (getProject/416672769 (cast-from-var3978-to-var65 var3073!3))) ; Statement: $r14 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WhichResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(define-const var45 var90 (classpath/-1343157905 var3073!3)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WhichResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path classpath> 
(define-const var3979 var411 (var411_newAntClassLoader/-1502267653 var3520 var3853 var45 (ite (= 1 0) true false))) ; Statement: $r45 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader newAntClassLoader(java.lang.ClassLoader,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path,boolean)>($r15, $r14, $r13, 0) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3940 var1188) ; Statement: $r47 := @caughtexception 
(assert (not (= var3940 null-var1188)))
 ; Statement: if $r45 == null goto throw $r47 
(assert (= var3979 null-var411)) ; Cond: $r45 == null 
 ; Statement: throw $r47 
(check-sat)
(get-model)
(get-unsat-core)
; {validate/-778493932=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WhichResource], void), classpath/-1343157905=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WhichResource], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path), var90-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path), getProject/416672769=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), cast-from-var3978-to-var65=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WhichResource], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/-1939937668=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project], void), concatSystemClasspath/1727310258=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path, java.lang.String], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var90-to-var2363=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/2093317233=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String, int], void), getCoreLoader/-1339909158=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project], java.lang.ClassLoader), var411_newAntClassLoader/-1502267653=([java.lang.ClassLoader, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path, boolean], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader)}
; {var3978=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WhichResource, var3073=r0, var90=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path, var2453=$r1, var2219=$r2, var78=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var65=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var1440=$r3, var1928=$r4, var980=$r5, var1414=$r11, var870=$r6, var1845=$r8, var889=$r7, var2363=java.lang.Object, var1752=$r9, var1897=$r10, var1765=4, var431=$r12, var969=java.lang.ClassLoader, var3520=$r15, var3853=$r14, var45=$r13, var411=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader, var3979=$r45, var1188=java.lang.Throwable, var3940=$r47}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WhichResource=var3978, r0=var3073, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path=var90, $r1=var2453, $r2=var2219, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var78, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var65, $r3=var1440, $r4=var1928, $r5=var980, $r11=var1414, $r6=var870, $r8=var1845, $r7=var889, java.lang.Object=var2363, $r9=var1752, $r10=var1897, 4=var1765, $r12=var431, java.lang.ClassLoader=var969, $r15=var3520, $r14=var3853, $r13=var45, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader=var411, $r45=var3979, java.lang.Throwable=var1188, $r47=var3940}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WhichResource;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WhichResource: void validate()>();	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WhichResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path classpath>;	if $r1 == null goto $r2 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path;	$r2 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path;	$r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WhichResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	specialinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path: void <init>(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project)>($r3);	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WhichResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path classpath> = $r2;	$r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WhichResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path classpath>;	$r5 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path concatSystemClasspath(java.lang.String)>("only");	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WhichResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path classpath> = $r5;	$r11 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WhichResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("using system classpath: ");	$r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WhichResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path classpath>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r11.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void log(java.lang.String,int)>($r10, 4);	$r12 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WhichResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	$r15 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.ClassLoader getCoreLoader()>();	$r14 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WhichResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	$r13 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WhichResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path classpath>;	$r45 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader newAntClassLoader(java.lang.ClassLoader,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path,boolean)>($r15, $r14, $r13, 0);	$r47 := @caughtexception;	if $r45 == null goto throw $r47;	throw $r47
;block_num 5