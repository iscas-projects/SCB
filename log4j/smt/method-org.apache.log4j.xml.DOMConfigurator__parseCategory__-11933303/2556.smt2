(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3756 0)
(declare-sort var2352 0)
(declare-sort var676 0)
(declare-sort var2979 0)
(declare-sort var2166 0)
(declare-sort var2822 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2352_getAttribute/210607306 (var2352 String) String)
(declare-fun subst/-1514982940 (var3756 String) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/1183289509 (String Int) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var676_debug/381960894 (String) void)
(declare-fun var2979_loadClass/1898864060 (String) ClassObject)
(declare-fun var676_error/1978659241 (String var2822) void)
(declare-fun cast-from-var2166-to-var2822 (var2166) var2822)
(declare-const null-var3756 var3756)
(declare-const null-var2352 var2352)
(declare-const var3756-ONE_STRING_PARAM (Array Int ClassObject))
(declare-const null-var2166 var2166)
(declare-const var1093 var3756) ; Statement: r0 := @this: org.apache.log4j.xml.DOMConfigurator 
(assert (not (= var1093 null-var3756)))
(declare-const var2796 var2352) ; Statement: r1 := @parameter0: org.w3c.dom.Element 
(assert (not (= var2796 null-var2352)))
(define-const var529 String (var2352_getAttribute/210607306 var2796 "name")) ; Statement: $r2 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("name") 
(assert true)
(define-const var799 String (subst/-1514982940 var1093 var529)) ; Statement: r3 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r2) 
(define-const var1406 String (var2352_getAttribute/210607306 var2796 "class")) ; Statement: $r4 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class") 
(assert true)
(define-const var1747 String (subst/-1514982940 var1093 var1406)) ; Statement: r5 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r4) 
(define-const var2671 String "") ; Statement: $r6 = "" 
(assert true)
(define-const var395 Bool (= var2671 var1747)) ; Statement: $z0 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>(r5) 
 ; Statement: if $z0 == 0 goto $r7 = new java.lang.StringBuffer 
(assert (= (ite var395 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1037 String String-init) ; Statement: $r7 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1037)) ; Statement: specialinvoke $r7.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1037!1 String)
(assert true)
(define-const var268 String (append/1560614132 var1037!1 "Desired logger sub-class: [")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Desired logger sub-class: [") 
(declare-const var1037!2 String)
(assert (str.prefixof var1037!1 var1037!2))
(assert true)
(define-const var1888 String (append/1560614132 var268 var1747)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r5) 
(declare-const var268!1 String)
(assert (str.prefixof var268 var268!1))
(assert true)
(define-const var513 String (append/1183289509 var1888 93)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(93) 
(assert true)
(define-const var1948 String (toString/-222306083 var513)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var676_debug/381960894 var1948)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r11) 

(declare-const var1948!1 String)
(assert true) ; Non Conditional
(define-const var162 ClassObject (var2979_loadClass/1898864060 var1747)) ; Statement: r42 = staticinvoke <org.apache.log4j.helpers.Loader: java.lang.Class loadClass(java.lang.String)>(r5) 
(assert true) ; Non Conditional
(define-const var3678 (Array Int ClassObject) var3756-ONE_STRING_PARAM) ; Statement: $r12 = <org.apache.log4j.xml.DOMConfigurator: java.lang.Class[] ONE_STRING_PARAM> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var525 var2166) ; Statement: $r30 := @caughtexception 
(assert (not (= var525 null-var2166)))
(define-const var2492 String String-init) ; Statement: $r31 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2492)) ; Statement: specialinvoke $r31.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2492!1 String)
(assert true)
(define-const var2062 String (append/1560614132 var2492!1 "Could not retrieve category [")) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Could not retrieve category [") 
(declare-const var2492!2 String)
(assert (str.prefixof var2492!1 var2492!2))
(assert true)
(define-const var341 String (append/1560614132 var2062 var799)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3) 
(declare-const var2062!1 String)
(assert (str.prefixof var2062 var2062!1))
(assert true)
(define-const var2628 String (append/1560614132 var341 "]. Reported error follows.")) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("]. Reported error follows.") 
(declare-const var341!1 String)
(assert (str.prefixof var341 var341!1))
(assert true)
(define-const var3603 String (toString/-222306083 var2628)) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var676_error/1978659241 var3603 (cast-from-var2166-to-var2822 var525))) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>($r35, $r30) 

(declare-const var3603!1 String)
(declare-const var525!1 var2166)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2352_getAttribute/210607306=([org.w3c.dom.Element, java.lang.String], java.lang.String), subst/-1514982940=([org.apache.log4j.xml.DOMConfigurator, java.lang.String], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var676_debug/381960894=([java.lang.String], void), var2979_loadClass/1898864060=([java.lang.String], java.lang.Class), var676_error/1978659241=([java.lang.String, java.lang.Throwable], void), cast-from-var2166-to-var2822=([java.lang.Exception], java.lang.Throwable)}
; {var3756=org.apache.log4j.xml.DOMConfigurator, var1093=r0, var2352=org.w3c.dom.Element, var2796=r1, var529=$r2, var799=r3, var1406=$r4, var1747=r5, var2671=$r6, var395=$z0, var1037=$r7, var268=$r8, var1888=$r9, var513=$r10, var1948=$r11, var676=org.apache.log4j.helpers.LogLog, var2979=org.apache.log4j.helpers.Loader, var162=r42, var3678=$r12, var2166=java.lang.Exception, var525=$r30, var2492=$r31, var2062=$r32, var341=$r33, var2628=$r34, var3603=$r35, var2822=java.lang.Throwable}
; {org.apache.log4j.xml.DOMConfigurator=var3756, r0=var1093, org.w3c.dom.Element=var2352, r1=var2796, $r2=var529, r3=var799, $r4=var1406, r5=var1747, $r6=var2671, $z0=var395, $r7=var1037, $r8=var268, $r9=var1888, $r10=var513, $r11=var1948, org.apache.log4j.helpers.LogLog=var676, org.apache.log4j.helpers.Loader=var2979, r42=var162, $r12=var3678, java.lang.Exception=var2166, $r30=var525, $r31=var2492, $r32=var2062, $r33=var341, $r34=var2628, $r35=var3603, java.lang.Throwable=var2822}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuffer: void <init>()>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 5,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 2}
;stmts r0 := @this: org.apache.log4j.xml.DOMConfigurator;	r1 := @parameter0: org.w3c.dom.Element;	$r2 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("name");	r3 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r2);	$r4 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class");	r5 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r4);	$r6 = "";	$z0 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>(r5);	if $z0 == 0 goto $r7 = new java.lang.StringBuffer;	$r7 = new java.lang.StringBuffer;	specialinvoke $r7.<java.lang.StringBuffer: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Desired logger sub-class: [");	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r5);	$r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(93);	$r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r11);	r42 = staticinvoke <org.apache.log4j.helpers.Loader: java.lang.Class loadClass(java.lang.String)>(r5);	$r12 = <org.apache.log4j.xml.DOMConfigurator: java.lang.Class[] ONE_STRING_PARAM>;	$r30 := @caughtexception;	$r31 = new java.lang.StringBuffer;	specialinvoke $r31.<java.lang.StringBuffer: void <init>()>();	$r32 = virtualinvoke $r31.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Could not retrieve category [");	$r33 = virtualinvoke $r32.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3);	$r34 = virtualinvoke $r33.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("]. Reported error follows.");	$r35 = virtualinvoke $r34.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>($r35, $r30);	return
;block_num 5