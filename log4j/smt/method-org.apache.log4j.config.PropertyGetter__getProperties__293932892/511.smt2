(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var117 0)
(declare-sort var2008 0)
(declare-sort var192 0)
(declare-sort var3570 0)
(declare-sort var742 0)
(declare-sort var2501 0)
(declare-sort var3385 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3570-init () var3570)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-143899486 (String var117) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var2501_error/1978659241 (String var3385) void)
(declare-fun cast-from-var742-to-var3385 (var742) var3385)
(declare-const null-var117 var117)
(declare-const null-var2008 var2008)
(declare-const null-String String)
(declare-const null-var742 var742)
(declare-const var427 var117) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var427 null-var117)))
(declare-const var2095 var2008) ; Statement: r2 := @parameter1: org.apache.log4j.config.PropertyGetter$PropertyCallback 
(assert (not (= var2095 null-var2008)))
(declare-const var2642 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var2642 null-String)))
(define-const var2783 var3570 var3570-init) ; Statement: $r0 = new org.apache.log4j.config.PropertyGetter 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2981 var742) ; Statement: $r4 := @caughtexception 
(assert (not (= var2981 null-var742)))
(define-const var1784 String String-init) ; Statement: $r5 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1784)) ; Statement: specialinvoke $r5.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1784!1 String)
(assert true)
(define-const var3946 String (append/1560614132 var1784!1 "Failed to introspect object ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Failed to introspect object ") 
(declare-const var1784!2 String)
(assert (str.prefixof var1784!1 var1784!2))
(assert true)
(define-const var51 String (append/-143899486 var3946 var427)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r1) 
(assert true)
(define-const var598 String (toString/-222306083 var51)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var2501_error/1978659241 var598 (cast-from-var742-to-var3385 var2981))) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>($r8, $r4) 

(declare-const var598!1 String)
(declare-const var2981!1 var742)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3570-init=([], org.apache.log4j.config.PropertyGetter), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/-143899486=([java.lang.StringBuffer, java.lang.Object], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var2501_error/1978659241=([java.lang.String, java.lang.Throwable], void), cast-from-var742-to-var3385=([java.beans.IntrospectionException], java.lang.Throwable)}
; {var117=java.lang.Object, var427=r1, var2008=org.apache.log4j.config.PropertyGetter$PropertyCallback, var2095=r2, var2642=r3, var192=null_type, var3570=org.apache.log4j.config.PropertyGetter, var2783=$r0, var742=java.beans.IntrospectionException, var2981=$r4, var1784=$r5, var3946=$r6, var51=$r7, var598=$r8, var2501=org.apache.log4j.helpers.LogLog, var3385=java.lang.Throwable}
; {java.lang.Object=var117, r1=var427, org.apache.log4j.config.PropertyGetter$PropertyCallback=var2008, r2=var2095, r3=var2642, null_type=var192, org.apache.log4j.config.PropertyGetter=var3570, $r0=var2783, java.beans.IntrospectionException=var742, $r4=var2981, $r5=var1784, $r6=var3946, $r7=var51, $r8=var598, org.apache.log4j.helpers.LogLog=var2501, java.lang.Throwable=var3385}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.Object;	r2 := @parameter1: org.apache.log4j.config.PropertyGetter$PropertyCallback;	r3 := @parameter2: java.lang.String;	$r0 = new org.apache.log4j.config.PropertyGetter;	$r4 := @caughtexception;	$r5 = new java.lang.StringBuffer;	specialinvoke $r5.<java.lang.StringBuffer: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Failed to introspect object ");	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r1);	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>($r8, $r4);	return
;block_num 3