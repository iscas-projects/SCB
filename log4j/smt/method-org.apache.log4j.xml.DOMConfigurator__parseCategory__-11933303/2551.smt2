(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var800 0)
(declare-sort var3884 0)
(declare-sort var617 0)
(declare-sort var2814 0)
(declare-sort var2539 0)
(declare-sort var2148 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3884_getAttribute/210607306 (var3884 String) String)
(declare-fun subst/-1514982940 (var800 String) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/1183289509 (String Int) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var617_debug/381960894 (String) void)
(declare-fun getTargetException/2075407118 (var2814) var2539)
(declare-fun var2148_currentThread/-1037784612 () var2148)
(declare-fun interrupt/1189171174 (var2148) void)
(declare-fun var617_error/1978659241 (String var2539) void)
(declare-fun cast-from-var2814-to-var2539 (var2814) var2539)
(declare-const null-var800 var800)
(declare-const null-var3884 var3884)
(declare-const null-var2814 var2814)
(declare-const var767 var800) ; Statement: r0 := @this: org.apache.log4j.xml.DOMConfigurator 
(assert (not (= var767 null-var800)))
(declare-const var3639 var3884) ; Statement: r1 := @parameter0: org.w3c.dom.Element 
(assert (not (= var3639 null-var3884)))
(define-const var3491 String (var3884_getAttribute/210607306 var3639 "name")) ; Statement: $r2 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("name") 
(assert true)
(define-const var2191 String (subst/-1514982940 var767 var3491)) ; Statement: r3 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r2) 
(define-const var2613 String (var3884_getAttribute/210607306 var3639 "class")) ; Statement: $r4 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class") 
(assert true)
(define-const var1648 String (subst/-1514982940 var767 var2613)) ; Statement: r5 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r4) 
(define-const var2347 String "") ; Statement: $r6 = "" 
(assert true)
(define-const var2712 Bool (= var2347 var1648)) ; Statement: $z0 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>(r5) 
 ; Statement: if $z0 == 0 goto $r7 = new java.lang.StringBuffer 
(assert (= (ite var2712 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3124 String String-init) ; Statement: $r7 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3124)) ; Statement: specialinvoke $r7.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3124!1 String)
(assert true)
(define-const var3870 String (append/1560614132 var3124!1 "Desired logger sub-class: [")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Desired logger sub-class: [") 
(declare-const var3124!2 String)
(assert (str.prefixof var3124!1 var3124!2))
(assert true)
(define-const var3136 String (append/1560614132 var3870 var1648)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r5) 
(declare-const var3870!1 String)
(assert (str.prefixof var3870 var3870!1))
(assert true)
(define-const var513 String (append/1183289509 var3136 93)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(93) 
(assert true)
(define-const var1541 String (toString/-222306083 var513)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var617_debug/381960894 var1541)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r11) 

(declare-const var1541!1 String)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var177 var2814) ; Statement: $r36 := @caughtexception 
(assert (not (= var177 null-var2814)))
(assert true)
(define-const var1569 var2539 (getTargetException/2075407118 var177)) ; Statement: $r37 = virtualinvoke $r36.<java.lang.reflect.InvocationTargetException: java.lang.Throwable getTargetException()>() 
(define-const var2614 Bool false) ; Statement: $z2 = $r37 instanceof java.lang.InterruptedException 
 ; Statement: if $z2 != 0 goto $r38 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert (not (= (ite var2614 1 0) 0))) ; Cond: $z2 != 0 
(define-const var2137 var2148 var2148_currentThread/-1037784612) ; Statement: $r38 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert true)
;(assert (interrupt/1189171174 var2137)) ; Statement: virtualinvoke $r38.<java.lang.Thread: void interrupt()>() 

