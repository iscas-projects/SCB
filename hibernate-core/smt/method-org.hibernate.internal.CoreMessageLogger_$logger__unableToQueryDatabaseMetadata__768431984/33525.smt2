(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3090 0)
(declare-sort var3495 0)
(declare-sort var2409 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLoggingLocale/-317789992 (var3090) var3495)
(declare-fun unableToQueryDatabaseMetadata$str/-45141181 (var3090) String)
(declare-fun arr-var2409-init () (Array Int var2409))
(declare-fun String_format/-647569892 (var3495 String (Array Int var2409)) String)
(declare-const null-var3090 var3090)
(declare-const var264 var3090) ; Statement: r0 := @this: org.hibernate.internal.CoreMessageLogger_$logger 
(assert (not (= var264 null-var3090)))
(assert true)
(define-const var2744 var3495 (getLoggingLocale/-317789992 var264)) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.util.Locale getLoggingLocale()>() 
(assert true)
(define-const var8 String (unableToQueryDatabaseMetadata$str/-45141181 var264)) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.lang.String unableToQueryDatabaseMetadata$str()>() 
(define-const var3173 (Array Int var2409) arr-var2409-init) ; Statement: $r1 = newarray (java.lang.Object)[0] 
(define-const var990 String (String_format/-647569892 var2744 var8 var3173)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r3, $r2, $r1) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getLoggingLocale/-317789992=([org.hibernate.internal.CoreMessageLogger_$logger], java.util.Locale), unableToQueryDatabaseMetadata$str/-45141181=([org.hibernate.internal.CoreMessageLogger_$logger], java.lang.String), arr-var2409-init=([], java.lang.Object[]), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var3090=org.hibernate.internal.CoreMessageLogger_$logger, var264=r0, var3495=java.util.Locale, var2744=$r3, var8=$r2, var2409=java.lang.Object, var3173=$r1, var990=$r4}
; {org.hibernate.internal.CoreMessageLogger_$logger=var3090, r0=var264, java.util.Locale=var3495, $r3=var2744, $r2=var8, java.lang.Object=var2409, $r1=var3173, $r4=var990}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.internal.CoreMessageLogger_$logger;	$r3 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.util.Locale getLoggingLocale()>();	$r2 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.lang.String unableToQueryDatabaseMetadata$str()>();	$r1 = newarray (java.lang.Object)[0];	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r3, $r2, $r1);	return $r4
;block_num 1