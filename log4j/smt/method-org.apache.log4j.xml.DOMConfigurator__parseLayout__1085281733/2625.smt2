(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var335 0)
(declare-sort var1359 0)
(declare-sort var2243 0)
(declare-sort var410 0)
(declare-sort var2423 0)
(declare-sort var610 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1359_getAttribute/210607306 (var1359 String) String)
(declare-fun subst/-1514982940 (var335 String) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var2243_debug/381960894 (String) void)
(declare-fun var410_loadClass/1898864060 (String) ClassObject)
(declare-fun var2243_error/1978659241 (String var610) void)
(declare-fun cast-from-var2423-to-var610 (var2423) var610)
(declare-const null-var335 var335)
(declare-const null-var1359 var1359)
(declare-const null-var2423 var2423)
(declare-const var2950 var335) ; Statement: r0 := @this: org.apache.log4j.xml.DOMConfigurator 
(assert (not (= var2950 null-var335)))
(declare-const var1683 var1359) ; Statement: r1 := @parameter0: org.w3c.dom.Element 
(assert (not (= var1683 null-var1359)))
(define-const var3053 String (var1359_getAttribute/210607306 var1683 "class")) ; Statement: $r2 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class") 
(assert true)
(define-const var204 String (subst/-1514982940 var2950 var3053)) ; Statement: r3 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r2) 
(define-const var2134 String String-init) ; Statement: $r4 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2134)) ; Statement: specialinvoke $r4.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2134!1 String)
(assert true)
(define-const var1515 String (append/1560614132 var2134!1 "Parsing layout of class: \u0022")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Parsing layout of class: \"") 
(declare-const var2134!2 String)
(assert (str.prefixof var2134!1 var2134!2))
(assert true)
(define-const var2919 String (append/1560614132 var1515 var204)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3) 
(declare-const var1515!1 String)
(assert (str.prefixof var1515 var1515!1))
(assert true)
(define-const var2048 String (append/1560614132 var2919 "\u0022")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\"") 
(declare-const var2919!1 String)
(assert (str.prefixof var2919 var2919!1))
(assert true)
(define-const var1844 String (toString/-222306083 var2048)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var2243_debug/381960894 var1844)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r8) 

(declare-const var1844!1 String)
(assert true) ; Non Conditional
(define-const var1875 ClassObject (var410_loadClass/1898864060 var204)) ; Statement: $r9 = staticinvoke <org.apache.log4j.helpers.Loader: java.lang.Class loadClass(java.lang.String)>(r3) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3108 var2423) ; Statement: $r17 := @caughtexception 
(assert (not (= var3108 null-var2423)))
(define-const var2447 Bool false) ; Statement: $z1 = $r17 instanceof java.lang.InterruptedException 
 ; Statement: if $z1 != 0 goto $r18 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert (not (not (= (ite var2447 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var117 Bool false) ; Statement: $z2 = $r17 instanceof java.io.InterruptedIOException 
 ; Statement: if $z2 == 0 goto staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>("Could not create the Layout. Reported error follows.", $r17) 
(assert (= (ite var117 1 0) 0)) ; Cond: $z2 == 0 
;(assert (var2243_error/1978659241 "Could not create the Layout. Reported error follows." (cast-from-var2423-to-var610 var3108))) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>("Could not create the Layout. Reported error follows.", $r17) 

(declare-const var1936 String)
(declare-const var3108!1 var2423)
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var1359_getAttribute/210607306=([org.w3c.dom.Element, java.lang.String], java.lang.String), subst/-1514982940=([org.apache.log4j.xml.DOMConfigurator, java.lang.String], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var2243_debug/381960894=([java.lang.String], void), var410_loadClass/1898864060=([java.lang.String], java.lang.Class), var2243_error/1978659241=([java.lang.String, java.lang.Throwable], void), cast-from-var2423-to-var610=([java.lang.Exception], java.lang.Throwable)}
; {var335=org.apache.log4j.xml.DOMConfigurator, var2950=r0, var1359=org.w3c.dom.Element, var1683=r1, var3053=$r2, var204=r3, var2134=$r4, var1515=$r5, var2919=$r6, var2048=$r7, var1844=$r8, var2243=org.apache.log4j.helpers.LogLog, var410=org.apache.log4j.helpers.Loader, var1875=$r9, var2423=java.lang.Exception, var3108=$r17, var2447=$z1, var117=$z2, var610=java.lang.Throwable, var1936="Could not create the Layout. Reported error follows."}
; {org.apache.log4j.xml.DOMConfigurator=var335, r0=var2950, org.w3c.dom.Element=var1359, r1=var1683, $r2=var3053, r3=var204, $r4=var2134, $r5=var1515, $r6=var2919, $r7=var2048, $r8=var1844, org.apache.log4j.helpers.LogLog=var2243, org.apache.log4j.helpers.Loader=var410, $r9=var1875, java.lang.Exception=var2423, $r17=var3108, $z1=var2447, $z2=var117, java.lang.Throwable=var610, "Could not create the Layout. Reported error follows."=var1936}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.xml.DOMConfigurator;	r1 := @parameter0: org.w3c.dom.Element;	$r2 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class");	r3 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r2);	$r4 = new java.lang.StringBuffer;	specialinvoke $r4.<java.lang.StringBuffer: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Parsing layout of class: \"");	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3);	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\"");	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r8);	$r9 = staticinvoke <org.apache.log4j.helpers.Loader: java.lang.Class loadClass(java.lang.String)>(r3);	$r17 := @caughtexception;	$z1 = $r17 instanceof java.lang.InterruptedException;	if $z1 != 0 goto $r18 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$z2 = $r17 instanceof java.io.InterruptedIOException;	if $z2 == 0 goto staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>("Could not create the Layout. Reported error follows.", $r17);	staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>("Could not create the Layout. Reported error follows.", $r17);	return null
;block_num 5