(declare-const var2137!1 var2148)
(assert true) ; Non Conditional
(define-const var1412 String String-init) ; Statement: $r44 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1412)) ; Statement: specialinvoke $r44.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1412!1 String)
(assert true)
(define-const var1849 String (append/1560614132 var1412!1 "Could not retrieve category [")) ; Statement: $r45 = virtualinvoke $r44.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Could not retrieve category [") 
(declare-const var1412!2 String)
(assert (str.prefixof var1412!1 var1412!2))
(assert true)
(define-const var3692 String (append/1560614132 var1849 var2191)) ; Statement: $r46 = virtualinvoke $r45.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3) 
(declare-const var1849!1 String)
(assert (str.prefixof var1849 var1849!1))
(assert true)
(define-const var130 String (append/1560614132 var3692 "]. Reported error follows.")) ; Statement: $r47 = virtualinvoke $r46.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("]. Reported error follows.") 
(declare-const var3692!1 String)
(assert (str.prefixof var3692 var3692!1))
(assert true)
(define-const var3381 String (toString/-222306083 var130)) ; Statement: $r48 = virtualinvoke $r47.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var617_error/1978659241 var3381 (cast-from-var2814-to-var2539 var177))) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>($r48, $r36) 

(declare-const var3381!1 String)
(declare-const var177!1 var2814)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3884_getAttribute/210607306=([org.w3c.dom.Element, java.lang.String], java.lang.String), subst/-1514982940=([org.apache.log4j.xml.DOMConfigurator, java.lang.String], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var617_debug/381960894=([java.lang.String], void), getTargetException/2075407118=([java.lang.reflect.InvocationTargetException], java.lang.Throwable), var2148_currentThread/-1037784612=([], java.lang.Thread), interrupt/1189171174=([java.lang.Thread], void), var617_error/1978659241=([java.lang.String, java.lang.Throwable], void), cast-from-var2814-to-var2539=([java.lang.reflect.InvocationTargetException], java.lang.Throwable)}
; {var800=org.apache.log4j.xml.DOMConfigurator, var767=r0, var3884=org.w3c.dom.Element, var3639=r1, var3491=$r2, var2191=r3, var2613=$r4, var1648=r5, var2347=$r6, var2712=$z0, var3124=$r7, var3870=$r8, var3136=$r9, var513=$r10, var1541=$r11, var617=org.apache.log4j.helpers.LogLog, var2814=java.lang.reflect.InvocationTargetException, var177=$r36, var2539=java.lang.Throwable, var1569=$r37, var2614=$z2, var2148=java.lang.Thread, var2137=$r38, var1412=$r44, var1849=$r45, var3692=$r46, var130=$r47, var3381=$r48}
; {org.apache.log4j.xml.DOMConfigurator=var800, r0=var767, org.w3c.dom.Element=var3884, r1=var3639, $r2=var3491, r3=var2191, $r4=var2613, r5=var1648, $r6=var2347, $z0=var2712, $r7=var3124, $r8=var3870, $r9=var3136, $r10=var513, $r11=var1541, org.apache.log4j.helpers.LogLog=var617, java.lang.reflect.InvocationTargetException=var2814, $r36=var177, java.lang.Throwable=var2539, $r37=var1569, $z2=var2614, java.lang.Thread=var2148, $r38=var2137, $r44=var1412, $r45=var1849, $r46=var3692, $r47=var130, $r48=var3381}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuffer: void <init>()>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 5,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 2}
;stmts r0 := @this: org.apache.log4j.xml.DOMConfigurator;	r1 := @parameter0: org.w3c.dom.Element;	$r2 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("name");	r3 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r2);	$r4 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class");	r5 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r4);	$r6 = "";	$z0 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>(r5);	if $z0 == 0 goto $r7 = new java.lang.StringBuffer;	$r7 = new java.lang.StringBuffer;	specialinvoke $r7.<java.lang.StringBuffer: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Desired logger sub-class: [");	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r5);	$r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(93);	$r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r11);	$r36 := @caughtexception;	$r37 = virtualinvoke $r36.<java.lang.reflect.InvocationTargetException: java.lang.Throwable getTargetException()>();	$z2 = $r37 instanceof java.lang.InterruptedException;	if $z2 != 0 goto $r38 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$r38 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	virtualinvoke $r38.<java.lang.Thread: void interrupt()>();	$r44 = new java.lang.StringBuffer;	specialinvoke $r44.<java.lang.StringBuffer: void <init>()>();	$r45 = virtualinvoke $r44.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Could not retrieve category [");	$r46 = virtualinvoke $r45.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3);	$r47 = virtualinvoke $r46.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("]. Reported error follows.");	$r48 = virtualinvoke $r47.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>($r48, $r36);	return
;block_num 5