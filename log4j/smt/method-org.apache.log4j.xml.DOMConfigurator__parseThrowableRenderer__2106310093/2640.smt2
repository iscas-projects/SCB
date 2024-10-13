(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2891 0)
(declare-sort var870 0)
(declare-sort var181 0)
(declare-sort var3922 0)
(declare-sort var2500 0)
(declare-sort var1853 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var870_getAttribute/210607306 (var870 String) String)
(declare-fun subst/-1514982940 (var2891 String) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var181_debug/381960894 (String) void)
(declare-fun var2500_currentThread/-1037784612 () var2500)
(declare-fun interrupt/1189171174 (var2500) void)
(declare-fun var181_error/1978659241 (String var1853) void)
(declare-fun cast-from-var3922-to-var1853 (var3922) var1853)
(declare-const null-var2891 var2891)
(declare-const null-var870 var870)
(declare-const null-var3922 var3922)
(declare-const var1044 var2891) ; Statement: r0 := @this: org.apache.log4j.xml.DOMConfigurator 
(assert (not (= var1044 null-var2891)))
(declare-const var164 var870) ; Statement: r1 := @parameter0: org.w3c.dom.Element 
(assert (not (= var164 null-var870)))
(define-const var1517 String (var870_getAttribute/210607306 var164 "class")) ; Statement: $r2 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class") 
(assert true)
(define-const var2840 String (subst/-1514982940 var1044 var1517)) ; Statement: r3 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r2) 
(define-const var3034 String String-init) ; Statement: $r4 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3034)) ; Statement: specialinvoke $r4.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3034!1 String)
(assert true)
(define-const var209 String (append/1560614132 var3034!1 "Parsing throwableRenderer of class: \u0022")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Parsing throwableRenderer of class: \"") 
(declare-const var3034!2 String)
(assert (str.prefixof var3034!1 var3034!2))
(assert true)
(define-const var3096 String (append/1560614132 var209 var2840)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3) 
(declare-const var209!1 String)
(assert (str.prefixof var209 var209!1))
(assert true)
(define-const var2358 String (append/1560614132 var3096 "\u0022")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\"") 
(declare-const var3096!1 String)
(assert (str.prefixof var3096 var3096!1))
(assert true)
(define-const var695 String (toString/-222306083 var2358)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var181_debug/381960894 var695)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r8) 

(declare-const var695!1 String)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var31 var3922) ; Statement: $r17 := @caughtexception 
(assert (not (= var31 null-var3922)))
(define-const var876 Bool false) ; Statement: $z1 = $r17 instanceof java.lang.InterruptedException 
 ; Statement: if $z1 != 0 goto $r18 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert (not (not (= (ite var876 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var3008 Bool false) ; Statement: $z2 = $r17 instanceof java.io.InterruptedIOException 
 ; Statement: if $z2 == 0 goto staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>("Could not create the ThrowableRenderer. Reported error follows.", $r17) 
(assert (not (= (ite var3008 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var412 var2500 var2500_currentThread/-1037784612) ; Statement: $r18 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert true)
;(assert (interrupt/1189171174 var412)) ; Statement: virtualinvoke $r18.<java.lang.Thread: void interrupt()>() 

(declare-const var412!1 var2500)
(assert true) ; Non Conditional
;(assert (var181_error/1978659241 "Could not create the ThrowableRenderer. Reported error follows." (cast-from-var3922-to-var1853 var31))) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>("Could not create the ThrowableRenderer. Reported error follows.", $r17) 

(declare-const var1615 String)
(declare-const var31!1 var3922)
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var870_getAttribute/210607306=([org.w3c.dom.Element, java.lang.String], java.lang.String), subst/-1514982940=([org.apache.log4j.xml.DOMConfigurator, java.lang.String], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var181_debug/381960894=([java.lang.String], void), var2500_currentThread/-1037784612=([], java.lang.Thread), interrupt/1189171174=([java.lang.Thread], void), var181_error/1978659241=([java.lang.String, java.lang.Throwable], void), cast-from-var3922-to-var1853=([java.lang.Exception], java.lang.Throwable)}
; {var2891=org.apache.log4j.xml.DOMConfigurator, var1044=r0, var870=org.w3c.dom.Element, var164=r1, var1517=$r2, var2840=r3, var3034=$r4, var209=$r5, var3096=$r6, var2358=$r7, var695=$r8, var181=org.apache.log4j.helpers.LogLog, var3922=java.lang.Exception, var31=$r17, var876=$z1, var3008=$z2, var2500=java.lang.Thread, var412=$r18, var1853=java.lang.Throwable, var1615="Could not create the ThrowableRenderer. Reported error follows."}
; {org.apache.log4j.xml.DOMConfigurator=var2891, r0=var1044, org.w3c.dom.Element=var870, r1=var164, $r2=var1517, r3=var2840, $r4=var3034, $r5=var209, $r6=var3096, $r7=var2358, $r8=var695, org.apache.log4j.helpers.LogLog=var181, java.lang.Exception=var3922, $r17=var31, $z1=var876, $z2=var3008, java.lang.Thread=var2500, $r18=var412, java.lang.Throwable=var1853, "Could not create the ThrowableRenderer. Reported error follows."=var1615}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.xml.DOMConfigurator;	r1 := @parameter0: org.w3c.dom.Element;	$r2 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class");	r3 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r2);	$r4 = new java.lang.StringBuffer;	specialinvoke $r4.<java.lang.StringBuffer: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Parsing throwableRenderer of class: \"");	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3);	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\"");	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r8);	$r17 := @caughtexception;	$z1 = $r17 instanceof java.lang.InterruptedException;	if $z1 != 0 goto $r18 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$z2 = $r17 instanceof java.io.InterruptedIOException;	if $z2 == 0 goto staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>("Could not create the ThrowableRenderer. Reported error follows.", $r17);	$r18 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	virtualinvoke $r18.<java.lang.Thread: void interrupt()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>("Could not create the ThrowableRenderer. Reported error follows.", $r17);	return null
;block_num 5