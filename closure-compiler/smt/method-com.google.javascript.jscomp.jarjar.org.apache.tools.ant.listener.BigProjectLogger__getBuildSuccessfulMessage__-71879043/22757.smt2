(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2730 0)
(declare-sort var1489 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getBuildSuccessfulMessage/-258980561 (var1489) String)
(declare-fun cast-from-var2730-to-var1489 (var2730) var1489)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getTimestamp/-578791050 (var1489) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2730 var2730)
(declare-const var759 var2730) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger 
(assert (not (= var759 null-var2730)))
(define-const var553 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var553)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var553!1 String)
(assert (= var553!1 ""))
(assert true)
(define-const var959 String (getBuildSuccessfulMessage/-258980561 (cast-from-var2730-to-var1489 var759))) ; Statement: $r2 = specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.SimpleBigProjectLogger: java.lang.String getBuildSuccessfulMessage()>() 
(assert true)
(define-const var932 String (append/672562846 var553!1 var959)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var553!2 String)
(assert (= var553!2 (str.++ var553!1 var959)))
(assert true)
(define-const var3065 String (append/672562846 var932 " - at ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" - at ") 
(declare-const var932!1 String)
(assert (= var932!1 (str.++ var932 " - at ")))
(assert true)
(define-const var607 String (getTimestamp/-578791050 (cast-from-var2730-to-var1489 var759))) ; Statement: $r4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger: java.lang.String getTimestamp()>() 
(assert true)
(define-const var85 String (append/672562846 var3065 var607)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3065!1 String)
(assert (= var3065!1 (str.++ var3065 var607)))
(assert true)
(define-const var326 String (toString/-2075883882 var85)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getBuildSuccessfulMessage/-258980561=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger], java.lang.String), cast-from-var2730-to-var1489=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getTimestamp/-578791050=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2730=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger, var759=r1, var553=$r0, var1489=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger, var959=$r2, var932=$r3, var3065=$r5, var607=$r4, var85=$r6, var326=$r7}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger=var2730, r1=var759, $r0=var553, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger=var1489, $r2=var959, $r3=var932, $r5=var3065, $r4=var607, $r6=var85, $r7=var326}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.SimpleBigProjectLogger: java.lang.String getBuildSuccessfulMessage()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" - at ");	$r4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger: java.lang.String getTimestamp()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1