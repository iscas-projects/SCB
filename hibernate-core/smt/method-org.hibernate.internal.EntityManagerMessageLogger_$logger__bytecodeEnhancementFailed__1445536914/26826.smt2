(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1013 0)
(declare-sort var729 0)
(declare-sort var2876 0)
(declare-sort var3751 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLoggingLocale/-1064215605 (var1013) var2876)
(declare-fun bytecodeEnhancementFailed$str/1659107520 (var1013) String)
(declare-fun arr-var3751-init () (Array Int var3751))
(declare-fun cast-from-String-to-var3751 (String) var3751)
(declare-fun String_format/-647569892 (var2876 String (Array Int var3751)) String)
(declare-const null-var1013 var1013)
(declare-const null-String String)
(declare-const null-__Array__Int__var3751__ (Array Int var3751))
(declare-const var2306 var1013) ; Statement: r0 := @this: org.hibernate.internal.EntityManagerMessageLogger_$logger 
(assert (not (= var2306 null-var1013)))
(declare-const var2916 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2916 null-String)))
(assert true)
(define-const var1422 var2876 (getLoggingLocale/-1064215605 var2306)) ; Statement: $r4 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.util.Locale getLoggingLocale()>() 
(assert true)
(define-const var1655 String (bytecodeEnhancementFailed$str/1659107520 var2306)) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.lang.String bytecodeEnhancementFailed$str()>() 
(define-const var3210 (Array Int var3751) arr-var3751-init) ; Statement: $r1 = newarray (java.lang.Object)[1] 
(declare-const var3210!1 (Array Int var3751))
(assert (not (= var3210!1 null-__Array__Int__var3751__)))
(assert (= (select var3210!1 0) (cast-from-String-to-var3751 var2916))) ; Statement: $r1[0] = r2 
(define-const var3397 String (String_format/-647569892 var1422 var1655 var3210!1)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r4, $r3, $r1) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {getLoggingLocale/-1064215605=([org.hibernate.internal.EntityManagerMessageLogger_$logger], java.util.Locale), bytecodeEnhancementFailed$str/1659107520=([org.hibernate.internal.EntityManagerMessageLogger_$logger], java.lang.String), arr-var3751-init=([], java.lang.Object[]), cast-from-String-to-var3751=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var1013=org.hibernate.internal.EntityManagerMessageLogger_$logger, var2306=r0, var2916=r2, var729=null_type, var2876=java.util.Locale, var1422=$r4, var1655=$r3, var3751=java.lang.Object, var3210=$r1, var3397=$r5}
; {org.hibernate.internal.EntityManagerMessageLogger_$logger=var1013, r0=var2306, r2=var2916, null_type=var729, java.util.Locale=var2876, $r4=var1422, $r3=var1655, java.lang.Object=var3751, $r1=var3210, $r5=var3397}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.internal.EntityManagerMessageLogger_$logger;	r2 := @parameter0: java.lang.String;	$r4 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.util.Locale getLoggingLocale()>();	$r3 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.lang.String bytecodeEnhancementFailed$str()>();	$r1 = newarray (java.lang.Object)[1];	$r1[0] = r2;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r4, $r3, $r1);	return $r5
;block_num 1