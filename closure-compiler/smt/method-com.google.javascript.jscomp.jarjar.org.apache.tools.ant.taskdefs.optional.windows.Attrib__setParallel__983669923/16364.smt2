(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3748 0)
(declare-sort var3120 0)
(declare-sort var3620 0)
(declare-sort var2613 0)
(declare-sort var2187 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3120-init () var3120)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getTaskType/1957558293 (var3620) String)
(declare-fun cast-from-var3748-to-var3620 (var3748) var3620)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLocation/851674571 (var2187) var2613)
(declare-fun cast-from-var3748-to-var2187 (var3748) var2187)
(declare-fun <init>/-469549130 (var3120 String var2613) void)
(declare-const null-var3748 var3748)
(declare-const null-Bool Bool)
(declare-const var2833 var3748) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib 
(assert (not (= var2833 null-var3748)))
(declare-const var3766 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var3766 null-Bool)))
(define-const var2941 var3120 var3120-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var3812 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3812)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3812!1 String)
(assert (= var3812!1 ""))
(assert true)
(define-const var3098 String (getTaskType/1957558293 (cast-from-var3748-to-var3620 var2833))) ; Statement: $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib: java.lang.String getTaskType()>() 
(assert true)
(define-const var3258 String (append/672562846 var3812!1 var3098)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3812!2 String)
(assert (= var3812!2 (str.++ var3812!1 var3098)))
(assert true)
(define-const var3490 String (append/672562846 var3258 " doesn\u0027t support the parallel attribute")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t support the parallel attribute") 
(declare-const var3258!1 String)
(assert (= var3258!1 (str.++ var3258 " doesn\u0027t support the parallel attribute")))
(assert true)
(define-const var2066 String (toString/-2075883882 var3490)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1913 var2613 (getLocation/851674571 (cast-from-var3748-to-var2187 var2833))) ; Statement: $r6 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/-469549130 var2941 var2066 var1913)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r7, $r6) 

(declare-const var2941!1 var3120)
(declare-const var2066!1 String)
(declare-const var1913!1 var2613)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3120-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getTaskType/1957558293=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task], java.lang.String), cast-from-var3748-to-var3620=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var3748-to-var2187=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/-469549130=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var3748=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib, var2833=r2, var3766=z0, var3120=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2941=$r0, var3812=$r1, var3620=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var3098=$r3, var3258=$r4, var3490=$r5, var2066=$r7, var2613=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var2187=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var1913=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib=var3748, r2=var2833, z0=var3766, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3120, $r0=var2941, $r1=var3812, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var3620, $r3=var3098, $r4=var3258, $r5=var3490, $r7=var2066, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var2613, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var2187, $r6=var1913}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib;	z0 := @parameter0: boolean;	$r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib: java.lang.String getTaskType()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t support the parallel attribute");	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.windows.Attrib: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r7, $r6);	throw $r0
;block_num 1