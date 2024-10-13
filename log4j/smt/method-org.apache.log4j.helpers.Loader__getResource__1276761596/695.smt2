(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3492 0)
(declare-sort var1274 0)
(declare-sort var3046 0)
(declare-sort var2973 0)
(declare-sort var2547 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3046_warn/-1468683859 (String var1274) void)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var3046_debug/381960894 (String) void)
(declare-fun var2547_getSystemResource/-1406971492 (String) var2973)
(declare-const null-String String)
(declare-const null-var1274 var1274)
(declare-const var1161 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1161 null-String)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var878 var1274) ; Statement: $r16 := @caughtexception 
(assert (not (= var878 null-var1274)))
;(assert (var3046_warn/-1468683859 "Caught Exception while in Loader.getResource. This may be innocuous." var878)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void warn(java.lang.String,java.lang.Throwable)>("Caught Exception while in Loader.getResource. This may be innocuous.", $r16) 

(declare-const var548 String)
(declare-const var878!1 var1274)
(assert true) ; Non Conditional
(define-const var1467 String String-init) ; Statement: $r27 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1467)) ; Statement: specialinvoke $r27.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1467!1 String)
(assert true)
(define-const var2306 String (append/1560614132 var1467!1 "Trying to find [")) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Trying to find [") 
(declare-const var1467!2 String)
(assert (str.prefixof var1467!1 var1467!2))
(assert true)
(define-const var3970 String (append/1560614132 var2306 var1161)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r0) 
(declare-const var2306!1 String)
(assert (str.prefixof var2306 var2306!1))
(assert true)
(define-const var2257 String (append/1560614132 var3970 "] using ClassLoader.getSystemResource().")) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("] using ClassLoader.getSystemResource().") 
(declare-const var3970!1 String)
(assert (str.prefixof var3970 var3970!1))
(assert true)
(define-const var2146 String (toString/-222306083 var2257)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var3046_debug/381960894 var2146)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r31) 

(declare-const var2146!1 String)
(define-const var2150 var2973 (var2547_getSystemResource/-1406971492 var1161)) ; Statement: $r32 = staticinvoke <java.lang.ClassLoader: java.net.URL getSystemResource(java.lang.String)>(r0) 
 ; Statement: return $r32 
(check-sat)
(get-model)
(get-unsat-core)
; {var3046_warn/-1468683859=([java.lang.String, java.lang.Throwable], void), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var3046_debug/381960894=([java.lang.String], void), var2547_getSystemResource/-1406971492=([java.lang.String], java.net.URL)}
; {var1161=r0, var3492=null_type, var1274=java.lang.Throwable, var878=$r16, var3046=org.apache.log4j.helpers.LogLog, var548="Caught Exception while in Loader.getResource. This may be innocuous.", var1467=$r27, var2306=$r28, var3970=$r29, var2257=$r30, var2146=$r31, var2973=java.net.URL, var2547=java.lang.ClassLoader, var2150=$r32}
; {r0=var1161, null_type=var3492, java.lang.Throwable=var1274, $r16=var878, org.apache.log4j.helpers.LogLog=var3046, "Caught Exception while in Loader.getResource. This may be innocuous."=var548, $r27=var1467, $r28=var2306, $r29=var3970, $r30=var2257, $r31=var2146, java.net.URL=var2973, java.lang.ClassLoader=var2547, $r32=var2150}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r16 := @caughtexception;	staticinvoke <org.apache.log4j.helpers.LogLog: void warn(java.lang.String,java.lang.Throwable)>("Caught Exception while in Loader.getResource. This may be innocuous.", $r16);	$r27 = new java.lang.StringBuffer;	specialinvoke $r27.<java.lang.StringBuffer: void <init>()>();	$r28 = virtualinvoke $r27.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Trying to find [");	$r29 = virtualinvoke $r28.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r0);	$r30 = virtualinvoke $r29.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("] using ClassLoader.getSystemResource().");	$r31 = virtualinvoke $r30.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r31);	$r32 = staticinvoke <java.lang.ClassLoader: java.net.URL getSystemResource(java.lang.String)>(r0);	return $r32
;block_num 3