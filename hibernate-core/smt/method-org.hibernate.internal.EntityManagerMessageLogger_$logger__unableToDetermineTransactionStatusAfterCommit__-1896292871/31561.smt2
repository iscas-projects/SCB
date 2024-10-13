(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1388 0)
(declare-sort var218 0)
(declare-sort var360 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLoggingLocale/-1064215605 (var1388) var218)
(declare-fun unableToDetermineTransactionStatusAfterCommit$str/953306444 (var1388) String)
(declare-fun arr-var360-init () (Array Int var360))
(declare-fun String_format/-647569892 (var218 String (Array Int var360)) String)
(declare-const null-var1388 var1388)
(declare-const var2767 var1388) ; Statement: r0 := @this: org.hibernate.internal.EntityManagerMessageLogger_$logger 
(assert (not (= var2767 null-var1388)))
(assert true)
(define-const var2817 var218 (getLoggingLocale/-1064215605 var2767)) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.util.Locale getLoggingLocale()>() 
(assert true)
(define-const var2881 String (unableToDetermineTransactionStatusAfterCommit$str/953306444 var2767)) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.lang.String unableToDetermineTransactionStatusAfterCommit$str()>() 
(define-const var1672 (Array Int var360) arr-var360-init) ; Statement: $r1 = newarray (java.lang.Object)[0] 
(define-const var2217 String (String_format/-647569892 var2817 var2881 var1672)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r3, $r2, $r1) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getLoggingLocale/-1064215605=([org.hibernate.internal.EntityManagerMessageLogger_$logger], java.util.Locale), unableToDetermineTransactionStatusAfterCommit$str/953306444=([org.hibernate.internal.EntityManagerMessageLogger_$logger], java.lang.String), arr-var360-init=([], java.lang.Object[]), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var1388=org.hibernate.internal.EntityManagerMessageLogger_$logger, var2767=r0, var218=java.util.Locale, var2817=$r3, var2881=$r2, var360=java.lang.Object, var1672=$r1, var2217=$r4}
; {org.hibernate.internal.EntityManagerMessageLogger_$logger=var1388, r0=var2767, java.util.Locale=var218, $r3=var2817, $r2=var2881, java.lang.Object=var360, $r1=var1672, $r4=var2217}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.internal.EntityManagerMessageLogger_$logger;	$r3 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.util.Locale getLoggingLocale()>();	$r2 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.lang.String unableToDetermineTransactionStatusAfterCommit$str()>();	$r1 = newarray (java.lang.Object)[0];	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r3, $r2, $r1);	return $r4
;block_num 1