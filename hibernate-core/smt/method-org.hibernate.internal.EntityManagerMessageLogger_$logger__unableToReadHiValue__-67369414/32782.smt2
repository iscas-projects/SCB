(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2814 0)
(declare-sort var3980 0)
(declare-sort var74 0)
(declare-sort var1886 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLoggingLocale/-1064215605 (var2814) var74)
(declare-fun unableToReadHiValue$str/-2114054552 (var2814) String)
(declare-fun arr-var1886-init () (Array Int var1886))
(declare-fun cast-from-String-to-var1886 (String) var1886)
(declare-fun String_format/-647569892 (var74 String (Array Int var1886)) String)
(declare-const null-var2814 var2814)
(declare-const null-String String)
(declare-const null-__Array__Int__var1886__ (Array Int var1886))
(declare-const var3159 var2814) ; Statement: r0 := @this: org.hibernate.internal.EntityManagerMessageLogger_$logger 
(assert (not (= var3159 null-var2814)))
(declare-const var3213 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3213 null-String)))
(assert true)
(define-const var1411 var74 (getLoggingLocale/-1064215605 var3159)) ; Statement: $r4 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.util.Locale getLoggingLocale()>() 
(assert true)
(define-const var900 String (unableToReadHiValue$str/-2114054552 var3159)) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.lang.String unableToReadHiValue$str()>() 
(define-const var2528 (Array Int var1886) arr-var1886-init) ; Statement: $r1 = newarray (java.lang.Object)[1] 
(declare-const var2528!1 (Array Int var1886))
(assert (not (= var2528!1 null-__Array__Int__var1886__)))
(assert (= (select var2528!1 0) (cast-from-String-to-var1886 var3213))) ; Statement: $r1[0] = r2 
(define-const var1601 String (String_format/-647569892 var1411 var900 var2528!1)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r4, $r3, $r1) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {getLoggingLocale/-1064215605=([org.hibernate.internal.EntityManagerMessageLogger_$logger], java.util.Locale), unableToReadHiValue$str/-2114054552=([org.hibernate.internal.EntityManagerMessageLogger_$logger], java.lang.String), arr-var1886-init=([], java.lang.Object[]), cast-from-String-to-var1886=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2814=org.hibernate.internal.EntityManagerMessageLogger_$logger, var3159=r0, var3213=r2, var3980=null_type, var74=java.util.Locale, var1411=$r4, var900=$r3, var1886=java.lang.Object, var2528=$r1, var1601=$r5}
; {org.hibernate.internal.EntityManagerMessageLogger_$logger=var2814, r0=var3159, r2=var3213, null_type=var3980, java.util.Locale=var74, $r4=var1411, $r3=var900, java.lang.Object=var1886, $r1=var2528, $r5=var1601}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.internal.EntityManagerMessageLogger_$logger;	r2 := @parameter0: java.lang.String;	$r4 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.util.Locale getLoggingLocale()>();	$r3 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.lang.String unableToReadHiValue$str()>();	$r1 = newarray (java.lang.Object)[1];	$r1[0] = r2;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r4, $r3, $r1);	return $r5
;block_num 1