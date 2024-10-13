(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2243 0)
(declare-sort var1564 0)
(declare-sort var2513 0)
(declare-sort var611 0)
(declare-sort var2354 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun errorHandler/-1806528418 (var611) var2513)
(declare-fun cast-from-var2243-to-var611 (var2243) var611)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/-1806528418 (var611) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var2513_error/1118629856 (var2513 String var2354 Int) void)
(declare-fun cast-from-var1564-to-var2354 (var1564) var2354)
(declare-const null-var2243 var2243)
(declare-const null-var1564 var1564)
(declare-const var469 var2243) ; Statement: r0 := @this: org.apache.log4j.net.JMSAppender 
(assert (not (= var469 null-var2243)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var936 var1564) ; Statement: $r49 := @caughtexception 
(assert (not (= var936 null-var1564)))
(define-const var1985 var2513 (errorHandler/-1806528418 (cast-from-var2243-to-var611 var469))) ; Statement: $r51 = r0.<org.apache.log4j.net.JMSAppender: org.apache.log4j.spi.ErrorHandler errorHandler> 
(define-const var3582 String String-init) ; Statement: $r73 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3582)) ; Statement: specialinvoke $r73.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3582!1 String)
(assert true)
(define-const var1719 String (append/1560614132 var3582!1 "Error while activating options for appender named [")) ; Statement: $r53 = virtualinvoke $r73.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Error while activating options for appender named [") 
(declare-const var3582!2 String)
(assert (str.prefixof var3582!1 var3582!2))
(define-const var2722 String (name/-1806528418 (cast-from-var2243-to-var611 var469))) ; Statement: $r52 = r0.<org.apache.log4j.net.JMSAppender: java.lang.String name> 
(assert true)
(define-const var3774 String (append/1560614132 var1719 var2722)) ; Statement: $r54 = virtualinvoke $r53.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r52) 
(declare-const var1719!1 String)
(assert (str.prefixof var1719 var1719!1))
(assert true)
(define-const var2962 String (append/1560614132 var3774 "].")) ; Statement: $r55 = virtualinvoke $r54.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].") 
(declare-const var3774!1 String)
(assert (str.prefixof var3774 var3774!1))
(assert true)
(define-const var3452 String (toString/-222306083 var2962)) ; Statement: $r56 = virtualinvoke $r55.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var2513_error/1118629856 var1985 var3452 (cast-from-var1564-to-var2354 var936) 0)) ; Statement: interfaceinvoke $r51.<org.apache.log4j.spi.ErrorHandler: void error(java.lang.String,java.lang.Exception,int)>($r56, $r49, 0) 

(declare-const var1985!1 var2513)
(declare-const var3452!1 String)
(declare-const var936!1 var1564)
(declare-const var1458 Int)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {errorHandler/-1806528418=([org.apache.log4j.AppenderSkeleton], org.apache.log4j.spi.ErrorHandler), cast-from-var2243-to-var611=([org.apache.log4j.net.JMSAppender], org.apache.log4j.AppenderSkeleton), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), name/-1806528418=([org.apache.log4j.AppenderSkeleton], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var2513_error/1118629856=([org.apache.log4j.spi.ErrorHandler, java.lang.String, java.lang.Exception, int], void), cast-from-var1564-to-var2354=([javax.naming.NamingException], java.lang.Exception)}
; {var2243=org.apache.log4j.net.JMSAppender, var469=r0, var1564=javax.naming.NamingException, var936=$r49, var2513=org.apache.log4j.spi.ErrorHandler, var611=org.apache.log4j.AppenderSkeleton, var1985=$r51, var3582=$r73, var1719=$r53, var2722=$r52, var3774=$r54, var2962=$r55, var3452=$r56, var2354=java.lang.Exception, var1458=0}
; {org.apache.log4j.net.JMSAppender=var2243, r0=var469, javax.naming.NamingException=var1564, $r49=var936, org.apache.log4j.spi.ErrorHandler=var2513, org.apache.log4j.AppenderSkeleton=var611, $r51=var1985, $r73=var3582, $r53=var1719, $r52=var2722, $r54=var3774, $r55=var2962, $r56=var3452, java.lang.Exception=var2354, 0=var1458}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.net.JMSAppender;	$r49 := @caughtexception;	$r51 = r0.<org.apache.log4j.net.JMSAppender: org.apache.log4j.spi.ErrorHandler errorHandler>;	$r73 = new java.lang.StringBuffer;	specialinvoke $r73.<java.lang.StringBuffer: void <init>()>();	$r53 = virtualinvoke $r73.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Error while activating options for appender named [");	$r52 = r0.<org.apache.log4j.net.JMSAppender: java.lang.String name>;	$r54 = virtualinvoke $r53.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r52);	$r55 = virtualinvoke $r54.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].");	$r56 = virtualinvoke $r55.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r51.<org.apache.log4j.spi.ErrorHandler: void error(java.lang.String,java.lang.Exception,int)>($r56, $r49, 0);	goto [?= return];	return
;block_num 3