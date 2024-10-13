(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3683 0)
(declare-sort var310 0)
(declare-sort var1879 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun proxyHost/1788339343 (var3683) String)
(declare-fun proxyPort/1788339343 (var3683) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var1879 String Int) void)
(declare-fun cast-from-var3683-to-var1879 (var3683) var1879)
(declare-const null-var3683 var3683)
(declare-const null-String String)
(declare-const var102 var3683) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.net.SetProxy 
(assert (not (= var102 null-var3683)))
(define-const var429 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var429)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var429!1 String)
(assert (= var429!1 ""))
(assert true)
(define-const var475 String (append/672562846 var429!1 "Setting proxy to ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Setting proxy to ") 
(declare-const var429!2 String)
(assert (= var429!2 (str.++ var429!1 "Setting proxy to ")))
(define-const var1366 String (proxyHost/1788339343 var102)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.net.SetProxy: java.lang.String proxyHost> 
 ; Statement: if $r2 == null goto $r8 = "\'\'" 
(assert (not (= var1366 null-String))) ; Negate: Cond: $r2 == null  
(define-const var3597 String (proxyHost/1788339343 var102)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.net.SetProxy: java.lang.String proxyHost> 
 ; Statement: goto [?= $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1880 String (append/672562846 var475 var3597)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var475!1 String)
(assert (= var475!1 (str.++ var475 var3597)))
(assert true)
(define-const var3041 String (append/672562846 var1880 ":")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var1880!1 String)
(assert (= var1880!1 (str.++ var1880 ":")))
(define-const var3847 Int (proxyPort/1788339343 var102)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.net.SetProxy: int proxyPort> 
(assert true)
(define-const var2033 String (append/-1001720160 var3041 var3847)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var3041!1 String)
(assert (str.prefixof var3041 var3041!1))
(assert true)
(define-const var3972 String (toString/-2075883882 var2033)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var3683-to-var1879 var102) var3972 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.net.SetProxy: void log(java.lang.String,int)>($r7, 3) 

(declare-const var102!1 var3683)
(declare-const var3972!1 String)
(declare-const var2725 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), proxyHost/1788339343=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.net.SetProxy], java.lang.String), proxyPort/1788339343=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.net.SetProxy], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var3683-to-var1879=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.net.SetProxy], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task)}
; {var3683=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.net.SetProxy, var102=r0, var429=$r1, var475=$r3, var1366=$r2, var310=null_type, var3597=$r8, var1880=$r4, var3041=$r5, var3847=$i0, var2033=$r6, var3972=$r7, var1879=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var2725=3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.net.SetProxy=var3683, r0=var102, $r1=var429, $r3=var475, $r2=var1366, null_type=var310, $r8=var3597, $r4=var1880, $r5=var3041, $i0=var3847, $r6=var2033, $r7=var3972, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var1879, 3=var2725}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.net.SetProxy;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Setting proxy to ");	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.net.SetProxy: java.lang.String proxyHost>;	if $r2 == null goto $r8 = "\'\'";	$r8 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.net.SetProxy: java.lang.String proxyHost>;	goto [?= $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8)];	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$i0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.net.SetProxy: int proxyPort>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.net.SetProxy: void log(java.lang.String,int)>($r7, 3);	return
;block_num 3