(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3769 0)
(declare-sort var3008 0)
(declare-sort var2162 0)
(declare-sort var56 0)
(declare-sort var1973 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3008-init () var3008)
(declare-fun getLoggingLocale/-1064215605 (var3769) var2162)
(declare-fun usingRemovedJavassistBytecodeProvider$str/-1714738846 (var3769) String)
(declare-fun arr-var56-init () (Array Int var56))
(declare-fun String_format/-647569892 (var2162 String (Array Int var56)) String)
(declare-fun <init>/-790357943 (var3008 String) void)
(declare-fun cast-from-var3008-to-var1973 (var3008) var1973)
(declare-fun var3769__copyStackTraceMinusOne/-78683733 (var1973) void)
(declare-const null-var3769 var3769)
(declare-const var963 var3769) ; Statement: r1 := @this: org.hibernate.internal.EntityManagerMessageLogger_$logger 
(assert (not (= var963 null-var3769)))
(define-const var904 var3008 var3008-init) ; Statement: $r6 = new org.hibernate.HibernateException 
(assert true)
(define-const var3926 var2162 (getLoggingLocale/-1064215605 var963)) ; Statement: $r4 = virtualinvoke r1.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.util.Locale getLoggingLocale()>() 
(assert true)
(define-const var1781 String (usingRemovedJavassistBytecodeProvider$str/-1714738846 var963)) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.lang.String usingRemovedJavassistBytecodeProvider$str()>() 
(define-const var194 (Array Int var56) arr-var56-init) ; Statement: $r2 = newarray (java.lang.Object)[0] 
(define-const var578 String (String_format/-647569892 var3926 var1781 var194)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r4, $r3, $r2) 
(assert true)
;(assert (<init>/-790357943 var904 var578)) ; Statement: specialinvoke $r6.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r5) 

(declare-const var904!1 var3008)
(declare-const var578!1 String)
(define-const var874 var1973 (cast-from-var3008-to-var1973 var904!1)) ; Statement: $r7 = (java.lang.Throwable) $r6 
;(assert (var3769__copyStackTraceMinusOne/-78683733 var874)) ; Statement: staticinvoke <org.hibernate.internal.EntityManagerMessageLogger_$logger: void _copyStackTraceMinusOne(java.lang.Throwable)>($r7) 

(declare-const var874!1 var1973)
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var3008-init=([], org.hibernate.HibernateException), getLoggingLocale/-1064215605=([org.hibernate.internal.EntityManagerMessageLogger_$logger], java.util.Locale), usingRemovedJavassistBytecodeProvider$str/-1714738846=([org.hibernate.internal.EntityManagerMessageLogger_$logger], java.lang.String), arr-var56-init=([], java.lang.Object[]), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var3008-to-var1973=([org.hibernate.HibernateException], java.lang.Throwable), var3769__copyStackTraceMinusOne/-78683733=([java.lang.Throwable], void)}
; {var3769=org.hibernate.internal.EntityManagerMessageLogger_$logger, var963=r1, var3008=org.hibernate.HibernateException, var904=$r6, var2162=java.util.Locale, var3926=$r4, var1781=$r3, var56=java.lang.Object, var194=$r2, var578=$r5, var1973=java.lang.Throwable, var874=$r7}
; {org.hibernate.internal.EntityManagerMessageLogger_$logger=var3769, r1=var963, org.hibernate.HibernateException=var3008, $r6=var904, java.util.Locale=var2162, $r4=var3926, $r3=var1781, java.lang.Object=var56, $r2=var194, $r5=var578, java.lang.Throwable=var1973, $r7=var874}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: org.hibernate.internal.EntityManagerMessageLogger_$logger;	$r6 = new org.hibernate.HibernateException;	$r4 = virtualinvoke r1.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.util.Locale getLoggingLocale()>();	$r3 = virtualinvoke r1.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.lang.String usingRemovedJavassistBytecodeProvider$str()>();	$r2 = newarray (java.lang.Object)[0];	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r4, $r3, $r2);	specialinvoke $r6.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r5);	$r7 = (java.lang.Throwable) $r6;	staticinvoke <org.hibernate.internal.EntityManagerMessageLogger_$logger: void _copyStackTraceMinusOne(java.lang.Throwable)>($r7);	return $r6
;block_num 1