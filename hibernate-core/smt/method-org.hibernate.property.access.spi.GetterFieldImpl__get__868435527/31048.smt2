(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var359 0)
(declare-sort var2109 0)
(declare-sort var2667 0)
(declare-sort var3120 0)
(declare-sort var626 0)
(declare-sort var2864 0)
(declare-sort var3703 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3120-init () var3120)
(declare-fun arr-var2109-init () (Array Int var2109))
(declare-fun field/1854934038 (var359) var2864)
(declare-fun toGenericString/37670028 (var2864) String)
(declare-fun cast-from-String-to-var2109 (String) var2109)
(declare-fun containerClass/1854934038 (var359) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun propertyName/1854934038 (var359) String)
(declare-fun String_format/-647569892 (var626 String (Array Int var2109)) String)
(declare-fun <init>/127813963 (var3120 String var3703) void)
(declare-fun cast-from-var2667-to-var3703 (var2667) var3703)
(declare-fun cast-from-var3120-to-var3703 (var3120) var3703)
(declare-const null-var359 var359)
(declare-const null-var2109 var2109)
(declare-const null-var2667 var2667)
(declare-const var626-ROOT var626)
(declare-const null-__Array__Int__var2109__ (Array Int var2109))
(declare-const var2657 var359) ; Statement: r0 := @this: org.hibernate.property.access.spi.GetterFieldImpl 
(assert (not (= var2657 null-var359)))
(declare-const var348 var2109) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var348 null-var2109)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var145 var2667) ; Statement: $r23 := @caughtexception 
(assert (not (= var145 null-var2667)))
(define-const var3288 var3120 var3120-init) ; Statement: $r34 = new org.hibernate.property.access.spi.PropertyAccessException 
(define-const var2553 var626 var626-ROOT) ; Statement: $r27 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var3214 (Array Int var2109) arr-var2109-init) ; Statement: $r25 = newarray (java.lang.Object)[4] 
(define-const var862 var2864 (field/1854934038 var2657)) ; Statement: $r26 = r0.<org.hibernate.property.access.spi.GetterFieldImpl: java.lang.reflect.Field field> 
(assert true)
(define-const var3079 String (toGenericString/37670028 var862)) ; Statement: $r28 = virtualinvoke $r26.<java.lang.reflect.Field: java.lang.String toGenericString()>() 
(declare-const var3214!1 (Array Int var2109))
(assert (not (= var3214!1 null-__Array__Int__var2109__)))
(assert (= (select var3214!1 0) (cast-from-String-to-var2109 var3079))) ; Statement: $r25[0] = $r28 
(define-const var2683 ClassObject (containerClass/1854934038 var2657)) ; Statement: $r29 = r0.<org.hibernate.property.access.spi.GetterFieldImpl: java.lang.Class containerClass> 
(assert true)
(define-const var3991 String (getName/-1958580599 var2683)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.Class: java.lang.String getName()>() 
(declare-const var3214!2 (Array Int var2109))
(assert (not (= var3214!2 null-__Array__Int__var2109__)))
(assert (= (select var3214!2 1) (cast-from-String-to-var2109 var3991))) ; Statement: $r25[1] = $r30 
(define-const var1389 String (propertyName/1854934038 var2657)) ; Statement: $r31 = r0.<org.hibernate.property.access.spi.GetterFieldImpl: java.lang.String propertyName> 
(declare-const var3214!3 (Array Int var2109))
(assert (not (= var3214!3 null-__Array__Int__var2109__)))
(assert (= (select var3214!3 2) (cast-from-String-to-var2109 var1389))) ; Statement: $r25[2] = $r31 
(declare-const var3214!4 (Array Int var2109))
(assert (not (= var3214!4 null-__Array__Int__var2109__)))
(assert (= (select var3214!4 3) var348)) ; Statement: $r25[3] = r2 
(define-const var1347 String (String_format/-647569892 var2553 "Error accessing field [%s] by reflection for persistent property [%s#%s] : %s" var3214!4)) ; Statement: $r32 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r27, "Error accessing field [%s] by reflection for persistent property [%s#%s] : %s", $r25) 
(assert true)
;(assert (<init>/127813963 var3288 var1347 (cast-from-var2667-to-var3703 var145))) ; Statement: specialinvoke $r34.<org.hibernate.property.access.spi.PropertyAccessException: void <init>(java.lang.String,java.lang.Throwable)>($r32, $r23) 

