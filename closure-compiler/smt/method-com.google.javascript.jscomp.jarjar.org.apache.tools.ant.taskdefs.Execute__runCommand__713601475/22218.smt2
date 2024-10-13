(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3056 0)
(declare-sort var2853 0)
(declare-sort var3670 0)
(declare-sort var776 0)
(declare-sort var1074 0)
(declare-sort var1671 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3670-init () var3670)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var776) String)
(declare-fun cast-from-var2853-to-var776 (var2853) var776)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLocation/851674571 (var1671) var1074)
(declare-fun cast-from-var3056-to-var1671 (var3056) var1671)
(declare-fun <init>/-469549130 (var3670 String var1074) void)
(declare-const null-var3056 var3056)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var2853 var2853)
(declare-const var255 var3056) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task 
(assert (not (= var255 null-var3056)))
(declare-const var2727 (Array Int String)) ; Statement: r1 := @parameter1: java.lang.String[] 
(assert (not (= var2727 null-__Array__Int__String__)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3329 var2853) ; Statement: $r14 := @caughtexception 
(assert (not (= var3329 null-var2853)))
(define-const var82 var3670 var3670-init) ; Statement: $r15 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var2548 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2548)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2548!1 String)
(assert (= var2548!1 ""))
(assert true)
(define-const var3133 String (append/672562846 var2548!1 "Could not launch ")) ; Statement: $r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not launch ") 
(declare-const var2548!2 String)
(assert (= var2548!2 (str.++ var2548!1 "Could not launch ")))
(define-const var2897 String (select var2727 0)) ; Statement: $r17 = r1[0] 
(assert true)
(define-const var2542 String (append/672562846 var3133 var2897)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var3133!1 String)
(assert (= var3133!1 (str.++ var3133 var2897)))
(assert true)
(define-const var1912 String (append/672562846 var2542 ": ")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var2542!1 String)
(assert (= var2542!1 (str.++ var2542 ": ")))
(assert true)
(define-const var1244 String (append/-1031950772 var1912 (cast-from-var2853-to-var776 var3329))) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r14) 
(declare-const var1912!1 String)
(assert (str.prefixof var1912 var1912!1))
(assert true)
(define-const var2175 String (toString/-2075883882 var1244)) ; Statement: $r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1748 var1074 (getLocation/851674571 (cast-from-var3056-to-var1671 var255))) ; Statement: $r22 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/-469549130 var82 var2175 var1748)) ; Statement: specialinvoke $r15.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r23, $r22) 

(declare-const var82!1 var3670)
(declare-const var2175!1 String)
(declare-const var1748!1 var1074)
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {var3670-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2853-to-var776=([java.io.IOException], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var3056-to-var1671=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/-469549130=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var3056=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var255=r0, var2727=r1, var2853=java.io.IOException, var3329=$r14, var3670=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var82=$r15, var2548=$r16, var3133=$r18, var2897=$r17, var2542=$r19, var1912=$r20, var776=java.lang.Object, var1244=$r21, var2175=$r23, var1074=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var1671=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var1748=$r22}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var3056, r0=var255, r1=var2727, java.io.IOException=var2853, $r14=var3329, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3670, $r15=var82, $r16=var2548, $r18=var3133, $r17=var2897, $r19=var2542, $r20=var1912, java.lang.Object=var776, $r21=var1244, $r23=var2175, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var1074, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var1671, $r22=var1748}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task;	r1 := @parameter1: java.lang.String[];	$r14 := @caughtexception;	$r15 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not launch ");	$r17 = r1[0];	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r14);	$r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	$r22 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r15.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r23, $r22);	throw $r15
;block_num 2