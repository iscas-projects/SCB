(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2798 0)
(declare-sort var614 0)
(declare-sort var2998 0)
(declare-sort var3203 0)
(declare-sort var1152 0)
(declare-sort var2114 0)
(declare-sort var537 0)
(declare-sort var2195 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3203_checkNotNull/1446102589 (var1152) var1152)
(declare-fun cast-from-var614-to-var1152 (var614) var1152)
(declare-fun cast-from-var2998-to-var1152 (var2998) var1152)
(declare-fun arr-var1152-init () (Array Int var1152))
(declare-fun String_format/-647569892 (var2195 String (Array Int var1152)) String)
(declare-fun log/-65407072 (var2114 var537 String var614) void)
(declare-const null-var2798 var2798)
(declare-const null-var614 var614)
(declare-const null-var2998 var2998)
(declare-const var2798-logger var2114)
(declare-const var537-SEVERE var537)
(declare-const var2195-ROOT var2195)
(declare-const null-__Array__Int__var1152__ (Array Int var1152))
(declare-const var295 var2798) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.com.google.common.eventbus.EventBus 
(assert (not (= var295 null-var2798)))
(declare-const var2459 var614) ; Statement: r0 := @parameter0: java.lang.Throwable 
(assert (not (= var2459 null-var614)))
(declare-const var859 var2998) ; Statement: r1 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.common.eventbus.SubscriberExceptionContext 
(assert (not (= var859 null-var2998)))
;(assert (var3203_checkNotNull/1446102589 (cast-from-var614-to-var1152 var2459))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var2459!1 var614)
;(assert (var3203_checkNotNull/1446102589 (cast-from-var2998-to-var1152 var859))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r1) 

(declare-const var859!1 var2998)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2287 var614) ; Statement: $r4 := @caughtexception 
(assert (not (= var2287 null-var614)))
(define-const var1648 var2114 var2798-logger) ; Statement: $r7 = <com.google.javascript.jscomp.jarjar.com.google.common.eventbus.EventBus: java.util.logging.Logger logger> 
(define-const var2115 var537 var537-SEVERE) ; Statement: $r8 = <java.util.logging.Level: java.util.logging.Level SEVERE> 
(define-const var135 var2195 var2195-ROOT) ; Statement: $r6 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var2582 (Array Int var1152) arr-var1152-init) ; Statement: $r5 = newarray (java.lang.Object)[2] 
(declare-const var2582!1 (Array Int var1152))
(assert (not (= var2582!1 null-__Array__Int__var1152__)))
(assert (= (select var2582!1 0) (cast-from-var614-to-var1152 var2287))) ; Statement: $r5[0] = $r4 
(declare-const var2582!2 (Array Int var1152))
(assert (not (= var2582!2 null-__Array__Int__var1152__)))
(assert (= (select var2582!2 1) (cast-from-var614-to-var1152 var2459!1))) ; Statement: $r5[1] = r0 
(define-const var3942 String (String_format/-647569892 var135 "Exception %s thrown while handling exception: %s" var2582!2)) ; Statement: $r9 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r6, "Exception %s thrown while handling exception: %s", $r5) 
(assert true)
;(assert (log/-65407072 var1648 var2115 var3942 var2287)) ; Statement: virtualinvoke $r7.<java.util.logging.Logger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r8, $r9, $r4) 

(declare-const var1648!1 var2114)
(declare-const var2115!1 var537)
(declare-const var3942!1 String)
(declare-const var2287!1 var614)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3203_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-var614-to-var1152=([java.lang.Throwable], java.lang.Object), cast-from-var2998-to-var1152=([com.google.javascript.jscomp.jarjar.com.google.common.eventbus.SubscriberExceptionContext], java.lang.Object), arr-var1152-init=([], java.lang.Object[]), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), log/-65407072=([java.util.logging.Logger, java.util.logging.Level, java.lang.String, java.lang.Throwable], void)}
; {var2798=com.google.javascript.jscomp.jarjar.com.google.common.eventbus.EventBus, var295=r2, var614=java.lang.Throwable, var2459=r0, var2998=com.google.javascript.jscomp.jarjar.com.google.common.eventbus.SubscriberExceptionContext, var859=r1, var3203=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var1152=java.lang.Object, var2287=$r4, var2114=java.util.logging.Logger, var1648=$r7, var537=java.util.logging.Level, var2115=$r8, var2195=java.util.Locale, var135=$r6, var2582=$r5, var3942=$r9}
; {com.google.javascript.jscomp.jarjar.com.google.common.eventbus.EventBus=var2798, r2=var295, java.lang.Throwable=var614, r0=var2459, com.google.javascript.jscomp.jarjar.com.google.common.eventbus.SubscriberExceptionContext=var2998, r1=var859, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3203, java.lang.Object=var1152, $r4=var2287, java.util.logging.Logger=var2114, $r7=var1648, java.util.logging.Level=var537, $r8=var2115, java.util.Locale=var2195, $r6=var135, $r5=var2582, $r9=var3942}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.com.google.common.eventbus.EventBus;	r0 := @parameter0: java.lang.Throwable;	r1 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.common.eventbus.SubscriberExceptionContext;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r1);	$r4 := @caughtexception;	$r7 = <com.google.javascript.jscomp.jarjar.com.google.common.eventbus.EventBus: java.util.logging.Logger logger>;	$r8 = <java.util.logging.Level: java.util.logging.Level SEVERE>;	$r6 = <java.util.Locale: java.util.Locale ROOT>;	$r5 = newarray (java.lang.Object)[2];	$r5[0] = $r4;	$r5[1] = r0;	$r9 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r6, "Exception %s thrown while handling exception: %s", $r5);	virtualinvoke $r7.<java.util.logging.Logger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r8, $r9, $r4);	return
;block_num 3