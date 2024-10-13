(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1344 0)
(declare-sort var801 0)
(declare-sort var1333 0)
(declare-sort var3816 0)
(declare-sort var2676 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLoggingLocale/-2147365854 (var1344) var3816)
(declare-fun fileDoesNotExist$str/-1869387446 (var1344) String)
(declare-fun arr-var2676-init () (Array Int var2676))
(declare-fun cast-from-String-to-var2676 (String) var2676)
(declare-fun cast-from-var1333-to-var2676 (var1333) var2676)
(declare-fun String_format/-647569892 (var3816 String (Array Int var2676)) String)
(declare-const null-var1344 var1344)
(declare-const null-String String)
(declare-const null-var1333 var1333)
(declare-const null-__Array__Int__var2676__ (Array Int var2676))
(declare-const var332 var1344) ; Statement: r0 := @this: org.hibernate.internal.log.UrlMessageBundle_$logger 
(assert (not (= var332 null-var1344)))
(declare-const var3019 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3019 null-String)))
(declare-const var1650 var1333) ; Statement: r3 := @parameter1: java.net.URL 
(assert (not (= var1650 null-var1333)))
(assert true)
(define-const var1026 var3816 (getLoggingLocale/-2147365854 var332)) ; Statement: $r5 = virtualinvoke r0.<org.hibernate.internal.log.UrlMessageBundle_$logger: java.util.Locale getLoggingLocale()>() 
(assert true)
(define-const var1181 String (fileDoesNotExist$str/-1869387446 var332)) ; Statement: $r4 = virtualinvoke r0.<org.hibernate.internal.log.UrlMessageBundle_$logger: java.lang.String fileDoesNotExist$str()>() 
(define-const var2335 (Array Int var2676) arr-var2676-init) ; Statement: $r1 = newarray (java.lang.Object)[2] 
(declare-const var2335!1 (Array Int var2676))
(assert (not (= var2335!1 null-__Array__Int__var2676__)))
(assert (= (select var2335!1 0) (cast-from-String-to-var2676 var3019))) ; Statement: $r1[0] = r2 
(declare-const var2335!2 (Array Int var2676))
(assert (not (= var2335!2 null-__Array__Int__var2676__)))
(assert (= (select var2335!2 1) (cast-from-var1333-to-var2676 var1650))) ; Statement: $r1[1] = r3 
(define-const var188 String (String_format/-647569892 var1026 var1181 var2335!2)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r5, $r4, $r1) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {getLoggingLocale/-2147365854=([org.hibernate.internal.log.UrlMessageBundle_$logger], java.util.Locale), fileDoesNotExist$str/-1869387446=([org.hibernate.internal.log.UrlMessageBundle_$logger], java.lang.String), arr-var2676-init=([], java.lang.Object[]), cast-from-String-to-var2676=([java.lang.String], java.lang.Object), cast-from-var1333-to-var2676=([java.net.URL], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var1344=org.hibernate.internal.log.UrlMessageBundle_$logger, var332=r0, var3019=r2, var801=null_type, var1333=java.net.URL, var1650=r3, var3816=java.util.Locale, var1026=$r5, var1181=$r4, var2676=java.lang.Object, var2335=$r1, var188=$r6}
; {org.hibernate.internal.log.UrlMessageBundle_$logger=var1344, r0=var332, r2=var3019, null_type=var801, java.net.URL=var1333, r3=var1650, java.util.Locale=var3816, $r5=var1026, $r4=var1181, java.lang.Object=var2676, $r1=var2335, $r6=var188}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.internal.log.UrlMessageBundle_$logger;	r2 := @parameter0: java.lang.String;	r3 := @parameter1: java.net.URL;	$r5 = virtualinvoke r0.<org.hibernate.internal.log.UrlMessageBundle_$logger: java.util.Locale getLoggingLocale()>();	$r4 = virtualinvoke r0.<org.hibernate.internal.log.UrlMessageBundle_$logger: java.lang.String fileDoesNotExist$str()>();	$r1 = newarray (java.lang.Object)[2];	$r1[0] = r2;	$r1[1] = r3;	$r6 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r5, $r4, $r1);	return $r6
;block_num 1