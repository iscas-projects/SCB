(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3544 0)
(declare-sort var586 0)
(declare-sort var3137 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLoggingLocale/-1064215605 (var3544) var586)
(declare-fun unableToDetermineTransactionStatus$str/-1812595199 (var3544) String)
(declare-fun arr-var3137-init () (Array Int var3137))
(declare-fun String_format/-647569892 (var586 String (Array Int var3137)) String)
(declare-const null-var3544 var3544)
(declare-const var3195 var3544) ; Statement: r0 := @this: org.hibernate.internal.EntityManagerMessageLogger_$logger 
(assert (not (= var3195 null-var3544)))
(assert true)
(define-const var6 var586 (getLoggingLocale/-1064215605 var3195)) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.util.Locale getLoggingLocale()>() 
(assert true)
(define-const var60 String (unableToDetermineTransactionStatus$str/-1812595199 var3195)) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.lang.String unableToDetermineTransactionStatus$str()>() 
(define-const var1166 (Array Int var3137) arr-var3137-init) ; Statement: $r1 = newarray (java.lang.Object)[0] 
(define-const var794 String (String_format/-647569892 var6 var60 var1166)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r3, $r2, $r1) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getLoggingLocale/-1064215605=([org.hibernate.internal.EntityManagerMessageLogger_$logger], java.util.Locale), unableToDetermineTransactionStatus$str/-1812595199=([org.hibernate.internal.EntityManagerMessageLogger_$logger], java.lang.String), arr-var3137-init=([], java.lang.Object[]), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var3544=org.hibernate.internal.EntityManagerMessageLogger_$logger, var3195=r0, var586=java.util.Locale, var6=$r3, var60=$r2, var3137=java.lang.Object, var1166=$r1, var794=$r4}
; {org.hibernate.internal.EntityManagerMessageLogger_$logger=var3544, r0=var3195, java.util.Locale=var586, $r3=var6, $r2=var60, java.lang.Object=var3137, $r1=var1166, $r4=var794}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.internal.EntityManagerMessageLogger_$logger;	$r3 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.util.Locale getLoggingLocale()>();	$r2 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.lang.String unableToDetermineTransactionStatus$str()>();	$r1 = newarray (java.lang.Object)[0];	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r3, $r2, $r1);	return $r4
;block_num 1