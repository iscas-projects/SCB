(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2695 0)
(declare-sort var2315 0)
(declare-sort var1360 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLoggingLocale/-317789992 (var2695) var2315)
(declare-fun unableToCommitJta$str/-101711339 (var2695) String)
(declare-fun arr-var1360-init () (Array Int var1360))
(declare-fun String_format/-647569892 (var2315 String (Array Int var1360)) String)
(declare-const null-var2695 var2695)
(declare-const var214 var2695) ; Statement: r0 := @this: org.hibernate.internal.CoreMessageLogger_$logger 
(assert (not (= var214 null-var2695)))
(assert true)
(define-const var1053 var2315 (getLoggingLocale/-317789992 var214)) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.util.Locale getLoggingLocale()>() 
(assert true)
(define-const var1209 String (unableToCommitJta$str/-101711339 var214)) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.lang.String unableToCommitJta$str()>() 
(define-const var2724 (Array Int var1360) arr-var1360-init) ; Statement: $r1 = newarray (java.lang.Object)[0] 
(define-const var2991 String (String_format/-647569892 var1053 var1209 var2724)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r3, $r2, $r1) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getLoggingLocale/-317789992=([org.hibernate.internal.CoreMessageLogger_$logger], java.util.Locale), unableToCommitJta$str/-101711339=([org.hibernate.internal.CoreMessageLogger_$logger], java.lang.String), arr-var1360-init=([], java.lang.Object[]), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2695=org.hibernate.internal.CoreMessageLogger_$logger, var214=r0, var2315=java.util.Locale, var1053=$r3, var1209=$r2, var1360=java.lang.Object, var2724=$r1, var2991=$r4}
; {org.hibernate.internal.CoreMessageLogger_$logger=var2695, r0=var214, java.util.Locale=var2315, $r3=var1053, $r2=var1209, java.lang.Object=var1360, $r1=var2724, $r4=var2991}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.internal.CoreMessageLogger_$logger;	$r3 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.util.Locale getLoggingLocale()>();	$r2 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.lang.String unableToCommitJta$str()>();	$r1 = newarray (java.lang.Object)[0];	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r3, $r2, $r1);	return $r4
;block_num 1