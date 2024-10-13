(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2804 0)
(declare-sort var1474 0)
(declare-sort var695 0)
(declare-sort var475 0)
(declare-sort var165 0)
(declare-sort var996 0)
(declare-sort var3265 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun resource/723307835 (var2804) String)
(declare-fun var475-init () var475)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLocation/851674571 (var996) var165)
(declare-fun cast-from-var2804-to-var996 (var2804) var996)
(declare-fun <init>/1933136886 (var475 String var3265 var165) void)
(declare-fun cast-from-var695-to-var3265 (var695) var3265)
(declare-const null-var2804 var2804)
(declare-const null-var1474 var1474)
(declare-const null-var695 var695)
(declare-const var867 var2804) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer 
(assert (not (= var867 null-var2804)))
(declare-const var3979 var1474) ; Statement: r0 := @parameter0: java.lang.ClassLoader 
(assert (not (= var3979 null-var1474)))
(define-const var3671 String (resource/723307835 var867)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer: java.lang.String resource> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2068 var695) ; Statement: $r10 := @caughtexception 
(assert (not (= var2068 null-var695)))
(define-const var2556 var475 var475-init) ; Statement: $r11 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var262 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var262)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var262!1 String)
(assert (= var262!1 ""))
(assert true)
(define-const var2908 String (append/672562846 var262!1 "Could not fetch resources named ")) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not fetch resources named ") 
(declare-const var262!2 String)
(assert (= var262!2 (str.++ var262!1 "Could not fetch resources named ")))
(define-const var2042 String (resource/723307835 var867)) ; Statement: $r13 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer: java.lang.String resource> 
(assert true)
(define-const var1280 String (append/672562846 var2908 var2042)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var2908!1 String)
(assert (= var2908!1 (str.++ var2908 var2042)))
(assert true)
(define-const var2852 String (toString/-2075883882 var1280)) ; Statement: $r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1347 var165 (getLocation/851674571 (cast-from-var2804-to-var996 var867))) ; Statement: $r16 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/1933136886 var2556 var2852 (cast-from-var695-to-var3265 var2068) var1347)) ; Statement: specialinvoke $r11.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r17, $r10, $r16) 

(declare-const var2556!1 var475)
(declare-const var2852!1 String)
(declare-const var2068!1 var695)
(declare-const var1347!1 var165)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {resource/723307835=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer], java.lang.String), var475-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var2804-to-var996=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/1933136886=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void), cast-from-var695-to-var3265=([java.io.IOException], java.lang.Throwable)}
; {var2804=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer, var867=r1, var1474=java.lang.ClassLoader, var3979=r0, var3671=$r2, var695=java.io.IOException, var2068=$r10, var475=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2556=$r11, var262=$r12, var2908=$r14, var2042=$r13, var1280=$r15, var2852=$r17, var165=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var996=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var1347=$r16, var3265=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer=var2804, r1=var867, java.lang.ClassLoader=var1474, r0=var3979, $r2=var3671, java.io.IOException=var695, $r10=var2068, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var475, $r11=var2556, $r12=var262, $r14=var2908, $r13=var2042, $r15=var1280, $r17=var2852, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var165, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var996, $r16=var1347, java.lang.Throwable=var3265}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer;	r0 := @parameter0: java.lang.ClassLoader;	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer: java.lang.String resource>;	$r10 := @caughtexception;	$r11 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not fetch resources named ");	$r13 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer: java.lang.String resource>;	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	$r16 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Definer: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r11.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r17, $r10, $r16);	throw $r11
;block_num 2