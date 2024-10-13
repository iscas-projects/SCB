(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var33 0)
(declare-sort var2463 0)
(declare-sort var2596 0)
(declare-sort var2080 0)
(declare-sort var2559 0)
(declare-sort var799 0)
(declare-sort var1201 0)
(declare-sort var1514 0)
(declare-sort var2844 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun repository/-2147047466 (var33) var2596)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2080_getSystemProperty/16059058 (String String) String)
(declare-fun getException/-1701483742 (var799) var1201)
(declare-fun var1514_debug/634732286 (String var2844) void)
(declare-fun cast-from-var1201-to-var2844 (var1201) var2844)
(declare-const null-var33 var33)
(declare-const null-var2463 var2463)
(declare-const null-var2596 var2596)
(declare-const null-String String)
(declare-const null-var799 var799)
(declare-const var2618 var33) ; Statement: r0 := @this: org.apache.log4j.xml.DOMConfigurator 
(assert (not (= var2618 null-var33)))
(declare-const var924 var2463) ; Statement: r15 := @parameter0: org.apache.log4j.xml.DOMConfigurator$ParseAction 
(assert (not (= var924 null-var2463)))
(declare-const var35 var2596) ; Statement: r1 := @parameter1: org.apache.log4j.spi.LoggerRepository 
(assert (not (= var35 null-var2596)))
(declare-const var2618!1 var33)
(assert (not (= var2618!1 null-var33)))
(assert (= (repository/-2147047466 var2618!1) var35)) ; Statement: r0.<org.apache.log4j.xml.DOMConfigurator: org.apache.log4j.spi.LoggerRepository repository> = r1 
(assert true) ; Non Conditional
(define-const var3916 String String-init) ; Statement: $r2 = new java.lang.StringBuffer 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/-1430969082 var3916)) ; Statement: specialinvoke $r2.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3916!1 String)
(assert true) ; Non Conditional
(assert true)
(define-const var3912 String (append/1560614132 var3916!1 "System property is :")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("System property is :") 
(declare-const var3916!2 String)
(assert (str.prefixof var3916!1 var3916!2))
(assert true) ; Non Conditional
(define-const var1612 String (var2080_getSystemProperty/16059058 "javax.xml.parsers.DocumentBuilderFactory" null-String)) ; Statement: $r3 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.String getSystemProperty(java.lang.String,java.lang.String)>("javax.xml.parsers.DocumentBuilderFactory", null) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2801 var799) ; Statement: $r19 := @caughtexception 
(assert (not (= var2801 null-var799)))
(assert true)
(define-const var1893 var1201 (getException/-1701483742 var2801)) ; Statement: r21 = virtualinvoke $r19.<javax.xml.parsers.FactoryConfigurationError: java.lang.Exception getException()>() 
;(assert (var1514_debug/634732286 "Could not instantiate a DocumentBuilderFactory." (cast-from-var1201-to-var2844 var1893))) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String,java.lang.Throwable)>("Could not instantiate a DocumentBuilderFactory.", r21) 

(declare-const var1076 String)
(declare-const var1893!1 var1201)
 ; Statement: throw $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {repository/-2147047466=([org.apache.log4j.xml.DOMConfigurator], org.apache.log4j.spi.LoggerRepository), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), var2080_getSystemProperty/16059058=([java.lang.String, java.lang.String], java.lang.String), getException/-1701483742=([javax.xml.parsers.FactoryConfigurationError], java.lang.Exception), var1514_debug/634732286=([java.lang.String, java.lang.Throwable], void), cast-from-var1201-to-var2844=([java.lang.Exception], java.lang.Throwable)}
; {var33=org.apache.log4j.xml.DOMConfigurator, var2618=r0, var2463=org.apache.log4j.xml.DOMConfigurator$ParseAction, var924=r15, var2596=org.apache.log4j.spi.LoggerRepository, var35=r1, var3916=$r2, var3912=$r4, var2080=org.apache.log4j.helpers.OptionConverter, var2559=null_type, var1612=$r3, var799=javax.xml.parsers.FactoryConfigurationError, var2801=$r19, var1201=java.lang.Exception, var1893=r21, var1514=org.apache.log4j.helpers.LogLog, var2844=java.lang.Throwable, var1076="Could not instantiate a DocumentBuilderFactory."}
; {org.apache.log4j.xml.DOMConfigurator=var33, r0=var2618, org.apache.log4j.xml.DOMConfigurator$ParseAction=var2463, r15=var924, org.apache.log4j.spi.LoggerRepository=var2596, r1=var35, $r2=var3916, $r4=var3912, org.apache.log4j.helpers.OptionConverter=var2080, null_type=var2559, $r3=var1612, javax.xml.parsers.FactoryConfigurationError=var799, $r19=var2801, java.lang.Exception=var1201, r21=var1893, org.apache.log4j.helpers.LogLog=var1514, java.lang.Throwable=var2844, "Could not instantiate a DocumentBuilderFactory."=var1076}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r0 := @this: org.apache.log4j.xml.DOMConfigurator;	r15 := @parameter0: org.apache.log4j.xml.DOMConfigurator$ParseAction;	r1 := @parameter1: org.apache.log4j.spi.LoggerRepository;	r0.<org.apache.log4j.xml.DOMConfigurator: org.apache.log4j.spi.LoggerRepository repository> = r1;	$r2 = new java.lang.StringBuffer;	specialinvoke $r2.<java.lang.StringBuffer: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("System property is :");	$r3 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.String getSystemProperty(java.lang.String,java.lang.String)>("javax.xml.parsers.DocumentBuilderFactory", null);	$r19 := @caughtexception;	r21 = virtualinvoke $r19.<javax.xml.parsers.FactoryConfigurationError: java.lang.Exception getException()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String,java.lang.Throwable)>("Could not instantiate a DocumentBuilderFactory.", r21);	throw $r19
;block_num 6