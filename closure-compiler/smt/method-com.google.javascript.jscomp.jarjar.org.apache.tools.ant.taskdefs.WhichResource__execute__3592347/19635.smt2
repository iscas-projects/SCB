(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1528 0)
(declare-sort var2576 0)
(declare-sort var317 0)
(declare-sort var3842 0)
(declare-sort var3188 0)
(declare-sort var1735 0)
(declare-sort var376 0)
(declare-sort var1030 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun validate/-778493932 (var1528) void)
(declare-fun classpath/-1343157905 (var1528) var2576)
(declare-fun concatSystemClasspath/1727310258 (var2576 String) var2576)
(declare-fun getProject/416672769 (var3842) var317)
(declare-fun cast-from-var1528-to-var3842 (var1528) var3842)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3188) String)
(declare-fun cast-from-var2576-to-var3188 (var2576) var3188)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/2093317233 (var317 String Int) void)
(declare-fun getCoreLoader/-1339909158 (var317) var1735)
(declare-fun var376_newAntClassLoader/-1502267653 (var1735 var317 var2576 Bool) var376)
(declare-const null-var1528 var1528)
(declare-const null-var2576 var2576)
(declare-const null-var1030 var1030)
(declare-const null-var376 var376)
(declare-const var604 var1528) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WhichResource 
(assert (not (= var604 null-var1528)))
(assert true)
;(assert (validate/-778493932 var604)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WhichResource: void validate()>() 

(declare-const var604!1 var1528)
(define-const var968 var2576 (classpath/-1343157905 var604!1)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WhichResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path classpath> 
 ; Statement: if $r1 == null goto $r2 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path 
(assert (not (= var968 null-var2576))) ; Negate: Cond: $r1 == null  
(define-const var3047 var2576 (classpath/-1343157905 var604!1)) ; Statement: $r37 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WhichResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path classpath> 
(assert true)
(define-const var2936 var2576 (concatSystemClasspath/1727310258 var3047 "ignore")) ; Statement: $r38 = virtualinvoke $r37.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path concatSystemClasspath(java.lang.String)>("ignore") 
(declare-const var604!2 var1528)
(assert (not (= var604!2 null-var1528)))
(assert (= (classpath/-1343157905 var604!2) var2936)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WhichResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path classpath> = $r38 
(assert true)
(define-const var3965 var317 (getProject/416672769 (cast-from-var1528-to-var3842 var604!2))) ; Statement: $r44 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WhichResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(define-const var3974 String String-init) ; Statement: $r39 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3974)) ; Statement: specialinvoke $r39.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3974!1 String)
(assert (= var3974!1 ""))
(assert true)
(define-const var129 String (append/672562846 var3974!1 "using user supplied classpath: ")) ; Statement: $r41 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("using user supplied classpath: ") 
(declare-const var3974!2 String)
(assert (= var3974!2 (str.++ var3974!1 "using user supplied classpath: ")))
(define-const var16 var2576 (classpath/-1343157905 var604!2)) ; Statement: $r40 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WhichResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path classpath> 
(assert true)
(define-const var3804 String (append/-1031950772 var129 (cast-from-var2576-to-var3188 var16))) ; Statement: $r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r40) 
(declare-const var129!1 String)
(assert (str.prefixof var129 var129!1))
(assert true)
(define-const var1593 String (toString/-2075883882 var3804)) ; Statement: $r43 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/2093317233 var3965 var1593 4)) ; Statement: virtualinvoke $r44.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void log(java.lang.String,int)>($r43, 4) 

(declare-const var3965!1 var317)
(declare-const var1593!1 String)
(declare-const var2302 Int)
 ; Statement: goto [?= $r12 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WhichResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var3423 var317 (getProject/416672769 (cast-from-var1528-to-var3842 var604!2))) ; Statement: $r12 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WhichResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(assert true)
(define-const var76 var1735 (getCoreLoader/-1339909158 var3423)) ; Statement: $r15 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.ClassLoader getCoreLoader()>() 
(assert true)
(define-const var3063 var317 (getProject/416672769 (cast-from-var1528-to-var3842 var604!2))) ; Statement: $r14 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WhichResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(define-const var1003 var2576 (classpath/-1343157905 var604!2)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WhichResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path classpath> 
(define-const var1230 var376 (var376_newAntClassLoader/-1502267653 var76 var3063 var1003 (ite (= 1 0) true false))) ; Statement: $r45 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader newAntClassLoader(java.lang.ClassLoader,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path,boolean)>($r15, $r14, $r13, 0) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1407 var1030) ; Statement: $r47 := @caughtexception 
(assert (not (= var1407 null-var1030)))
 ; Statement: if $r45 == null goto throw $r47 
(assert (= var1230 null-var376)) ; Cond: $r45 == null 
 ; Statement: throw $r47 
(check-sat)
(get-model)
(get-unsat-core)
; {validate/-778493932=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WhichResource], void), classpath/-1343157905=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WhichResource], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path), concatSystemClasspath/1727310258=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path, java.lang.String], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path), getProject/416672769=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), cast-from-var1528-to-var3842=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WhichResource], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2576-to-var3188=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/2093317233=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String, int], void), getCoreLoader/-1339909158=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project], java.lang.ClassLoader), var376_newAntClassLoader/-1502267653=([java.lang.ClassLoader, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path, boolean], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader)}
; {var1528=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WhichResource, var604=r0, var2576=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path, var968=$r1, var3047=$r37, var2936=$r38, var317=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var3842=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var3965=$r44, var3974=$r39, var129=$r41, var16=$r40, var3188=java.lang.Object, var3804=$r42, var1593=$r43, var2302=4, var3423=$r12, var1735=java.lang.ClassLoader, var76=$r15, var3063=$r14, var1003=$r13, var376=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader, var1230=$r45, var1030=java.lang.Throwable, var1407=$r47}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WhichResource=var1528, r0=var604, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path=var2576, $r1=var968, $r37=var3047, $r38=var2936, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var317, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var3842, $r44=var3965, $r39=var3974, $r41=var129, $r40=var16, java.lang.Object=var3188, $r42=var3804, $r43=var1593, 4=var2302, $r12=var3423, java.lang.ClassLoader=var1735, $r15=var76, $r14=var3063, $r13=var1003, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader=var376, $r45=var1230, java.lang.Throwable=var1030, $r47=var1407}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WhichResource;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WhichResource: void validate()>();	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WhichResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path classpath>;	if $r1 == null goto $r2 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path;	$r37 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WhichResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path classpath>;	$r38 = virtualinvoke $r37.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path concatSystemClasspath(java.lang.String)>("ignore");	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WhichResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path classpath> = $r38;	$r44 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WhichResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	$r39 = new java.lang.StringBuilder;	specialinvoke $r39.<java.lang.StringBuilder: void <init>()>();	$r41 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("using user supplied classpath: ");	$r40 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WhichResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path classpath>;	$r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r40);	$r43 = virtualinvoke $r42.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r44.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void log(java.lang.String,int)>($r43, 4);	goto [?= $r12 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WhichResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>()];	$r12 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WhichResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	$r15 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.ClassLoader getCoreLoader()>();	$r14 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WhichResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	$r13 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WhichResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path classpath>;	$r45 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader newAntClassLoader(java.lang.ClassLoader,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path,boolean)>($r15, $r14, $r13, 0);	$r47 := @caughtexception;	if $r45 == null goto throw $r47;	throw $r47
;block_num 5