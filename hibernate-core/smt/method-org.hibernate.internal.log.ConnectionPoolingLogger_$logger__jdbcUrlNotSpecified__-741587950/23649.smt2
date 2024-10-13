(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1940 0)
(declare-sort var430 0)
(declare-sort var1850 0)
(declare-sort var751 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLoggingLocale/1139526286 (var1940) var1850)
(declare-fun jdbcUrlNotSpecified$str/-526755776 (var1940) String)
(declare-fun arr-var751-init () (Array Int var751))
(declare-fun cast-from-String-to-var751 (String) var751)
(declare-fun String_format/-647569892 (var1850 String (Array Int var751)) String)
(declare-const null-var1940 var1940)
(declare-const null-String String)
(declare-const null-__Array__Int__var751__ (Array Int var751))
(declare-const var3179 var1940) ; Statement: r0 := @this: org.hibernate.internal.log.ConnectionPoolingLogger_$logger 
(assert (not (= var3179 null-var1940)))
(declare-const var555 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var555 null-String)))
(assert true)
(define-const var62 var1850 (getLoggingLocale/1139526286 var3179)) ; Statement: $r4 = virtualinvoke r0.<org.hibernate.internal.log.ConnectionPoolingLogger_$logger: java.util.Locale getLoggingLocale()>() 
(assert true)
(define-const var2394 String (jdbcUrlNotSpecified$str/-526755776 var3179)) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.internal.log.ConnectionPoolingLogger_$logger: java.lang.String jdbcUrlNotSpecified$str()>() 
(define-const var3597 (Array Int var751) arr-var751-init) ; Statement: $r1 = newarray (java.lang.Object)[1] 
(declare-const var3597!1 (Array Int var751))
(assert (not (= var3597!1 null-__Array__Int__var751__)))
(assert (= (select var3597!1 0) (cast-from-String-to-var751 var555))) ; Statement: $r1[0] = r2 
(define-const var2843 String (String_format/-647569892 var62 var2394 var3597!1)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r4, $r3, $r1) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {getLoggingLocale/1139526286=([org.hibernate.internal.log.ConnectionPoolingLogger_$logger], java.util.Locale), jdbcUrlNotSpecified$str/-526755776=([org.hibernate.internal.log.ConnectionPoolingLogger_$logger], java.lang.String), arr-var751-init=([], java.lang.Object[]), cast-from-String-to-var751=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var1940=org.hibernate.internal.log.ConnectionPoolingLogger_$logger, var3179=r0, var555=r2, var430=null_type, var1850=java.util.Locale, var62=$r4, var2394=$r3, var751=java.lang.Object, var3597=$r1, var2843=$r5}
; {org.hibernate.internal.log.ConnectionPoolingLogger_$logger=var1940, r0=var3179, r2=var555, null_type=var430, java.util.Locale=var1850, $r4=var62, $r3=var2394, java.lang.Object=var751, $r1=var3597, $r5=var2843}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.internal.log.ConnectionPoolingLogger_$logger;	r2 := @parameter0: java.lang.String;	$r4 = virtualinvoke r0.<org.hibernate.internal.log.ConnectionPoolingLogger_$logger: java.util.Locale getLoggingLocale()>();	$r3 = virtualinvoke r0.<org.hibernate.internal.log.ConnectionPoolingLogger_$logger: java.lang.String jdbcUrlNotSpecified$str()>();	$r1 = newarray (java.lang.Object)[1];	$r1[0] = r2;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r4, $r3, $r1);	return $r5
;block_num 1