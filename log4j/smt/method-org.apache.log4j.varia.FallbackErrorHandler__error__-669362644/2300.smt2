(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3807 0)
(declare-sort var2593 0)
(declare-sort var2333 0)
(declare-sort var3844 0)
(declare-sort var766 0)
(declare-sort var3739 0)
(declare-sort var714 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var766_debug/634732286 (String var3739) void)
(declare-fun cast-from-var2333-to-var3739 (var2333) var3739)
(declare-fun var766_debug/381960894 (String) void)
(declare-fun loggers/-2057649827 (var3807) var714)
(declare-const null-var3807 var3807)
(declare-const null-String String)
(declare-const null-var2333 var2333)
(declare-const null-Int Int)
(declare-const null-var3844 var3844)
(declare-const null-var714 var714)
(declare-const var488 var3807) ; Statement: r6 := @this: org.apache.log4j.varia.FallbackErrorHandler 
(assert (not (= var488 null-var3807)))
(declare-const var1194 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1194 null-String)))
(declare-const var2869 var2333) ; Statement: r0 := @parameter1: java.lang.Exception 
(assert (not (= var2869 null-var2333)))
(declare-const var764 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var764 null-Int)))
(declare-const var1255 var3844) ; Statement: r48 := @parameter3: org.apache.log4j.spi.LoggingEvent 
(assert (not (= var1255 null-var3844)))
(define-const var258 Bool false) ; Statement: $z0 = r0 instanceof java.io.InterruptedIOException 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.StringBuffer 
(assert (= (ite var258 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1282 String String-init) ; Statement: $r1 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1282)) ; Statement: specialinvoke $r1.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1282!1 String)
(assert true)
(define-const var1833 String (append/1560614132 var1282!1 "FB: The following error reported: ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("FB: The following error reported: ") 
(declare-const var1282!2 String)
(assert (str.prefixof var1282!1 var1282!2))
(assert true)
(define-const var891 String (append/1560614132 var1833 var1194)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r2) 
(declare-const var1833!1 String)
(assert (str.prefixof var1833 var1833!1))
(assert true)
(define-const var3346 String (toString/-222306083 var891)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var766_debug/634732286 var3346 (cast-from-var2333-to-var3739 var2869))) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String,java.lang.Throwable)>($r5, r0) 

(declare-const var3346!1 String)
(declare-const var2869!1 var2333)
;(assert (var766_debug/381960894 "FB: INITIATING FALLBACK PROCEDURE.")) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>("FB: INITIATING FALLBACK PROCEDURE.") 

(declare-const var2243 String)
(define-const var2300 var714 (loggers/-2057649827 var488)) ; Statement: $r7 = r6.<org.apache.log4j.varia.FallbackErrorHandler: java.util.Vector loggers> 
 ; Statement: if $r7 == null goto return 
(assert (= var2300 null-var714)) ; Cond: $r7 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var766_debug/634732286=([java.lang.String, java.lang.Throwable], void), cast-from-var2333-to-var3739=([java.lang.Exception], java.lang.Throwable), var766_debug/381960894=([java.lang.String], void), loggers/-2057649827=([org.apache.log4j.varia.FallbackErrorHandler], java.util.Vector)}
; {var3807=org.apache.log4j.varia.FallbackErrorHandler, var488=r6, var1194=r2, var2593=null_type, var2333=java.lang.Exception, var2869=r0, var764=i1, var3844=org.apache.log4j.spi.LoggingEvent, var1255=r48, var258=$z0, var1282=$r1, var1833=$r3, var891=$r4, var3346=$r5, var766=org.apache.log4j.helpers.LogLog, var3739=java.lang.Throwable, var2243="FB: INITIATING FALLBACK PROCEDURE.", var714=java.util.Vector, var2300=$r7}
; {org.apache.log4j.varia.FallbackErrorHandler=var3807, r6=var488, r2=var1194, null_type=var2593, java.lang.Exception=var2333, r0=var2869, i1=var764, org.apache.log4j.spi.LoggingEvent=var3844, r48=var1255, $z0=var258, $r1=var1282, $r3=var1833, $r4=var891, $r5=var3346, org.apache.log4j.helpers.LogLog=var766, java.lang.Throwable=var3739, "FB: INITIATING FALLBACK PROCEDURE."=var2243, java.util.Vector=var714, $r7=var2300}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r6 := @this: org.apache.log4j.varia.FallbackErrorHandler;	r2 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.Exception;	i1 := @parameter2: int;	r48 := @parameter3: org.apache.log4j.spi.LoggingEvent;	$z0 = r0 instanceof java.io.InterruptedIOException;	if $z0 == 0 goto $r1 = new java.lang.StringBuffer;	$r1 = new java.lang.StringBuffer;	specialinvoke $r1.<java.lang.StringBuffer: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("FB: The following error reported: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String,java.lang.Throwable)>($r5, r0);	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>("FB: INITIATING FALLBACK PROCEDURE.");	$r7 = r6.<org.apache.log4j.varia.FallbackErrorHandler: java.util.Vector loggers>;	if $r7 == null goto return;	return
;block_num 3