(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3517 0)
(declare-sort var230 0)
(declare-sort var1629 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLoggingLocale/-317789992 (var3517) var230)
(declare-fun jdbcRollbackFailed$str/-1574814627 (var3517) String)
(declare-fun arr-var1629-init () (Array Int var1629))
(declare-fun String_format/-647569892 (var230 String (Array Int var1629)) String)
(declare-const null-var3517 var3517)
(declare-const var2743 var3517) ; Statement: r0 := @this: org.hibernate.internal.CoreMessageLogger_$logger 
(assert (not (= var2743 null-var3517)))
(assert true)
(define-const var1500 var230 (getLoggingLocale/-317789992 var2743)) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.util.Locale getLoggingLocale()>() 
(assert true)
(define-const var2061 String (jdbcRollbackFailed$str/-1574814627 var2743)) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.lang.String jdbcRollbackFailed$str()>() 
(define-const var3743 (Array Int var1629) arr-var1629-init) ; Statement: $r1 = newarray (java.lang.Object)[0] 
(define-const var2207 String (String_format/-647569892 var1500 var2061 var3743)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r3, $r2, $r1) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getLoggingLocale/-317789992=([org.hibernate.internal.CoreMessageLogger_$logger], java.util.Locale), jdbcRollbackFailed$str/-1574814627=([org.hibernate.internal.CoreMessageLogger_$logger], java.lang.String), arr-var1629-init=([], java.lang.Object[]), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var3517=org.hibernate.internal.CoreMessageLogger_$logger, var2743=r0, var230=java.util.Locale, var1500=$r3, var2061=$r2, var1629=java.lang.Object, var3743=$r1, var2207=$r4}
; {org.hibernate.internal.CoreMessageLogger_$logger=var3517, r0=var2743, java.util.Locale=var230, $r3=var1500, $r2=var2061, java.lang.Object=var1629, $r1=var3743, $r4=var2207}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.internal.CoreMessageLogger_$logger;	$r3 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.util.Locale getLoggingLocale()>();	$r2 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.lang.String jdbcRollbackFailed$str()>();	$r1 = newarray (java.lang.Object)[0];	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r3, $r2, $r1);	return $r4
;block_num 1