(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1979 0)
(declare-sort var1610 0)
(declare-sort var3665 0)
(declare-sort var3054 0)
(declare-sort var3055 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1610-init () var1610)
(declare-fun getLoggingLocale/-317789992 (var1979) var3665)
(declare-fun usingStoppedClassLoaderService$str/-2049297914 (var1979) String)
(declare-fun arr-var3054-init () (Array Int var3054))
(declare-fun String_format/-647569892 (var3665 String (Array Int var3054)) String)
(declare-fun <init>/-790357943 (var1610 String) void)
(declare-fun cast-from-var1610-to-var3055 (var1610) var3055)
(declare-fun var1979__copyStackTraceMinusOne/1924568056 (var3055) void)
(declare-const null-var1979 var1979)
(declare-const var210 var1979) ; Statement: r1 := @this: org.hibernate.internal.CoreMessageLogger_$logger 
(assert (not (= var210 null-var1979)))
(define-const var2207 var1610 var1610-init) ; Statement: $r6 = new org.hibernate.HibernateException 
(assert true)
(define-const var3832 var3665 (getLoggingLocale/-317789992 var210)) ; Statement: $r4 = virtualinvoke r1.<org.hibernate.internal.CoreMessageLogger_$logger: java.util.Locale getLoggingLocale()>() 
(assert true)
(define-const var3191 String (usingStoppedClassLoaderService$str/-2049297914 var210)) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.internal.CoreMessageLogger_$logger: java.lang.String usingStoppedClassLoaderService$str()>() 
(define-const var2337 (Array Int var3054) arr-var3054-init) ; Statement: $r2 = newarray (java.lang.Object)[0] 
(define-const var1101 String (String_format/-647569892 var3832 var3191 var2337)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r4, $r3, $r2) 
(assert true)
;(assert (<init>/-790357943 var2207 var1101)) ; Statement: specialinvoke $r6.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r5) 

(declare-const var2207!1 var1610)
(declare-const var1101!1 String)
(define-const var2204 var3055 (cast-from-var1610-to-var3055 var2207!1)) ; Statement: $r7 = (java.lang.Throwable) $r6 
;(assert (var1979__copyStackTraceMinusOne/1924568056 var2204)) ; Statement: staticinvoke <org.hibernate.internal.CoreMessageLogger_$logger: void _copyStackTraceMinusOne(java.lang.Throwable)>($r7) 

(declare-const var2204!1 var3055)
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var1610-init=([], org.hibernate.HibernateException), getLoggingLocale/-317789992=([org.hibernate.internal.CoreMessageLogger_$logger], java.util.Locale), usingStoppedClassLoaderService$str/-2049297914=([org.hibernate.internal.CoreMessageLogger_$logger], java.lang.String), arr-var3054-init=([], java.lang.Object[]), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var1610-to-var3055=([org.hibernate.HibernateException], java.lang.Throwable), var1979__copyStackTraceMinusOne/1924568056=([java.lang.Throwable], void)}
; {var1979=org.hibernate.internal.CoreMessageLogger_$logger, var210=r1, var1610=org.hibernate.HibernateException, var2207=$r6, var3665=java.util.Locale, var3832=$r4, var3191=$r3, var3054=java.lang.Object, var2337=$r2, var1101=$r5, var3055=java.lang.Throwable, var2204=$r7}
; {org.hibernate.internal.CoreMessageLogger_$logger=var1979, r1=var210, org.hibernate.HibernateException=var1610, $r6=var2207, java.util.Locale=var3665, $r4=var3832, $r3=var3191, java.lang.Object=var3054, $r2=var2337, $r5=var1101, java.lang.Throwable=var3055, $r7=var2204}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: org.hibernate.internal.CoreMessageLogger_$logger;	$r6 = new org.hibernate.HibernateException;	$r4 = virtualinvoke r1.<org.hibernate.internal.CoreMessageLogger_$logger: java.util.Locale getLoggingLocale()>();	$r3 = virtualinvoke r1.<org.hibernate.internal.CoreMessageLogger_$logger: java.lang.String usingStoppedClassLoaderService$str()>();	$r2 = newarray (java.lang.Object)[0];	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r4, $r3, $r2);	specialinvoke $r6.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r5);	$r7 = (java.lang.Throwable) $r6;	staticinvoke <org.hibernate.internal.CoreMessageLogger_$logger: void _copyStackTraceMinusOne(java.lang.Throwable)>($r7);	return $r6
;block_num 1