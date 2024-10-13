(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1971 0)
(declare-sort var2774 0)
(declare-sort var3046 0)
(declare-sort var2877 0)
(declare-sort var3835 0)
(declare-sort var1133 0)
(declare-sort var3184 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3835-init () var3835)
(declare-fun arr-var2774-init () (Array Int var2774))
(declare-fun containerClass/-1529280734 (var1971) ClassObject)
(declare-fun cast-from-ClassObject-to-var2774 (ClassObject) var2774)
(declare-fun propertyName/-1529280734 (var1971) String)
(declare-fun cast-from-String-to-var2774 (String) var2774)
(declare-fun String_format/-647569892 (var1133 String (Array Int var2774)) String)
(declare-fun <init>/231989769 (var3835 var3184 String Bool ClassObject String) void)
(declare-fun cast-from-var2877-to-var3184 (var2877) var3184)
(declare-fun cast-from-var3835-to-var3184 (var3835) var3184)
(declare-const null-var1971 var1971)
(declare-const null-var2774 var2774)
(declare-const null-var3046 var3046)
(declare-const null-var2877 var2877)
(declare-const var1133-ROOT var1133)
(declare-const null-__Array__Int__var2774__ (Array Int var2774))
(declare-const var2177 var1971) ; Statement: r0 := @this: org.hibernate.property.access.spi.SetterFieldImpl 
(assert (not (= var2177 null-var1971)))
(declare-const var1261 var2774) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var1261 null-var2774)))
(declare-const var2619 var2774) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var2619 null-var2774)))
(declare-const var3691 var3046) ; Statement: r23 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor 
(assert (not (= var3691 null-var3046)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1055 var2877) ; Statement: $r4 := @caughtexception 
(assert (not (= var1055 null-var2877)))
 ; Statement: if r2 != null goto $r25 = new org.hibernate.PropertyAccessException 
(assert (not (= var2619 null-var2774))) ; Cond: r2 != null 
(define-const var1392 var3835 var3835-init) ; Statement: $r25 = new org.hibernate.PropertyAccessException 
(define-const var3480 var1133 var1133-ROOT) ; Statement: $r9 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var818 (Array Int var2774) arr-var2774-init) ; Statement: $r6 = newarray (java.lang.Object)[3] 
(declare-const var818!1 (Array Int var2774))
(assert (not (= var818!1 null-__Array__Int__var2774__)))
(assert (= (select var818!1 0) var2619)) ; Statement: $r6[0] = r2 
(define-const var2403 ClassObject (containerClass/-1529280734 var2177)) ; Statement: $r7 = r0.<org.hibernate.property.access.spi.SetterFieldImpl: java.lang.Class containerClass> 
(declare-const var818!2 (Array Int var2774))
(assert (not (= var818!2 null-__Array__Int__var2774__)))
(assert (= (select var818!2 1) (cast-from-ClassObject-to-var2774 var2403))) ; Statement: $r6[1] = $r7 
(define-const var754 String (propertyName/-1529280734 var2177)) ; Statement: $r8 = r0.<org.hibernate.property.access.spi.SetterFieldImpl: java.lang.String propertyName> 
(declare-const var818!3 (Array Int var2774))
(assert (not (= var818!3 null-__Array__Int__var2774__)))
(assert (= (select var818!3 2) (cast-from-String-to-var2774 var754))) ; Statement: $r6[2] = $r8 
(define-const var1105 String (String_format/-647569892 var3480 "Could not set field value [%s] value by reflection : [%s.%s]" var818!3)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r9, "Could not set field value [%s] value by reflection : [%s.%s]", $r6) 
(define-const var1449 ClassObject (containerClass/-1529280734 var2177)) ; Statement: $r11 = r0.<org.hibernate.property.access.spi.SetterFieldImpl: java.lang.Class containerClass> 
(define-const var823 String (propertyName/-1529280734 var2177)) ; Statement: $r10 = r0.<org.hibernate.property.access.spi.SetterFieldImpl: java.lang.String propertyName> 
(assert true)
;(assert (<init>/231989769 var1392 (cast-from-var2877-to-var3184 var1055) var1105 (ite (= 1 1) true false) var1449 var823)) ; Statement: specialinvoke $r25.<org.hibernate.PropertyAccessException: void <init>(java.lang.Throwable,java.lang.String,boolean,java.lang.Class,java.lang.String)>($r4, $r12, 1, $r11, $r10) 

