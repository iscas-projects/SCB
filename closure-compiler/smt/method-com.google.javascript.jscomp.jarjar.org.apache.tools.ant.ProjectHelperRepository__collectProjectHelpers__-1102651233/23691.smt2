(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3927 0)
(declare-sort var1511 0)
(declare-sort var352 0)
(declare-sort var2740 0)
(declare-sort var519 0)
(declare-sort var1441 0)
(declare-sort var60 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getProjectHelperBySystemProperty/-1304787790 (var3927) var1511)
(declare-fun registerProjectHelper/780869262 (var3927 var1511) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var1441) ClassObject)
(declare-fun cast-from-var352-to-var1441 (var352) var1441)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun getMessage/849299655 (var60) String)
(declare-fun cast-from-var352-to-var60 (var352) var60)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var2740 String) void)
(declare-const null-var3927 var3927)
(declare-const null-var352 var352)
(declare-const var519-err var2740)
(declare-const var3927-DEBUG Bool)
(declare-const var104 var3927) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository 
(assert (not (= var104 null-var3927)))
(assert true)
(define-const var3492 var1511 (getProjectHelperBySystemProperty/-1304787790 var104)) ; Statement: $r1 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository: java.lang.reflect.Constructor getProjectHelperBySystemProperty()>() 
(assert true)
;(assert (registerProjectHelper/780869262 var104 var3492)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository: void registerProjectHelper(java.lang.reflect.Constructor)>($r1) 

(declare-const var104!1 var3927)
(declare-const var3492!1 var1511)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3246 var352) ; Statement: $r11 := @caughtexception 
(assert (not (= var3246 null-var352)))
(define-const var2844 var2740 var519-err) ; Statement: $r13 = <java.lang.System: java.io.PrintStream err> 
(define-const var1941 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1941)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1941!1 String)
(assert (= var1941!1 ""))
(assert true)
(define-const var823 String (append/672562846 var1941!1 "Unable to load ProjectHelper from service META-INF/services/org.apache.tools.ant.ProjectHelper (")) ; Statement: $r16 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to load ProjectHelper from service META-INF/services/org.apache.tools.ant.ProjectHelper (") 
(declare-const var1941!2 String)
(assert (= var1941!2 (str.++ var1941!1 "Unable to load ProjectHelper from service META-INF/services/org.apache.tools.ant.ProjectHelper (")))
(assert true)
(define-const var3538 ClassObject (getClass/1258963082 (cast-from-var352-to-var1441 var3246))) ; Statement: $r14 = virtualinvoke $r11.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var739 String (getName/-1958580599 var3538)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1108 String (append/672562846 var823 var739)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var823!1 String)
(assert (= var823!1 (str.++ var823 var739)))
(assert true)
(define-const var1329 String (append/672562846 var1108 ": ")) ; Statement: $r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var1108!1 String)
(assert (= var1108!1 (str.++ var1108 ": ")))
(assert true)
(define-const var3743 String (getMessage/849299655 (cast-from-var352-to-var60 var3246))) ; Statement: $r18 = virtualinvoke $r11.<java.lang.Exception: java.lang.String getMessage()>() 
(assert true)
(define-const var3384 String (append/672562846 var1329 var3743)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var1329!1 String)
(assert (= var1329!1 (str.++ var1329 var3743)))
(assert true)
(define-const var105 String (append/672562846 var3384 ")")) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3384!1 String)
(assert (= var3384!1 (str.++ var3384 ")")))
(assert true)
(define-const var1463 String (toString/-2075883882 var105)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var2844 var1463)) ; Statement: virtualinvoke $r13.<java.io.PrintStream: void println(java.lang.String)>($r22) 

(declare-const var2844!1 var2740)
(declare-const var1463!1 String)
(define-const var3123 Bool var3927-DEBUG) ; Statement: $z1 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository: boolean DEBUG> 
 ; Statement: if $z1 == 0 goto return 
(assert (= (ite var3123 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getProjectHelperBySystemProperty/-1304787790=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository], java.lang.reflect.Constructor), registerProjectHelper/780869262=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository, java.lang.reflect.Constructor], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var352-to-var1441=([java.lang.Exception], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var352-to-var60=([java.lang.Exception], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var3927=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository, var104=r0, var1511=java.lang.reflect.Constructor, var3492=$r1, var352=java.lang.Exception, var3246=$r11, var2740=java.io.PrintStream, var519=java.lang.System, var2844=$r13, var1941=$r12, var823=$r16, var1441=java.lang.Object, var3538=$r14, var739=$r15, var1108=$r17, var1329=$r19, var60=java.lang.Throwable, var3743=$r18, var3384=$r20, var105=$r21, var1463=$r22, var3123=$z1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository=var3927, r0=var104, java.lang.reflect.Constructor=var1511, $r1=var3492, java.lang.Exception=var352, $r11=var3246, java.io.PrintStream=var2740, java.lang.System=var519, $r13=var2844, $r12=var1941, $r16=var823, java.lang.Object=var1441, $r14=var3538, $r15=var739, $r17=var1108, $r19=var1329, java.lang.Throwable=var60, $r18=var3743, $r20=var3384, $r21=var105, $r22=var1463, $z1=var3123}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository;	$r1 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository: java.lang.reflect.Constructor getProjectHelperBySystemProperty()>();	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository: void registerProjectHelper(java.lang.reflect.Constructor)>($r1);	$r11 := @caughtexception;	$r13 = <java.lang.System: java.io.PrintStream err>;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to load ProjectHelper from service META-INF/services/org.apache.tools.ant.ProjectHelper (");	$r14 = virtualinvoke $r11.<java.lang.Object: java.lang.Class getClass()>();	$r15 = virtualinvoke $r14.<java.lang.Class: java.lang.String getName()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r18 = virtualinvoke $r11.<java.lang.Exception: java.lang.String getMessage()>();	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r13.<java.io.PrintStream: void println(java.lang.String)>($r22);	$z1 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelperRepository: boolean DEBUG>;	if $z1 == 0 goto return;	return
;block_num 3