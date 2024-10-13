(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2059 0)
(declare-sort var1495 0)
(declare-sort var2955 0)
(declare-sort var567 0)
(declare-sort var278 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun errorHandler/-1806528418 (var567) var2955)
(declare-fun cast-from-var2059-to-var567 (var2059) var567)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/-1806528418 (var567) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var2955_error/1118629856 (var2955 String var278 Int) void)
(declare-fun cast-from-var1495-to-var278 (var1495) var278)
(declare-const null-var2059 var2059)
(declare-const null-var1495 var1495)
(declare-const var763 var2059) ; Statement: r0 := @this: org.apache.log4j.net.JMSAppender 
(assert (not (= var763 null-var2059)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1699 var1495) ; Statement: $r41 := @caughtexception 
(assert (not (= var1699 null-var1495)))
(define-const var3268 var2955 (errorHandler/-1806528418 (cast-from-var2059-to-var567 var763))) ; Statement: $r43 = r0.<org.apache.log4j.net.JMSAppender: org.apache.log4j.spi.ErrorHandler errorHandler> 
(define-const var1583 String String-init) ; Statement: $r74 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1583)) ; Statement: specialinvoke $r74.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1583!1 String)
(assert true)
(define-const var177 String (append/1560614132 var1583!1 "Error while activating options for appender named [")) ; Statement: $r45 = virtualinvoke $r74.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Error while activating options for appender named [") 
(declare-const var1583!2 String)
(assert (str.prefixof var1583!1 var1583!2))
(define-const var2381 String (name/-1806528418 (cast-from-var2059-to-var567 var763))) ; Statement: $r44 = r0.<org.apache.log4j.net.JMSAppender: java.lang.String name> 
(assert true)
(define-const var3569 String (append/1560614132 var177 var2381)) ; Statement: $r46 = virtualinvoke $r45.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r44) 
(declare-const var177!1 String)
(assert (str.prefixof var177 var177!1))
(assert true)
(define-const var681 String (append/1560614132 var3569 "].")) ; Statement: $r47 = virtualinvoke $r46.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].") 
(declare-const var3569!1 String)
(assert (str.prefixof var3569 var3569!1))
(assert true)
(define-const var605 String (toString/-222306083 var681)) ; Statement: $r48 = virtualinvoke $r47.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var2955_error/1118629856 var3268 var605 (cast-from-var1495-to-var278 var1699) 0)) ; Statement: interfaceinvoke $r43.<org.apache.log4j.spi.ErrorHandler: void error(java.lang.String,java.lang.Exception,int)>($r48, $r41, 0) 

(declare-const var3268!1 var2955)
(declare-const var605!1 String)
(declare-const var1699!1 var1495)
(declare-const var1792 Int)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {errorHandler/-1806528418=([org.apache.log4j.AppenderSkeleton], org.apache.log4j.spi.ErrorHandler), cast-from-var2059-to-var567=([org.apache.log4j.net.JMSAppender], org.apache.log4j.AppenderSkeleton), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), name/-1806528418=([org.apache.log4j.AppenderSkeleton], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var2955_error/1118629856=([org.apache.log4j.spi.ErrorHandler, java.lang.String, java.lang.Exception, int], void), cast-from-var1495-to-var278=([java.lang.RuntimeException], java.lang.Exception)}
; {var2059=org.apache.log4j.net.JMSAppender, var763=r0, var1495=java.lang.RuntimeException, var1699=$r41, var2955=org.apache.log4j.spi.ErrorHandler, var567=org.apache.log4j.AppenderSkeleton, var3268=$r43, var1583=$r74, var177=$r45, var2381=$r44, var3569=$r46, var681=$r47, var605=$r48, var278=java.lang.Exception, var1792=0}
; {org.apache.log4j.net.JMSAppender=var2059, r0=var763, java.lang.RuntimeException=var1495, $r41=var1699, org.apache.log4j.spi.ErrorHandler=var2955, org.apache.log4j.AppenderSkeleton=var567, $r43=var3268, $r74=var1583, $r45=var177, $r44=var2381, $r46=var3569, $r47=var681, $r48=var605, java.lang.Exception=var278, 0=var1792}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.net.JMSAppender;	$r41 := @caughtexception;	$r43 = r0.<org.apache.log4j.net.JMSAppender: org.apache.log4j.spi.ErrorHandler errorHandler>;	$r74 = new java.lang.StringBuffer;	specialinvoke $r74.<java.lang.StringBuffer: void <init>()>();	$r45 = virtualinvoke $r74.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Error while activating options for appender named [");	$r44 = r0.<org.apache.log4j.net.JMSAppender: java.lang.String name>;	$r46 = virtualinvoke $r45.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r44);	$r47 = virtualinvoke $r46.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].");	$r48 = virtualinvoke $r47.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r43.<org.apache.log4j.spi.ErrorHandler: void error(java.lang.String,java.lang.Exception,int)>($r48, $r41, 0);	return
;block_num 3