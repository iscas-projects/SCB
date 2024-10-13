(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1347 0)
(declare-sort var1036 0)
(declare-sort var3522 0)
(declare-sort var2175 0)
(declare-sort var1579 0)
(declare-sort var2286 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1036_getAttribute/210607306 (var1036 String) String)
(declare-fun subst/-1514982940 (var1347 String) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/1183289509 (String Int) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var3522_debug/381960894 (String) void)
(declare-fun var2175_loadClass/1898864060 (String) ClassObject)
(declare-fun var3522_error/1978659241 (String var2286) void)
(declare-fun cast-from-var1579-to-var2286 (var1579) var2286)
(declare-const null-var1347 var1347)
(declare-const null-var1036 var1036)
(declare-const null-var1579 var1579)
(declare-const var1780 var1347) ; Statement: r0 := @this: org.apache.log4j.xml.DOMConfigurator 
(assert (not (= var1780 null-var1347)))
(declare-const var2647 var1036) ; Statement: r1 := @parameter0: org.w3c.dom.Element 
(assert (not (= var2647 null-var1036)))
(define-const var1763 String (var1036_getAttribute/210607306 var2647 "name")) ; Statement: $r2 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("name") 
(assert true)
(define-const var491 String (subst/-1514982940 var1780 var1763)) ; Statement: r3 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r2) 
(define-const var668 String (var1036_getAttribute/210607306 var2647 "class")) ; Statement: $r4 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class") 
(assert true)
(define-const var446 String (subst/-1514982940 var1780 var668)) ; Statement: r5 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r4) 
(define-const var2697 String "") ; Statement: $r6 = "" 
(assert true)
(define-const var879 Bool (= var2697 var446)) ; Statement: $z0 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>(r5) 
 ; Statement: if $z0 == 0 goto $r7 = new java.lang.StringBuffer 
(assert (= (ite var879 1 0) 0)) ; Cond: $z0 == 0 
(define-const var673 String String-init) ; Statement: $r7 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var673)) ; Statement: specialinvoke $r7.<java.lang.StringBuffer: void <init>()>() 

(declare-const var673!1 String)
(assert true)
(define-const var790 String (append/1560614132 var673!1 "Desired logger sub-class: [")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Desired logger sub-class: [") 
(declare-const var673!2 String)
(assert (str.prefixof var673!1 var673!2))
(assert true)
(define-const var2251 String (append/1560614132 var790 var446)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r5) 
(declare-const var790!1 String)
(assert (str.prefixof var790 var790!1))
(assert true)
(define-const var2883 String (append/1183289509 var2251 93)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(93) 
(assert true)
(define-const var3290 String (toString/-222306083 var2883)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var3522_debug/381960894 var3290)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r11) 

(declare-const var3290!1 String)
(assert true) ; Non Conditional
(define-const var3891 ClassObject (var2175_loadClass/1898864060 var446)) ; Statement: r42 = staticinvoke <org.apache.log4j.helpers.Loader: java.lang.Class loadClass(java.lang.String)>(r5) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1970 var1579) ; Statement: $r30 := @caughtexception 
(assert (not (= var1970 null-var1579)))
(define-const var2509 String String-init) ; Statement: $r31 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2509)) ; Statement: specialinvoke $r31.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2509!1 String)
(assert true)
(define-const var1398 String (append/1560614132 var2509!1 "Could not retrieve category [")) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Could not retrieve category [") 
(declare-const var2509!2 String)
(assert (str.prefixof var2509!1 var2509!2))
(assert true)
(define-const var993 String (append/1560614132 var1398 var491)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3) 
(declare-const var1398!1 String)
(assert (str.prefixof var1398 var1398!1))
(assert true)
(define-const var3846 String (append/1560614132 var993 "]. Reported error follows.")) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("]. Reported error follows.") 
(declare-const var993!1 String)
(assert (str.prefixof var993 var993!1))
(assert true)
(define-const var3880 String (toString/-222306083 var3846)) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var3522_error/1978659241 var3880 (cast-from-var1579-to-var2286 var1970))) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>($r35, $r30) 

(declare-const var3880!1 String)
(declare-const var1970!1 var1579)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1036_getAttribute/210607306=([org.w3c.dom.Element, java.lang.String], java.lang.String), subst/-1514982940=([org.apache.log4j.xml.DOMConfigurator, java.lang.String], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var3522_debug/381960894=([java.lang.String], void), var2175_loadClass/1898864060=([java.lang.String], java.lang.Class), var3522_error/1978659241=([java.lang.String, java.lang.Throwable], void), cast-from-var1579-to-var2286=([java.lang.Exception], java.lang.Throwable)}
; {var1347=org.apache.log4j.xml.DOMConfigurator, var1780=r0, var1036=org.w3c.dom.Element, var2647=r1, var1763=$r2, var491=r3, var668=$r4, var446=r5, var2697=$r6, var879=$z0, var673=$r7, var790=$r8, var2251=$r9, var2883=$r10, var3290=$r11, var3522=org.apache.log4j.helpers.LogLog, var2175=org.apache.log4j.helpers.Loader, var3891=r42, var1579=java.lang.Exception, var1970=$r30, var2509=$r31, var1398=$r32, var993=$r33, var3846=$r34, var3880=$r35, var2286=java.lang.Throwable}
; {org.apache.log4j.xml.DOMConfigurator=var1347, r0=var1780, org.w3c.dom.Element=var1036, r1=var2647, $r2=var1763, r3=var491, $r4=var668, r5=var446, $r6=var2697, $z0=var879, $r7=var673, $r8=var790, $r9=var2251, $r10=var2883, $r11=var3290, org.apache.log4j.helpers.LogLog=var3522, org.apache.log4j.helpers.Loader=var2175, r42=var3891, java.lang.Exception=var1579, $r30=var1970, $r31=var2509, $r32=var1398, $r33=var993, $r34=var3846, $r35=var3880, java.lang.Throwable=var2286}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuffer: void <init>()>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 5,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 2}
;stmts r0 := @this: org.apache.log4j.xml.DOMConfigurator;	r1 := @parameter0: org.w3c.dom.Element;	$r2 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("name");	r3 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r2);	$r4 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class");	r5 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r4);	$r6 = "";	$z0 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>(r5);	if $z0 == 0 goto $r7 = new java.lang.StringBuffer;	$r7 = new java.lang.StringBuffer;	specialinvoke $r7.<java.lang.StringBuffer: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Desired logger sub-class: [");	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r5);	$r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(93);	$r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r11);	r42 = staticinvoke <org.apache.log4j.helpers.Loader: java.lang.Class loadClass(java.lang.String)>(r5);	$r30 := @caughtexception;	$r31 = new java.lang.StringBuffer;	specialinvoke $r31.<java.lang.StringBuffer: void <init>()>();	$r32 = virtualinvoke $r31.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Could not retrieve category [");	$r33 = virtualinvoke $r32.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3);	$r34 = virtualinvoke $r33.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("]. Reported error follows.");	$r35 = virtualinvoke $r34.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>($r35, $r30);	return
;block_num 4