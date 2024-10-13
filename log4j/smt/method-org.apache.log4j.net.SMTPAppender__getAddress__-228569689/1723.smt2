(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var792 0)
(declare-sort var3710 0)
(declare-sort var3878 0)
(declare-sort var2485 0)
(declare-sort var626 0)
(declare-sort var28 0)
(declare-sort var737 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3878-init () var3878)
(declare-fun errorHandler/-1806528418 (var28) var626)
(declare-fun cast-from-var792-to-var28 (var792) var28)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun cast-from-var2485-to-var737 (var2485) var737)
(declare-fun var626_error/1118629856 (var626 String var737 Int) void)
(declare-const null-var792 var792)
(declare-const null-String String)
(declare-const null-var2485 var2485)
(declare-const var3568 var792) ; Statement: r3 := @this: org.apache.log4j.net.SMTPAppender 
(assert (not (= var3568 null-var792)))
(declare-const var575 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var575 null-String)))
(define-const var3663 var3878 var3878-init) ; Statement: $r10 = new javax.mail.internet.InternetAddress 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2895 var2485) ; Statement: $r2 := @caughtexception 
(assert (not (= var2895 null-var2485)))
(define-const var1453 var626 (errorHandler/-1806528418 (cast-from-var792-to-var28 var3568))) ; Statement: $r5 = r3.<org.apache.log4j.net.SMTPAppender: org.apache.log4j.spi.ErrorHandler errorHandler> 
(define-const var1390 String String-init) ; Statement: $r11 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1390)) ; Statement: specialinvoke $r11.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1390!1 String)
(assert true)
(define-const var662 String (append/1560614132 var1390!1 "Could not parse address [")) ; Statement: $r6 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Could not parse address [") 
(declare-const var1390!2 String)
(assert (str.prefixof var1390!1 var1390!2))
(assert true)
(define-const var249 String (append/1560614132 var662 var575)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1) 
(declare-const var662!1 String)
(assert (str.prefixof var662 var662!1))
(assert true)
(define-const var823 String (append/1560614132 var249 "].")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].") 
(declare-const var249!1 String)
(assert (str.prefixof var249 var249!1))
(assert true)
(define-const var910 String (toString/-222306083 var823)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>() 
(define-const var2638 var737 (cast-from-var2485-to-var737 var2895)) ; Statement: $r12 = (java.lang.Exception) $r2 
;(assert (var626_error/1118629856 var1453 var910 var2638 6)) ; Statement: interfaceinvoke $r5.<org.apache.log4j.spi.ErrorHandler: void error(java.lang.String,java.lang.Exception,int)>($r9, $r12, 6) 

(declare-const var1453!1 var626)
(declare-const var910!1 String)
(declare-const var2638!1 var737)
(declare-const var2506 Int)
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var3878-init=([], javax.mail.internet.InternetAddress), errorHandler/-1806528418=([org.apache.log4j.AppenderSkeleton], org.apache.log4j.spi.ErrorHandler), cast-from-var792-to-var28=([org.apache.log4j.net.SMTPAppender], org.apache.log4j.AppenderSkeleton), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), cast-from-var2485-to-var737=([java.lang.Throwable], java.lang.Exception), var626_error/1118629856=([org.apache.log4j.spi.ErrorHandler, java.lang.String, java.lang.Exception, int], void)}
; {var792=org.apache.log4j.net.SMTPAppender, var3568=r3, var575=r1, var3710=null_type, var3878=javax.mail.internet.InternetAddress, var3663=$r10, var2485=java.lang.Throwable, var2895=$r2, var626=org.apache.log4j.spi.ErrorHandler, var28=org.apache.log4j.AppenderSkeleton, var1453=$r5, var1390=$r11, var662=$r6, var249=$r7, var823=$r8, var910=$r9, var737=java.lang.Exception, var2638=$r12, var2506=6}
; {org.apache.log4j.net.SMTPAppender=var792, r3=var3568, r1=var575, null_type=var3710, javax.mail.internet.InternetAddress=var3878, $r10=var3663, java.lang.Throwable=var2485, $r2=var2895, org.apache.log4j.spi.ErrorHandler=var626, org.apache.log4j.AppenderSkeleton=var28, $r5=var1453, $r11=var1390, $r6=var662, $r7=var249, $r8=var823, $r9=var910, java.lang.Exception=var737, $r12=var2638, 6=var2506}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r3 := @this: org.apache.log4j.net.SMTPAppender;	r1 := @parameter0: java.lang.String;	$r10 = new javax.mail.internet.InternetAddress;	$r2 := @caughtexception;	$r5 = r3.<org.apache.log4j.net.SMTPAppender: org.apache.log4j.spi.ErrorHandler errorHandler>;	$r11 = new java.lang.StringBuffer;	specialinvoke $r11.<java.lang.StringBuffer: void <init>()>();	$r6 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Could not parse address [");	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1);	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].");	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>();	$r12 = (java.lang.Exception) $r2;	interfaceinvoke $r5.<org.apache.log4j.spi.ErrorHandler: void error(java.lang.String,java.lang.Exception,int)>($r9, $r12, 6);	return null
;block_num 2