(declare-const var1392!1 var3835)
(declare-const var1055!1 var2877)
(declare-const var1105!1 String)
(declare-const var3379 Int)
(declare-const var1449!1 ClassObject)
(declare-const var823!1 String)
(define-const var1556 var3184 (cast-from-var3835-to-var3184 var1392!1)) ; Statement: $r27 = (java.lang.Throwable) $r25 
 ; Statement: throw $r27 
(check-sat)
(get-model)
(get-unsat-core)
; {var3835-init=([], org.hibernate.PropertyAccessException), arr-var2774-init=([], java.lang.Object[]), containerClass/-1529280734=([org.hibernate.property.access.spi.SetterFieldImpl], java.lang.Class), cast-from-ClassObject-to-var2774=([java.lang.Class], java.lang.Object), propertyName/-1529280734=([org.hibernate.property.access.spi.SetterFieldImpl], java.lang.String), cast-from-String-to-var2774=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), <init>/231989769=([org.hibernate.PropertyAccessException, java.lang.Throwable, java.lang.String, boolean, java.lang.Class, java.lang.String], void), cast-from-var2877-to-var3184=([java.lang.Exception], java.lang.Throwable), cast-from-var3835-to-var3184=([org.hibernate.PropertyAccessException], java.lang.Throwable)}
; {var1971=org.hibernate.property.access.spi.SetterFieldImpl, var2177=r0, var2774=java.lang.Object, var1261=r1, var2619=r2, var3046=org.hibernate.engine.spi.SessionFactoryImplementor, var3691=r23, var2877=java.lang.Exception, var1055=$r4, var3835=org.hibernate.PropertyAccessException, var1392=$r25, var1133=java.util.Locale, var3480=$r9, var818=$r6, var2403=$r7, var754=$r8, var1105=$r12, var1449=$r11, var823=$r10, var3184=java.lang.Throwable, var3379=1, var1556=$r27}
; {org.hibernate.property.access.spi.SetterFieldImpl=var1971, r0=var2177, java.lang.Object=var2774, r1=var1261, r2=var2619, org.hibernate.engine.spi.SessionFactoryImplementor=var3046, r23=var3691, java.lang.Exception=var2877, $r4=var1055, org.hibernate.PropertyAccessException=var3835, $r25=var1392, java.util.Locale=var1133, $r9=var3480, $r6=var818, $r7=var2403, $r8=var754, $r12=var1105, $r11=var1449, $r10=var823, java.lang.Throwable=var3184, 1=var3379, $r27=var1556}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.property.access.spi.SetterFieldImpl;	r1 := @parameter0: java.lang.Object;	r2 := @parameter1: java.lang.Object;	r23 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor;	$r4 := @caughtexception;	if r2 != null goto $r25 = new org.hibernate.PropertyAccessException;	$r25 = new org.hibernate.PropertyAccessException;	$r9 = <java.util.Locale: java.util.Locale ROOT>;	$r6 = newarray (java.lang.Object)[3];	$r6[0] = r2;	$r7 = r0.<org.hibernate.property.access.spi.SetterFieldImpl: java.lang.Class containerClass>;	$r6[1] = $r7;	$r8 = r0.<org.hibernate.property.access.spi.SetterFieldImpl: java.lang.String propertyName>;	$r6[2] = $r8;	$r12 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r9, "Could not set field value [%s] value by reflection : [%s.%s]", $r6);	$r11 = r0.<org.hibernate.property.access.spi.SetterFieldImpl: java.lang.Class containerClass>;	$r10 = r0.<org.hibernate.property.access.spi.SetterFieldImpl: java.lang.String propertyName>;	specialinvoke $r25.<org.hibernate.PropertyAccessException: void <init>(java.lang.Throwable,java.lang.String,boolean,java.lang.Class,java.lang.String)>($r4, $r12, 1, $r11, $r10);	$r27 = (java.lang.Throwable) $r25;	throw $r27
;block_num 3