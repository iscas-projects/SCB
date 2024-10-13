(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2140 0)
(declare-sort var2458 0)
(declare-sort var2723 0)
(declare-sort var3307 0)
(declare-sort var3715 0)
(declare-sort var330 0)
(declare-sort var3010 0)
(declare-sort var3778 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun changeListener/445529946 (var2140) var330)
(declare-fun getClass/1258963082 (var3010) ClassObject)
(declare-fun cast-from-var330-to-var3010 (var330) var3010)
(declare-fun append/-1031950772 (String var3010) String)
(declare-fun cast-from-ClassObject-to-var3010 (ClassObject) var3010)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3778_log/979489950 (var3307 var3715 String) void)
(declare-const null-var2140 var2140)
(declare-const null-var2458 var2458)
(declare-const null-var2723 var2723)
(declare-const var3307-JFR var3307)
(declare-const var3715-WARN var3715)
(declare-const var2671 var2140) ; Statement: r0 := @this: jdk.jfr.internal.SecuritySupport$SecureRecorderListener 
(assert (not (= var2671 null-var2140)))
(declare-const var3432 var2458) ; Statement: r1 := @parameter0: jdk.jfr.Recording 
(assert (not (= var3432 null-var2458)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3880 var2723) ; Statement: $r3 := @caughtexception 
(assert (not (= var3880 null-var2723)))
(define-const var113 var3307 var3307-JFR) ; Statement: $r5 = <jdk.jfr.internal.LogTag: jdk.jfr.internal.LogTag JFR> 
(define-const var2113 var3715 var3715-WARN) ; Statement: $r6 = <jdk.jfr.internal.LogLevel: jdk.jfr.internal.LogLevel WARN> 
(define-const var1207 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1207)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1207!1 String)
(assert (= var1207!1 ""))
(assert true)
(define-const var35 String (append/672562846 var1207!1 "Unexpected exception in listener ")) ; Statement: $r9 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected exception in listener ") 
(declare-const var1207!2 String)
(assert (= var1207!2 (str.++ var1207!1 "Unexpected exception in listener ")))
(define-const var1117 var330 (changeListener/445529946 var2671)) ; Statement: $r7 = r0.<jdk.jfr.internal.SecuritySupport$SecureRecorderListener: jdk.jfr.FlightRecorderListener changeListener> 
(assert true)
(define-const var2170 ClassObject (getClass/1258963082 (cast-from-var330-to-var3010 var1117))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1892 String (append/-1031950772 var35 (cast-from-ClassObject-to-var3010 var2170))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8) 
(declare-const var35!1 String)
(assert (str.prefixof var35 var35!1))
(assert true)
(define-const var269 String (append/672562846 var1892 " at recording state change")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" at recording state change") 
(declare-const var1892!1 String)
(assert (= var1892!1 (str.++ var1892 " at recording state change")))
(assert true)
(define-const var1450 String (toString/-2075883882 var269)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var3778_log/979489950 var113 var2113 var1450)) ; Statement: staticinvoke <jdk.jfr.internal.Logger: void log(jdk.jfr.internal.LogTag,jdk.jfr.internal.LogLevel,java.lang.String)>($r5, $r6, $r12) 

(declare-const var113!1 var3307)
(declare-const var2113!1 var3715)
(declare-const var1450!1 String)
(assert true) ; Non Conditional
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), changeListener/445529946=([jdk.jfr.internal.SecuritySupport$SecureRecorderListener], jdk.jfr.FlightRecorderListener), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var330-to-var3010=([jdk.jfr.FlightRecorderListener], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var3010=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3778_log/979489950=([jdk.jfr.internal.LogTag, jdk.jfr.internal.LogLevel, java.lang.String], void)}
; {var2140=jdk.jfr.internal.SecuritySupport$SecureRecorderListener, var2671=r0, var2458=jdk.jfr.Recording, var3432=r1, var2723=java.lang.Throwable, var3880=$r3, var3307=jdk.jfr.internal.LogTag, var113=$r5, var3715=jdk.jfr.internal.LogLevel, var2113=$r6, var1207=$r4, var35=$r9, var330=jdk.jfr.FlightRecorderListener, var1117=$r7, var3010=java.lang.Object, var2170=$r8, var1892=$r10, var269=$r11, var1450=$r12, var3778=jdk.jfr.internal.Logger}
; {jdk.jfr.internal.SecuritySupport$SecureRecorderListener=var2140, r0=var2671, jdk.jfr.Recording=var2458, r1=var3432, java.lang.Throwable=var2723, $r3=var3880, jdk.jfr.internal.LogTag=var3307, $r5=var113, jdk.jfr.internal.LogLevel=var3715, $r6=var2113, $r4=var1207, $r9=var35, jdk.jfr.FlightRecorderListener=var330, $r7=var1117, java.lang.Object=var3010, $r8=var2170, $r10=var1892, $r11=var269, $r12=var1450, jdk.jfr.internal.Logger=var3778}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.jfr.internal.SecuritySupport$SecureRecorderListener;	r1 := @parameter0: jdk.jfr.Recording;	$r3 := @caughtexception;	$r5 = <jdk.jfr.internal.LogTag: jdk.jfr.internal.LogTag JFR>;	$r6 = <jdk.jfr.internal.LogLevel: jdk.jfr.internal.LogLevel WARN>;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected exception in listener ");	$r7 = r0.<jdk.jfr.internal.SecuritySupport$SecureRecorderListener: jdk.jfr.FlightRecorderListener changeListener>;	$r8 = virtualinvoke $r7.<java.lang.Object: java.lang.Class getClass()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" at recording state change");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <jdk.jfr.internal.Logger: void log(jdk.jfr.internal.LogTag,jdk.jfr.internal.LogLevel,java.lang.String)>($r5, $r6, $r12);	return null
;block_num 3