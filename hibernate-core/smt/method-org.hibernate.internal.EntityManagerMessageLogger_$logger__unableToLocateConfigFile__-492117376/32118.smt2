(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3775 0)
(declare-sort var1419 0)
(declare-sort var1231 0)
(declare-sort var1862 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLoggingLocale/-1064215605 (var3775) var1231)
(declare-fun unableToLocateConfigFile$str/-116347986 (var3775) String)
(declare-fun arr-var1862-init () (Array Int var1862))
(declare-fun cast-from-String-to-var1862 (String) var1862)
(declare-fun String_format/-647569892 (var1231 String (Array Int var1862)) String)
(declare-const null-var3775 var3775)
(declare-const null-String String)
(declare-const null-__Array__Int__var1862__ (Array Int var1862))
(declare-const var3704 var3775) ; Statement: r0 := @this: org.hibernate.internal.EntityManagerMessageLogger_$logger 
(assert (not (= var3704 null-var3775)))
(declare-const var3766 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3766 null-String)))
(assert true)
(define-const var586 var1231 (getLoggingLocale/-1064215605 var3704)) ; Statement: $r4 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.util.Locale getLoggingLocale()>() 
(assert true)
(define-const var1293 String (unableToLocateConfigFile$str/-116347986 var3704)) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.lang.String unableToLocateConfigFile$str()>() 
(define-const var3599 (Array Int var1862) arr-var1862-init) ; Statement: $r1 = newarray (java.lang.Object)[1] 
(declare-const var3599!1 (Array Int var1862))
(assert (not (= var3599!1 null-__Array__Int__var1862__)))
(assert (= (select var3599!1 0) (cast-from-String-to-var1862 var3766))) ; Statement: $r1[0] = r2 
(define-const var1415 String (String_format/-647569892 var586 var1293 var3599!1)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r4, $r3, $r1) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {getLoggingLocale/-1064215605=([org.hibernate.internal.EntityManagerMessageLogger_$logger], java.util.Locale), unableToLocateConfigFile$str/-116347986=([org.hibernate.internal.EntityManagerMessageLogger_$logger], java.lang.String), arr-var1862-init=([], java.lang.Object[]), cast-from-String-to-var1862=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var3775=org.hibernate.internal.EntityManagerMessageLogger_$logger, var3704=r0, var3766=r2, var1419=null_type, var1231=java.util.Locale, var586=$r4, var1293=$r3, var1862=java.lang.Object, var3599=$r1, var1415=$r5}
; {org.hibernate.internal.EntityManagerMessageLogger_$logger=var3775, r0=var3704, r2=var3766, null_type=var1419, java.util.Locale=var1231, $r4=var586, $r3=var1293, java.lang.Object=var1862, $r1=var3599, $r5=var1415}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.internal.EntityManagerMessageLogger_$logger;	r2 := @parameter0: java.lang.String;	$r4 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.util.Locale getLoggingLocale()>();	$r3 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.lang.String unableToLocateConfigFile$str()>();	$r1 = newarray (java.lang.Object)[1];	$r1[0] = r2;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r4, $r3, $r1);	return $r5
;block_num 1