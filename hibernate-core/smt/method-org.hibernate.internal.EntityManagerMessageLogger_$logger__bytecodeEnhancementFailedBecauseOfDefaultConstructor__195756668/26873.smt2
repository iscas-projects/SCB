(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1284 0)
(declare-sort var3390 0)
(declare-sort var111 0)
(declare-sort var2525 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLoggingLocale/-1064215605 (var1284) var111)
(declare-fun bytecodeEnhancementFailedBecauseOfDefaultConstructor$str/-1323047510 (var1284) String)
(declare-fun arr-var2525-init () (Array Int var2525))
(declare-fun cast-from-String-to-var2525 (String) var2525)
(declare-fun String_format/-647569892 (var111 String (Array Int var2525)) String)
(declare-const null-var1284 var1284)
(declare-const null-String String)
(declare-const null-__Array__Int__var2525__ (Array Int var2525))
(declare-const var2473 var1284) ; Statement: r0 := @this: org.hibernate.internal.EntityManagerMessageLogger_$logger 
(assert (not (= var2473 null-var1284)))
(declare-const var2909 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2909 null-String)))
(assert true)
(define-const var1784 var111 (getLoggingLocale/-1064215605 var2473)) ; Statement: $r4 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.util.Locale getLoggingLocale()>() 
(assert true)
(define-const var3937 String (bytecodeEnhancementFailedBecauseOfDefaultConstructor$str/-1323047510 var2473)) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.lang.String bytecodeEnhancementFailedBecauseOfDefaultConstructor$str()>() 
(define-const var3322 (Array Int var2525) arr-var2525-init) ; Statement: $r1 = newarray (java.lang.Object)[1] 
(declare-const var3322!1 (Array Int var2525))
(assert (not (= var3322!1 null-__Array__Int__var2525__)))
(assert (= (select var3322!1 0) (cast-from-String-to-var2525 var2909))) ; Statement: $r1[0] = r2 
(define-const var2790 String (String_format/-647569892 var1784 var3937 var3322!1)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r4, $r3, $r1) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {getLoggingLocale/-1064215605=([org.hibernate.internal.EntityManagerMessageLogger_$logger], java.util.Locale), bytecodeEnhancementFailedBecauseOfDefaultConstructor$str/-1323047510=([org.hibernate.internal.EntityManagerMessageLogger_$logger], java.lang.String), arr-var2525-init=([], java.lang.Object[]), cast-from-String-to-var2525=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var1284=org.hibernate.internal.EntityManagerMessageLogger_$logger, var2473=r0, var2909=r2, var3390=null_type, var111=java.util.Locale, var1784=$r4, var3937=$r3, var2525=java.lang.Object, var3322=$r1, var2790=$r5}
; {org.hibernate.internal.EntityManagerMessageLogger_$logger=var1284, r0=var2473, r2=var2909, null_type=var3390, java.util.Locale=var111, $r4=var1784, $r3=var3937, java.lang.Object=var2525, $r1=var3322, $r5=var2790}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.internal.EntityManagerMessageLogger_$logger;	r2 := @parameter0: java.lang.String;	$r4 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.util.Locale getLoggingLocale()>();	$r3 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.lang.String bytecodeEnhancementFailedBecauseOfDefaultConstructor$str()>();	$r1 = newarray (java.lang.Object)[1];	$r1[0] = r2;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r4, $r3, $r1);	return $r5
;block_num 1