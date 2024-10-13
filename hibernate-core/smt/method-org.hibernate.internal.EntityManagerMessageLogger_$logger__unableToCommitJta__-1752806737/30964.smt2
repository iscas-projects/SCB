(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2747 0)
(declare-sort var3426 0)
(declare-sort var2986 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLoggingLocale/-1064215605 (var2747) var3426)
(declare-fun unableToCommitJta$str/785280770 (var2747) String)
(declare-fun arr-var2986-init () (Array Int var2986))
(declare-fun String_format/-647569892 (var3426 String (Array Int var2986)) String)
(declare-const null-var2747 var2747)
(declare-const var3711 var2747) ; Statement: r0 := @this: org.hibernate.internal.EntityManagerMessageLogger_$logger 
(assert (not (= var3711 null-var2747)))
(assert true)
(define-const var2121 var3426 (getLoggingLocale/-1064215605 var3711)) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.util.Locale getLoggingLocale()>() 
(assert true)
(define-const var257 String (unableToCommitJta$str/785280770 var3711)) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.lang.String unableToCommitJta$str()>() 
(define-const var1472 (Array Int var2986) arr-var2986-init) ; Statement: $r1 = newarray (java.lang.Object)[0] 
(define-const var2503 String (String_format/-647569892 var2121 var257 var1472)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r3, $r2, $r1) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getLoggingLocale/-1064215605=([org.hibernate.internal.EntityManagerMessageLogger_$logger], java.util.Locale), unableToCommitJta$str/785280770=([org.hibernate.internal.EntityManagerMessageLogger_$logger], java.lang.String), arr-var2986-init=([], java.lang.Object[]), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2747=org.hibernate.internal.EntityManagerMessageLogger_$logger, var3711=r0, var3426=java.util.Locale, var2121=$r3, var257=$r2, var2986=java.lang.Object, var1472=$r1, var2503=$r4}
; {org.hibernate.internal.EntityManagerMessageLogger_$logger=var2747, r0=var3711, java.util.Locale=var3426, $r3=var2121, $r2=var257, java.lang.Object=var2986, $r1=var1472, $r4=var2503}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.internal.EntityManagerMessageLogger_$logger;	$r3 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.util.Locale getLoggingLocale()>();	$r2 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.lang.String unableToCommitJta$str()>();	$r1 = newarray (java.lang.Object)[0];	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r3, $r2, $r1);	return $r4
;block_num 1