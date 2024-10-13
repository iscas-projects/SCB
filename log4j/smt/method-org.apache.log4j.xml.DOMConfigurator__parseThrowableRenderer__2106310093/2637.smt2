(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var571 0)
(declare-sort var449 0)
(declare-sort var953 0)
(declare-sort var11 0)
(declare-sort var2590 0)
(declare-sort var3639 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var449_getAttribute/210607306 (var449 String) String)
(declare-fun subst/-1514982940 (var571 String) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var953_debug/381960894 (String) void)
(declare-fun var11_loadClass/1898864060 (String) ClassObject)
(declare-fun var953_error/1978659241 (String var3639) void)
(declare-fun cast-from-var2590-to-var3639 (var2590) var3639)
(declare-const null-var571 var571)
(declare-const null-var449 var449)
(declare-const null-var2590 var2590)
(declare-const var1759 var571) ; Statement: r0 := @this: org.apache.log4j.xml.DOMConfigurator 
(assert (not (= var1759 null-var571)))
(declare-const var2269 var449) ; Statement: r1 := @parameter0: org.w3c.dom.Element 
(assert (not (= var2269 null-var449)))
(define-const var1166 String (var449_getAttribute/210607306 var2269 "class")) ; Statement: $r2 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class") 
(assert true)
(define-const var453 String (subst/-1514982940 var1759 var1166)) ; Statement: r3 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r2) 
(define-const var1218 String String-init) ; Statement: $r4 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1218)) ; Statement: specialinvoke $r4.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1218!1 String)
(assert true)
(define-const var1934 String (append/1560614132 var1218!1 "Parsing throwableRenderer of class: \u0022")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Parsing throwableRenderer of class: \"") 
(declare-const var1218!2 String)
(assert (str.prefixof var1218!1 var1218!2))
(assert true)
(define-const var3666 String (append/1560614132 var1934 var453)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3) 
(declare-const var1934!1 String)
(assert (str.prefixof var1934 var1934!1))
(assert true)
(define-const var2864 String (append/1560614132 var3666 "\u0022")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\"") 
(declare-const var3666!1 String)
(assert (str.prefixof var3666 var3666!1))
(assert true)
(define-const var1252 String (toString/-222306083 var2864)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var953_debug/381960894 var1252)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r8) 

(declare-const var1252!1 String)
(assert true) ; Non Conditional
(define-const var717 ClassObject (var11_loadClass/1898864060 var453)) ; Statement: $r9 = staticinvoke <org.apache.log4j.helpers.Loader: java.lang.Class loadClass(java.lang.String)>(r3) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1609 var2590) ; Statement: $r17 := @caughtexception 
(assert (not (= var1609 null-var2590)))
(define-const var2494 Bool false) ; Statement: $z1 = $r17 instanceof java.lang.InterruptedException 
 ; Statement: if $z1 != 0 goto $r18 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert (not (not (= (ite var2494 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var1026 Bool false) ; Statement: $z2 = $r17 instanceof java.io.InterruptedIOException 
 ; Statement: if $z2 == 0 goto staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>("Could not create the ThrowableRenderer. Reported error follows.", $r17) 
(assert (= (ite var1026 1 0) 0)) ; Cond: $z2 == 0 
;(assert (var953_error/1978659241 "Could not create the ThrowableRenderer. Reported error follows." (cast-from-var2590-to-var3639 var1609))) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>("Could not create the ThrowableRenderer. Reported error follows.", $r17) 

(declare-const var1927 String)
(declare-const var1609!1 var2590)
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var449_getAttribute/210607306=([org.w3c.dom.Element, java.lang.String], java.lang.String), subst/-1514982940=([org.apache.log4j.xml.DOMConfigurator, java.lang.String], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var953_debug/381960894=([java.lang.String], void), var11_loadClass/1898864060=([java.lang.String], java.lang.Class), var953_error/1978659241=([java.lang.String, java.lang.Throwable], void), cast-from-var2590-to-var3639=([java.lang.Exception], java.lang.Throwable)}
; {var571=org.apache.log4j.xml.DOMConfigurator, var1759=r0, var449=org.w3c.dom.Element, var2269=r1, var1166=$r2, var453=r3, var1218=$r4, var1934=$r5, var3666=$r6, var2864=$r7, var1252=$r8, var953=org.apache.log4j.helpers.LogLog, var11=org.apache.log4j.helpers.Loader, var717=$r9, var2590=java.lang.Exception, var1609=$r17, var2494=$z1, var1026=$z2, var3639=java.lang.Throwable, var1927="Could not create the ThrowableRenderer. Reported error follows."}
; {org.apache.log4j.xml.DOMConfigurator=var571, r0=var1759, org.w3c.dom.Element=var449, r1=var2269, $r2=var1166, r3=var453, $r4=var1218, $r5=var1934, $r6=var3666, $r7=var2864, $r8=var1252, org.apache.log4j.helpers.LogLog=var953, org.apache.log4j.helpers.Loader=var11, $r9=var717, java.lang.Exception=var2590, $r17=var1609, $z1=var2494, $z2=var1026, java.lang.Throwable=var3639, "Could not create the ThrowableRenderer. Reported error follows."=var1927}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.xml.DOMConfigurator;	r1 := @parameter0: org.w3c.dom.Element;	$r2 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class");	r3 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r2);	$r4 = new java.lang.StringBuffer;	specialinvoke $r4.<java.lang.StringBuffer: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Parsing throwableRenderer of class: \"");	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3);	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\"");	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r8);	$r9 = staticinvoke <org.apache.log4j.helpers.Loader: java.lang.Class loadClass(java.lang.String)>(r3);	$r17 := @caughtexception;	$z1 = $r17 instanceof java.lang.InterruptedException;	if $z1 != 0 goto $r18 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$z2 = $r17 instanceof java.io.InterruptedIOException;	if $z2 == 0 goto staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>("Could not create the ThrowableRenderer. Reported error follows.", $r17);	staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>("Could not create the ThrowableRenderer. Reported error follows.", $r17);	return null
;block_num 5