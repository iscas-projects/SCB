(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2737 0)
(declare-sort var562 0)
(declare-sort var2225 0)
(declare-sort var2860 0)
(declare-sort var3465 0)
(declare-sort var731 0)
(declare-sort var435 0)
(declare-sort var423 0)
(declare-sort var2928 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2225_checkNotNullParameter/-2060636419 (var2860 String) void)
(declare-fun cast-from-var562-to-var2860 (var562) var2860)
(declare-fun this$0/925620624 (var2737) var3465)
(declare-fun getClient/2037925842 (var3465) var731)
(declare-fun dispatcher/-247858644 (var731) var435)
(declare-fun finished$okhttp/1474185531 (var435 var2737) void)
(declare-const null-var2737 var2737)
(declare-const null-var562 var562)
(declare-const var423-assertionsEnabled Bool)
(declare-const null-var2928 var2928)
(declare-const var3144 var2737) ; Statement: r1 := @this: okhttp3.internal.connection.RealCall$AsyncCall 
(assert (not (= var3144 null-var2737)))
(declare-const var2954 var562) ; Statement: r0 := @parameter0: java.util.concurrent.ExecutorService 
(assert (not (= var2954 null-var562)))
;(assert (var2225_checkNotNullParameter/-2060636419 (cast-from-var562-to-var2860 var2954) "executorService")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "executorService") 

(declare-const var2954!1 var562)
(declare-const var1540 String)
(define-const var3027 var3465 (this$0/925620624 var3144)) ; Statement: $r2 = r1.<okhttp3.internal.connection.RealCall$AsyncCall: okhttp3.internal.connection.RealCall this$0> 
(assert true)
(define-const var511 var731 (getClient/2037925842 var3027)) ; Statement: $r3 = virtualinvoke $r2.<okhttp3.internal.connection.RealCall: okhttp3.OkHttpClient getClient()>() 
(assert true)
(define-const var2775 var435 (dispatcher/-247858644 var511)) ; Statement: $r30 = virtualinvoke $r3.<okhttp3.OkHttpClient: okhttp3.Dispatcher dispatcher()>() 
(define-const var3176 Bool var423-assertionsEnabled) ; Statement: $z0 = <okhttp3.internal.Util: boolean assertionsEnabled> 
 ; Statement: if $z0 == 0 goto $r4 = (java.lang.Runnable) r1 
(assert (not (= (ite var3176 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var3890 var2928) ; Statement: $r14 := @caughtexception 
(assert (not (= var3890 null-var2928)))
(assert true) ; Non Conditional
(define-const var152 var3465 (this$0/925620624 var3144)) ; Statement: $r15 = r1.<okhttp3.internal.connection.RealCall$AsyncCall: okhttp3.internal.connection.RealCall this$0> 
(assert true)
(define-const var1809 var731 (getClient/2037925842 var152)) ; Statement: $r16 = virtualinvoke $r15.<okhttp3.internal.connection.RealCall: okhttp3.OkHttpClient getClient()>() 
(assert true)
(define-const var3615 var435 (dispatcher/-247858644 var1809)) ; Statement: $r17 = virtualinvoke $r16.<okhttp3.OkHttpClient: okhttp3.Dispatcher dispatcher()>() 
(assert true)
;(assert (finished$okhttp/1474185531 var3615 var3144)) ; Statement: virtualinvoke $r17.<okhttp3.Dispatcher: void finished$okhttp(okhttp3.internal.connection.RealCall$AsyncCall)>(r1) 

(declare-const var3615!1 var435)
(declare-const var3144!1 var2737)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var2225_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var562-to-var2860=([java.util.concurrent.ExecutorService], java.lang.Object), this$0/925620624=([okhttp3.internal.connection.RealCall$AsyncCall], okhttp3.internal.connection.RealCall), getClient/2037925842=([okhttp3.internal.connection.RealCall], okhttp3.OkHttpClient), dispatcher/-247858644=([okhttp3.OkHttpClient], okhttp3.Dispatcher), finished$okhttp/1474185531=([okhttp3.Dispatcher, okhttp3.internal.connection.RealCall$AsyncCall], void)}
; {var2737=okhttp3.internal.connection.RealCall$AsyncCall, var3144=r1, var562=java.util.concurrent.ExecutorService, var2954=r0, var2225=kotlin.jvm.internal.Intrinsics, var2860=java.lang.Object, var1540="executorService", var3465=okhttp3.internal.connection.RealCall, var3027=$r2, var731=okhttp3.OkHttpClient, var511=$r3, var435=okhttp3.Dispatcher, var2775=$r30, var423=okhttp3.internal.Util, var3176=$z0, var2928=java.lang.Throwable, var3890=$r14, var152=$r15, var1809=$r16, var3615=$r17}
; {okhttp3.internal.connection.RealCall$AsyncCall=var2737, r1=var3144, java.util.concurrent.ExecutorService=var562, r0=var2954, kotlin.jvm.internal.Intrinsics=var2225, java.lang.Object=var2860, "executorService"=var1540, okhttp3.internal.connection.RealCall=var3465, $r2=var3027, okhttp3.OkHttpClient=var731, $r3=var511, okhttp3.Dispatcher=var435, $r30=var2775, okhttp3.internal.Util=var423, $z0=var3176, java.lang.Throwable=var2928, $r14=var3890, $r15=var152, $r16=var1809, $r17=var3615}
;seq 
;cnt {}
;stmts r1 := @this: okhttp3.internal.connection.RealCall$AsyncCall;	r0 := @parameter0: java.util.concurrent.ExecutorService;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "executorService");	$r2 = r1.<okhttp3.internal.connection.RealCall$AsyncCall: okhttp3.internal.connection.RealCall this$0>;	$r3 = virtualinvoke $r2.<okhttp3.internal.connection.RealCall: okhttp3.OkHttpClient getClient()>();	$r30 = virtualinvoke $r3.<okhttp3.OkHttpClient: okhttp3.Dispatcher dispatcher()>();	$z0 = <okhttp3.internal.Util: boolean assertionsEnabled>;	if $z0 == 0 goto $r4 = (java.lang.Runnable) r1;	$r14 := @caughtexception;	$r15 = r1.<okhttp3.internal.connection.RealCall$AsyncCall: okhttp3.internal.connection.RealCall this$0>;	$r16 = virtualinvoke $r15.<okhttp3.internal.connection.RealCall: okhttp3.OkHttpClient getClient()>();	$r17 = virtualinvoke $r16.<okhttp3.OkHttpClient: okhttp3.Dispatcher dispatcher()>();	virtualinvoke $r17.<okhttp3.Dispatcher: void finished$okhttp(okhttp3.internal.connection.RealCall$AsyncCall)>(r1);	throw $r14
;block_num 3