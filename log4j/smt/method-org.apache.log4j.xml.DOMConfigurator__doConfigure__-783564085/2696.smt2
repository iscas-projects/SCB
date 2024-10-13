(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var680 0)
(declare-sort var641 0)
(declare-sort var2462 0)
(declare-sort var2999 0)
(declare-sort var954 0)
(declare-sort var3971 0)
(declare-sort var1673 0)
(declare-sort var848 0)
(declare-sort var1407 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun repository/-2147047466 (var680) var2462)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2999_getSystemProperty/16059058 (String String) String)
(declare-fun getException/-1701483742 (var3971) var1673)
(declare-fun var848_debug/634732286 (String var1407) void)
(declare-fun cast-from-var1673-to-var1407 (var1673) var1407)
(declare-const null-var680 var680)
(declare-const null-var641 var641)
(declare-const null-var2462 var2462)
(declare-const null-String String)
(declare-const null-var3971 var3971)
(declare-const var1064 var680) ; Statement: r0 := @this: org.apache.log4j.xml.DOMConfigurator 
(assert (not (= var1064 null-var680)))
(declare-const var1750 var641) ; Statement: r15 := @parameter0: org.apache.log4j.xml.DOMConfigurator$ParseAction 
(assert (not (= var1750 null-var641)))
(declare-const var2922 var2462) ; Statement: r1 := @parameter1: org.apache.log4j.spi.LoggerRepository 
(assert (not (= var2922 null-var2462)))
(declare-const var1064!1 var680)
(assert (not (= var1064!1 null-var680)))
(assert (= (repository/-2147047466 var1064!1) var2922)) ; Statement: r0.<org.apache.log4j.xml.DOMConfigurator: org.apache.log4j.spi.LoggerRepository repository> = r1 
(assert true) ; Non Conditional
(define-const var2030 String String-init) ; Statement: $r2 = new java.lang.StringBuffer 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/-1430969082 var2030)) ; Statement: specialinvoke $r2.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2030!1 String)
(assert true) ; Non Conditional
(assert true)
(define-const var1259 String (append/1560614132 var2030!1 "System property is :")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("System property is :") 
(declare-const var2030!2 String)
(assert (str.prefixof var2030!1 var2030!2))
(assert true) ; Non Conditional
(define-const var3654 String (var2999_getSystemProperty/16059058 "javax.xml.parsers.DocumentBuilderFactory" null-String)) ; Statement: $r3 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.String getSystemProperty(java.lang.String,java.lang.String)>("javax.xml.parsers.DocumentBuilderFactory", null) 
(assert true) ; Non Conditional
(assert true)
(define-const var2076 String (append/1560614132 var1259 var3654)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3) 
(declare-const var1259!1 String)
(assert (str.prefixof var1259 var1259!1))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var826 var3971) ; Statement: $r19 := @caughtexception 
(assert (not (= var826 null-var3971)))
(assert true)
(define-const var12 var1673 (getException/-1701483742 var826)) ; Statement: r21 = virtualinvoke $r19.<javax.xml.parsers.FactoryConfigurationError: java.lang.Exception getException()>() 
;(assert (var848_debug/634732286 "Could not instantiate a DocumentBuilderFactory." (cast-from-var1673-to-var1407 var12))) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String,java.lang.Throwable)>("Could not instantiate a DocumentBuilderFactory.", r21) 

(declare-const var3321 String)
(declare-const var12!1 var1673)
 ; Statement: throw $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {repository/-2147047466=([org.apache.log4j.xml.DOMConfigurator], org.apache.log4j.spi.LoggerRepository), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), var2999_getSystemProperty/16059058=([java.lang.String, java.lang.String], java.lang.String), getException/-1701483742=([javax.xml.parsers.FactoryConfigurationError], java.lang.Exception), var848_debug/634732286=([java.lang.String, java.lang.Throwable], void), cast-from-var1673-to-var1407=([java.lang.Exception], java.lang.Throwable)}
; {var680=org.apache.log4j.xml.DOMConfigurator, var1064=r0, var641=org.apache.log4j.xml.DOMConfigurator$ParseAction, var1750=r15, var2462=org.apache.log4j.spi.LoggerRepository, var2922=r1, var2030=$r2, var1259=$r4, var2999=org.apache.log4j.helpers.OptionConverter, var954=null_type, var3654=$r3, var2076=$r5, var3971=javax.xml.parsers.FactoryConfigurationError, var826=$r19, var1673=java.lang.Exception, var12=r21, var848=org.apache.log4j.helpers.LogLog, var1407=java.lang.Throwable, var3321="Could not instantiate a DocumentBuilderFactory."}
; {org.apache.log4j.xml.DOMConfigurator=var680, r0=var1064, org.apache.log4j.xml.DOMConfigurator$ParseAction=var641, r15=var1750, org.apache.log4j.spi.LoggerRepository=var2462, r1=var2922, $r2=var2030, $r4=var1259, org.apache.log4j.helpers.OptionConverter=var2999, null_type=var954, $r3=var3654, $r5=var2076, javax.xml.parsers.FactoryConfigurationError=var3971, $r19=var826, java.lang.Exception=var1673, r21=var12, org.apache.log4j.helpers.LogLog=var848, java.lang.Throwable=var1407, "Could not instantiate a DocumentBuilderFactory."=var3321}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2}
;stmts r0 := @this: org.apache.log4j.xml.DOMConfigurator;	r15 := @parameter0: org.apache.log4j.xml.DOMConfigurator$ParseAction;	r1 := @parameter1: org.apache.log4j.spi.LoggerRepository;	r0.<org.apache.log4j.xml.DOMConfigurator: org.apache.log4j.spi.LoggerRepository repository> = r1;	$r2 = new java.lang.StringBuffer;	specialinvoke $r2.<java.lang.StringBuffer: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("System property is :");	$r3 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.String getSystemProperty(java.lang.String,java.lang.String)>("javax.xml.parsers.DocumentBuilderFactory", null);	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3);	$r19 := @caughtexception;	r21 = virtualinvoke $r19.<javax.xml.parsers.FactoryConfigurationError: java.lang.Exception getException()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String,java.lang.Throwable)>("Could not instantiate a DocumentBuilderFactory.", r21);	throw $r19
;block_num 7