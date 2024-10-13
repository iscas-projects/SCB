(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1275 0)
(declare-sort var3805 0)
(declare-sort var3790 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun location/-991957120 (var1275) var3805)
(declare-fun toString/363786388 (var3805) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var3790) String)
(declare-fun cast-from-var1275-to-var3790 (var1275) var3790)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1275 var1275)
(declare-const var3785 var1275) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert (not (= var3785 null-var1275)))
(define-const var1283 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1283)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1283!1 String)
(assert (= var1283!1 ""))
(define-const var2605 var3805 (location/-991957120 var3785)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location location> 
(assert true)
(define-const var2621 String (toString/363786388 var2605)) ; Statement: $r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location: java.lang.String toString()>() 
(assert true)
(define-const var3349 String (append/672562846 var1283!1 var2621)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1283!2 String)
(assert (= var1283!2 (str.++ var1283!1 var2621)))
(assert true)
(define-const var1236 String (getMessage/849299655 (cast-from-var1275-to-var3790 var3785))) ; Statement: $r4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: java.lang.String getMessage()>() 
(assert true)
(define-const var1875 String (append/672562846 var3349 var1236)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3349!1 String)
(assert (= var3349!1 (str.++ var3349 var1236)))
(assert true)
(define-const var3743 String (toString/-2075883882 var1875)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), location/-991957120=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), toString/363786388=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var1275-to-var3790=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1275=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var3785=r1, var1283=$r0, var3805=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var2605=$r2, var2621=$r3, var3349=$r5, var3790=java.lang.Throwable, var1236=$r4, var1875=$r6, var3743=$r7}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1275, r1=var3785, $r0=var1283, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var3805, $r2=var2605, $r3=var2621, $r5=var3349, java.lang.Throwable=var3790, $r4=var1236, $r6=var1875, $r7=var3743}
;seq <java.lang.StringBuilder: void <init>()>;	<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location location>;	$r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location: java.lang.String toString()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: java.lang.String getMessage()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1