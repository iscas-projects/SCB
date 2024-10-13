(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var424 0)
(declare-sort var797 0)
(declare-sort var1739 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLoggingLocale/-317789992 (var424) var797)
(declare-fun unableToRollbackJta$str/-1113442750 (var424) String)
(declare-fun arr-var1739-init () (Array Int var1739))
(declare-fun String_format/-647569892 (var797 String (Array Int var1739)) String)
(declare-const null-var424 var424)
(declare-const var1033 var424) ; Statement: r0 := @this: org.hibernate.internal.CoreMessageLogger_$logger 
(assert (not (= var1033 null-var424)))
(assert true)
(define-const var3493 var797 (getLoggingLocale/-317789992 var1033)) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.util.Locale getLoggingLocale()>() 
(assert true)
(define-const var2478 String (unableToRollbackJta$str/-1113442750 var1033)) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.lang.String unableToRollbackJta$str()>() 
(define-const var2733 (Array Int var1739) arr-var1739-init) ; Statement: $r1 = newarray (java.lang.Object)[0] 
(define-const var2002 String (String_format/-647569892 var3493 var2478 var2733)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r3, $r2, $r1) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getLoggingLocale/-317789992=([org.hibernate.internal.CoreMessageLogger_$logger], java.util.Locale), unableToRollbackJta$str/-1113442750=([org.hibernate.internal.CoreMessageLogger_$logger], java.lang.String), arr-var1739-init=([], java.lang.Object[]), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var424=org.hibernate.internal.CoreMessageLogger_$logger, var1033=r0, var797=java.util.Locale, var3493=$r3, var2478=$r2, var1739=java.lang.Object, var2733=$r1, var2002=$r4}
; {org.hibernate.internal.CoreMessageLogger_$logger=var424, r0=var1033, java.util.Locale=var797, $r3=var3493, $r2=var2478, java.lang.Object=var1739, $r1=var2733, $r4=var2002}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.internal.CoreMessageLogger_$logger;	$r3 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.util.Locale getLoggingLocale()>();	$r2 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.lang.String unableToRollbackJta$str()>();	$r1 = newarray (java.lang.Object)[0];	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r3, $r2, $r1);	return $r4
;block_num 1