(declare-const var3288!1 var3120)
(declare-const var1347!1 String)
(declare-const var145!1 var2667)
(define-const var3492 var3703 (cast-from-var3120-to-var3703 var3288!1)) ; Statement: $r35 = (java.lang.Throwable) $r34 
 ; Statement: throw $r35 
(check-sat)
(get-model)
(get-unsat-core)
; {var3120-init=([], org.hibernate.property.access.spi.PropertyAccessException), arr-var2109-init=([], java.lang.Object[]), field/1854934038=([org.hibernate.property.access.spi.GetterFieldImpl], java.lang.reflect.Field), toGenericString/37670028=([java.lang.reflect.Field], java.lang.String), cast-from-String-to-var2109=([java.lang.String], java.lang.Object), containerClass/1854934038=([org.hibernate.property.access.spi.GetterFieldImpl], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), propertyName/1854934038=([org.hibernate.property.access.spi.GetterFieldImpl], java.lang.String), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), <init>/127813963=([org.hibernate.property.access.spi.PropertyAccessException, java.lang.String, java.lang.Throwable], void), cast-from-var2667-to-var3703=([java.lang.Exception], java.lang.Throwable), cast-from-var3120-to-var3703=([org.hibernate.property.access.spi.PropertyAccessException], java.lang.Throwable)}
; {var359=org.hibernate.property.access.spi.GetterFieldImpl, var2657=r0, var2109=java.lang.Object, var348=r2, var2667=java.lang.Exception, var145=$r23, var3120=org.hibernate.property.access.spi.PropertyAccessException, var3288=$r34, var626=java.util.Locale, var2553=$r27, var3214=$r25, var2864=java.lang.reflect.Field, var862=$r26, var3079=$r28, var2683=$r29, var3991=$r30, var1389=$r31, var1347=$r32, var3703=java.lang.Throwable, var3492=$r35}
; {org.hibernate.property.access.spi.GetterFieldImpl=var359, r0=var2657, java.lang.Object=var2109, r2=var348, java.lang.Exception=var2667, $r23=var145, org.hibernate.property.access.spi.PropertyAccessException=var3120, $r34=var3288, java.util.Locale=var626, $r27=var2553, $r25=var3214, java.lang.reflect.Field=var2864, $r26=var862, $r28=var3079, $r29=var2683, $r30=var3991, $r31=var1389, $r32=var1347, java.lang.Throwable=var3703, $r35=var3492}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.property.access.spi.GetterFieldImpl;	r2 := @parameter0: java.lang.Object;	$r23 := @caughtexception;	$r34 = new org.hibernate.property.access.spi.PropertyAccessException;	$r27 = <java.util.Locale: java.util.Locale ROOT>;	$r25 = newarray (java.lang.Object)[4];	$r26 = r0.<org.hibernate.property.access.spi.GetterFieldImpl: java.lang.reflect.Field field>;	$r28 = virtualinvoke $r26.<java.lang.reflect.Field: java.lang.String toGenericString()>();	$r25[0] = $r28;	$r29 = r0.<org.hibernate.property.access.spi.GetterFieldImpl: java.lang.Class containerClass>;	$r30 = virtualinvoke $r29.<java.lang.Class: java.lang.String getName()>();	$r25[1] = $r30;	$r31 = r0.<org.hibernate.property.access.spi.GetterFieldImpl: java.lang.String propertyName>;	$r25[2] = $r31;	$r25[3] = r2;	$r32 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r27, "Error accessing field [%s] by reflection for persistent property [%s#%s] : %s", $r25);	specialinvoke $r34.<org.hibernate.property.access.spi.PropertyAccessException: void <init>(java.lang.String,java.lang.Throwable)>($r32, $r23);	$r35 = (java.lang.Throwable) $r34;	throw $r35
;block_num 2