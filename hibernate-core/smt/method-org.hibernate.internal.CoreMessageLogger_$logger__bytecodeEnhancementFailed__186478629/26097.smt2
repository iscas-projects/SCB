(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1299 0)
(declare-sort var3305 0)
(declare-sort var1550 0)
(declare-sort var2202 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLoggingLocale/-317789992 (var1299) var1550)
(declare-fun bytecodeEnhancementFailed$str/-908670765 (var1299) String)
(declare-fun arr-var2202-init () (Array Int var2202))
(declare-fun cast-from-String-to-var2202 (String) var2202)
(declare-fun String_format/-647569892 (var1550 String (Array Int var2202)) String)
(declare-const null-var1299 var1299)
(declare-const null-String String)
(declare-const null-__Array__Int__var2202__ (Array Int var2202))
(declare-const var2345 var1299) ; Statement: r0 := @this: org.hibernate.internal.CoreMessageLogger_$logger 
(assert (not (= var2345 null-var1299)))
(declare-const var2376 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2376 null-String)))
(assert true)
(define-const var993 var1550 (getLoggingLocale/-317789992 var2345)) ; Statement: $r4 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.util.Locale getLoggingLocale()>() 
(assert true)
(define-const var1237 String (bytecodeEnhancementFailed$str/-908670765 var2345)) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.lang.String bytecodeEnhancementFailed$str()>() 
(define-const var1178 (Array Int var2202) arr-var2202-init) ; Statement: $r1 = newarray (java.lang.Object)[1] 
(declare-const var1178!1 (Array Int var2202))
(assert (not (= var1178!1 null-__Array__Int__var2202__)))
(assert (= (select var1178!1 0) (cast-from-String-to-var2202 var2376))) ; Statement: $r1[0] = r2 
(define-const var3325 String (String_format/-647569892 var993 var1237 var1178!1)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r4, $r3, $r1) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {getLoggingLocale/-317789992=([org.hibernate.internal.CoreMessageLogger_$logger], java.util.Locale), bytecodeEnhancementFailed$str/-908670765=([org.hibernate.internal.CoreMessageLogger_$logger], java.lang.String), arr-var2202-init=([], java.lang.Object[]), cast-from-String-to-var2202=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var1299=org.hibernate.internal.CoreMessageLogger_$logger, var2345=r0, var2376=r2, var3305=null_type, var1550=java.util.Locale, var993=$r4, var1237=$r3, var2202=java.lang.Object, var1178=$r1, var3325=$r5}
; {org.hibernate.internal.CoreMessageLogger_$logger=var1299, r0=var2345, r2=var2376, null_type=var3305, java.util.Locale=var1550, $r4=var993, $r3=var1237, java.lang.Object=var2202, $r1=var1178, $r5=var3325}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.internal.CoreMessageLogger_$logger;	r2 := @parameter0: java.lang.String;	$r4 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.util.Locale getLoggingLocale()>();	$r3 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.lang.String bytecodeEnhancementFailed$str()>();	$r1 = newarray (java.lang.Object)[1];	$r1[0] = r2;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r4, $r3, $r1);	return $r5
;block_num 1