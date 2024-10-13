(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3454 0)
(declare-sort var3254 0)
(declare-sort var2377 0)
(declare-sort var3606 0)
(declare-sort var2288 0)
(declare-sort var1601 0)
(declare-sort var857 0)
(declare-sort var2663 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3254_getAttribute/210607306 (var3254 String) String)
(declare-fun subst/-1514982940 (var3454 String) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var2377_debug/381960894 (String) void)
(declare-fun var3606_loadClass/1898864060 (String) ClassObject)
(declare-fun newInstance/-1005540537 (ClassObject) var2288)
(declare-fun var857_currentThread/-1037784612 () var857)
(declare-fun interrupt/1189171174 (var857) void)
(declare-fun var2377_error/1978659241 (String var2663) void)
(declare-fun cast-from-var1601-to-var2663 (var1601) var2663)
(declare-const null-var3454 var3454)
(declare-const null-var3254 var3254)
(declare-const null-var1601 var1601)
(declare-const var1885 var3454) ; Statement: r0 := @this: org.apache.log4j.xml.DOMConfigurator 
(assert (not (= var1885 null-var3454)))
(declare-const var3990 var3254) ; Statement: r1 := @parameter0: org.w3c.dom.Element 
(assert (not (= var3990 null-var3254)))
(define-const var2915 String (var3254_getAttribute/210607306 var3990 "class")) ; Statement: $r2 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class") 
(assert true)
(define-const var2070 String (subst/-1514982940 var1885 var2915)) ; Statement: r3 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r2) 
(define-const var1898 String String-init) ; Statement: $r4 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1898)) ; Statement: specialinvoke $r4.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1898!1 String)
(assert true)
(define-const var1157 String (append/1560614132 var1898!1 "Parsing throwableRenderer of class: \u0022")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Parsing throwableRenderer of class: \"") 
(declare-const var1898!2 String)
(assert (str.prefixof var1898!1 var1898!2))
(assert true)
(define-const var1495 String (append/1560614132 var1157 var2070)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3) 
(declare-const var1157!1 String)
(assert (str.prefixof var1157 var1157!1))
(assert true)
(define-const var3899 String (append/1560614132 var1495 "\u0022")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\"") 
(declare-const var1495!1 String)
(assert (str.prefixof var1495 var1495!1))
(assert true)
(define-const var2172 String (toString/-222306083 var3899)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var2377_debug/381960894 var2172)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r8) 

(declare-const var2172!1 String)
(assert true) ; Non Conditional
(define-const var1320 ClassObject (var3606_loadClass/1898864060 var2070)) ; Statement: $r9 = staticinvoke <org.apache.log4j.helpers.Loader: java.lang.Class loadClass(java.lang.String)>(r3) 
(assert true) ; Non Conditional
(assert true)
(define-const var2166 var2288 (newInstance/-1005540537 var1320)) ; Statement: r19 = virtualinvoke $r9.<java.lang.Class: java.lang.Object newInstance()>() 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1630 var1601) ; Statement: $r17 := @caughtexception 
(assert (not (= var1630 null-var1601)))
(define-const var696 Bool false) ; Statement: $z1 = $r17 instanceof java.lang.InterruptedException 
 ; Statement: if $z1 != 0 goto $r18 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert (not (= (ite var696 1 0) 0))) ; Cond: $z1 != 0 
(define-const var1674 var857 var857_currentThread/-1037784612) ; Statement: $r18 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert true)
;(assert (interrupt/1189171174 var1674)) ; Statement: virtualinvoke $r18.<java.lang.Thread: void interrupt()>() 

(declare-const var1674!1 var857)
(assert true) ; Non Conditional
;(assert (var2377_error/1978659241 "Could not create the ThrowableRenderer. Reported error follows." (cast-from-var1601-to-var2663 var1630))) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>("Could not create the ThrowableRenderer. Reported error follows.", $r17) 

(declare-const var3306 String)
(declare-const var1630!1 var1601)
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var3254_getAttribute/210607306=([org.w3c.dom.Element, java.lang.String], java.lang.String), subst/-1514982940=([org.apache.log4j.xml.DOMConfigurator, java.lang.String], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var2377_debug/381960894=([java.lang.String], void), var3606_loadClass/1898864060=([java.lang.String], java.lang.Class), newInstance/-1005540537=([java.lang.Class], java.lang.Object), var857_currentThread/-1037784612=([], java.lang.Thread), interrupt/1189171174=([java.lang.Thread], void), var2377_error/1978659241=([java.lang.String, java.lang.Throwable], void), cast-from-var1601-to-var2663=([java.lang.Exception], java.lang.Throwable)}
; {var3454=org.apache.log4j.xml.DOMConfigurator, var1885=r0, var3254=org.w3c.dom.Element, var3990=r1, var2915=$r2, var2070=r3, var1898=$r4, var1157=$r5, var1495=$r6, var3899=$r7, var2172=$r8, var2377=org.apache.log4j.helpers.LogLog, var3606=org.apache.log4j.helpers.Loader, var1320=$r9, var2288=java.lang.Object, var2166=r19, var1601=java.lang.Exception, var1630=$r17, var696=$z1, var857=java.lang.Thread, var1674=$r18, var2663=java.lang.Throwable, var3306="Could not create the ThrowableRenderer. Reported error follows."}
; {org.apache.log4j.xml.DOMConfigurator=var3454, r0=var1885, org.w3c.dom.Element=var3254, r1=var3990, $r2=var2915, r3=var2070, $r4=var1898, $r5=var1157, $r6=var1495, $r7=var3899, $r8=var2172, org.apache.log4j.helpers.LogLog=var2377, org.apache.log4j.helpers.Loader=var3606, $r9=var1320, java.lang.Object=var2288, r19=var2166, java.lang.Exception=var1601, $r17=var1630, $z1=var696, java.lang.Thread=var857, $r18=var1674, java.lang.Throwable=var2663, "Could not create the ThrowableRenderer. Reported error follows."=var3306}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.xml.DOMConfigurator;	r1 := @parameter0: org.w3c.dom.Element;	$r2 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class");	r3 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r2);	$r4 = new java.lang.StringBuffer;	specialinvoke $r4.<java.lang.StringBuffer: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Parsing throwableRenderer of class: \"");	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3);	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\"");	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r8);	$r9 = staticinvoke <org.apache.log4j.helpers.Loader: java.lang.Class loadClass(java.lang.String)>(r3);	r19 = virtualinvoke $r9.<java.lang.Class: java.lang.Object newInstance()>();	$r17 := @caughtexception;	$z1 = $r17 instanceof java.lang.InterruptedException;	if $z1 != 0 goto $r18 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$r18 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	virtualinvoke $r18.<java.lang.Thread: void interrupt()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>("Could not create the ThrowableRenderer. Reported error follows.", $r17);	return null
;block_num 6