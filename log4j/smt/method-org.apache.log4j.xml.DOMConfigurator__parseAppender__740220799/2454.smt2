(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1912 0)
(declare-sort var1900 0)
(declare-sort var1023 0)
(declare-sort var1875 0)
(declare-sort var1796 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1900_getAttribute/210607306 (var1900 String) String)
(declare-fun subst/-1514982940 (var1912 String) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/1183289509 (String Int) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var1023_debug/381960894 (String) void)
(declare-fun var1023_error/1978659241 (String var1796) void)
(declare-fun cast-from-var1875-to-var1796 (var1875) var1796)
(declare-const null-var1912 var1912)
(declare-const null-var1900 var1900)
(declare-const null-var1875 var1875)
(declare-const var1262 var1912) ; Statement: r0 := @this: org.apache.log4j.xml.DOMConfigurator 
(assert (not (= var1262 null-var1912)))
(declare-const var3954 var1900) ; Statement: r1 := @parameter0: org.w3c.dom.Element 
(assert (not (= var3954 null-var1900)))
(define-const var866 String (var1900_getAttribute/210607306 var3954 "class")) ; Statement: $r2 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class") 
(assert true)
(define-const var271 String (subst/-1514982940 var1262 var866)) ; Statement: r3 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r2) 
(define-const var2064 String String-init) ; Statement: $r4 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2064)) ; Statement: specialinvoke $r4.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2064!1 String)
(assert true)
(define-const var358 String (append/1560614132 var2064!1 "Class name: [")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Class name: [") 
(declare-const var2064!2 String)
(assert (str.prefixof var2064!1 var2064!2))
(assert true)
(define-const var3029 String (append/1560614132 var358 var271)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3) 
(declare-const var358!1 String)
(assert (str.prefixof var358 var358!1))
(assert true)
(define-const var3261 String (append/1183289509 var3029 93)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(93) 
(assert true)
(define-const var2040 String (toString/-222306083 var3261)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var1023_debug/381960894 var2040)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r8) 

(declare-const var2040!1 String)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1788 var1875) ; Statement: $r44 := @caughtexception 
(assert (not (= var1788 null-var1875)))
(define-const var926 Bool false) ; Statement: $z6 = $r44 instanceof java.lang.InterruptedException 
 ; Statement: if $z6 != 0 goto $r45 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert (not (not (= (ite var926 1 0) 0)))) ; Negate: Cond: $z6 != 0  
(define-const var3421 Bool false) ; Statement: $z7 = $r44 instanceof java.io.InterruptedIOException 
 ; Statement: if $z7 == 0 goto staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>("Could not create an Appender. Reported error follows.", $r44) 
(assert (= (ite var3421 1 0) 0)) ; Cond: $z7 == 0 
;(assert (var1023_error/1978659241 "Could not create an Appender. Reported error follows." (cast-from-var1875-to-var1796 var1788))) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>("Could not create an Appender. Reported error follows.", $r44) 

(declare-const var91 String)
(declare-const var1788!1 var1875)
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var1900_getAttribute/210607306=([org.w3c.dom.Element, java.lang.String], java.lang.String), subst/-1514982940=([org.apache.log4j.xml.DOMConfigurator, java.lang.String], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var1023_debug/381960894=([java.lang.String], void), var1023_error/1978659241=([java.lang.String, java.lang.Throwable], void), cast-from-var1875-to-var1796=([java.lang.Exception], java.lang.Throwable)}
; {var1912=org.apache.log4j.xml.DOMConfigurator, var1262=r0, var1900=org.w3c.dom.Element, var3954=r1, var866=$r2, var271=r3, var2064=$r4, var358=$r5, var3029=$r6, var3261=$r7, var2040=$r8, var1023=org.apache.log4j.helpers.LogLog, var1875=java.lang.Exception, var1788=$r44, var926=$z6, var3421=$z7, var1796=java.lang.Throwable, var91="Could not create an Appender. Reported error follows."}
; {org.apache.log4j.xml.DOMConfigurator=var1912, r0=var1262, org.w3c.dom.Element=var1900, r1=var3954, $r2=var866, r3=var271, $r4=var2064, $r5=var358, $r6=var3029, $r7=var3261, $r8=var2040, org.apache.log4j.helpers.LogLog=var1023, java.lang.Exception=var1875, $r44=var1788, $z6=var926, $z7=var3421, java.lang.Throwable=var1796, "Could not create an Appender. Reported error follows."=var91}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.xml.DOMConfigurator;	r1 := @parameter0: org.w3c.dom.Element;	$r2 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class");	r3 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r2);	$r4 = new java.lang.StringBuffer;	specialinvoke $r4.<java.lang.StringBuffer: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Class name: [");	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3);	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(93);	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r8);	$r44 := @caughtexception;	$z6 = $r44 instanceof java.lang.InterruptedException;	if $z6 != 0 goto $r45 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$z7 = $r44 instanceof java.io.InterruptedIOException;	if $z7 == 0 goto staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>("Could not create an Appender. Reported error follows.", $r44);	staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>("Could not create an Appender. Reported error follows.", $r44);	return null
;block_num 4