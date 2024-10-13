(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3643 0)
(declare-sort var2226 0)
(declare-sort var2008 0)
(declare-sort var2272 0)
(declare-sort var1485 0)
(declare-sort var3976 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2226_getAttribute/210607306 (var2226 String) String)
(declare-fun subst/-1514982940 (var3643 String) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/1183289509 (String Int) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var2008_debug/381960894 (String) void)
(declare-fun var1485_currentThread/-1037784612 () var1485)
(declare-fun interrupt/1189171174 (var1485) void)
(declare-fun var2008_error/1978659241 (String var3976) void)
(declare-fun cast-from-var2272-to-var3976 (var2272) var3976)
(declare-const null-var3643 var3643)
(declare-const null-var2226 var2226)
(declare-const null-var2272 var2272)
(declare-const var1759 var3643) ; Statement: r0 := @this: org.apache.log4j.xml.DOMConfigurator 
(assert (not (= var1759 null-var3643)))
(declare-const var1497 var2226) ; Statement: r1 := @parameter0: org.w3c.dom.Element 
(assert (not (= var1497 null-var2226)))
(define-const var3337 String (var2226_getAttribute/210607306 var1497 "class")) ; Statement: $r2 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class") 
(assert true)
(define-const var301 String (subst/-1514982940 var1759 var3337)) ; Statement: r3 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r2) 
(define-const var1381 String String-init) ; Statement: $r4 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1381)) ; Statement: specialinvoke $r4.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1381!1 String)
(assert true)
(define-const var499 String (append/1560614132 var1381!1 "Class name: [")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Class name: [") 
(declare-const var1381!2 String)
(assert (str.prefixof var1381!1 var1381!2))
(assert true)
(define-const var1124 String (append/1560614132 var499 var301)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3) 
(declare-const var499!1 String)
(assert (str.prefixof var499 var499!1))
(assert true)
(define-const var3446 String (append/1183289509 var1124 93)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(93) 
(assert true)
(define-const var2458 String (toString/-222306083 var3446)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var2008_debug/381960894 var2458)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r8) 

(declare-const var2458!1 String)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1895 var2272) ; Statement: $r44 := @caughtexception 
(assert (not (= var1895 null-var2272)))
(define-const var881 Bool false) ; Statement: $z6 = $r44 instanceof java.lang.InterruptedException 
 ; Statement: if $z6 != 0 goto $r45 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert (not (= (ite var881 1 0) 0))) ; Cond: $z6 != 0 
(define-const var2716 var1485 var1485_currentThread/-1037784612) ; Statement: $r45 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert true)
;(assert (interrupt/1189171174 var2716)) ; Statement: virtualinvoke $r45.<java.lang.Thread: void interrupt()>() 

(declare-const var2716!1 var1485)
(assert true) ; Non Conditional
;(assert (var2008_error/1978659241 "Could not create an Appender. Reported error follows." (cast-from-var2272-to-var3976 var1895))) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>("Could not create an Appender. Reported error follows.", $r44) 

(declare-const var2094 String)
(declare-const var1895!1 var2272)
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var2226_getAttribute/210607306=([org.w3c.dom.Element, java.lang.String], java.lang.String), subst/-1514982940=([org.apache.log4j.xml.DOMConfigurator, java.lang.String], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var2008_debug/381960894=([java.lang.String], void), var1485_currentThread/-1037784612=([], java.lang.Thread), interrupt/1189171174=([java.lang.Thread], void), var2008_error/1978659241=([java.lang.String, java.lang.Throwable], void), cast-from-var2272-to-var3976=([java.lang.Exception], java.lang.Throwable)}
; {var3643=org.apache.log4j.xml.DOMConfigurator, var1759=r0, var2226=org.w3c.dom.Element, var1497=r1, var3337=$r2, var301=r3, var1381=$r4, var499=$r5, var1124=$r6, var3446=$r7, var2458=$r8, var2008=org.apache.log4j.helpers.LogLog, var2272=java.lang.Exception, var1895=$r44, var881=$z6, var1485=java.lang.Thread, var2716=$r45, var3976=java.lang.Throwable, var2094="Could not create an Appender. Reported error follows."}
; {org.apache.log4j.xml.DOMConfigurator=var3643, r0=var1759, org.w3c.dom.Element=var2226, r1=var1497, $r2=var3337, r3=var301, $r4=var1381, $r5=var499, $r6=var1124, $r7=var3446, $r8=var2458, org.apache.log4j.helpers.LogLog=var2008, java.lang.Exception=var2272, $r44=var1895, $z6=var881, java.lang.Thread=var1485, $r45=var2716, java.lang.Throwable=var3976, "Could not create an Appender. Reported error follows."=var2094}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.xml.DOMConfigurator;	r1 := @parameter0: org.w3c.dom.Element;	$r2 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class");	r3 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r2);	$r4 = new java.lang.StringBuffer;	specialinvoke $r4.<java.lang.StringBuffer: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Class name: [");	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3);	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(93);	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r8);	$r44 := @caughtexception;	$z6 = $r44 instanceof java.lang.InterruptedException;	if $z6 != 0 goto $r45 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$r45 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	virtualinvoke $r45.<java.lang.Thread: void interrupt()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>("Could not create an Appender. Reported error follows.", $r44);	return null
;block_num 4