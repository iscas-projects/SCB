(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var890 0)
(declare-sort var1611 0)
(declare-sort var783 0)
(declare-sort var669 0)
(declare-sort var1699 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun printStackTrace/885456489 (var783) void)
(declare-fun cast-from-var1611-to-var783 (var1611) var783)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var669_usage/-1118954944 (String) void)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun var1699_configure/2083061040 (String) void)
(declare-const null-String String)
(declare-const null-var1611 var1611)
(declare-const var2773 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2773 null-String)))
(declare-const var420 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var420 null-String)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2211 var1611) ; Statement: $r2 := @caughtexception 
(assert (not (= var2211 null-var1611)))
(assert true)
;(assert (printStackTrace/885456489 (cast-from-var1611-to-var783 var2211))) ; Statement: virtualinvoke $r2.<java.lang.NumberFormatException: void printStackTrace()>() 

(declare-const var2211!1 var1611)
(define-const var1519 String String-init) ; Statement: $r3 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1519)) ; Statement: specialinvoke $r3.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1519!1 String)
(assert true)
(define-const var479 String (append/1560614132 var1519!1 "Could not interpret port number [")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Could not interpret port number [") 
(declare-const var1519!2 String)
(assert (str.prefixof var1519!1 var1519!2))
(assert true)
(define-const var3808 String (append/1560614132 var479 var2773)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r0) 
(declare-const var479!1 String)
(assert (str.prefixof var479 var479!1))
(assert true)
(define-const var1488 String (append/1560614132 var3808 "].")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].") 
(declare-const var3808!1 String)
(assert (str.prefixof var3808 var3808!1))
(assert true)
(define-const var3995 String (toString/-222306083 var1488)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var669_usage/-1118954944 var3995)) ; Statement: staticinvoke <org.apache.log4j.net.SimpleSocketServer: void usage(java.lang.String)>($r7) 

(declare-const var3995!1 String)
(assert true) ; Non Conditional
(assert true)
(define-const var1991 Bool (endsWith/985337093 var420 ".xml")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean endsWith(java.lang.String)>(".xml") 
 ; Statement: if $z0 == 0 goto staticinvoke <org.apache.log4j.PropertyConfigurator: void configure(java.lang.String)>(r1) 
(assert (not (= (ite var1991 1 0) 0))) ; Negate: Cond: $z0 == 0  
;(assert (var1699_configure/2083061040 var420)) ; Statement: staticinvoke <org.apache.log4j.xml.DOMConfigurator: void configure(java.lang.String)>(r1) 

(declare-const var420!1 String)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {printStackTrace/885456489=([java.lang.Throwable], void), cast-from-var1611-to-var783=([java.lang.NumberFormatException], java.lang.Throwable), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var669_usage/-1118954944=([java.lang.String], void), endsWith/985337093=([java.lang.String, java.lang.String], boolean), var1699_configure/2083061040=([java.lang.String], void)}
; {var2773=r0, var890=null_type, var420=r1, var1611=java.lang.NumberFormatException, var2211=$r2, var783=java.lang.Throwable, var1519=$r3, var479=$r4, var3808=$r5, var1488=$r6, var3995=$r7, var669=org.apache.log4j.net.SimpleSocketServer, var1991=$z0, var1699=org.apache.log4j.xml.DOMConfigurator}
; {r0=var2773, null_type=var890, r1=var420, java.lang.NumberFormatException=var1611, $r2=var2211, java.lang.Throwable=var783, $r3=var1519, $r4=var479, $r5=var3808, $r6=var1488, $r7=var3995, org.apache.log4j.net.SimpleSocketServer=var669, $z0=var1991, org.apache.log4j.xml.DOMConfigurator=var1699}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1,"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$r2 := @caughtexception;	virtualinvoke $r2.<java.lang.NumberFormatException: void printStackTrace()>();	$r3 = new java.lang.StringBuffer;	specialinvoke $r3.<java.lang.StringBuffer: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Could not interpret port number [");	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].");	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.net.SimpleSocketServer: void usage(java.lang.String)>($r7);	$z0 = virtualinvoke r1.<java.lang.String: boolean endsWith(java.lang.String)>(".xml");	if $z0 == 0 goto staticinvoke <org.apache.log4j.PropertyConfigurator: void configure(java.lang.String)>(r1);	staticinvoke <org.apache.log4j.xml.DOMConfigurator: void configure(java.lang.String)>(r1);	goto [?= return];	return
;block_num 5