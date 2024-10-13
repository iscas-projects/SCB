(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1408 0)
(declare-sort var3565 0)
(declare-sort var1543 0)
(declare-sort var769 0)
(declare-sort var1872 0)
(declare-sort var1319 0)
(declare-sort var2987 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3565_getAttribute/210607306 (var3565 String) String)
(declare-fun subst/-1514982940 (var1408 String) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var1543_debug/381960894 (String) void)
(declare-fun var769_loadClass/1898864060 (String) ClassObject)
(declare-fun var1319_currentThread/-1037784612 () var1319)
(declare-fun interrupt/1189171174 (var1319) void)
(declare-fun var1543_error/1978659241 (String var2987) void)
(declare-fun cast-from-var1872-to-var2987 (var1872) var2987)
(declare-const null-var1408 var1408)
(declare-const null-var3565 var3565)
(declare-const null-var1872 var1872)
(declare-const var3147 var1408) ; Statement: r0 := @this: org.apache.log4j.xml.DOMConfigurator 
(assert (not (= var3147 null-var1408)))
(declare-const var3423 var3565) ; Statement: r1 := @parameter0: org.w3c.dom.Element 
(assert (not (= var3423 null-var3565)))
(define-const var1813 String (var3565_getAttribute/210607306 var3423 "class")) ; Statement: $r2 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class") 
(assert true)
(define-const var1929 String (subst/-1514982940 var3147 var1813)) ; Statement: r3 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r2) 
(define-const var2552 String String-init) ; Statement: $r4 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2552)) ; Statement: specialinvoke $r4.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2552!1 String)
(assert true)
(define-const var3473 String (append/1560614132 var2552!1 "Parsing throwableRenderer of class: \u0022")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Parsing throwableRenderer of class: \"") 
(declare-const var2552!2 String)
(assert (str.prefixof var2552!1 var2552!2))
(assert true)
(define-const var2849 String (append/1560614132 var3473 var1929)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3) 
(declare-const var3473!1 String)
(assert (str.prefixof var3473 var3473!1))
(assert true)
(define-const var1807 String (append/1560614132 var2849 "\u0022")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\"") 
(declare-const var2849!1 String)
(assert (str.prefixof var2849 var2849!1))
(assert true)
(define-const var1274 String (toString/-222306083 var1807)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var1543_debug/381960894 var1274)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r8) 

(declare-const var1274!1 String)
(assert true) ; Non Conditional
(define-const var1250 ClassObject (var769_loadClass/1898864060 var1929)) ; Statement: $r9 = staticinvoke <org.apache.log4j.helpers.Loader: java.lang.Class loadClass(java.lang.String)>(r3) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var837 var1872) ; Statement: $r17 := @caughtexception 
(assert (not (= var837 null-var1872)))
(define-const var2497 Bool false) ; Statement: $z1 = $r17 instanceof java.lang.InterruptedException 
 ; Statement: if $z1 != 0 goto $r18 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert (not (not (= (ite var2497 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var2504 Bool false) ; Statement: $z2 = $r17 instanceof java.io.InterruptedIOException 
 ; Statement: if $z2 == 0 goto staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>("Could not create the ThrowableRenderer. Reported error follows.", $r17) 
(assert (not (= (ite var2504 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var330 var1319 var1319_currentThread/-1037784612) ; Statement: $r18 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert true)
;(assert (interrupt/1189171174 var330)) ; Statement: virtualinvoke $r18.<java.lang.Thread: void interrupt()>() 

(declare-const var330!1 var1319)
(assert true) ; Non Conditional
;(assert (var1543_error/1978659241 "Could not create the ThrowableRenderer. Reported error follows." (cast-from-var1872-to-var2987 var837))) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>("Could not create the ThrowableRenderer. Reported error follows.", $r17) 

(declare-const var54 String)
(declare-const var837!1 var1872)
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var3565_getAttribute/210607306=([org.w3c.dom.Element, java.lang.String], java.lang.String), subst/-1514982940=([org.apache.log4j.xml.DOMConfigurator, java.lang.String], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var1543_debug/381960894=([java.lang.String], void), var769_loadClass/1898864060=([java.lang.String], java.lang.Class), var1319_currentThread/-1037784612=([], java.lang.Thread), interrupt/1189171174=([java.lang.Thread], void), var1543_error/1978659241=([java.lang.String, java.lang.Throwable], void), cast-from-var1872-to-var2987=([java.lang.Exception], java.lang.Throwable)}
; {var1408=org.apache.log4j.xml.DOMConfigurator, var3147=r0, var3565=org.w3c.dom.Element, var3423=r1, var1813=$r2, var1929=r3, var2552=$r4, var3473=$r5, var2849=$r6, var1807=$r7, var1274=$r8, var1543=org.apache.log4j.helpers.LogLog, var769=org.apache.log4j.helpers.Loader, var1250=$r9, var1872=java.lang.Exception, var837=$r17, var2497=$z1, var2504=$z2, var1319=java.lang.Thread, var330=$r18, var2987=java.lang.Throwable, var54="Could not create the ThrowableRenderer. Reported error follows."}
; {org.apache.log4j.xml.DOMConfigurator=var1408, r0=var3147, org.w3c.dom.Element=var3565, r1=var3423, $r2=var1813, r3=var1929, $r4=var2552, $r5=var3473, $r6=var2849, $r7=var1807, $r8=var1274, org.apache.log4j.helpers.LogLog=var1543, org.apache.log4j.helpers.Loader=var769, $r9=var1250, java.lang.Exception=var1872, $r17=var837, $z1=var2497, $z2=var2504, java.lang.Thread=var1319, $r18=var330, java.lang.Throwable=var2987, "Could not create the ThrowableRenderer. Reported error follows."=var54}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.xml.DOMConfigurator;	r1 := @parameter0: org.w3c.dom.Element;	$r2 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class");	r3 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r2);	$r4 = new java.lang.StringBuffer;	specialinvoke $r4.<java.lang.StringBuffer: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Parsing throwableRenderer of class: \"");	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3);	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\"");	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r8);	$r9 = staticinvoke <org.apache.log4j.helpers.Loader: java.lang.Class loadClass(java.lang.String)>(r3);	$r17 := @caughtexception;	$z1 = $r17 instanceof java.lang.InterruptedException;	if $z1 != 0 goto $r18 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$z2 = $r17 instanceof java.io.InterruptedIOException;	if $z2 == 0 goto staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>("Could not create the ThrowableRenderer. Reported error follows.", $r17);	$r18 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	virtualinvoke $r18.<java.lang.Thread: void interrupt()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>("Could not create the ThrowableRenderer. Reported error follows.", $r17);	return null
;block_num 6