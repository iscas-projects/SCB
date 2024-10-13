(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1964 0)
(declare-sort var660 0)
(declare-sort var3518 0)
(declare-sort var1406 0)
(declare-sort var504 0)
(declare-sort var3889 0)
(declare-sort var2462 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var660_getAttribute/210607306 (var660 String) String)
(declare-fun subst/-1514982940 (var1964 String) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var3518_debug/381960894 (String) void)
(declare-fun var1406_loadClass/1898864060 (String) ClassObject)
(declare-fun newInstance/-1005540537 (ClassObject) var504)
(declare-fun var3518_error/1978659241 (String var2462) void)
(declare-fun cast-from-var3889-to-var2462 (var3889) var2462)
(declare-const null-var1964 var1964)
(declare-const null-var660 var660)
(declare-const null-var3889 var3889)
(declare-const var1623 var1964) ; Statement: r0 := @this: org.apache.log4j.xml.DOMConfigurator 
(assert (not (= var1623 null-var1964)))
(declare-const var3245 var660) ; Statement: r1 := @parameter0: org.w3c.dom.Element 
(assert (not (= var3245 null-var660)))
(define-const var387 String (var660_getAttribute/210607306 var3245 "class")) ; Statement: $r2 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class") 
(assert true)
(define-const var2655 String (subst/-1514982940 var1623 var387)) ; Statement: r3 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r2) 
(define-const var3713 String String-init) ; Statement: $r4 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3713)) ; Statement: specialinvoke $r4.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3713!1 String)
(assert true)
(define-const var2401 String (append/1560614132 var3713!1 "Parsing throwableRenderer of class: \u0022")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Parsing throwableRenderer of class: \"") 
(declare-const var3713!2 String)
(assert (str.prefixof var3713!1 var3713!2))
(assert true)
(define-const var1859 String (append/1560614132 var2401 var2655)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3) 
(declare-const var2401!1 String)
(assert (str.prefixof var2401 var2401!1))
(assert true)
(define-const var3319 String (append/1560614132 var1859 "\u0022")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\"") 
(declare-const var1859!1 String)
(assert (str.prefixof var1859 var1859!1))
(assert true)
(define-const var3470 String (toString/-222306083 var3319)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var3518_debug/381960894 var3470)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r8) 

(declare-const var3470!1 String)
(assert true) ; Non Conditional
(define-const var1656 ClassObject (var1406_loadClass/1898864060 var2655)) ; Statement: $r9 = staticinvoke <org.apache.log4j.helpers.Loader: java.lang.Class loadClass(java.lang.String)>(r3) 
(assert true) ; Non Conditional
(assert true)
(define-const var3781 var504 (newInstance/-1005540537 var1656)) ; Statement: r19 = virtualinvoke $r9.<java.lang.Class: java.lang.Object newInstance()>() 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2298 var3889) ; Statement: $r17 := @caughtexception 
(assert (not (= var2298 null-var3889)))
(define-const var2933 Bool false) ; Statement: $z1 = $r17 instanceof java.lang.InterruptedException 
 ; Statement: if $z1 != 0 goto $r18 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert (not (not (= (ite var2933 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var3794 Bool false) ; Statement: $z2 = $r17 instanceof java.io.InterruptedIOException 
 ; Statement: if $z2 == 0 goto staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>("Could not create the ThrowableRenderer. Reported error follows.", $r17) 
(assert (= (ite var3794 1 0) 0)) ; Cond: $z2 == 0 
;(assert (var3518_error/1978659241 "Could not create the ThrowableRenderer. Reported error follows." (cast-from-var3889-to-var2462 var2298))) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>("Could not create the ThrowableRenderer. Reported error follows.", $r17) 

(declare-const var902 String)
(declare-const var2298!1 var3889)
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var660_getAttribute/210607306=([org.w3c.dom.Element, java.lang.String], java.lang.String), subst/-1514982940=([org.apache.log4j.xml.DOMConfigurator, java.lang.String], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var3518_debug/381960894=([java.lang.String], void), var1406_loadClass/1898864060=([java.lang.String], java.lang.Class), newInstance/-1005540537=([java.lang.Class], java.lang.Object), var3518_error/1978659241=([java.lang.String, java.lang.Throwable], void), cast-from-var3889-to-var2462=([java.lang.Exception], java.lang.Throwable)}
; {var1964=org.apache.log4j.xml.DOMConfigurator, var1623=r0, var660=org.w3c.dom.Element, var3245=r1, var387=$r2, var2655=r3, var3713=$r4, var2401=$r5, var1859=$r6, var3319=$r7, var3470=$r8, var3518=org.apache.log4j.helpers.LogLog, var1406=org.apache.log4j.helpers.Loader, var1656=$r9, var504=java.lang.Object, var3781=r19, var3889=java.lang.Exception, var2298=$r17, var2933=$z1, var3794=$z2, var2462=java.lang.Throwable, var902="Could not create the ThrowableRenderer. Reported error follows."}
; {org.apache.log4j.xml.DOMConfigurator=var1964, r0=var1623, org.w3c.dom.Element=var660, r1=var3245, $r2=var387, r3=var2655, $r4=var3713, $r5=var2401, $r6=var1859, $r7=var3319, $r8=var3470, org.apache.log4j.helpers.LogLog=var3518, org.apache.log4j.helpers.Loader=var1406, $r9=var1656, java.lang.Object=var504, r19=var3781, java.lang.Exception=var3889, $r17=var2298, $z1=var2933, $z2=var3794, java.lang.Throwable=var2462, "Could not create the ThrowableRenderer. Reported error follows."=var902}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.xml.DOMConfigurator;	r1 := @parameter0: org.w3c.dom.Element;	$r2 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class");	r3 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r2);	$r4 = new java.lang.StringBuffer;	specialinvoke $r4.<java.lang.StringBuffer: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Parsing throwableRenderer of class: \"");	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3);	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\"");	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r8);	$r9 = staticinvoke <org.apache.log4j.helpers.Loader: java.lang.Class loadClass(java.lang.String)>(r3);	r19 = virtualinvoke $r9.<java.lang.Class: java.lang.Object newInstance()>();	$r17 := @caughtexception;	$z1 = $r17 instanceof java.lang.InterruptedException;	if $z1 != 0 goto $r18 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$z2 = $r17 instanceof java.io.InterruptedIOException;	if $z2 == 0 goto staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>("Could not create the ThrowableRenderer. Reported error follows.", $r17);	staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>("Could not create the ThrowableRenderer. Reported error follows.", $r17);	return null
;block_num 6