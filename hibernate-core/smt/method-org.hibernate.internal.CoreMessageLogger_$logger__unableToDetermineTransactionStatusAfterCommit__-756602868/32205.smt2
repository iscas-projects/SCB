(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var740 0)
(declare-sort var1479 0)
(declare-sort var1297 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLoggingLocale/-317789992 (var740) var1479)
(declare-fun unableToDetermineTransactionStatusAfterCommit$str/-375958049 (var740) String)
(declare-fun arr-var1297-init () (Array Int var1297))
(declare-fun String_format/-647569892 (var1479 String (Array Int var1297)) String)
(declare-const null-var740 var740)
(declare-const var1431 var740) ; Statement: r0 := @this: org.hibernate.internal.CoreMessageLogger_$logger 
(assert (not (= var1431 null-var740)))
(assert true)
(define-const var380 var1479 (getLoggingLocale/-317789992 var1431)) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.util.Locale getLoggingLocale()>() 
(assert true)
(define-const var1381 String (unableToDetermineTransactionStatusAfterCommit$str/-375958049 var1431)) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.lang.String unableToDetermineTransactionStatusAfterCommit$str()>() 
(define-const var2404 (Array Int var1297) arr-var1297-init) ; Statement: $r1 = newarray (java.lang.Object)[0] 
(define-const var577 String (String_format/-647569892 var380 var1381 var2404)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r3, $r2, $r1) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getLoggingLocale/-317789992=([org.hibernate.internal.CoreMessageLogger_$logger], java.util.Locale), unableToDetermineTransactionStatusAfterCommit$str/-375958049=([org.hibernate.internal.CoreMessageLogger_$logger], java.lang.String), arr-var1297-init=([], java.lang.Object[]), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var740=org.hibernate.internal.CoreMessageLogger_$logger, var1431=r0, var1479=java.util.Locale, var380=$r3, var1381=$r2, var1297=java.lang.Object, var2404=$r1, var577=$r4}
; {org.hibernate.internal.CoreMessageLogger_$logger=var740, r0=var1431, java.util.Locale=var1479, $r3=var380, $r2=var1381, java.lang.Object=var1297, $r1=var2404, $r4=var577}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.internal.CoreMessageLogger_$logger;	$r3 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.util.Locale getLoggingLocale()>();	$r2 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.lang.String unableToDetermineTransactionStatusAfterCommit$str()>();	$r1 = newarray (java.lang.Object)[0];	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r3, $r2, $r1);	return $r4
;block_num 1