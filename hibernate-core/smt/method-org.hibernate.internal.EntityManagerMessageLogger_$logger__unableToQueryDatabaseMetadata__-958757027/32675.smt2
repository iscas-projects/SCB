(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1363 0)
(declare-sort var2321 0)
(declare-sort var1630 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLoggingLocale/-1064215605 (var1363) var2321)
(declare-fun unableToQueryDatabaseMetadata$str/-348609360 (var1363) String)
(declare-fun arr-var1630-init () (Array Int var1630))
(declare-fun String_format/-647569892 (var2321 String (Array Int var1630)) String)
(declare-const null-var1363 var1363)
(declare-const var192 var1363) ; Statement: r0 := @this: org.hibernate.internal.EntityManagerMessageLogger_$logger 
(assert (not (= var192 null-var1363)))
(assert true)
(define-const var730 var2321 (getLoggingLocale/-1064215605 var192)) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.util.Locale getLoggingLocale()>() 
(assert true)
(define-const var1334 String (unableToQueryDatabaseMetadata$str/-348609360 var192)) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.lang.String unableToQueryDatabaseMetadata$str()>() 
(define-const var1748 (Array Int var1630) arr-var1630-init) ; Statement: $r1 = newarray (java.lang.Object)[0] 
(define-const var3064 String (String_format/-647569892 var730 var1334 var1748)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r3, $r2, $r1) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getLoggingLocale/-1064215605=([org.hibernate.internal.EntityManagerMessageLogger_$logger], java.util.Locale), unableToQueryDatabaseMetadata$str/-348609360=([org.hibernate.internal.EntityManagerMessageLogger_$logger], java.lang.String), arr-var1630-init=([], java.lang.Object[]), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var1363=org.hibernate.internal.EntityManagerMessageLogger_$logger, var192=r0, var2321=java.util.Locale, var730=$r3, var1334=$r2, var1630=java.lang.Object, var1748=$r1, var3064=$r4}
; {org.hibernate.internal.EntityManagerMessageLogger_$logger=var1363, r0=var192, java.util.Locale=var2321, $r3=var730, $r2=var1334, java.lang.Object=var1630, $r1=var1748, $r4=var3064}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.internal.EntityManagerMessageLogger_$logger;	$r3 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.util.Locale getLoggingLocale()>();	$r2 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.lang.String unableToQueryDatabaseMetadata$str()>();	$r1 = newarray (java.lang.Object)[0];	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r3, $r2, $r1);	return $r4
;block_num 1