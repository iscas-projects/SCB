(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var223 0)
(declare-sort var631 0)
(declare-sort var3706 0)
(declare-sort var2120 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLoggingLocale/-317789992 (var223) var3706)
(declare-fun unableToUpdateHiValue$str/-489546386 (var223) String)
(declare-fun arr-var2120-init () (Array Int var2120))
(declare-fun cast-from-String-to-var2120 (String) var2120)
(declare-fun String_format/-647569892 (var3706 String (Array Int var2120)) String)
(declare-const null-var223 var223)
(declare-const null-String String)
(declare-const null-__Array__Int__var2120__ (Array Int var2120))
(declare-const var1024 var223) ; Statement: r0 := @this: org.hibernate.internal.CoreMessageLogger_$logger 
(assert (not (= var1024 null-var223)))
(declare-const var2102 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2102 null-String)))
(assert true)
(define-const var2031 var3706 (getLoggingLocale/-317789992 var1024)) ; Statement: $r4 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.util.Locale getLoggingLocale()>() 
(assert true)
(define-const var1382 String (unableToUpdateHiValue$str/-489546386 var1024)) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.lang.String unableToUpdateHiValue$str()>() 
(define-const var2986 (Array Int var2120) arr-var2120-init) ; Statement: $r1 = newarray (java.lang.Object)[1] 
(declare-const var2986!1 (Array Int var2120))
(assert (not (= var2986!1 null-__Array__Int__var2120__)))
(assert (= (select var2986!1 0) (cast-from-String-to-var2120 var2102))) ; Statement: $r1[0] = r2 
(define-const var1142 String (String_format/-647569892 var2031 var1382 var2986!1)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r4, $r3, $r1) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {getLoggingLocale/-317789992=([org.hibernate.internal.CoreMessageLogger_$logger], java.util.Locale), unableToUpdateHiValue$str/-489546386=([org.hibernate.internal.CoreMessageLogger_$logger], java.lang.String), arr-var2120-init=([], java.lang.Object[]), cast-from-String-to-var2120=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var223=org.hibernate.internal.CoreMessageLogger_$logger, var1024=r0, var2102=r2, var631=null_type, var3706=java.util.Locale, var2031=$r4, var1382=$r3, var2120=java.lang.Object, var2986=$r1, var1142=$r5}
; {org.hibernate.internal.CoreMessageLogger_$logger=var223, r0=var1024, r2=var2102, null_type=var631, java.util.Locale=var3706, $r4=var2031, $r3=var1382, java.lang.Object=var2120, $r1=var2986, $r5=var1142}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.internal.CoreMessageLogger_$logger;	r2 := @parameter0: java.lang.String;	$r4 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.util.Locale getLoggingLocale()>();	$r3 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.lang.String unableToUpdateHiValue$str()>();	$r1 = newarray (java.lang.Object)[1];	$r1[0] = r2;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r4, $r3, $r1);	return $r5
;block_num 1