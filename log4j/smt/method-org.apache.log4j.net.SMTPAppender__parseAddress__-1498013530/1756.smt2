(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var312 0)
(declare-sort var2794 0)
(declare-sort var1477 0)
(declare-sort var2457 0)
(declare-sort var993 0)
(declare-sort var3660 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun errorHandler/-1806528418 (var993) var2457)
(declare-fun cast-from-var312-to-var993 (var312) var993)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun cast-from-var1477-to-var3660 (var1477) var3660)
(declare-fun var2457_error/1118629856 (var2457 String var3660 Int) void)
(declare-const null-var312 var312)
(declare-const null-String String)
(declare-const null-var1477 var1477)
(declare-const var391 var312) ; Statement: r3 := @this: org.apache.log4j.net.SMTPAppender 
(assert (not (= var391 null-var312)))
(declare-const var3528 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3528 null-String)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var187 var1477) ; Statement: $r2 := @caughtexception 
(assert (not (= var187 null-var1477)))
(define-const var2370 var2457 (errorHandler/-1806528418 (cast-from-var312-to-var993 var391))) ; Statement: $r5 = r3.<org.apache.log4j.net.SMTPAppender: org.apache.log4j.spi.ErrorHandler errorHandler> 
(define-const var1768 String String-init) ; Statement: $r10 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1768)) ; Statement: specialinvoke $r10.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1768!1 String)
(assert true)
(define-const var3820 String (append/1560614132 var1768!1 "Could not parse address [")) ; Statement: $r6 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Could not parse address [") 
(declare-const var1768!2 String)
(assert (str.prefixof var1768!1 var1768!2))
(assert true)
(define-const var1037 String (append/1560614132 var3820 var3528)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r0) 
(declare-const var3820!1 String)
(assert (str.prefixof var3820 var3820!1))
(assert true)
(define-const var2820 String (append/1560614132 var1037 "].")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].") 
(declare-const var1037!1 String)
(assert (str.prefixof var1037 var1037!1))
(assert true)
(define-const var1433 String (toString/-222306083 var2820)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>() 
(define-const var3340 var3660 (cast-from-var1477-to-var3660 var187)) ; Statement: $r11 = (java.lang.Exception) $r2 
;(assert (var2457_error/1118629856 var2370 var1433 var3340 6)) ; Statement: interfaceinvoke $r5.<org.apache.log4j.spi.ErrorHandler: void error(java.lang.String,java.lang.Exception,int)>($r9, $r11, 6) 

(declare-const var2370!1 var2457)
(declare-const var1433!1 String)
(declare-const var3340!1 var3660)
(declare-const var2172 Int)
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {errorHandler/-1806528418=([org.apache.log4j.AppenderSkeleton], org.apache.log4j.spi.ErrorHandler), cast-from-var312-to-var993=([org.apache.log4j.net.SMTPAppender], org.apache.log4j.AppenderSkeleton), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), cast-from-var1477-to-var3660=([java.lang.Throwable], java.lang.Exception), var2457_error/1118629856=([org.apache.log4j.spi.ErrorHandler, java.lang.String, java.lang.Exception, int], void)}
; {var312=org.apache.log4j.net.SMTPAppender, var391=r3, var3528=r0, var2794=null_type, var1477=java.lang.Throwable, var187=$r2, var2457=org.apache.log4j.spi.ErrorHandler, var993=org.apache.log4j.AppenderSkeleton, var2370=$r5, var1768=$r10, var3820=$r6, var1037=$r7, var2820=$r8, var1433=$r9, var3660=java.lang.Exception, var3340=$r11, var2172=6}
; {org.apache.log4j.net.SMTPAppender=var312, r3=var391, r0=var3528, null_type=var2794, java.lang.Throwable=var1477, $r2=var187, org.apache.log4j.spi.ErrorHandler=var2457, org.apache.log4j.AppenderSkeleton=var993, $r5=var2370, $r10=var1768, $r6=var3820, $r7=var1037, $r8=var2820, $r9=var1433, java.lang.Exception=var3660, $r11=var3340, 6=var2172}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r3 := @this: org.apache.log4j.net.SMTPAppender;	r0 := @parameter0: java.lang.String;	$r2 := @caughtexception;	$r5 = r3.<org.apache.log4j.net.SMTPAppender: org.apache.log4j.spi.ErrorHandler errorHandler>;	$r10 = new java.lang.StringBuffer;	specialinvoke $r10.<java.lang.StringBuffer: void <init>()>();	$r6 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Could not parse address [");	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r0);	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].");	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>();	$r11 = (java.lang.Exception) $r2;	interfaceinvoke $r5.<org.apache.log4j.spi.ErrorHandler: void error(java.lang.String,java.lang.Exception,int)>($r9, $r11, 6);	return null
;block_num 2