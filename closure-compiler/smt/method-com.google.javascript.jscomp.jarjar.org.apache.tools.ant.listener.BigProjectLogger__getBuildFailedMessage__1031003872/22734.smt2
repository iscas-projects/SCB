(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1540 0)
(declare-sort var756 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getBuildFailedMessage/561256082 (var756) String)
(declare-fun cast-from-var1540-to-var756 (var1540) var756)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getTimestamp/-578791050 (var756) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1540 var1540)
(declare-const var3458 var1540) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger 
(assert (not (= var3458 null-var1540)))
(define-const var2877 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2877)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2877!1 String)
(assert (= var2877!1 ""))
(assert true)
(define-const var2779 String (getBuildFailedMessage/561256082 (cast-from-var1540-to-var756 var3458))) ; Statement: $r2 = specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.SimpleBigProjectLogger: java.lang.String getBuildFailedMessage()>() 
(assert true)
(define-const var1593 String (append/672562846 var2877!1 var2779)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2877!2 String)
(assert (= var2877!2 (str.++ var2877!1 var2779)))
(assert true)
(define-const var1675 String (append/672562846 var1593 " - at ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" - at ") 
(declare-const var1593!1 String)
(assert (= var1593!1 (str.++ var1593 " - at ")))
(assert true)
(define-const var2578 String (getTimestamp/-578791050 (cast-from-var1540-to-var756 var3458))) ; Statement: $r4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger: java.lang.String getTimestamp()>() 
(assert true)
(define-const var1457 String (append/672562846 var1675 var2578)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1675!1 String)
(assert (= var1675!1 (str.++ var1675 var2578)))
(assert true)
(define-const var3871 String (toString/-2075883882 var1457)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getBuildFailedMessage/561256082=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger], java.lang.String), cast-from-var1540-to-var756=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getTimestamp/-578791050=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1540=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger, var3458=r1, var2877=$r0, var756=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger, var2779=$r2, var1593=$r3, var1675=$r5, var2578=$r4, var1457=$r6, var3871=$r7}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger=var1540, r1=var3458, $r0=var2877, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger=var756, $r2=var2779, $r3=var1593, $r5=var1675, $r4=var2578, $r6=var1457, $r7=var3871}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.SimpleBigProjectLogger: java.lang.String getBuildFailedMessage()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" - at ");	$r4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger: java.lang.String getTimestamp()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1