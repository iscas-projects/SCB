(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2645 0)
(declare-sort var3198 0)
(declare-sort var1917 0)
(declare-sort var2361 0)
(declare-sort var185 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun topicConnection/1862363964 (var2645) var1917)
(declare-fun errorHandler/-1806528418 (var185) var2361)
(declare-fun cast-from-var2645-to-var185 (var2645) var185)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/-1806528418 (var185) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var2361_error/-2056786738 (var2361 String) void)
(declare-const null-var2645 var2645)
(declare-const null-String String)
(declare-const null-var1917 var1917)
(declare-const var1305 var2645) ; Statement: r0 := @this: org.apache.log4j.net.JMSAppender 
(assert (not (= var1305 null-var2645)))
(define-const var1554 String null-String) ; Statement: r12 = null 
(define-const var553 String null-String) ; Statement: r14 = null 
(define-const var3808 String null-String) ; Statement: r13 = null 
(define-const var534 var1917 (topicConnection/1862363964 var1305)) ; Statement: $r1 = r0.<org.apache.log4j.net.JMSAppender: javax.jms.TopicConnection topicConnection> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.apache.log4j.net.JMSAppender: javax.jms.TopicSession topicSession> 
(assert (not (not (= var534 null-var1917)))) ; Negate: Cond: $r1 != null  
(define-const var1554!1 String "No TopicConnection") ; Statement: r12 = "No TopicConnection" 
(define-const var553!1 String "No TopicConnection") ; Statement: r14 = "No TopicConnection" 
(define-const var3808!1 String "No TopicConnection") ; Statement: r13 = "No TopicConnection" 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r13 == null goto return 1 
(assert (not (= var3808!1 null-String))) ; Negate: Cond: r13 == null  
(define-const var421 var2361 (errorHandler/-1806528418 (cast-from-var2645-to-var185 var1305))) ; Statement: $r5 = r0.<org.apache.log4j.net.JMSAppender: org.apache.log4j.spi.ErrorHandler errorHandler> 
(define-const var2665 String String-init) ; Statement: $r4 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2665)) ; Statement: specialinvoke $r4.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2665!1 String)
(assert true)
(define-const var1354 String (append/1560614132 var2665!1 var553!1)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r14) 
(declare-const var2665!2 String)
(assert (str.prefixof var2665!1 var2665!2))
(assert true)
(define-const var1792 String (append/1560614132 var1354 " for JMSAppender named [")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" for JMSAppender named [") 
(declare-const var1354!1 String)
(assert (str.prefixof var1354 var1354!1))
(define-const var1099 String (name/-1806528418 (cast-from-var2645-to-var185 var1305))) ; Statement: $r7 = r0.<org.apache.log4j.net.JMSAppender: java.lang.String name> 
(assert true)
(define-const var2975 String (append/1560614132 var1792 var1099)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r7) 
(declare-const var1792!1 String)
(assert (str.prefixof var1792 var1792!1))
(assert true)
(define-const var416 String (append/1560614132 var2975 "].")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].") 
(declare-const var2975!1 String)
(assert (str.prefixof var2975 var2975!1))
(assert true)
(define-const var706 String (toString/-222306083 var416)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var2361_error/-2056786738 var421 var706)) ; Statement: interfaceinvoke $r5.<org.apache.log4j.spi.ErrorHandler: void error(java.lang.String)>($r11) 

(declare-const var421!1 var2361)
(declare-const var706!1 String)
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {topicConnection/1862363964=([org.apache.log4j.net.JMSAppender], javax.jms.TopicConnection), errorHandler/-1806528418=([org.apache.log4j.AppenderSkeleton], org.apache.log4j.spi.ErrorHandler), cast-from-var2645-to-var185=([org.apache.log4j.net.JMSAppender], org.apache.log4j.AppenderSkeleton), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), name/-1806528418=([org.apache.log4j.AppenderSkeleton], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var2361_error/-2056786738=([org.apache.log4j.spi.ErrorHandler, java.lang.String], void)}
; {var2645=org.apache.log4j.net.JMSAppender, var1305=r0, var3198=null_type, var1554=r12, var553=r14, var3808=r13, var1917=javax.jms.TopicConnection, var534=$r1, var2361=org.apache.log4j.spi.ErrorHandler, var185=org.apache.log4j.AppenderSkeleton, var421=$r5, var2665=$r4, var1354=$r6, var1792=$r8, var1099=$r7, var2975=$r9, var416=$r10, var706=$r11}
; {org.apache.log4j.net.JMSAppender=var2645, r0=var1305, null_type=var3198, r12=var1554, r14=var553, r13=var3808, javax.jms.TopicConnection=var1917, $r1=var534, org.apache.log4j.spi.ErrorHandler=var2361, org.apache.log4j.AppenderSkeleton=var185, $r5=var421, $r4=var2665, $r6=var1354, $r8=var1792, $r7=var1099, $r9=var2975, $r10=var416, $r11=var706}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 4,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.net.JMSAppender;	r12 = null;	r14 = null;	r13 = null;	$r1 = r0.<org.apache.log4j.net.JMSAppender: javax.jms.TopicConnection topicConnection>;	if $r1 != null goto $r2 = r0.<org.apache.log4j.net.JMSAppender: javax.jms.TopicSession topicSession>;	r12 = "No TopicConnection";	r14 = "No TopicConnection";	r13 = "No TopicConnection";	goto [?= (branch)];	if r13 == null goto return 1;	$r5 = r0.<org.apache.log4j.net.JMSAppender: org.apache.log4j.spi.ErrorHandler errorHandler>;	$r4 = new java.lang.StringBuffer;	specialinvoke $r4.<java.lang.StringBuffer: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r14);	$r8 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" for JMSAppender named [");	$r7 = r0.<org.apache.log4j.net.JMSAppender: java.lang.String name>;	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].");	$r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r5.<org.apache.log4j.spi.ErrorHandler: void error(java.lang.String)>($r11);	return 0
;block_num 4