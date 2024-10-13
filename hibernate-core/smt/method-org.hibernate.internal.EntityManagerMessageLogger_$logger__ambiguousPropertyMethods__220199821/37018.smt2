(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1764 0)
(declare-sort var2468 0)
(declare-sort var632 0)
(declare-sort var3130 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLoggingLocale/-1064215605 (var1764) var632)
(declare-fun ambiguousPropertyMethods$str/1559020059 (var1764) String)
(declare-fun arr-var3130-init () (Array Int var3130))
(declare-fun cast-from-String-to-var3130 (String) var3130)
(declare-fun String_format/-647569892 (var632 String (Array Int var3130)) String)
(declare-const null-var1764 var1764)
(declare-const null-String String)
(declare-const null-__Array__Int__var3130__ (Array Int var3130))
(declare-const var1874 var1764) ; Statement: r0 := @this: org.hibernate.internal.EntityManagerMessageLogger_$logger 
(assert (not (= var1874 null-var1764)))
(declare-const var564 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var564 null-String)))
(declare-const var2688 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var2688 null-String)))
(declare-const var2061 String) ; Statement: r4 := @parameter2: java.lang.String 
(assert (not (= var2061 null-String)))
(assert true)
(define-const var2645 var632 (getLoggingLocale/-1064215605 var1874)) ; Statement: $r6 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.util.Locale getLoggingLocale()>() 
(assert true)
(define-const var2506 String (ambiguousPropertyMethods$str/1559020059 var1874)) ; Statement: $r5 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.lang.String ambiguousPropertyMethods$str()>() 
(define-const var2831 (Array Int var3130) arr-var3130-init) ; Statement: $r1 = newarray (java.lang.Object)[3] 
(declare-const var2831!1 (Array Int var3130))
(assert (not (= var2831!1 null-__Array__Int__var3130__)))
(assert (= (select var2831!1 0) (cast-from-String-to-var3130 var564))) ; Statement: $r1[0] = r2 
(declare-const var2831!2 (Array Int var3130))
(assert (not (= var2831!2 null-__Array__Int__var3130__)))
(assert (= (select var2831!2 1) (cast-from-String-to-var3130 var2688))) ; Statement: $r1[1] = r3 
(declare-const var2831!3 (Array Int var3130))
(assert (not (= var2831!3 null-__Array__Int__var3130__)))
(assert (= (select var2831!3 2) (cast-from-String-to-var3130 var2061))) ; Statement: $r1[2] = r4 
(define-const var1380 String (String_format/-647569892 var2645 var2506 var2831!3)) ; Statement: $r7 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r6, $r5, $r1) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getLoggingLocale/-1064215605=([org.hibernate.internal.EntityManagerMessageLogger_$logger], java.util.Locale), ambiguousPropertyMethods$str/1559020059=([org.hibernate.internal.EntityManagerMessageLogger_$logger], java.lang.String), arr-var3130-init=([], java.lang.Object[]), cast-from-String-to-var3130=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var1764=org.hibernate.internal.EntityManagerMessageLogger_$logger, var1874=r0, var564=r2, var2468=null_type, var2688=r3, var2061=r4, var632=java.util.Locale, var2645=$r6, var2506=$r5, var3130=java.lang.Object, var2831=$r1, var1380=$r7}
; {org.hibernate.internal.EntityManagerMessageLogger_$logger=var1764, r0=var1874, r2=var564, null_type=var2468, r3=var2688, r4=var2061, java.util.Locale=var632, $r6=var2645, $r5=var2506, java.lang.Object=var3130, $r1=var2831, $r7=var1380}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.internal.EntityManagerMessageLogger_$logger;	r2 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	r4 := @parameter2: java.lang.String;	$r6 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.util.Locale getLoggingLocale()>();	$r5 = virtualinvoke r0.<org.hibernate.internal.EntityManagerMessageLogger_$logger: java.lang.String ambiguousPropertyMethods$str()>();	$r1 = newarray (java.lang.Object)[3];	$r1[0] = r2;	$r1[1] = r3;	$r1[2] = r4;	$r7 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r6, $r5, $r1);	return $r7
;block_num 1