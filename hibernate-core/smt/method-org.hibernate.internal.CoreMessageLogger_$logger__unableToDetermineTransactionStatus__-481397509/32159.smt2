(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2466 0)
(declare-sort var138 0)
(declare-sort var735 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLoggingLocale/-317789992 (var2466) var138)
(declare-fun unableToDetermineTransactionStatus$str/-1432317106 (var2466) String)
(declare-fun arr-var735-init () (Array Int var735))
(declare-fun String_format/-647569892 (var138 String (Array Int var735)) String)
(declare-const null-var2466 var2466)
(declare-const var2779 var2466) ; Statement: r0 := @this: org.hibernate.internal.CoreMessageLogger_$logger 
(assert (not (= var2779 null-var2466)))
(assert true)
(define-const var2989 var138 (getLoggingLocale/-317789992 var2779)) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.util.Locale getLoggingLocale()>() 
(assert true)
(define-const var3250 String (unableToDetermineTransactionStatus$str/-1432317106 var2779)) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.lang.String unableToDetermineTransactionStatus$str()>() 
(define-const var3586 (Array Int var735) arr-var735-init) ; Statement: $r1 = newarray (java.lang.Object)[0] 
(define-const var2835 String (String_format/-647569892 var2989 var3250 var3586)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r3, $r2, $r1) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getLoggingLocale/-317789992=([org.hibernate.internal.CoreMessageLogger_$logger], java.util.Locale), unableToDetermineTransactionStatus$str/-1432317106=([org.hibernate.internal.CoreMessageLogger_$logger], java.lang.String), arr-var735-init=([], java.lang.Object[]), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2466=org.hibernate.internal.CoreMessageLogger_$logger, var2779=r0, var138=java.util.Locale, var2989=$r3, var3250=$r2, var735=java.lang.Object, var3586=$r1, var2835=$r4}
; {org.hibernate.internal.CoreMessageLogger_$logger=var2466, r0=var2779, java.util.Locale=var138, $r3=var2989, $r2=var3250, java.lang.Object=var735, $r1=var3586, $r4=var2835}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.internal.CoreMessageLogger_$logger;	$r3 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.util.Locale getLoggingLocale()>();	$r2 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.lang.String unableToDetermineTransactionStatus$str()>();	$r1 = newarray (java.lang.Object)[0];	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r3, $r2, $r1);	return $r4
;block_num 1