(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2179 0)
(declare-sort var1912 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getBuildSuccessfulMessage/-258980561 (var1912) String)
(declare-fun cast-from-var2179-to-var1912 (var2179) var1912)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getTimestamp/-578791050 (var1912) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2179 var2179)
(declare-const var457 var2179) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.TimestampedLogger 
(assert (not (= var457 null-var2179)))
(define-const var3068 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3068)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3068!1 String)
(assert (= var3068!1 ""))
(assert true)
(define-const var3258 String (getBuildSuccessfulMessage/-258980561 (cast-from-var2179-to-var1912 var457))) ; Statement: $r2 = specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger: java.lang.String getBuildSuccessfulMessage()>() 
(assert true)
(define-const var3957 String (append/672562846 var3068!1 var3258)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3068!2 String)
(assert (= var3068!2 (str.++ var3068!1 var3258)))
(assert true)
(define-const var2615 String (append/672562846 var3957 " - at ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" - at ") 
(declare-const var3957!1 String)
(assert (= var3957!1 (str.++ var3957 " - at ")))
(assert true)
(define-const var855 String (getTimestamp/-578791050 (cast-from-var2179-to-var1912 var457))) ; Statement: $r4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.TimestampedLogger: java.lang.String getTimestamp()>() 
(assert true)
(define-const var3830 String (append/672562846 var2615 var855)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2615!1 String)
(assert (= var2615!1 (str.++ var2615 var855)))
(assert true)
(define-const var2956 String (toString/-2075883882 var3830)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getBuildSuccessfulMessage/-258980561=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger], java.lang.String), cast-from-var2179-to-var1912=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.TimestampedLogger], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getTimestamp/-578791050=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2179=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.TimestampedLogger, var457=r1, var3068=$r0, var1912=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger, var3258=$r2, var3957=$r3, var2615=$r5, var855=$r4, var3830=$r6, var2956=$r7}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.TimestampedLogger=var2179, r1=var457, $r0=var3068, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger=var1912, $r2=var3258, $r3=var3957, $r5=var2615, $r4=var855, $r6=var3830, $r7=var2956}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.TimestampedLogger;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger: java.lang.String getBuildSuccessfulMessage()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" - at ");	$r4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.TimestampedLogger: java.lang.String getTimestamp()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1