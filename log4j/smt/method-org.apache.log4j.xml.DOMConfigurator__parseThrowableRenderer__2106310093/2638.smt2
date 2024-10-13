(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2432 0)
(declare-sort var2155 0)
(declare-sort var2141 0)
(declare-sort var3854 0)
(declare-sort var3818 0)
(declare-sort var3117 0)
(declare-sort var1547 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2155_getAttribute/210607306 (var2155 String) String)
(declare-fun subst/-1514982940 (var2432 String) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var2141_debug/381960894 (String) void)
(declare-fun var3854_loadClass/1898864060 (String) ClassObject)
(declare-fun var3117_currentThread/-1037784612 () var3117)
(declare-fun interrupt/1189171174 (var3117) void)
(declare-fun var2141_error/1978659241 (String var1547) void)
(declare-fun cast-from-var3818-to-var1547 (var3818) var1547)
(declare-const null-var2432 var2432)
(declare-const null-var2155 var2155)
(declare-const null-var3818 var3818)
(declare-const var3083 var2432) ; Statement: r0 := @this: org.apache.log4j.xml.DOMConfigurator 
(assert (not (= var3083 null-var2432)))
(declare-const var3124 var2155) ; Statement: r1 := @parameter0: org.w3c.dom.Element 
(assert (not (= var3124 null-var2155)))
(define-const var2472 String (var2155_getAttribute/210607306 var3124 "class")) ; Statement: $r2 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class") 
(assert true)
(define-const var874 String (subst/-1514982940 var3083 var2472)) ; Statement: r3 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r2) 
(define-const var513 String String-init) ; Statement: $r4 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var513)) ; Statement: specialinvoke $r4.<java.lang.StringBuffer: void <init>()>() 

(declare-const var513!1 String)
(assert true)
(define-const var1236 String (append/1560614132 var513!1 "Parsing throwableRenderer of class: \u0022")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Parsing throwableRenderer of class: \"") 
(declare-const var513!2 String)
(assert (str.prefixof var513!1 var513!2))
(assert true)
(define-const var1101 String (append/1560614132 var1236 var874)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3) 
(declare-const var1236!1 String)
(assert (str.prefixof var1236 var1236!1))
(assert true)
(define-const var743 String (append/1560614132 var1101 "\u0022")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\"") 
(declare-const var1101!1 String)
(assert (str.prefixof var1101 var1101!1))
(assert true)
(define-const var522 String (toString/-222306083 var743)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var2141_debug/381960894 var522)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r8) 

(declare-const var522!1 String)
(assert true) ; Non Conditional
(define-const var681 ClassObject (var3854_loadClass/1898864060 var874)) ; Statement: $r9 = staticinvoke <org.apache.log4j.helpers.Loader: java.lang.Class loadClass(java.lang.String)>(r3) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3736 var3818) ; Statement: $r17 := @caughtexception 
(assert (not (= var3736 null-var3818)))
(define-const var3340 Bool false) ; Statement: $z1 = $r17 instanceof java.lang.InterruptedException 
 ; Statement: if $z1 != 0 goto $r18 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert (not (= (ite var3340 1 0) 0))) ; Cond: $z1 != 0 
(define-const var1444 var3117 var3117_currentThread/-1037784612) ; Statement: $r18 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert true)
;(assert (interrupt/1189171174 var1444)) ; Statement: virtualinvoke $r18.<java.lang.Thread: void interrupt()>() 

(declare-const var1444!1 var3117)
(assert true) ; Non Conditional
;(assert (var2141_error/1978659241 "Could not create the ThrowableRenderer. Reported error follows." (cast-from-var3818-to-var1547 var3736))) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>("Could not create the ThrowableRenderer. Reported error follows.", $r17) 

(declare-const var1664 String)
(declare-const var3736!1 var3818)
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var2155_getAttribute/210607306=([org.w3c.dom.Element, java.lang.String], java.lang.String), subst/-1514982940=([org.apache.log4j.xml.DOMConfigurator, java.lang.String], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var2141_debug/381960894=([java.lang.String], void), var3854_loadClass/1898864060=([java.lang.String], java.lang.Class), var3117_currentThread/-1037784612=([], java.lang.Thread), interrupt/1189171174=([java.lang.Thread], void), var2141_error/1978659241=([java.lang.String, java.lang.Throwable], void), cast-from-var3818-to-var1547=([java.lang.Exception], java.lang.Throwable)}
; {var2432=org.apache.log4j.xml.DOMConfigurator, var3083=r0, var2155=org.w3c.dom.Element, var3124=r1, var2472=$r2, var874=r3, var513=$r4, var1236=$r5, var1101=$r6, var743=$r7, var522=$r8, var2141=org.apache.log4j.helpers.LogLog, var3854=org.apache.log4j.helpers.Loader, var681=$r9, var3818=java.lang.Exception, var3736=$r17, var3340=$z1, var3117=java.lang.Thread, var1444=$r18, var1547=java.lang.Throwable, var1664="Could not create the ThrowableRenderer. Reported error follows."}
; {org.apache.log4j.xml.DOMConfigurator=var2432, r0=var3083, org.w3c.dom.Element=var2155, r1=var3124, $r2=var2472, r3=var874, $r4=var513, $r5=var1236, $r6=var1101, $r7=var743, $r8=var522, org.apache.log4j.helpers.LogLog=var2141, org.apache.log4j.helpers.Loader=var3854, $r9=var681, java.lang.Exception=var3818, $r17=var3736, $z1=var3340, java.lang.Thread=var3117, $r18=var1444, java.lang.Throwable=var1547, "Could not create the ThrowableRenderer. Reported error follows."=var1664}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.xml.DOMConfigurator;	r1 := @parameter0: org.w3c.dom.Element;	$r2 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class");	r3 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r2);	$r4 = new java.lang.StringBuffer;	specialinvoke $r4.<java.lang.StringBuffer: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Parsing throwableRenderer of class: \"");	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3);	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\"");	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r8);	$r9 = staticinvoke <org.apache.log4j.helpers.Loader: java.lang.Class loadClass(java.lang.String)>(r3);	$r17 := @caughtexception;	$z1 = $r17 instanceof java.lang.InterruptedException;	if $z1 != 0 goto $r18 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$r18 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	virtualinvoke $r18.<java.lang.Thread: void interrupt()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>("Could not create the ThrowableRenderer. Reported error follows.", $r17);	return null
;block_num 5