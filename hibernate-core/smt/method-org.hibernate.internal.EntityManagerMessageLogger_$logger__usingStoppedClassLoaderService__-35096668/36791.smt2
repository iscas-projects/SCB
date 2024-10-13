(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var647 0)
(declare-sort var1017 0)
(declare-sort var1693 0)
(declare-sort var214 0)
(declare-sort var3086 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1017-init () var1017)
(declare-fun getLoggingLocale/-1064215605 (var647) var1693)
(declare-fun usingStoppedClassLoaderService$str/1428090425 (var647) String)
(declare-fun arr-var214-init () (Array Int var214))
(declare-fun String_format/-647569892 (var1693 String (Array Int var214)) String)
(declare-fun <init>/-790357943 (var1017 String) void)
(declare-fun cast-from-var1017-to-var3086 (var1017) var3086)
(declare-fun var647__copyStackTraceMinusOne/-78683733 (var3086) void)
(declare-const null-var647 var647)
(declare-const var2867 var647) ; Statement: r1 := @this: org.hibernate.internal.EntityManagerMessageLogger_$logger 
(assert (not (= var2867 null-var647)))
(define-const var1235 var1017 var1017-init) ; Statement: $r6 = new org.hibernate.HibernateException 
(assert true)
(define-const var1565 var1693 (getLoggingLocale/-1064215605 var2867)) ; Statement: $r4 = virtualinvoke r1.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.util.Locale getLoggingLocale()>() 
(assert true)
(define-const var1642 String (usingStoppedClassLoaderService$str/1428090425 var2867)) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.lang.String usingStoppedClassLoaderService$str()>() 
(define-const var559 (Array Int var214) arr-var214-init) ; Statement: $r2 = newarray (java.lang.Object)[0] 
(define-const var3514 String (String_format/-647569892 var1565 var1642 var559)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r4, $r3, $r2) 
(assert true)
;(assert (<init>/-790357943 var1235 var3514)) ; Statement: specialinvoke $r6.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r5) 

(declare-const var1235!1 var1017)
(declare-const var3514!1 String)
(define-const var1424 var3086 (cast-from-var1017-to-var3086 var1235!1)) ; Statement: $r7 = (java.lang.Throwable) $r6 
;(assert (var647__copyStackTraceMinusOne/-78683733 var1424)) ; Statement: staticinvoke <org.hibernate.internal.EntityManagerMessageLogger_$logger: void _copyStackTraceMinusOne(java.lang.Throwable)>($r7) 

(declare-const var1424!1 var3086)
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var1017-init=([], org.hibernate.HibernateException), getLoggingLocale/-1064215605=([org.hibernate.internal.EntityManagerMessageLogger_$logger], java.util.Locale), usingStoppedClassLoaderService$str/1428090425=([org.hibernate.internal.EntityManagerMessageLogger_$logger], java.lang.String), arr-var214-init=([], java.lang.Object[]), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var1017-to-var3086=([org.hibernate.HibernateException], java.lang.Throwable), var647__copyStackTraceMinusOne/-78683733=([java.lang.Throwable], void)}
; {var647=org.hibernate.internal.EntityManagerMessageLogger_$logger, var2867=r1, var1017=org.hibernate.HibernateException, var1235=$r6, var1693=java.util.Locale, var1565=$r4, var1642=$r3, var214=java.lang.Object, var559=$r2, var3514=$r5, var3086=java.lang.Throwable, var1424=$r7}
; {org.hibernate.internal.EntityManagerMessageLogger_$logger=var647, r1=var2867, org.hibernate.HibernateException=var1017, $r6=var1235, java.util.Locale=var1693, $r4=var1565, $r3=var1642, java.lang.Object=var214, $r2=var559, $r5=var3514, java.lang.Throwable=var3086, $r7=var1424}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: org.hibernate.internal.EntityManagerMessageLogger_$logger;	$r6 = new org.hibernate.HibernateException;	$r4 = virtualinvoke r1.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.util.Locale getLoggingLocale()>();	$r3 = virtualinvoke r1.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.lang.String usingStoppedClassLoaderService$str()>();	$r2 = newarray (java.lang.Object)[0];	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r4, $r3, $r2);	specialinvoke $r6.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r5);	$r7 = (java.lang.Throwable) $r6;	staticinvoke <org.hibernate.internal.EntityManagerMessageLogger_$logger: void _copyStackTraceMinusOne(java.lang.Throwable)>($r7);	return $r6
;block_num 1