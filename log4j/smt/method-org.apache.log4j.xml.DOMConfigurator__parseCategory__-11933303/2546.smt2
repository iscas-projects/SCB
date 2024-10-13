(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1920 0)
(declare-sort var1053 0)
(declare-sort var3083 0)
(declare-sort var2566 0)
(declare-sort var3838 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1053_getAttribute/210607306 (var1053 String) String)
(declare-fun subst/-1514982940 (var1920 String) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/1183289509 (String Int) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var3083_debug/381960894 (String) void)
(declare-fun getTargetException/2075407118 (var2566) var3838)
(declare-fun var3083_error/1978659241 (String var3838) void)
(declare-fun cast-from-var2566-to-var3838 (var2566) var3838)
(declare-const null-var1920 var1920)
(declare-const null-var1053 var1053)
(declare-const null-var2566 var2566)
(declare-const var1657 var1920) ; Statement: r0 := @this: org.apache.log4j.xml.DOMConfigurator 
(assert (not (= var1657 null-var1920)))
(declare-const var18 var1053) ; Statement: r1 := @parameter0: org.w3c.dom.Element 
(assert (not (= var18 null-var1053)))
(define-const var1869 String (var1053_getAttribute/210607306 var18 "name")) ; Statement: $r2 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("name") 
(assert true)
(define-const var690 String (subst/-1514982940 var1657 var1869)) ; Statement: r3 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r2) 
(define-const var1997 String (var1053_getAttribute/210607306 var18 "class")) ; Statement: $r4 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class") 
(assert true)
(define-const var2350 String (subst/-1514982940 var1657 var1997)) ; Statement: r5 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r4) 
(define-const var174 String "") ; Statement: $r6 = "" 
(assert true)
(define-const var2003 Bool (= var174 var2350)) ; Statement: $z0 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>(r5) 
 ; Statement: if $z0 == 0 goto $r7 = new java.lang.StringBuffer 
