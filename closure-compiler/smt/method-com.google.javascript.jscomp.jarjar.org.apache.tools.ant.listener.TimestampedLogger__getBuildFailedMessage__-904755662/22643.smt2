(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var49 0)
(declare-sort var610 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getBuildFailedMessage/561256082 (var610) String)
(declare-fun cast-from-var49-to-var610 (var49) var610)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getTimestamp/-578791050 (var610) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var49 var49)
(declare-const var2351 var49) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.TimestampedLogger 
(assert (not (= var2351 null-var49)))
(define-const var421 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var421)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var421!1 String)
(assert (= var421!1 ""))
(assert true)
(define-const var503 String (getBuildFailedMessage/561256082 (cast-from-var49-to-var610 var2351))) ; Statement: $r2 = specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger: java.lang.String getBuildFailedMessage()>() 
(assert true)
(define-const var1421 String (append/672562846 var421!1 var503)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var421!2 String)
(assert (= var421!2 (str.++ var421!1 var503)))
(assert true)
(define-const var1058 String (append/672562846 var1421 " - at ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" - at ") 
(declare-const var1421!1 String)
(assert (= var1421!1 (str.++ var1421 " - at ")))
(assert true)
(define-const var2725 String (getTimestamp/-578791050 (cast-from-var49-to-var610 var2351))) ; Statement: $r4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.TimestampedLogger: java.lang.String getTimestamp()>() 
(assert true)
(define-const var1916 String (append/672562846 var1058 var2725)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1058!1 String)
(assert (= var1058!1 (str.++ var1058 var2725)))
(assert true)
(define-const var3198 String (toString/-2075883882 var1916)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getBuildFailedMessage/561256082=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger], java.lang.String), cast-from-var49-to-var610=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.TimestampedLogger], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getTimestamp/-578791050=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var49=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.TimestampedLogger, var2351=r1, var421=$r0, var610=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger, var503=$r2, var1421=$r3, var1058=$r5, var2725=$r4, var1916=$r6, var3198=$r7}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.TimestampedLogger=var49, r1=var2351, $r0=var421, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger=var610, $r2=var503, $r3=var1421, $r5=var1058, $r4=var2725, $r6=var1916, $r7=var3198}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.TimestampedLogger;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger: java.lang.String getBuildFailedMessage()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" - at ");	$r4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.TimestampedLogger: java.lang.String getTimestamp()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1