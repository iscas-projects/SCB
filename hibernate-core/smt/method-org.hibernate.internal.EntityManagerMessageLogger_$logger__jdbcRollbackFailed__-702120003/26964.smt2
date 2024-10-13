(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3828 0)
(declare-sort var2032 0)
(declare-sort var1213 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLoggingLocale/-1064215605 (var3828) var2032)
(declare-fun jdbcRollbackFailed$str/152136976 (var3828) String)
(declare-fun arr-var1213-init () (Array Int var1213))
(declare-fun String_format/-647569892 (var2032 String (Array Int var1213)) String)
(declare-const null-var3828 var3828)
(declare-const var3925 var3828) ; Statement: r0 := @this: org.hibernate.internal.EntityManagerMessageLogger_$logger 
(assert (not (= var3925 null-var3828)))
(assert true)
(define-const var365 var2032 (getLoggingLocale/-1064215605 var3925)) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.util.Locale getLoggingLocale()>() 
(assert true)
(define-const var1333 String (jdbcRollbackFailed$str/152136976 var3925)) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.lang.String jdbcRollbackFailed$str()>() 
(define-const var1823 (Array Int var1213) arr-var1213-init) ; Statement: $r1 = newarray (java.lang.Object)[0] 
(define-const var412 String (String_format/-647569892 var365 var1333 var1823)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r3, $r2, $r1) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getLoggingLocale/-1064215605=([org.hibernate.internal.EntityManagerMessageLogger_$logger], java.util.Locale), jdbcRollbackFailed$str/152136976=([org.hibernate.internal.EntityManagerMessageLogger_$logger], java.lang.String), arr-var1213-init=([], java.lang.Object[]), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var3828=org.hibernate.internal.EntityManagerMessageLogger_$logger, var3925=r0, var2032=java.util.Locale, var365=$r3, var1333=$r2, var1213=java.lang.Object, var1823=$r1, var412=$r4}
; {org.hibernate.internal.EntityManagerMessageLogger_$logger=var3828, r0=var3925, java.util.Locale=var2032, $r3=var365, $r2=var1333, java.lang.Object=var1213, $r1=var1823, $r4=var412}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.internal.EntityManagerMessageLogger_$logger;	$r3 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.util.Locale getLoggingLocale()>();	$r2 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.lang.String jdbcRollbackFailed$str()>();	$r1 = newarray (java.lang.Object)[0];	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r3, $r2, $r1);	return $r4
;block_num 1