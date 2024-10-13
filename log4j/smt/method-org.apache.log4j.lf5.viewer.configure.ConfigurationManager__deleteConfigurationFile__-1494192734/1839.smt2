(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1226 0)
(declare-sort var241 0)
(declare-sort var3281 0)
(declare-sort var704 0)
(declare-sort var2402 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var241-init () var241)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getFilename/-702185317 (var1226) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun println/1773605060 (var704 String) void)
(declare-const null-var1226 var1226)
(declare-const null-var3281 var3281)
(declare-const var2402-err var704)
(declare-const var903 var1226) ; Statement: r1 := @this: org.apache.log4j.lf5.viewer.configure.ConfigurationManager 
(assert (not (= var903 null-var1226)))
(define-const var3947 var241 var241-init) ; Statement: $r0 = new java.io.File 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2020 var3281) ; Statement: $r3 := @caughtexception 
(assert (not (= var2020 null-var3281)))
(define-const var2716 var704 var2402-err) ; Statement: $r5 = <java.lang.System: java.io.PrintStream err> 
(define-const var1142 String String-init) ; Statement: $r4 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1142)) ; Statement: specialinvoke $r4.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1142!1 String)
(assert true)
(define-const var2558 String (append/1560614132 var1142!1 "Cannot delete ")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Cannot delete ") 
(declare-const var1142!2 String)
(assert (str.prefixof var1142!1 var1142!2))
(assert true)
(define-const var2824 String (getFilename/-702185317 var903)) ; Statement: $r6 = virtualinvoke r1.<org.apache.log4j.lf5.viewer.configure.ConfigurationManager: java.lang.String getFilename()>() 
(assert true)
(define-const var904 String (append/1560614132 var2558 var2824)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r6) 
(declare-const var2558!1 String)
(assert (str.prefixof var2558 var2558!1))
(assert true)
(define-const var1428 String (append/1560614132 var904 " because a security violation occured.")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" because a security violation occured.") 
(declare-const var904!1 String)
(assert (str.prefixof var904 var904!1))
(assert true)
(define-const var2362 String (toString/-222306083 var1428)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var2716 var2362)) ; Statement: virtualinvoke $r5.<java.io.PrintStream: void println(java.lang.String)>($r10) 

(declare-const var2716!1 var704)
(declare-const var2362!1 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var241-init=([], java.io.File), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), getFilename/-702185317=([org.apache.log4j.lf5.viewer.configure.ConfigurationManager], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var1226=org.apache.log4j.lf5.viewer.configure.ConfigurationManager, var903=r1, var241=java.io.File, var3947=$r0, var3281=java.lang.SecurityException, var2020=$r3, var704=java.io.PrintStream, var2402=java.lang.System, var2716=$r5, var1142=$r4, var2558=$r7, var2824=$r6, var904=$r8, var1428=$r9, var2362=$r10}
; {org.apache.log4j.lf5.viewer.configure.ConfigurationManager=var1226, r1=var903, java.io.File=var241, $r0=var3947, java.lang.SecurityException=var3281, $r3=var2020, java.io.PrintStream=var704, java.lang.System=var2402, $r5=var2716, $r4=var1142, $r7=var2558, $r6=var2824, $r8=var904, $r9=var1428, $r10=var2362}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.log4j.lf5.viewer.configure.ConfigurationManager;	$r0 = new java.io.File;	$r3 := @caughtexception;	$r5 = <java.lang.System: java.io.PrintStream err>;	$r4 = new java.lang.StringBuffer;	specialinvoke $r4.<java.lang.StringBuffer: void <init>()>();	$r7 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Cannot delete ");	$r6 = virtualinvoke r1.<org.apache.log4j.lf5.viewer.configure.ConfigurationManager: java.lang.String getFilename()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" because a security violation occured.");	$r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r5.<java.io.PrintStream: void println(java.lang.String)>($r10);	return
;block_num 3