(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1816 0)
(declare-sort var2057 0)
(declare-sort var389 0)
(declare-sort var1757 0)
(declare-sort var763 0)
(declare-sort var3503 0)
(declare-sort var665 0)
(declare-sort var2860 0)
(declare-sort var2828 0)
(declare-sort var3595 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var389-init () var389)
(declare-fun <init>/964458484 (var389) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1757) String)
(declare-fun cast-from-var2057-to-var1757 (var2057) var1757)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var763 String Int) void)
(declare-fun cast-from-var1816-to-var763 (var1816) var763)
(declare-fun var665-init () var665)
(declare-fun getLocation/851674571 (var2828) var2860)
(declare-fun cast-from-var1816-to-var2828 (var1816) var2828)
(declare-fun <init>/1600772885 (var665 var3595 var2860) void)
(declare-fun cast-from-var3503-to-var3595 (var3503) var3595)
(declare-const null-var1816 var1816)
(declare-const null-var2057 var2057)
(declare-const null-var3503 var3503)
(declare-const var3915 var1816) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property 
(assert (not (= var3915 null-var1816)))
(declare-const var1614 var2057) ; Statement: r3 := @parameter0: java.net.URL 
(assert (not (= var1614 null-var2057)))
(define-const var3962 var389 var389-init) ; Statement: $r0 = new java.util.Properties 
(assert true)
;(assert (<init>/964458484 var3962)) ; Statement: specialinvoke $r0.<java.util.Properties: void <init>()>() 

(declare-const var3962!1 var389)
(define-const var1653 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1653)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1653!1 String)
(assert (= var1653!1 ""))
(assert true)
(define-const var898 String (append/672562846 var1653!1 "Loading ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Loading ") 
(declare-const var1653!2 String)
(assert (= var1653!2 (str.++ var1653!1 "Loading ")))
(assert true)
(define-const var1826 String (append/-1031950772 var898 (cast-from-var2057-to-var1757 var1614))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3) 
(declare-const var898!1 String)
(assert (str.prefixof var898 var898!1))
(assert true)
(define-const var2000 String (toString/-2075883882 var1826)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var1816-to-var763 var3915) var2000 3)) ; Statement: virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property: void log(java.lang.String,int)>($r6, 3) 

(declare-const var3915!1 var1816)
(declare-const var2000!1 String)
(declare-const var3599 Int)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3732 var3503) ; Statement: $r8 := @caughtexception 
(assert (not (= var3732 null-var3503)))
(define-const var74 var665 var665-init) ; Statement: $r9 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert true)
(define-const var708 var2860 (getLocation/851674571 (cast-from-var1816-to-var2828 var3915!1))) ; Statement: $r10 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/1600772885 var74 (cast-from-var3503-to-var3595 var3732) var708)) ; Statement: specialinvoke $r9.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.Throwable,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r8, $r10) 

(declare-const var74!1 var665)
(declare-const var3732!1 var3503)
(declare-const var708!1 var2860)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var389-init=([], java.util.Properties), <init>/964458484=([java.util.Properties], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2057-to-var1757=([java.net.URL], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var1816-to-var763=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), var665-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var1816-to-var2828=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/1600772885=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.Throwable, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void), cast-from-var3503-to-var3595=([java.io.IOException], java.lang.Throwable)}
; {var1816=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property, var3915=r1, var2057=java.net.URL, var1614=r3, var389=java.util.Properties, var3962=$r0, var1653=$r2, var898=$r4, var1757=java.lang.Object, var1826=$r5, var2000=$r6, var763=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var3599=3, var3503=java.io.IOException, var3732=$r8, var665=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var74=$r9, var2860=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var2828=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var708=$r10, var3595=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property=var1816, r1=var3915, java.net.URL=var2057, r3=var1614, java.util.Properties=var389, $r0=var3962, $r2=var1653, $r4=var898, java.lang.Object=var1757, $r5=var1826, $r6=var2000, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var763, 3=var3599, java.io.IOException=var3503, $r8=var3732, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var665, $r9=var74, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var2860, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var2828, $r10=var708, java.lang.Throwable=var3595}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property;	r3 := @parameter0: java.net.URL;	$r0 = new java.util.Properties;	specialinvoke $r0.<java.util.Properties: void <init>()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Loading ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property: void log(java.lang.String,int)>($r6, 3);	$r8 := @caughtexception;	$r9 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r10 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r9.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.Throwable,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r8, $r10);	throw $r9
;block_num 2