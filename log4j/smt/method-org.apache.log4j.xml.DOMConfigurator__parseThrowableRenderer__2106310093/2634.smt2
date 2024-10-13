(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2916 0)
(declare-sort var3121 0)
(declare-sort var3040 0)
(declare-sort var1043 0)
(declare-sort var2901 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3121_getAttribute/210607306 (var3121 String) String)
(declare-fun subst/-1514982940 (var2916 String) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var3040_debug/381960894 (String) void)
(declare-fun var3040_error/1978659241 (String var2901) void)
(declare-fun cast-from-var1043-to-var2901 (var1043) var2901)
(declare-const null-var2916 var2916)
(declare-const null-var3121 var3121)
(declare-const null-var1043 var1043)
(declare-const var3398 var2916) ; Statement: r0 := @this: org.apache.log4j.xml.DOMConfigurator 
(assert (not (= var3398 null-var2916)))
(declare-const var3127 var3121) ; Statement: r1 := @parameter0: org.w3c.dom.Element 
(assert (not (= var3127 null-var3121)))
(define-const var3328 String (var3121_getAttribute/210607306 var3127 "class")) ; Statement: $r2 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class") 
(assert true)
(define-const var1097 String (subst/-1514982940 var3398 var3328)) ; Statement: r3 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r2) 
(define-const var1628 String String-init) ; Statement: $r4 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1628)) ; Statement: specialinvoke $r4.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1628!1 String)
(assert true)
(define-const var1017 String (append/1560614132 var1628!1 "Parsing throwableRenderer of class: \u0022")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Parsing throwableRenderer of class: \"") 
(declare-const var1628!2 String)
(assert (str.prefixof var1628!1 var1628!2))
(assert true)
(define-const var1295 String (append/1560614132 var1017 var1097)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3) 
(declare-const var1017!1 String)
(assert (str.prefixof var1017 var1017!1))
(assert true)
(define-const var3441 String (append/1560614132 var1295 "\u0022")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\"") 
(declare-const var1295!1 String)
(assert (str.prefixof var1295 var1295!1))
(assert true)
(define-const var2445 String (toString/-222306083 var3441)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var3040_debug/381960894 var2445)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r8) 

(declare-const var2445!1 String)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1940 var1043) ; Statement: $r17 := @caughtexception 
(assert (not (= var1940 null-var1043)))
(define-const var1360 Bool false) ; Statement: $z1 = $r17 instanceof java.lang.InterruptedException 
 ; Statement: if $z1 != 0 goto $r18 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert (not (not (= (ite var1360 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var972 Bool false) ; Statement: $z2 = $r17 instanceof java.io.InterruptedIOException 
 ; Statement: if $z2 == 0 goto staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>("Could not create the ThrowableRenderer. Reported error follows.", $r17) 
(assert (= (ite var972 1 0) 0)) ; Cond: $z2 == 0 
;(assert (var3040_error/1978659241 "Could not create the ThrowableRenderer. Reported error follows." (cast-from-var1043-to-var2901 var1940))) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>("Could not create the ThrowableRenderer. Reported error follows.", $r17) 

(declare-const var1204 String)
(declare-const var1940!1 var1043)
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var3121_getAttribute/210607306=([org.w3c.dom.Element, java.lang.String], java.lang.String), subst/-1514982940=([org.apache.log4j.xml.DOMConfigurator, java.lang.String], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var3040_debug/381960894=([java.lang.String], void), var3040_error/1978659241=([java.lang.String, java.lang.Throwable], void), cast-from-var1043-to-var2901=([java.lang.Exception], java.lang.Throwable)}
; {var2916=org.apache.log4j.xml.DOMConfigurator, var3398=r0, var3121=org.w3c.dom.Element, var3127=r1, var3328=$r2, var1097=r3, var1628=$r4, var1017=$r5, var1295=$r6, var3441=$r7, var2445=$r8, var3040=org.apache.log4j.helpers.LogLog, var1043=java.lang.Exception, var1940=$r17, var1360=$z1, var972=$z2, var2901=java.lang.Throwable, var1204="Could not create the ThrowableRenderer. Reported error follows."}
; {org.apache.log4j.xml.DOMConfigurator=var2916, r0=var3398, org.w3c.dom.Element=var3121, r1=var3127, $r2=var3328, r3=var1097, $r4=var1628, $r5=var1017, $r6=var1295, $r7=var3441, $r8=var2445, org.apache.log4j.helpers.LogLog=var3040, java.lang.Exception=var1043, $r17=var1940, $z1=var1360, $z2=var972, java.lang.Throwable=var2901, "Could not create the ThrowableRenderer. Reported error follows."=var1204}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.xml.DOMConfigurator;	r1 := @parameter0: org.w3c.dom.Element;	$r2 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class");	r3 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r2);	$r4 = new java.lang.StringBuffer;	specialinvoke $r4.<java.lang.StringBuffer: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Parsing throwableRenderer of class: \"");	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3);	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\"");	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r8);	$r17 := @caughtexception;	$z1 = $r17 instanceof java.lang.InterruptedException;	if $z1 != 0 goto $r18 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$z2 = $r17 instanceof java.io.InterruptedIOException;	if $z2 == 0 goto staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>("Could not create the ThrowableRenderer. Reported error follows.", $r17);	staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>("Could not create the ThrowableRenderer. Reported error follows.", $r17);	return null
;block_num 4