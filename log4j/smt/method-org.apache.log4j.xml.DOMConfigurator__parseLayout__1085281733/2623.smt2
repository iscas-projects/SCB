(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var850 0)
(declare-sort var1511 0)
(declare-sort var2148 0)
(declare-sort var1998 0)
(declare-sort var1642 0)
(declare-sort var2818 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1511_getAttribute/210607306 (var1511 String) String)
(declare-fun subst/-1514982940 (var850 String) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var2148_debug/381960894 (String) void)
(declare-fun var1642_currentThread/-1037784612 () var1642)
(declare-fun interrupt/1189171174 (var1642) void)
(declare-fun var2148_error/1978659241 (String var2818) void)
(declare-fun cast-from-var1998-to-var2818 (var1998) var2818)
(declare-const null-var850 var850)
(declare-const null-var1511 var1511)
(declare-const null-var1998 var1998)
(declare-const var3653 var850) ; Statement: r0 := @this: org.apache.log4j.xml.DOMConfigurator 
(assert (not (= var3653 null-var850)))
(declare-const var1190 var1511) ; Statement: r1 := @parameter0: org.w3c.dom.Element 
(assert (not (= var1190 null-var1511)))
(define-const var1668 String (var1511_getAttribute/210607306 var1190 "class")) ; Statement: $r2 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class") 
(assert true)
(define-const var2926 String (subst/-1514982940 var3653 var1668)) ; Statement: r3 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r2) 
(define-const var3434 String String-init) ; Statement: $r4 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3434)) ; Statement: specialinvoke $r4.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3434!1 String)
(assert true)
(define-const var548 String (append/1560614132 var3434!1 "Parsing layout of class: \u0022")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Parsing layout of class: \"") 
(declare-const var3434!2 String)
(assert (str.prefixof var3434!1 var3434!2))
(assert true)
(define-const var2413 String (append/1560614132 var548 var2926)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3) 
(declare-const var548!1 String)
(assert (str.prefixof var548 var548!1))
(assert true)
(define-const var3043 String (append/1560614132 var2413 "\u0022")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\"") 
(declare-const var2413!1 String)
(assert (str.prefixof var2413 var2413!1))
(assert true)
(define-const var1144 String (toString/-222306083 var3043)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var2148_debug/381960894 var1144)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r8) 

(declare-const var1144!1 String)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var487 var1998) ; Statement: $r17 := @caughtexception 
(assert (not (= var487 null-var1998)))
(define-const var2447 Bool false) ; Statement: $z1 = $r17 instanceof java.lang.InterruptedException 
 ; Statement: if $z1 != 0 goto $r18 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert (not (= (ite var2447 1 0) 0))) ; Cond: $z1 != 0 
(define-const var1489 var1642 var1642_currentThread/-1037784612) ; Statement: $r18 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert true)
;(assert (interrupt/1189171174 var1489)) ; Statement: virtualinvoke $r18.<java.lang.Thread: void interrupt()>() 

(declare-const var1489!1 var1642)
(assert true) ; Non Conditional
;(assert (var2148_error/1978659241 "Could not create the Layout. Reported error follows." (cast-from-var1998-to-var2818 var487))) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>("Could not create the Layout. Reported error follows.", $r17) 

(declare-const var1 String)
(declare-const var487!1 var1998)
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var1511_getAttribute/210607306=([org.w3c.dom.Element, java.lang.String], java.lang.String), subst/-1514982940=([org.apache.log4j.xml.DOMConfigurator, java.lang.String], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var2148_debug/381960894=([java.lang.String], void), var1642_currentThread/-1037784612=([], java.lang.Thread), interrupt/1189171174=([java.lang.Thread], void), var2148_error/1978659241=([java.lang.String, java.lang.Throwable], void), cast-from-var1998-to-var2818=([java.lang.Exception], java.lang.Throwable)}
; {var850=org.apache.log4j.xml.DOMConfigurator, var3653=r0, var1511=org.w3c.dom.Element, var1190=r1, var1668=$r2, var2926=r3, var3434=$r4, var548=$r5, var2413=$r6, var3043=$r7, var1144=$r8, var2148=org.apache.log4j.helpers.LogLog, var1998=java.lang.Exception, var487=$r17, var2447=$z1, var1642=java.lang.Thread, var1489=$r18, var2818=java.lang.Throwable, var1="Could not create the Layout. Reported error follows."}
; {org.apache.log4j.xml.DOMConfigurator=var850, r0=var3653, org.w3c.dom.Element=var1511, r1=var1190, $r2=var1668, r3=var2926, $r4=var3434, $r5=var548, $r6=var2413, $r7=var3043, $r8=var1144, org.apache.log4j.helpers.LogLog=var2148, java.lang.Exception=var1998, $r17=var487, $z1=var2447, java.lang.Thread=var1642, $r18=var1489, java.lang.Throwable=var2818, "Could not create the Layout. Reported error follows."=var1}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.xml.DOMConfigurator;	r1 := @parameter0: org.w3c.dom.Element;	$r2 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class");	r3 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r2);	$r4 = new java.lang.StringBuffer;	specialinvoke $r4.<java.lang.StringBuffer: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Parsing layout of class: \"");	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3);	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\"");	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r8);	$r17 := @caughtexception;	$z1 = $r17 instanceof java.lang.InterruptedException;	if $z1 != 0 goto $r18 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$r18 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	virtualinvoke $r18.<java.lang.Thread: void interrupt()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>("Could not create the Layout. Reported error follows.", $r17);	return null
;block_num 4