(assert (= (ite var2003 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1503 String String-init) ; Statement: $r7 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1503)) ; Statement: specialinvoke $r7.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1503!1 String)
(assert true)
(define-const var2600 String (append/1560614132 var1503!1 "Desired logger sub-class: [")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Desired logger sub-class: [") 
(declare-const var1503!2 String)
(assert (str.prefixof var1503!1 var1503!2))
(assert true)
(define-const var2458 String (append/1560614132 var2600 var2350)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r5) 
(declare-const var2600!1 String)
(assert (str.prefixof var2600 var2600!1))
(assert true)
(define-const var2359 String (append/1183289509 var2458 93)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(93) 
(assert true)
(define-const var1329 String (toString/-222306083 var2359)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var3083_debug/381960894 var1329)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r11) 

(declare-const var1329!1 String)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var652 var2566) ; Statement: $r36 := @caughtexception 
(assert (not (= var652 null-var2566)))
(assert true)
(define-const var6 var3838 (getTargetException/2075407118 var652)) ; Statement: $r37 = virtualinvoke $r36.<java.lang.reflect.InvocationTargetException: java.lang.Throwable getTargetException()>() 
(define-const var2267 Bool false) ; Statement: $z2 = $r37 instanceof java.lang.InterruptedException 
 ; Statement: if $z2 != 0 goto $r38 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert (not (not (= (ite var2267 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(assert true)
(define-const var3168 var3838 (getTargetException/2075407118 var652)) ; Statement: $r39 = virtualinvoke $r36.<java.lang.reflect.InvocationTargetException: java.lang.Throwable getTargetException()>() 
(define-const var1294 Bool false) ; Statement: $z3 = $r39 instanceof java.io.InterruptedIOException 
 ; Statement: if $z3 == 0 goto $r44 = new java.lang.StringBuffer 
(assert (= (ite var1294 1 0) 0)) ; Cond: $z3 == 0 
(define-const var955 String String-init) ; Statement: $r44 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var955)) ; Statement: specialinvoke $r44.<java.lang.StringBuffer: void <init>()>() 

(declare-const var955!1 String)
(assert true)
(define-const var1750 String (append/1560614132 var955!1 "Could not retrieve category [")) ; Statement: $r45 = virtualinvoke $r44.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Could not retrieve category [") 
(declare-const var955!2 String)
(assert (str.prefixof var955!1 var955!2))
(assert true)
(define-const var1845 String (append/1560614132 var1750 var690)) ; Statement: $r46 = virtualinvoke $r45.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3) 
(declare-const var1750!1 String)
(assert (str.prefixof var1750 var1750!1))
(assert true)
(define-const var2253 String (append/1560614132 var1845 "]. Reported error follows.")) ; Statement: $r47 = virtualinvoke $r46.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("]. Reported error follows.") 
(declare-const var1845!1 String)
(assert (str.prefixof var1845 var1845!1))
(assert true)
(define-const var1012 String (toString/-222306083 var2253)) ; Statement: $r48 = virtualinvoke $r47.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var3083_error/1978659241 var1012 (cast-from-var2566-to-var3838 var652))) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>($r48, $r36) 

(declare-const var1012!1 String)
(declare-const var652!1 var2566)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1053_getAttribute/210607306=([org.w3c.dom.Element, java.lang.String], java.lang.String), subst/-1514982940=([org.apache.log4j.xml.DOMConfigurator, java.lang.String], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var3083_debug/381960894=([java.lang.String], void), getTargetException/2075407118=([java.lang.reflect.InvocationTargetException], java.lang.Throwable), var3083_error/1978659241=([java.lang.String, java.lang.Throwable], void), cast-from-var2566-to-var3838=([java.lang.reflect.InvocationTargetException], java.lang.Throwable)}
; {var1920=org.apache.log4j.xml.DOMConfigurator, var1657=r0, var1053=org.w3c.dom.Element, var18=r1, var1869=$r2, var690=r3, var1997=$r4, var2350=r5, var174=$r6, var2003=$z0, var1503=$r7, var2600=$r8, var2458=$r9, var2359=$r10, var1329=$r11, var3083=org.apache.log4j.helpers.LogLog, var2566=java.lang.reflect.InvocationTargetException, var652=$r36, var3838=java.lang.Throwable, var6=$r37, var2267=$z2, var3168=$r39, var1294=$z3, var955=$r44, var1750=$r45, var1845=$r46, var2253=$r47, var1012=$r48}
; {org.apache.log4j.xml.DOMConfigurator=var1920, r0=var1657, org.w3c.dom.Element=var1053, r1=var18, $r2=var1869, r3=var690, $r4=var1997, r5=var2350, $r6=var174, $z0=var2003, $r7=var1503, $r8=var2600, $r9=var2458, $r10=var2359, $r11=var1329, org.apache.log4j.helpers.LogLog=var3083, java.lang.reflect.InvocationTargetException=var2566, $r36=var652, java.lang.Throwable=var3838, $r37=var6, $z2=var2267, $r39=var3168, $z3=var1294, $r44=var955, $r45=var1750, $r46=var1845, $r47=var2253, $r48=var1012}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuffer: void <init>()>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 5,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 2}
;stmts r0 := @this: org.apache.log4j.xml.DOMConfigurator;	r1 := @parameter0: org.w3c.dom.Element;	$r2 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("name");	r3 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r2);	$r4 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class");	r5 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r4);	$r6 = "";	$z0 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>(r5);	if $z0 == 0 goto $r7 = new java.lang.StringBuffer;	$r7 = new java.lang.StringBuffer;	specialinvoke $r7.<java.lang.StringBuffer: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Desired logger sub-class: [");	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r5);	$r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(93);	$r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r11);	$r36 := @caughtexception;	$r37 = virtualinvoke $r36.<java.lang.reflect.InvocationTargetException: java.lang.Throwable getTargetException()>();	$z2 = $r37 instanceof java.lang.InterruptedException;	if $z2 != 0 goto $r38 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$r39 = virtualinvoke $r36.<java.lang.reflect.InvocationTargetException: java.lang.Throwable getTargetException()>();	$z3 = $r39 instanceof java.io.InterruptedIOException;	if $z3 == 0 goto $r44 = new java.lang.StringBuffer;	$r44 = new java.lang.StringBuffer;	specialinvoke $r44.<java.lang.StringBuffer: void <init>()>();	$r45 = virtualinvoke $r44.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Could not retrieve category [");	$r46 = virtualinvoke $r45.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3);	$r47 = virtualinvoke $r46.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("]. Reported error follows.");	$r48 = virtualinvoke $r47.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>($r48, $r36);	return
;block_num 5