(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3990 0)
(declare-sort var1101 0)
(declare-sort var889 0)
(declare-sort var3874 0)
(declare-sort var429 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1101-init () var1101)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getTaskType/1957558293 (var889) String)
(declare-fun cast-from-var3990-to-var889 (var3990) var889)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLocation/851674571 (var429) var3874)
(declare-fun cast-from-var3990-to-var429 (var3990) var429)
(declare-fun <init>/-469549130 (var1101 String var3874) void)
(declare-const null-var3990 var3990)
(declare-const null-Bool Bool)
(declare-const var3997 var3990) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib 
(assert (not (= var3997 null-var3990)))
(declare-const var397 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var397 null-Bool)))
(define-const var2393 var1101 var1101-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var2309 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2309)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2309!1 String)
(assert (= var2309!1 ""))
(assert true)
(define-const var57 String (getTaskType/1957558293 (cast-from-var3990-to-var889 var3997))) ; Statement: $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib: java.lang.String getTaskType()>() 
(assert true)
(define-const var2235 String (append/672562846 var2309!1 var57)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2309!2 String)
(assert (= var2309!2 (str.++ var2309!1 var57)))
(assert true)
(define-const var2825 String (append/672562846 var2235 " doesn\u0027t support the addsourcefile attribute")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t support the addsourcefile attribute") 
(declare-const var2235!1 String)
(assert (= var2235!1 (str.++ var2235 " doesn\u0027t support the addsourcefile attribute")))
(assert true)
(define-const var1969 String (toString/-2075883882 var2825)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3312 var3874 (getLocation/851674571 (cast-from-var3990-to-var429 var3997))) ; Statement: $r6 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/-469549130 var2393 var1969 var3312)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r7, $r6) 

(declare-const var2393!1 var1101)
(declare-const var1969!1 String)
(declare-const var3312!1 var3874)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1101-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getTaskType/1957558293=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task], java.lang.String), cast-from-var3990-to-var889=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var3990-to-var429=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/-469549130=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var3990=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib, var3997=r2, var397=z0, var1101=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2393=$r0, var2309=$r1, var889=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var57=$r3, var2235=$r4, var2825=$r5, var1969=$r7, var3874=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var429=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var3312=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib=var3990, r2=var3997, z0=var397, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1101, $r0=var2393, $r1=var2309, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var889, $r3=var57, $r4=var2235, $r5=var2825, $r7=var1969, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var3874, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var429, $r6=var3312}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib;	z0 := @parameter0: boolean;	$r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib: java.lang.String getTaskType()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t support the addsourcefile attribute");	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r7, $r6);	throw $r0
;block_num 1