(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2557 0)
(declare-sort var3126 0)
(declare-sort var484 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLoggingLocale/-1064215605 (var2557) var3126)
(declare-fun unableToPerformJdbcCommit$str/-1068909841 (var2557) String)
(declare-fun arr-var484-init () (Array Int var484))
(declare-fun String_format/-647569892 (var3126 String (Array Int var484)) String)
(declare-const null-var2557 var2557)
(declare-const var350 var2557) ; Statement: r0 := @this: org.hibernate.internal.EntityManagerMessageLogger_$logger 
(assert (not (= var350 null-var2557)))
(assert true)
(define-const var2533 var3126 (getLoggingLocale/-1064215605 var350)) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.util.Locale getLoggingLocale()>() 
(assert true)
(define-const var2016 String (unableToPerformJdbcCommit$str/-1068909841 var350)) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.lang.String unableToPerformJdbcCommit$str()>() 
(define-const var1305 (Array Int var484) arr-var484-init) ; Statement: $r1 = newarray (java.lang.Object)[0] 
(define-const var588 String (String_format/-647569892 var2533 var2016 var1305)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r3, $r2, $r1) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getLoggingLocale/-1064215605=([org.hibernate.internal.EntityManagerMessageLogger_$logger], java.util.Locale), unableToPerformJdbcCommit$str/-1068909841=([org.hibernate.internal.EntityManagerMessageLogger_$logger], java.lang.String), arr-var484-init=([], java.lang.Object[]), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2557=org.hibernate.internal.EntityManagerMessageLogger_$logger, var350=r0, var3126=java.util.Locale, var2533=$r3, var2016=$r2, var484=java.lang.Object, var1305=$r1, var588=$r4}
; {org.hibernate.internal.EntityManagerMessageLogger_$logger=var2557, r0=var350, java.util.Locale=var3126, $r3=var2533, $r2=var2016, java.lang.Object=var484, $r1=var1305, $r4=var588}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.internal.EntityManagerMessageLogger_$logger;	$r3 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.util.Locale getLoggingLocale()>();	$r2 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.lang.String unableToPerformJdbcCommit$str()>();	$r1 = newarray (java.lang.Object)[0];	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r3, $r2, $r1);	return $r4
;block_num 1