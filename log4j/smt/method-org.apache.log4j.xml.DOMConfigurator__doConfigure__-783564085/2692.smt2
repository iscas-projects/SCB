(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2763 0)
(declare-sort var3898 0)
(declare-sort var382 0)
(declare-sort var2529 0)
(declare-sort var422 0)
(declare-sort var782 0)
(declare-sort var1350 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun repository/-2147047466 (var2763) var382)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getException/-1701483742 (var2529) var422)
(declare-fun var782_debug/634732286 (String var1350) void)
(declare-fun cast-from-var422-to-var1350 (var422) var1350)
(declare-const null-var2763 var2763)
(declare-const null-var3898 var3898)
(declare-const null-var382 var382)
(declare-const null-var2529 var2529)
(declare-const var1411 var2763) ; Statement: r0 := @this: org.apache.log4j.xml.DOMConfigurator 
(assert (not (= var1411 null-var2763)))
(declare-const var2962 var3898) ; Statement: r15 := @parameter0: org.apache.log4j.xml.DOMConfigurator$ParseAction 
(assert (not (= var2962 null-var3898)))
(declare-const var1689 var382) ; Statement: r1 := @parameter1: org.apache.log4j.spi.LoggerRepository 
(assert (not (= var1689 null-var382)))
(declare-const var1411!1 var2763)
(assert (not (= var1411!1 null-var2763)))
(assert (= (repository/-2147047466 var1411!1) var1689)) ; Statement: r0.<org.apache.log4j.xml.DOMConfigurator: org.apache.log4j.spi.LoggerRepository repository> = r1 
(assert true) ; Non Conditional
(define-const var3464 String String-init) ; Statement: $r2 = new java.lang.StringBuffer 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/-1430969082 var3464)) ; Statement: specialinvoke $r2.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3464!1 String)
(assert true) ; Non Conditional
(assert true)
(define-const var3119 String (append/1560614132 var3464!1 "System property is :")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("System property is :") 
(declare-const var3464!2 String)
(assert (str.prefixof var3464!1 var3464!2))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var416 var2529) ; Statement: $r19 := @caughtexception 
(assert (not (= var416 null-var2529)))
(assert true)
(define-const var3215 var422 (getException/-1701483742 var416)) ; Statement: r21 = virtualinvoke $r19.<javax.xml.parsers.FactoryConfigurationError: java.lang.Exception getException()>() 
;(assert (var782_debug/634732286 "Could not instantiate a DocumentBuilderFactory." (cast-from-var422-to-var1350 var3215))) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String,java.lang.Throwable)>("Could not instantiate a DocumentBuilderFactory.", r21) 

(declare-const var546 String)
(declare-const var3215!1 var422)
 ; Statement: throw $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {repository/-2147047466=([org.apache.log4j.xml.DOMConfigurator], org.apache.log4j.spi.LoggerRepository), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), getException/-1701483742=([javax.xml.parsers.FactoryConfigurationError], java.lang.Exception), var782_debug/634732286=([java.lang.String, java.lang.Throwable], void), cast-from-var422-to-var1350=([java.lang.Exception], java.lang.Throwable)}
; {var2763=org.apache.log4j.xml.DOMConfigurator, var1411=r0, var3898=org.apache.log4j.xml.DOMConfigurator$ParseAction, var2962=r15, var382=org.apache.log4j.spi.LoggerRepository, var1689=r1, var3464=$r2, var3119=$r4, var2529=javax.xml.parsers.FactoryConfigurationError, var416=$r19, var422=java.lang.Exception, var3215=r21, var782=org.apache.log4j.helpers.LogLog, var1350=java.lang.Throwable, var546="Could not instantiate a DocumentBuilderFactory."}
; {org.apache.log4j.xml.DOMConfigurator=var2763, r0=var1411, org.apache.log4j.xml.DOMConfigurator$ParseAction=var3898, r15=var2962, org.apache.log4j.spi.LoggerRepository=var382, r1=var1689, $r2=var3464, $r4=var3119, javax.xml.parsers.FactoryConfigurationError=var2529, $r19=var416, java.lang.Exception=var422, r21=var3215, org.apache.log4j.helpers.LogLog=var782, java.lang.Throwable=var1350, "Could not instantiate a DocumentBuilderFactory."=var546}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r0 := @this: org.apache.log4j.xml.DOMConfigurator;	r15 := @parameter0: org.apache.log4j.xml.DOMConfigurator$ParseAction;	r1 := @parameter1: org.apache.log4j.spi.LoggerRepository;	r0.<org.apache.log4j.xml.DOMConfigurator: org.apache.log4j.spi.LoggerRepository repository> = r1;	$r2 = new java.lang.StringBuffer;	specialinvoke $r2.<java.lang.StringBuffer: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("System property is :");	$r19 := @caughtexception;	r21 = virtualinvoke $r19.<javax.xml.parsers.FactoryConfigurationError: java.lang.Exception getException()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String,java.lang.Throwable)>("Could not instantiate a DocumentBuilderFactory.", r21);	throw $r19
;block_num 5