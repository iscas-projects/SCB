(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1850 0)
(declare-sort var3323 0)
(declare-sort var1551 0)
(declare-sort var2902 0)
(declare-sort var3922 0)
(declare-sort var3459 0)
(declare-sort var3888 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun repository/-2147047466 (var1850) var1551)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun getException/-1701483742 (var2902) var3922)
(declare-fun var3459_debug/634732286 (String var3888) void)
(declare-fun cast-from-var3922-to-var3888 (var3922) var3888)
(declare-const null-var1850 var1850)
(declare-const null-var3323 var3323)
(declare-const null-var1551 var1551)
(declare-const null-var2902 var2902)
(declare-const var3564 var1850) ; Statement: r0 := @this: org.apache.log4j.xml.DOMConfigurator 
(assert (not (= var3564 null-var1850)))
(declare-const var3675 var3323) ; Statement: r15 := @parameter0: org.apache.log4j.xml.DOMConfigurator$ParseAction 
(assert (not (= var3675 null-var3323)))
(declare-const var573 var1551) ; Statement: r1 := @parameter1: org.apache.log4j.spi.LoggerRepository 
(assert (not (= var573 null-var1551)))
(declare-const var3564!1 var1850)
(assert (not (= var3564!1 null-var1850)))
(assert (= (repository/-2147047466 var3564!1) var573)) ; Statement: r0.<org.apache.log4j.xml.DOMConfigurator: org.apache.log4j.spi.LoggerRepository repository> = r1 
(assert true) ; Non Conditional
(define-const var80 String String-init) ; Statement: $r2 = new java.lang.StringBuffer 
(assert true) ; Non Conditional
(assert true)
;(assert (<init>/-1430969082 var80)) ; Statement: specialinvoke $r2.<java.lang.StringBuffer: void <init>()>() 

(declare-const var80!1 String)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1557 var2902) ; Statement: $r19 := @caughtexception 
(assert (not (= var1557 null-var2902)))
(assert true)
(define-const var2036 var3922 (getException/-1701483742 var1557)) ; Statement: r21 = virtualinvoke $r19.<javax.xml.parsers.FactoryConfigurationError: java.lang.Exception getException()>() 
;(assert (var3459_debug/634732286 "Could not instantiate a DocumentBuilderFactory." (cast-from-var3922-to-var3888 var2036))) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String,java.lang.Throwable)>("Could not instantiate a DocumentBuilderFactory.", r21) 

(declare-const var3305 String)
(declare-const var2036!1 var3922)
 ; Statement: throw $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {repository/-2147047466=([org.apache.log4j.xml.DOMConfigurator], org.apache.log4j.spi.LoggerRepository), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), getException/-1701483742=([javax.xml.parsers.FactoryConfigurationError], java.lang.Exception), var3459_debug/634732286=([java.lang.String, java.lang.Throwable], void), cast-from-var3922-to-var3888=([java.lang.Exception], java.lang.Throwable)}
; {var1850=org.apache.log4j.xml.DOMConfigurator, var3564=r0, var3323=org.apache.log4j.xml.DOMConfigurator$ParseAction, var3675=r15, var1551=org.apache.log4j.spi.LoggerRepository, var573=r1, var80=$r2, var2902=javax.xml.parsers.FactoryConfigurationError, var1557=$r19, var3922=java.lang.Exception, var2036=r21, var3459=org.apache.log4j.helpers.LogLog, var3888=java.lang.Throwable, var3305="Could not instantiate a DocumentBuilderFactory."}
; {org.apache.log4j.xml.DOMConfigurator=var1850, r0=var3564, org.apache.log4j.xml.DOMConfigurator$ParseAction=var3323, r15=var3675, org.apache.log4j.spi.LoggerRepository=var1551, r1=var573, $r2=var80, javax.xml.parsers.FactoryConfigurationError=var2902, $r19=var1557, java.lang.Exception=var3922, r21=var2036, org.apache.log4j.helpers.LogLog=var3459, java.lang.Throwable=var3888, "Could not instantiate a DocumentBuilderFactory."=var3305}
;seq <java.lang.StringBuffer: void <init>()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1}
;stmts r0 := @this: org.apache.log4j.xml.DOMConfigurator;	r15 := @parameter0: org.apache.log4j.xml.DOMConfigurator$ParseAction;	r1 := @parameter1: org.apache.log4j.spi.LoggerRepository;	r0.<org.apache.log4j.xml.DOMConfigurator: org.apache.log4j.spi.LoggerRepository repository> = r1;	$r2 = new java.lang.StringBuffer;	specialinvoke $r2.<java.lang.StringBuffer: void <init>()>();	$r19 := @caughtexception;	r21 = virtualinvoke $r19.<javax.xml.parsers.FactoryConfigurationError: java.lang.Exception getException()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String,java.lang.Throwable)>("Could not instantiate a DocumentBuilderFactory.", r21);	throw $r19
;block_num 4