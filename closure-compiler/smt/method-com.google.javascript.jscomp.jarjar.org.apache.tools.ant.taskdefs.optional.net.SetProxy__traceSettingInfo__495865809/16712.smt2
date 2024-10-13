(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1192 0)
(declare-sort var1291 0)
(declare-sort var2316 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun proxyHost/1788339343 (var1192) String)
(declare-fun proxyPort/1788339343 (var1192) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var2316 String Int) void)
(declare-fun cast-from-var1192-to-var2316 (var1192) var2316)
(declare-const null-var1192 var1192)
(declare-const null-String String)
(declare-const var464 var1192) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.net.SetProxy 
(assert (not (= var464 null-var1192)))
(define-const var1922 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1922)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1922!1 String)
(assert (= var1922!1 ""))
(assert true)
(define-const var3936 String (append/672562846 var1922!1 "Setting proxy to ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Setting proxy to ") 
(declare-const var1922!2 String)
(assert (= var1922!2 (str.++ var1922!1 "Setting proxy to ")))
(define-const var686 String (proxyHost/1788339343 var464)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.net.SetProxy: java.lang.String proxyHost> 
 ; Statement: if $r2 == null goto $r8 = "\'\'" 
(assert (= var686 null-String)) ; Cond: $r2 == null 
(define-const var2617 String "\u0027\u0027") ; Statement: $r8 = "\'\'" 
(assert true) ; Non Conditional
(assert true)
(define-const var3199 String (append/672562846 var3936 var2617)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3936!1 String)
(assert (= var3936!1 (str.++ var3936 var2617)))
(assert true)
(define-const var2907 String (append/672562846 var3199 ":")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var3199!1 String)
(assert (= var3199!1 (str.++ var3199 ":")))
(define-const var2380 Int (proxyPort/1788339343 var464)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.net.SetProxy: int proxyPort> 
(assert true)
(define-const var2964 String (append/-1001720160 var2907 var2380)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var2907!1 String)
(assert (str.prefixof var2907 var2907!1))
(assert true)
(define-const var414 String (toString/-2075883882 var2964)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var1192-to-var2316 var464) var414 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.net.SetProxy: void log(java.lang.String,int)>($r7, 3) 

(declare-const var464!1 var1192)
(declare-const var414!1 String)
(declare-const var3636 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), proxyHost/1788339343=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.net.SetProxy], java.lang.String), proxyPort/1788339343=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.net.SetProxy], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var1192-to-var2316=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.net.SetProxy], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var1192=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.net.SetProxy, var464=r0, var1922=$r1, var3936=$r3, var686=$r2, var1291=null_type, var2617=$r8, var3199=$r4, var2907=$r5, var2380=$i0, var2964=$r6, var414=$r7, var2316=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var3636=3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.net.SetProxy=var1192, r0=var464, $r1=var1922, $r3=var3936, $r2=var686, null_type=var1291, $r8=var2617, $r4=var3199, $r5=var2907, $i0=var2380, $r6=var2964, $r7=var414, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var2316, 3=var3636}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.net.SetProxy;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Setting proxy to ");	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.net.SetProxy: java.lang.String proxyHost>;	if $r2 == null goto $r8 = "\'\'";	$r8 = "\'\'";	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$i0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.net.SetProxy: int proxyPort>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.net.SetProxy: void log(java.lang.String,int)>($r7, 3);	return
;block_num 3