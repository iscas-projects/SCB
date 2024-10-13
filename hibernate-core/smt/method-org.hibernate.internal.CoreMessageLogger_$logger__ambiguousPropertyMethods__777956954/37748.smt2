(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var402 0)
(declare-sort var3029 0)
(declare-sort var432 0)
(declare-sort var2414 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLoggingLocale/-317789992 (var402) var432)
(declare-fun ambiguousPropertyMethods$str/-47832152 (var402) String)
(declare-fun arr-var2414-init () (Array Int var2414))
(declare-fun cast-from-String-to-var2414 (String) var2414)
(declare-fun String_format/-647569892 (var432 String (Array Int var2414)) String)
(declare-const null-var402 var402)
(declare-const null-String String)
(declare-const null-__Array__Int__var2414__ (Array Int var2414))
(declare-const var3478 var402) ; Statement: r0 := @this: org.hibernate.internal.CoreMessageLogger_$logger 
(assert (not (= var3478 null-var402)))
(declare-const var2081 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2081 null-String)))
(declare-const var242 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var242 null-String)))
(declare-const var3064 String) ; Statement: r4 := @parameter2: java.lang.String 
(assert (not (= var3064 null-String)))
(assert true)
(define-const var1103 var432 (getLoggingLocale/-317789992 var3478)) ; Statement: $r6 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.util.Locale getLoggingLocale()>() 
(assert true)
(define-const var554 String (ambiguousPropertyMethods$str/-47832152 var3478)) ; Statement: $r5 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.lang.String ambiguousPropertyMethods$str()>() 
(define-const var1038 (Array Int var2414) arr-var2414-init) ; Statement: $r1 = newarray (java.lang.Object)[3] 
(declare-const var1038!1 (Array Int var2414))
(assert (not (= var1038!1 null-__Array__Int__var2414__)))
(assert (= (select var1038!1 0) (cast-from-String-to-var2414 var2081))) ; Statement: $r1[0] = r2 
(declare-const var1038!2 (Array Int var2414))
(assert (not (= var1038!2 null-__Array__Int__var2414__)))
(assert (= (select var1038!2 1) (cast-from-String-to-var2414 var242))) ; Statement: $r1[1] = r3 
(declare-const var1038!3 (Array Int var2414))
(assert (not (= var1038!3 null-__Array__Int__var2414__)))
(assert (= (select var1038!3 2) (cast-from-String-to-var2414 var3064))) ; Statement: $r1[2] = r4 
(define-const var731 String (String_format/-647569892 var1103 var554 var1038!3)) ; Statement: $r7 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r6, $r5, $r1) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getLoggingLocale/-317789992=([org.hibernate.internal.CoreMessageLogger_$logger], java.util.Locale), ambiguousPropertyMethods$str/-47832152=([org.hibernate.internal.CoreMessageLogger_$logger], java.lang.String), arr-var2414-init=([], java.lang.Object[]), cast-from-String-to-var2414=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var402=org.hibernate.internal.CoreMessageLogger_$logger, var3478=r0, var2081=r2, var3029=null_type, var242=r3, var3064=r4, var432=java.util.Locale, var1103=$r6, var554=$r5, var2414=java.lang.Object, var1038=$r1, var731=$r7}
; {org.hibernate.internal.CoreMessageLogger_$logger=var402, r0=var3478, r2=var2081, null_type=var3029, r3=var242, r4=var3064, java.util.Locale=var432, $r6=var1103, $r5=var554, java.lang.Object=var2414, $r1=var1038, $r7=var731}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.internal.CoreMessageLogger_$logger;	r2 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	r4 := @parameter2: java.lang.String;	$r6 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.util.Locale getLoggingLocale()>();	$r5 = virtualinvoke r0.<org.hibernate.internal.CoreMessageLogger_$logger: java.lang.String ambiguousPropertyMethods$str()>();	$r1 = newarray (java.lang.Object)[3];	$r1[0] = r2;	$r1[1] = r3;	$r1[2] = r4;	$r7 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r6, $r5, $r1);	return $r7
;block_num 1