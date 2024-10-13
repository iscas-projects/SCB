(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3809 0)
(declare-sort var1604 0)
(declare-sort var3177 0)
(declare-sort var1749 0)
(declare-sort var1000 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun errorHandler/-1806528418 (var1749) var3177)
(declare-fun cast-from-var3809-to-var1749 (var3809) var1749)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/-1806528418 (var1749) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun cast-from-var1604-to-var1000 (var1604) var1000)
(declare-fun var3177_error/1118629856 (var3177 String var1000 Int) void)
(declare-const null-var3809 var3809)
(declare-const null-var1604 var1604)
(declare-const var279 var3809) ; Statement: r0 := @this: org.apache.log4j.net.JMSAppender 
(assert (not (= var279 null-var3809)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var707 var1604) ; Statement: $r57 := @caughtexception 
(assert (not (= var707 null-var1604)))
(define-const var2420 var3177 (errorHandler/-1806528418 (cast-from-var3809-to-var1749 var279))) ; Statement: $r59 = r0.<org.apache.log4j.net.JMSAppender: org.apache.log4j.spi.ErrorHandler errorHandler> 
(define-const var2634 String String-init) ; Statement: $r72 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2634)) ; Statement: specialinvoke $r72.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2634!1 String)
(assert true)
(define-const var900 String (append/1560614132 var2634!1 "Error while activating options for appender named [")) ; Statement: $r61 = virtualinvoke $r72.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Error while activating options for appender named [") 
(declare-const var2634!2 String)
(assert (str.prefixof var2634!1 var2634!2))
(define-const var2782 String (name/-1806528418 (cast-from-var3809-to-var1749 var279))) ; Statement: $r60 = r0.<org.apache.log4j.net.JMSAppender: java.lang.String name> 
(assert true)
(define-const var836 String (append/1560614132 var900 var2782)) ; Statement: $r62 = virtualinvoke $r61.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r60) 
(declare-const var900!1 String)
(assert (str.prefixof var900 var900!1))
(assert true)
(define-const var3274 String (append/1560614132 var836 "].")) ; Statement: $r63 = virtualinvoke $r62.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].") 
(declare-const var836!1 String)
(assert (str.prefixof var836 var836!1))
(assert true)
(define-const var1958 String (toString/-222306083 var3274)) ; Statement: $r64 = virtualinvoke $r63.<java.lang.StringBuffer: java.lang.String toString()>() 
(define-const var1395 var1000 (cast-from-var1604-to-var1000 var707)) ; Statement: $r75 = (java.lang.Exception) $r57 
;(assert (var3177_error/1118629856 var2420 var1958 var1395 0)) ; Statement: interfaceinvoke $r59.<org.apache.log4j.spi.ErrorHandler: void error(java.lang.String,java.lang.Exception,int)>($r64, $r75, 0) 

(declare-const var2420!1 var3177)
(declare-const var1958!1 String)
(declare-const var1395!1 var1000)
(declare-const var3098 Int)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {errorHandler/-1806528418=([org.apache.log4j.AppenderSkeleton], org.apache.log4j.spi.ErrorHandler), cast-from-var3809-to-var1749=([org.apache.log4j.net.JMSAppender], org.apache.log4j.AppenderSkeleton), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), name/-1806528418=([org.apache.log4j.AppenderSkeleton], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String), cast-from-var1604-to-var1000=([java.lang.Throwable], java.lang.Exception), var3177_error/1118629856=([org.apache.log4j.spi.ErrorHandler, java.lang.String, java.lang.Exception, int], void)}
; {var3809=org.apache.log4j.net.JMSAppender, var279=r0, var1604=java.lang.Throwable, var707=$r57, var3177=org.apache.log4j.spi.ErrorHandler, var1749=org.apache.log4j.AppenderSkeleton, var2420=$r59, var2634=$r72, var900=$r61, var2782=$r60, var836=$r62, var3274=$r63, var1958=$r64, var1000=java.lang.Exception, var1395=$r75, var3098=0}
; {org.apache.log4j.net.JMSAppender=var3809, r0=var279, java.lang.Throwable=var1604, $r57=var707, org.apache.log4j.spi.ErrorHandler=var3177, org.apache.log4j.AppenderSkeleton=var1749, $r59=var2420, $r72=var2634, $r61=var900, $r60=var2782, $r62=var836, $r63=var3274, $r64=var1958, java.lang.Exception=var1000, $r75=var1395, 0=var3098}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.net.JMSAppender;	$r57 := @caughtexception;	$r59 = r0.<org.apache.log4j.net.JMSAppender: org.apache.log4j.spi.ErrorHandler errorHandler>;	$r72 = new java.lang.StringBuffer;	specialinvoke $r72.<java.lang.StringBuffer: void <init>()>();	$r61 = virtualinvoke $r72.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Error while activating options for appender named [");	$r60 = r0.<org.apache.log4j.net.JMSAppender: java.lang.String name>;	$r62 = virtualinvoke $r61.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r60);	$r63 = virtualinvoke $r62.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].");	$r64 = virtualinvoke $r63.<java.lang.StringBuffer: java.lang.String toString()>();	$r75 = (java.lang.Exception) $r57;	interfaceinvoke $r59.<org.apache.log4j.spi.ErrorHandler: void error(java.lang.String,java.lang.Exception,int)>($r64, $r75, 0);	goto [?= return];	return
;block_num 3