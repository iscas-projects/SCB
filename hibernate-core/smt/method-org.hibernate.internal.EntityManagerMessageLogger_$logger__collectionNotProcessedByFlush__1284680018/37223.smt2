(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2996 0)
(declare-sort var2328 0)
(declare-sort var2183 0)
(declare-sort var428 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLoggingLocale/-1064215605 (var2996) var2183)
(declare-fun collectionNotProcessedByFlush$str/769564032 (var2996) String)
(declare-fun arr-var428-init () (Array Int var428))
(declare-fun cast-from-String-to-var428 (String) var428)
(declare-fun String_format/-647569892 (var2183 String (Array Int var428)) String)
(declare-const null-var2996 var2996)
(declare-const null-String String)
(declare-const null-__Array__Int__var428__ (Array Int var428))
(declare-const var3989 var2996) ; Statement: r0 := @this: org.hibernate.internal.EntityManagerMessageLogger_$logger 
(assert (not (= var3989 null-var2996)))
(declare-const var82 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var82 null-String)))
(assert true)
(define-const var1398 var2183 (getLoggingLocale/-1064215605 var3989)) ; Statement: $r4 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.util.Locale getLoggingLocale()>() 
(assert true)
(define-const var3900 String (collectionNotProcessedByFlush$str/769564032 var3989)) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.lang.String collectionNotProcessedByFlush$str()>() 
(define-const var2898 (Array Int var428) arr-var428-init) ; Statement: $r1 = newarray (java.lang.Object)[1] 
(declare-const var2898!1 (Array Int var428))
(assert (not (= var2898!1 null-__Array__Int__var428__)))
(assert (= (select var2898!1 0) (cast-from-String-to-var428 var82))) ; Statement: $r1[0] = r2 
(define-const var3264 String (String_format/-647569892 var1398 var3900 var2898!1)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r4, $r3, $r1) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {getLoggingLocale/-1064215605=([org.hibernate.internal.EntityManagerMessageLogger_$logger], java.util.Locale), collectionNotProcessedByFlush$str/769564032=([org.hibernate.internal.EntityManagerMessageLogger_$logger], java.lang.String), arr-var428-init=([], java.lang.Object[]), cast-from-String-to-var428=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2996=org.hibernate.internal.EntityManagerMessageLogger_$logger, var3989=r0, var82=r2, var2328=null_type, var2183=java.util.Locale, var1398=$r4, var3900=$r3, var428=java.lang.Object, var2898=$r1, var3264=$r5}
; {org.hibernate.internal.EntityManagerMessageLogger_$logger=var2996, r0=var3989, r2=var82, null_type=var2328, java.util.Locale=var2183, $r4=var1398, $r3=var3900, java.lang.Object=var428, $r1=var2898, $r5=var3264}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.internal.EntityManagerMessageLogger_$logger;	r2 := @parameter0: java.lang.String;	$r4 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.util.Locale getLoggingLocale()>();	$r3 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.lang.String collectionNotProcessedByFlush$str()>();	$r1 = newarray (java.lang.Object)[1];	$r1[0] = r2;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r4, $r3, $r1);	return $r5
;block_num 1