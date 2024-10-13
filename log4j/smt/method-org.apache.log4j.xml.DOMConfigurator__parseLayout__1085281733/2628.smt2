(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3713 0)
(declare-sort var50 0)
(declare-sort var1878 0)
(declare-sort var1778 0)
(declare-sort var3083 0)
(declare-sort var1466 0)
(declare-sort var3 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var50_getAttribute/210607306 (var50 String) String)
(declare-fun subst/-1514982940 (var3713 String) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var1878_debug/381960894 (String) void)
(declare-fun var1778_loadClass/1898864060 (String) ClassObject)
(declare-fun var1466_currentThread/-1037784612 () var1466)
(declare-fun interrupt/1189171174 (var1466) void)
(declare-fun var1878_error/1978659241 (String var3) void)
(declare-fun cast-from-var3083-to-var3 (var3083) var3)
(declare-const null-var3713 var3713)
(declare-const null-var50 var50)
(declare-const null-var3083 var3083)
(declare-const var1587 var3713) ; Statement: r0 := @this: org.apache.log4j.xml.DOMConfigurator 
(assert (not (= var1587 null-var3713)))
(declare-const var1323 var50) ; Statement: r1 := @parameter0: org.w3c.dom.Element 
(assert (not (= var1323 null-var50)))
(define-const var3004 String (var50_getAttribute/210607306 var1323 "class")) ; Statement: $r2 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class") 
(assert true)
(define-const var527 String (subst/-1514982940 var1587 var3004)) ; Statement: r3 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r2) 
(define-const var569 String String-init) ; Statement: $r4 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var569)) ; Statement: specialinvoke $r4.<java.lang.StringBuffer: void <init>()>() 

(declare-const var569!1 String)
(assert true)
(define-const var2546 String (append/1560614132 var569!1 "Parsing layout of class: \u0022")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Parsing layout of class: \"") 
(declare-const var569!2 String)
(assert (str.prefixof var569!1 var569!2))
(assert true)
(define-const var152 String (append/1560614132 var2546 var527)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3) 
(declare-const var2546!1 String)
(assert (str.prefixof var2546 var2546!1))
(assert true)
(define-const var64 String (append/1560614132 var152 "\u0022")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\"") 
(declare-const var152!1 String)
(assert (str.prefixof var152 var152!1))
(assert true)
(define-const var1759 String (toString/-222306083 var64)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var1878_debug/381960894 var1759)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r8) 

(declare-const var1759!1 String)
(assert true) ; Non Conditional
(define-const var3743 ClassObject (var1778_loadClass/1898864060 var527)) ; Statement: $r9 = staticinvoke <org.apache.log4j.helpers.Loader: java.lang.Class loadClass(java.lang.String)>(r3) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1940 var3083) ; Statement: $r17 := @caughtexception 
(assert (not (= var1940 null-var3083)))
(define-const var1203 Bool false) ; Statement: $z1 = $r17 instanceof java.lang.InterruptedException 
 ; Statement: if $z1 != 0 goto $r18 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert (not (= (ite var1203 1 0) 0))) ; Cond: $z1 != 0 
(define-const var427 var1466 var1466_currentThread/-1037784612) ; Statement: $r18 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert true)
;(assert (interrupt/1189171174 var427)) ; Statement: virtualinvoke $r18.<java.lang.Thread: void interrupt()>() 

(declare-const var427!1 var1466)
(assert true) ; Non Conditional
;(assert (var1878_error/1978659241 "Could not create the Layout. Reported error follows." (cast-from-var3083-to-var3 var1940))) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>("Could not create the Layout. Reported error follows.", $r17) 

(declare-const var345 String)
(declare-const var1940!1 var3083)
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var50_getAttribute/210607306=([org.w3c.dom.Element, java.lang.String], java.lang.String), subst/-1514982940=([org.apache.log4j.xml.DOMConfigurator, java.lang.String], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var1878_debug/381960894=([java.lang.String], void), var1778_loadClass/1898864060=([java.lang.String], java.lang.Class), var1466_currentThread/-1037784612=([], java.lang.Thread), interrupt/1189171174=([java.lang.Thread], void), var1878_error/1978659241=([java.lang.String, java.lang.Throwable], void), cast-from-var3083-to-var3=([java.lang.Exception], java.lang.Throwable)}
; {var3713=org.apache.log4j.xml.DOMConfigurator, var1587=r0, var50=org.w3c.dom.Element, var1323=r1, var3004=$r2, var527=r3, var569=$r4, var2546=$r5, var152=$r6, var64=$r7, var1759=$r8, var1878=org.apache.log4j.helpers.LogLog, var1778=org.apache.log4j.helpers.Loader, var3743=$r9, var3083=java.lang.Exception, var1940=$r17, var1203=$z1, var1466=java.lang.Thread, var427=$r18, var3=java.lang.Throwable, var345="Could not create the Layout. Reported error follows."}
; {org.apache.log4j.xml.DOMConfigurator=var3713, r0=var1587, org.w3c.dom.Element=var50, r1=var1323, $r2=var3004, r3=var527, $r4=var569, $r5=var2546, $r6=var152, $r7=var64, $r8=var1759, org.apache.log4j.helpers.LogLog=var1878, org.apache.log4j.helpers.Loader=var1778, $r9=var3743, java.lang.Exception=var3083, $r17=var1940, $z1=var1203, java.lang.Thread=var1466, $r18=var427, java.lang.Throwable=var3, "Could not create the Layout. Reported error follows."=var345}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.xml.DOMConfigurator;	r1 := @parameter0: org.w3c.dom.Element;	$r2 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class");	r3 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r2);	$r4 = new java.lang.StringBuffer;	specialinvoke $r4.<java.lang.StringBuffer: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Parsing layout of class: \"");	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3);	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\"");	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r8);	$r9 = staticinvoke <org.apache.log4j.helpers.Loader: java.lang.Class loadClass(java.lang.String)>(r3);	$r17 := @caughtexception;	$z1 = $r17 instanceof java.lang.InterruptedException;	if $z1 != 0 goto $r18 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$r18 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	virtualinvoke $r18.<java.lang.Thread: void interrupt()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>("Could not create the Layout. Reported error follows.", $r17);	return null
;block_num 5