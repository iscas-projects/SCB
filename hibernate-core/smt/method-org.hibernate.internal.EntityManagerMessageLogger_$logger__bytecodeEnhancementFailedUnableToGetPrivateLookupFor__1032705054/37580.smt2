(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2465 0)
(declare-sort var1905 0)
(declare-sort var866 0)
(declare-sort var1967 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLoggingLocale/-1064215605 (var2465) var866)
(declare-fun bytecodeEnhancementFailedUnableToGetPrivateLookupFor$str/-1131767220 (var2465) String)
(declare-fun arr-var1967-init () (Array Int var1967))
(declare-fun cast-from-String-to-var1967 (String) var1967)
(declare-fun String_format/-647569892 (var866 String (Array Int var1967)) String)
(declare-const null-var2465 var2465)
(declare-const null-String String)
(declare-const null-__Array__Int__var1967__ (Array Int var1967))
(declare-const var3069 var2465) ; Statement: r0 := @this: org.hibernate.internal.EntityManagerMessageLogger_$logger 
(assert (not (= var3069 null-var2465)))
(declare-const var765 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var765 null-String)))
(assert true)
(define-const var1058 var866 (getLoggingLocale/-1064215605 var3069)) ; Statement: $r4 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.util.Locale getLoggingLocale()>() 
(assert true)
(define-const var1993 String (bytecodeEnhancementFailedUnableToGetPrivateLookupFor$str/-1131767220 var3069)) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.lang.String bytecodeEnhancementFailedUnableToGetPrivateLookupFor$str()>() 
(define-const var2292 (Array Int var1967) arr-var1967-init) ; Statement: $r1 = newarray (java.lang.Object)[1] 
(declare-const var2292!1 (Array Int var1967))
(assert (not (= var2292!1 null-__Array__Int__var1967__)))
(assert (= (select var2292!1 0) (cast-from-String-to-var1967 var765))) ; Statement: $r1[0] = r2 
(define-const var1743 String (String_format/-647569892 var1058 var1993 var2292!1)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r4, $r3, $r1) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {getLoggingLocale/-1064215605=([org.hibernate.internal.EntityManagerMessageLogger_$logger], java.util.Locale), bytecodeEnhancementFailedUnableToGetPrivateLookupFor$str/-1131767220=([org.hibernate.internal.EntityManagerMessageLogger_$logger], java.lang.String), arr-var1967-init=([], java.lang.Object[]), cast-from-String-to-var1967=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2465=org.hibernate.internal.EntityManagerMessageLogger_$logger, var3069=r0, var765=r2, var1905=null_type, var866=java.util.Locale, var1058=$r4, var1993=$r3, var1967=java.lang.Object, var2292=$r1, var1743=$r5}
; {org.hibernate.internal.EntityManagerMessageLogger_$logger=var2465, r0=var3069, r2=var765, null_type=var1905, java.util.Locale=var866, $r4=var1058, $r3=var1993, java.lang.Object=var1967, $r1=var2292, $r5=var1743}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.internal.EntityManagerMessageLogger_$logger;	r2 := @parameter0: java.lang.String;	$r4 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.util.Locale getLoggingLocale()>();	$r3 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.lang.String bytecodeEnhancementFailedUnableToGetPrivateLookupFor$str()>();	$r1 = newarray (java.lang.Object)[1];	$r1[0] = r2;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r4, $r3, $r1);	return $r5
;block_num 1