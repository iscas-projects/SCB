(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2596 0)
(declare-sort var2656 0)
(declare-sort var1980 0)
(declare-sort var59 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLoggingLocale/-317789992 (var2596) var1980)
(declare-fun unableToReadHiValue$str/185020603 (var2596) String)
(declare-fun arr-var59-init () (Array Int var59))
(declare-fun cast-from-String-to-var59 (String) var59)
(declare-fun String_format/-647569892 (var1980 String (Array Int var59)) String)
(declare-const null-var2596 var2596)
(declare-const null-String String)
(declare-const null-__Array__Int__var59__ (Array Int var59))
(declare-const var871 var2596) ; Statement: r0 := @this: org.hibernate.internal.CoreMessageLogger_$logger 
(assert (not (= var871 null-var2596)))
(declare-const var1886 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1886 null-String)))
(assert true)
(define-const var1089 var1980 (getLoggingLocale/-317789992 var871)) ; Statement: $r4 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.util.Locale getLoggingLocale()>() 
(assert true)
(define-const var459 String (unableToReadHiValue$str/185020603 var871)) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.lang.String unableToReadHiValue$str()>() 
(define-const var2238 (Array Int var59) arr-var59-init) ; Statement: $r1 = newarray (java.lang.Object)[1] 
(declare-const var2238!1 (Array Int var59))
(assert (not (= var2238!1 null-__Array__Int__var59__)))
(assert (= (select var2238!1 0) (cast-from-String-to-var59 var1886))) ; Statement: $r1[0] = r2 
(define-const var422 String (String_format/-647569892 var1089 var459 var2238!1)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r4, $r3, $r1) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {getLoggingLocale/-317789992=([org.hibernate.internal.CoreMessageLogger_$logger], java.util.Locale), unableToReadHiValue$str/185020603=([org.hibernate.internal.CoreMessageLogger_$logger], java.lang.String), arr-var59-init=([], java.lang.Object[]), cast-from-String-to-var59=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2596=org.hibernate.internal.CoreMessageLogger_$logger, var871=r0, var1886=r2, var2656=null_type, var1980=java.util.Locale, var1089=$r4, var459=$r3, var59=java.lang.Object, var2238=$r1, var422=$r5}
; {org.hibernate.internal.CoreMessageLogger_$logger=var2596, r0=var871, r2=var1886, null_type=var2656, java.util.Locale=var1980, $r4=var1089, $r3=var459, java.lang.Object=var59, $r1=var2238, $r5=var422}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.internal.CoreMessageLogger_$logger;	r2 := @parameter0: java.lang.String;	$r4 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.util.Locale getLoggingLocale()>();	$r3 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.lang.String unableToReadHiValue$str()>();	$r1 = newarray (java.lang.Object)[1];	$r1[0] = r2;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r4, $r3, $r1);	return $r5
;block_num 1