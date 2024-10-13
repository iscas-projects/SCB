(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1193 0)
(declare-sort var3247 0)
(declare-sort var1506 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLoggingLocale/-1064215605 (var1193) var3247)
(declare-fun unableToRollbackJta$str/882449391 (var1193) String)
(declare-fun arr-var1506-init () (Array Int var1506))
(declare-fun String_format/-647569892 (var3247 String (Array Int var1506)) String)
(declare-const null-var1193 var1193)
(declare-const var549 var1193) ; Statement: r0 := @this: org.hibernate.internal.EntityManagerMessageLogger_$logger 
(assert (not (= var549 null-var1193)))
(assert true)
(define-const var2338 var3247 (getLoggingLocale/-1064215605 var549)) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.util.Locale getLoggingLocale()>() 
(assert true)
(define-const var3756 String (unableToRollbackJta$str/882449391 var549)) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.lang.String unableToRollbackJta$str()>() 
(define-const var345 (Array Int var1506) arr-var1506-init) ; Statement: $r1 = newarray (java.lang.Object)[0] 
(define-const var3787 String (String_format/-647569892 var2338 var3756 var345)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r3, $r2, $r1) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getLoggingLocale/-1064215605=([org.hibernate.internal.EntityManagerMessageLogger_$logger], java.util.Locale), unableToRollbackJta$str/882449391=([org.hibernate.internal.EntityManagerMessageLogger_$logger], java.lang.String), arr-var1506-init=([], java.lang.Object[]), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var1193=org.hibernate.internal.EntityManagerMessageLogger_$logger, var549=r0, var3247=java.util.Locale, var2338=$r3, var3756=$r2, var1506=java.lang.Object, var345=$r1, var3787=$r4}
; {org.hibernate.internal.EntityManagerMessageLogger_$logger=var1193, r0=var549, java.util.Locale=var3247, $r3=var2338, $r2=var3756, java.lang.Object=var1506, $r1=var345, $r4=var3787}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.internal.EntityManagerMessageLogger_$logger;	$r3 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.util.Locale getLoggingLocale()>();	$r2 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.lang.String unableToRollbackJta$str()>();	$r1 = newarray (java.lang.Object)[0];	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r3, $r2, $r1);	return $r4
;block_num 1