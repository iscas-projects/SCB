(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var644 0)
(declare-sort var3512 0)
(declare-sort var714 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLoggingLocale/-317789992 (var644) var3512)
(declare-fun unableToPerformJdbcCommit$str/658279170 (var644) String)
(declare-fun arr-var714-init () (Array Int var714))
(declare-fun String_format/-647569892 (var3512 String (Array Int var714)) String)
(declare-const null-var644 var644)
(declare-const var3140 var644) ; Statement: r0 := @this: org.hibernate.internal.CoreMessageLogger_$logger 
(assert (not (= var3140 null-var644)))
(assert true)
(define-const var2045 var3512 (getLoggingLocale/-317789992 var3140)) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.util.Locale getLoggingLocale()>() 
(assert true)
(define-const var2272 String (unableToPerformJdbcCommit$str/658279170 var3140)) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.lang.String unableToPerformJdbcCommit$str()>() 
(define-const var968 (Array Int var714) arr-var714-init) ; Statement: $r1 = newarray (java.lang.Object)[0] 
(define-const var2215 String (String_format/-647569892 var2045 var2272 var968)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r3, $r2, $r1) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getLoggingLocale/-317789992=([org.hibernate.internal.CoreMessageLogger_$logger], java.util.Locale), unableToPerformJdbcCommit$str/658279170=([org.hibernate.internal.CoreMessageLogger_$logger], java.lang.String), arr-var714-init=([], java.lang.Object[]), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var644=org.hibernate.internal.CoreMessageLogger_$logger, var3140=r0, var3512=java.util.Locale, var2045=$r3, var2272=$r2, var714=java.lang.Object, var968=$r1, var2215=$r4}
; {org.hibernate.internal.CoreMessageLogger_$logger=var644, r0=var3140, java.util.Locale=var3512, $r3=var2045, $r2=var2272, java.lang.Object=var714, $r1=var968, $r4=var2215}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.internal.CoreMessageLogger_$logger;	$r3 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.util.Locale getLoggingLocale()>();	$r2 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.lang.String unableToPerformJdbcCommit$str()>();	$r1 = newarray (java.lang.Object)[0];	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r3, $r2, $r1);	return $r4
;block_num 1