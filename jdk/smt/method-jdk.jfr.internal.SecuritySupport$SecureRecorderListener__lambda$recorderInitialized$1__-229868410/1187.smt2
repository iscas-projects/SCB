(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3212 0)
(declare-sort var1713 0)
(declare-sort var2767 0)
(declare-sort var3881 0)
(declare-sort var2975 0)
(declare-sort var548 0)
(declare-sort var567 0)
(declare-sort var675 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun changeListener/445529946 (var3212) var548)
(declare-fun getClass/1258963082 (var567) ClassObject)
(declare-fun cast-from-var548-to-var567 (var548) var567)
(declare-fun append/-1031950772 (String var567) String)
(declare-fun cast-from-ClassObject-to-var567 (ClassObject) var567)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var675_log/979489950 (var3881 var2975 String) void)
(declare-const null-var3212 var3212)
(declare-const null-var1713 var1713)
(declare-const null-var2767 var2767)
(declare-const var3881-JFR var3881)
(declare-const var2975-WARN var2975)
(declare-const var1567 var3212) ; Statement: r0 := @this: jdk.jfr.internal.SecuritySupport$SecureRecorderListener 
(assert (not (= var1567 null-var3212)))
(declare-const var2187 var1713) ; Statement: r1 := @parameter0: jdk.jfr.FlightRecorder 
(assert (not (= var2187 null-var1713)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1421 var2767) ; Statement: $r3 := @caughtexception 
(assert (not (= var1421 null-var2767)))
(define-const var3231 var3881 var3881-JFR) ; Statement: $r5 = <jdk.jfr.internal.LogTag: jdk.jfr.internal.LogTag JFR> 
(define-const var2669 var2975 var2975-WARN) ; Statement: $r6 = <jdk.jfr.internal.LogLevel: jdk.jfr.internal.LogLevel WARN> 
(define-const var2743 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2743)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2743!1 String)
(assert (= var2743!1 ""))
(assert true)
(define-const var407 String (append/672562846 var2743!1 "Unexpected exception in listener ")) ; Statement: $r9 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected exception in listener ") 
(declare-const var2743!2 String)
(assert (= var2743!2 (str.++ var2743!1 "Unexpected exception in listener ")))
(define-const var2303 var548 (changeListener/445529946 var1567)) ; Statement: $r7 = r0.<jdk.jfr.internal.SecuritySupport$SecureRecorderListener: jdk.jfr.FlightRecorderListener changeListener> 
(assert true)
(define-const var1934 ClassObject (getClass/1258963082 (cast-from-var548-to-var567 var2303))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3270 String (append/-1031950772 var407 (cast-from-ClassObject-to-var567 var1934))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8) 
(declare-const var407!1 String)
(assert (str.prefixof var407 var407!1))
(assert true)
(define-const var729 String (append/672562846 var3270 " when initializing FlightRecorder")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" when initializing FlightRecorder") 
(declare-const var3270!1 String)
(assert (= var3270!1 (str.++ var3270 " when initializing FlightRecorder")))
(assert true)
(define-const var308 String (toString/-2075883882 var729)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var675_log/979489950 var3231 var2669 var308)) ; Statement: staticinvoke <jdk.jfr.internal.Logger: void log(jdk.jfr.internal.LogTag,jdk.jfr.internal.LogLevel,java.lang.String)>($r5, $r6, $r12) 

(declare-const var3231!1 var3881)
(declare-const var2669!1 var2975)
(declare-const var308!1 String)
(assert true) ; Non Conditional
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), changeListener/445529946=([jdk.jfr.internal.SecuritySupport$SecureRecorderListener], jdk.jfr.FlightRecorderListener), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var548-to-var567=([jdk.jfr.FlightRecorderListener], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var567=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var675_log/979489950=([jdk.jfr.internal.LogTag, jdk.jfr.internal.LogLevel, java.lang.String], void)}
; {var3212=jdk.jfr.internal.SecuritySupport$SecureRecorderListener, var1567=r0, var1713=jdk.jfr.FlightRecorder, var2187=r1, var2767=java.lang.Throwable, var1421=$r3, var3881=jdk.jfr.internal.LogTag, var3231=$r5, var2975=jdk.jfr.internal.LogLevel, var2669=$r6, var2743=$r4, var407=$r9, var548=jdk.jfr.FlightRecorderListener, var2303=$r7, var567=java.lang.Object, var1934=$r8, var3270=$r10, var729=$r11, var308=$r12, var675=jdk.jfr.internal.Logger}
; {jdk.jfr.internal.SecuritySupport$SecureRecorderListener=var3212, r0=var1567, jdk.jfr.FlightRecorder=var1713, r1=var2187, java.lang.Throwable=var2767, $r3=var1421, jdk.jfr.internal.LogTag=var3881, $r5=var3231, jdk.jfr.internal.LogLevel=var2975, $r6=var2669, $r4=var2743, $r9=var407, jdk.jfr.FlightRecorderListener=var548, $r7=var2303, java.lang.Object=var567, $r8=var1934, $r10=var3270, $r11=var729, $r12=var308, jdk.jfr.internal.Logger=var675}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.jfr.internal.SecuritySupport$SecureRecorderListener;	r1 := @parameter0: jdk.jfr.FlightRecorder;	$r3 := @caughtexception;	$r5 = <jdk.jfr.internal.LogTag: jdk.jfr.internal.LogTag JFR>;	$r6 = <jdk.jfr.internal.LogLevel: jdk.jfr.internal.LogLevel WARN>;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected exception in listener ");	$r7 = r0.<jdk.jfr.internal.SecuritySupport$SecureRecorderListener: jdk.jfr.FlightRecorderListener changeListener>;	$r8 = virtualinvoke $r7.<java.lang.Object: java.lang.Class getClass()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" when initializing FlightRecorder");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <jdk.jfr.internal.Logger: void log(jdk.jfr.internal.LogTag,jdk.jfr.internal.LogLevel,java.lang.String)>($r5, $r6, $r12);	return null
;block_num 3