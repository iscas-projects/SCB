(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2271 0)
(declare-sort var3972 0)
(declare-sort var2208 0)
(declare-sort var839 0)
(declare-sort var2037 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3972-init () var3972)
(declare-fun getLoggingLocale/-317789992 (var2271) var2208)
(declare-fun usingRemovedJavassistBytecodeProvider$str/1321170165 (var2271) String)
(declare-fun arr-var839-init () (Array Int var839))
(declare-fun String_format/-647569892 (var2208 String (Array Int var839)) String)
(declare-fun <init>/-790357943 (var3972 String) void)
(declare-fun cast-from-var3972-to-var2037 (var3972) var2037)
(declare-fun var2271__copyStackTraceMinusOne/1924568056 (var2037) void)
(declare-const null-var2271 var2271)
(declare-const var2708 var2271) ; Statement: r1 := @this: org.hibernate.internal.CoreMessageLogger_$logger 
(assert (not (= var2708 null-var2271)))
(define-const var2146 var3972 var3972-init) ; Statement: $r6 = new org.hibernate.HibernateException 
(assert true)
(define-const var3544 var2208 (getLoggingLocale/-317789992 var2708)) ; Statement: $r4 = virtualinvoke r1.<org.hibernate.internal.CoreMessageLogger_$logger: java.util.Locale getLoggingLocale()>() 
(assert true)
(define-const var462 String (usingRemovedJavassistBytecodeProvider$str/1321170165 var2708)) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.internal.CoreMessageLogger_$logger: java.lang.String usingRemovedJavassistBytecodeProvider$str()>() 
(define-const var1250 (Array Int var839) arr-var839-init) ; Statement: $r2 = newarray (java.lang.Object)[0] 
(define-const var3659 String (String_format/-647569892 var3544 var462 var1250)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r4, $r3, $r2) 
(assert true)
;(assert (<init>/-790357943 var2146 var3659)) ; Statement: specialinvoke $r6.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r5) 

(declare-const var2146!1 var3972)
(declare-const var3659!1 String)
(define-const var2928 var2037 (cast-from-var3972-to-var2037 var2146!1)) ; Statement: $r7 = (java.lang.Throwable) $r6 
;(assert (var2271__copyStackTraceMinusOne/1924568056 var2928)) ; Statement: staticinvoke <org.hibernate.internal.CoreMessageLogger_$logger: void _copyStackTraceMinusOne(java.lang.Throwable)>($r7) 

(declare-const var2928!1 var2037)
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var3972-init=([], org.hibernate.HibernateException), getLoggingLocale/-317789992=([org.hibernate.internal.CoreMessageLogger_$logger], java.util.Locale), usingRemovedJavassistBytecodeProvider$str/1321170165=([org.hibernate.internal.CoreMessageLogger_$logger], java.lang.String), arr-var839-init=([], java.lang.Object[]), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var3972-to-var2037=([org.hibernate.HibernateException], java.lang.Throwable), var2271__copyStackTraceMinusOne/1924568056=([java.lang.Throwable], void)}
; {var2271=org.hibernate.internal.CoreMessageLogger_$logger, var2708=r1, var3972=org.hibernate.HibernateException, var2146=$r6, var2208=java.util.Locale, var3544=$r4, var462=$r3, var839=java.lang.Object, var1250=$r2, var3659=$r5, var2037=java.lang.Throwable, var2928=$r7}
; {org.hibernate.internal.CoreMessageLogger_$logger=var2271, r1=var2708, org.hibernate.HibernateException=var3972, $r6=var2146, java.util.Locale=var2208, $r4=var3544, $r3=var462, java.lang.Object=var839, $r2=var1250, $r5=var3659, java.lang.Throwable=var2037, $r7=var2928}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: org.hibernate.internal.CoreMessageLogger_$logger;	$r6 = new org.hibernate.HibernateException;	$r4 = virtualinvoke r1.<org.hibernate.internal.CoreMessageLogger_$logger: java.util.Locale getLoggingLocale()>();	$r3 = virtualinvoke r1.<org.hibernate.internal.CoreMessageLogger_$logger: java.lang.String usingRemovedJavassistBytecodeProvider$str()>();	$r2 = newarray (java.lang.Object)[0];	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r4, $r3, $r2);	specialinvoke $r6.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r5);	$r7 = (java.lang.Throwable) $r6;	staticinvoke <org.hibernate.internal.CoreMessageLogger_$logger: void _copyStackTraceMinusOne(java.lang.Throwable)>($r7);	return $r6
;block_num 1