(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var36 0)
(declare-sort var2216 0)
(declare-sort var2605 0)
(declare-sort var3937 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLoggingLocale/-1064215605 (var36) var2605)
(declare-fun unableToUpdateHiValue$str/2007387099 (var36) String)
(declare-fun arr-var3937-init () (Array Int var3937))
(declare-fun cast-from-String-to-var3937 (String) var3937)
(declare-fun String_format/-647569892 (var2605 String (Array Int var3937)) String)
(declare-const null-var36 var36)
(declare-const null-String String)
(declare-const null-__Array__Int__var3937__ (Array Int var3937))
(declare-const var849 var36) ; Statement: r0 := @this: org.hibernate.internal.EntityManagerMessageLogger_$logger 
(assert (not (= var849 null-var36)))
(declare-const var3047 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3047 null-String)))
(assert true)
(define-const var1961 var2605 (getLoggingLocale/-1064215605 var849)) ; Statement: $r4 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.util.Locale getLoggingLocale()>() 
(assert true)
(define-const var639 String (unableToUpdateHiValue$str/2007387099 var849)) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.lang.String unableToUpdateHiValue$str()>() 
(define-const var3003 (Array Int var3937) arr-var3937-init) ; Statement: $r1 = newarray (java.lang.Object)[1] 
(declare-const var3003!1 (Array Int var3937))
(assert (not (= var3003!1 null-__Array__Int__var3937__)))
(assert (= (select var3003!1 0) (cast-from-String-to-var3937 var3047))) ; Statement: $r1[0] = r2 
(define-const var92 String (String_format/-647569892 var1961 var639 var3003!1)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r4, $r3, $r1) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {getLoggingLocale/-1064215605=([org.hibernate.internal.EntityManagerMessageLogger_$logger], java.util.Locale), unableToUpdateHiValue$str/2007387099=([org.hibernate.internal.EntityManagerMessageLogger_$logger], java.lang.String), arr-var3937-init=([], java.lang.Object[]), cast-from-String-to-var3937=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var36=org.hibernate.internal.EntityManagerMessageLogger_$logger, var849=r0, var3047=r2, var2216=null_type, var2605=java.util.Locale, var1961=$r4, var639=$r3, var3937=java.lang.Object, var3003=$r1, var92=$r5}
; {org.hibernate.internal.EntityManagerMessageLogger_$logger=var36, r0=var849, r2=var3047, null_type=var2216, java.util.Locale=var2605, $r4=var1961, $r3=var639, java.lang.Object=var3937, $r1=var3003, $r5=var92}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.internal.EntityManagerMessageLogger_$logger;	r2 := @parameter0: java.lang.String;	$r4 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.util.Locale getLoggingLocale()>();	$r3 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.lang.String unableToUpdateHiValue$str()>();	$r1 = newarray (java.lang.Object)[1];	$r1[0] = r2;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r4, $r3, $r1);	return $r5
;block_num 1