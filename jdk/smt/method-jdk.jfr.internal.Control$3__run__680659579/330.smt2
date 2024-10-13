(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3459 0)
(declare-sort var3844 0)
(declare-sort var880 0)
(declare-sort var3911 0)
(declare-sort var3464 0)
(declare-sort var3412 0)
(declare-sort var2847 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun val$values/-421849360 (var3459) var3464)
(declare-fun append/-1031950772 (String var3412) String)
(declare-fun cast-from-var3464-to-var3412 (var3464) var3412)
(declare-fun getClass/1258963082 (var3412) ClassObject)
(declare-fun cast-from-var3459-to-var3412 (var3459) var3412)
(declare-fun cast-from-ClassObject-to-var3412 (ClassObject) var3412)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2847_log/979489950 (var880 var3911 String) void)
(declare-const null-var3459 var3459)
(declare-const null-var3844 var3844)
(declare-const var880-JFR_SETTING var880)
(declare-const var3911-WARN var3911)
(declare-const var1522 var3459) ; Statement: r0 := @this: jdk.jfr.internal.Control$3 
(assert (not (= var1522 null-var3459)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var710 var3844) ; Statement: $r4 := @caughtexception 
(assert (not (= var710 null-var3844)))
(define-const var1696 var880 var880-JFR_SETTING) ; Statement: $r6 = <jdk.jfr.internal.LogTag: jdk.jfr.internal.LogTag JFR_SETTING> 
(define-const var368 var3911 var3911-WARN) ; Statement: $r7 = <jdk.jfr.internal.LogLevel: jdk.jfr.internal.LogLevel WARN> 
(define-const var3840 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3840)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3840!1 String)
(assert (= var3840!1 ""))
(assert true)
(define-const var1252 String (append/672562846 var3840!1 "Exception occured when combining ")) ; Statement: $r9 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exception occured when combining ") 
(declare-const var3840!2 String)
(assert (= var3840!2 (str.++ var3840!1 "Exception occured when combining ")))
(define-const var2865 var3464 (val$values/-421849360 var1522)) ; Statement: $r8 = r0.<jdk.jfr.internal.Control$3: java.util.Set val$values> 
(assert true)
(define-const var3293 String (append/-1031950772 var1252 (cast-from-var3464-to-var3412 var2865))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8) 
(declare-const var1252!1 String)
(assert (str.prefixof var1252 var1252!1))
(assert true)
(define-const var1003 String (append/672562846 var3293 " for ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for ") 
(declare-const var3293!1 String)
(assert (= var3293!1 (str.++ var3293 " for ")))
(assert true)
(define-const var1368 ClassObject (getClass/1258963082 (cast-from-var3459-to-var3412 var1522))) ; Statement: $r11 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1969 String (append/-1031950772 var1003 (cast-from-ClassObject-to-var3412 var1368))) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r11) 
(declare-const var1003!1 String)
(assert (str.prefixof var1003 var1003!1))
(assert true)
(define-const var2671 String (toString/-2075883882 var1969)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var2847_log/979489950 var1696 var368 var2671)) ; Statement: staticinvoke <jdk.jfr.internal.Logger: void log(jdk.jfr.internal.LogTag,jdk.jfr.internal.LogLevel,java.lang.String)>($r6, $r7, $r14) 

(declare-const var1696!1 var880)
(declare-const var368!1 var3911)
(declare-const var2671!1 String)
(assert true) ; Non Conditional
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), val$values/-421849360=([jdk.jfr.internal.Control$3], java.util.Set), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3464-to-var3412=([java.util.Set], java.lang.Object), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3459-to-var3412=([jdk.jfr.internal.Control$3], java.lang.Object), cast-from-ClassObject-to-var3412=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2847_log/979489950=([jdk.jfr.internal.LogTag, jdk.jfr.internal.LogLevel, java.lang.String], void)}
; {var3459=jdk.jfr.internal.Control$3, var1522=r0, var3844=java.lang.Throwable, var710=$r4, var880=jdk.jfr.internal.LogTag, var1696=$r6, var3911=jdk.jfr.internal.LogLevel, var368=$r7, var3840=$r5, var1252=$r9, var3464=java.util.Set, var2865=$r8, var3412=java.lang.Object, var3293=$r10, var1003=$r12, var1368=$r11, var1969=$r13, var2671=$r14, var2847=jdk.jfr.internal.Logger}
; {jdk.jfr.internal.Control$3=var3459, r0=var1522, java.lang.Throwable=var3844, $r4=var710, jdk.jfr.internal.LogTag=var880, $r6=var1696, jdk.jfr.internal.LogLevel=var3911, $r7=var368, $r5=var3840, $r9=var1252, java.util.Set=var3464, $r8=var2865, java.lang.Object=var3412, $r10=var3293, $r12=var1003, $r11=var1368, $r13=var1969, $r14=var2671, jdk.jfr.internal.Logger=var2847}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.jfr.internal.Control$3;	$r4 := @caughtexception;	$r6 = <jdk.jfr.internal.LogTag: jdk.jfr.internal.LogTag JFR_SETTING>;	$r7 = <jdk.jfr.internal.LogLevel: jdk.jfr.internal.LogLevel WARN>;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exception occured when combining ");	$r8 = r0.<jdk.jfr.internal.Control$3: java.util.Set val$values>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8);	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for ");	$r11 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <jdk.jfr.internal.Logger: void log(jdk.jfr.internal.LogTag,jdk.jfr.internal.LogLevel,java.lang.String)>($r6, $r7, $r14);	return null
;block_num 3