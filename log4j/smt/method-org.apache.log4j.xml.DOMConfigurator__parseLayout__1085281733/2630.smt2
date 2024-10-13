(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var603 0)
(declare-sort var918 0)
(declare-sort var2060 0)
(declare-sort var1372 0)
(declare-sort var2164 0)
(declare-sort var2113 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var918_getAttribute/210607306 (var918 String) String)
(declare-fun subst/-1514982940 (var603 String) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var2060_debug/381960894 (String) void)
(declare-fun var2164_currentThread/-1037784612 () var2164)
(declare-fun interrupt/1189171174 (var2164) void)
(declare-fun var2060_error/1978659241 (String var2113) void)
(declare-fun cast-from-var1372-to-var2113 (var1372) var2113)
(declare-const null-var603 var603)
(declare-const null-var918 var918)
(declare-const null-var1372 var1372)
(declare-const var2153 var603) ; Statement: r0 := @this: org.apache.log4j.xml.DOMConfigurator 
(assert (not (= var2153 null-var603)))
(declare-const var2689 var918) ; Statement: r1 := @parameter0: org.w3c.dom.Element 
(assert (not (= var2689 null-var918)))
(define-const var3857 String (var918_getAttribute/210607306 var2689 "class")) ; Statement: $r2 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class") 
(assert true)
(define-const var174 String (subst/-1514982940 var2153 var3857)) ; Statement: r3 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r2) 
(define-const var3414 String String-init) ; Statement: $r4 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3414)) ; Statement: specialinvoke $r4.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3414!1 String)
(assert true)
(define-const var1649 String (append/1560614132 var3414!1 "Parsing layout of class: \u0022")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Parsing layout of class: \"") 
(declare-const var3414!2 String)
(assert (str.prefixof var3414!1 var3414!2))
(assert true)
(define-const var424 String (append/1560614132 var1649 var174)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3) 
(declare-const var1649!1 String)
(assert (str.prefixof var1649 var1649!1))
(assert true)
(define-const var1607 String (append/1560614132 var424 "\u0022")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\"") 
(declare-const var424!1 String)
(assert (str.prefixof var424 var424!1))
(assert true)
(define-const var696 String (toString/-222306083 var1607)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var2060_debug/381960894 var696)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r8) 

(declare-const var696!1 String)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2830 var1372) ; Statement: $r17 := @caughtexception 
(assert (not (= var2830 null-var1372)))
(define-const var3026 Bool false) ; Statement: $z1 = $r17 instanceof java.lang.InterruptedException 
 ; Statement: if $z1 != 0 goto $r18 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert (not (not (= (ite var3026 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var2064 Bool false) ; Statement: $z2 = $r17 instanceof java.io.InterruptedIOException 
 ; Statement: if $z2 == 0 goto staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>("Could not create the Layout. Reported error follows.", $r17) 
(assert (not (= (ite var2064 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var581 var2164 var2164_currentThread/-1037784612) ; Statement: $r18 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert true)
;(assert (interrupt/1189171174 var581)) ; Statement: virtualinvoke $r18.<java.lang.Thread: void interrupt()>() 

(declare-const var581!1 var2164)
(assert true) ; Non Conditional
;(assert (var2060_error/1978659241 "Could not create the Layout. Reported error follows." (cast-from-var1372-to-var2113 var2830))) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>("Could not create the Layout. Reported error follows.", $r17) 

(declare-const var1615 String)
(declare-const var2830!1 var1372)
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var918_getAttribute/210607306=([org.w3c.dom.Element, java.lang.String], java.lang.String), subst/-1514982940=([org.apache.log4j.xml.DOMConfigurator, java.lang.String], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var2060_debug/381960894=([java.lang.String], void), var2164_currentThread/-1037784612=([], java.lang.Thread), interrupt/1189171174=([java.lang.Thread], void), var2060_error/1978659241=([java.lang.String, java.lang.Throwable], void), cast-from-var1372-to-var2113=([java.lang.Exception], java.lang.Throwable)}
; {var603=org.apache.log4j.xml.DOMConfigurator, var2153=r0, var918=org.w3c.dom.Element, var2689=r1, var3857=$r2, var174=r3, var3414=$r4, var1649=$r5, var424=$r6, var1607=$r7, var696=$r8, var2060=org.apache.log4j.helpers.LogLog, var1372=java.lang.Exception, var2830=$r17, var3026=$z1, var2064=$z2, var2164=java.lang.Thread, var581=$r18, var2113=java.lang.Throwable, var1615="Could not create the Layout. Reported error follows."}
; {org.apache.log4j.xml.DOMConfigurator=var603, r0=var2153, org.w3c.dom.Element=var918, r1=var2689, $r2=var3857, r3=var174, $r4=var3414, $r5=var1649, $r6=var424, $r7=var1607, $r8=var696, org.apache.log4j.helpers.LogLog=var2060, java.lang.Exception=var1372, $r17=var2830, $z1=var3026, $z2=var2064, java.lang.Thread=var2164, $r18=var581, java.lang.Throwable=var2113, "Could not create the Layout. Reported error follows."=var1615}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.xml.DOMConfigurator;	r1 := @parameter0: org.w3c.dom.Element;	$r2 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class");	r3 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r2);	$r4 = new java.lang.StringBuffer;	specialinvoke $r4.<java.lang.StringBuffer: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Parsing layout of class: \"");	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3);	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\"");	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r8);	$r17 := @caughtexception;	$z1 = $r17 instanceof java.lang.InterruptedException;	if $z1 != 0 goto $r18 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$z2 = $r17 instanceof java.io.InterruptedIOException;	if $z2 == 0 goto staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>("Could not create the Layout. Reported error follows.", $r17);	$r18 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	virtualinvoke $r18.<java.lang.Thread: void interrupt()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>("Could not create the Layout. Reported error follows.", $r17);	return null
;block_num 5