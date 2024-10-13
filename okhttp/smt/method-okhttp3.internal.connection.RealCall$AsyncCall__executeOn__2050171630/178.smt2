(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var537 0)
(declare-sort var3236 0)
(declare-sort var2150 0)
(declare-sort var3029 0)
(declare-sort var3224 0)
(declare-sort var3241 0)
(declare-sort var3496 0)
(declare-sort var3444 0)
(declare-sort var672 0)
(declare-sort var3733 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2150_checkNotNullParameter/-2060636419 (var3029 String) void)
(declare-fun cast-from-var3236-to-var3029 (var3236) var3029)
(declare-fun this$0/925620624 (var537) var3224)
(declare-fun getClient/2037925842 (var3224) var3241)
(declare-fun dispatcher/-247858644 (var3241) var3496)
(declare-fun var672_holdsLock/-145342167 (var3029) Bool)
(declare-fun cast-from-var3496-to-var3029 (var3496) var3029)
(declare-fun var3733-init () var3733)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var672_currentThread/-1037784612 () var672)
(declare-fun getName/-942182377 (var672) String)
(declare-fun append/-1031950772 (String var3029) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var3733 var3029) void)
(declare-fun cast-from-String-to-var3029 (String) var3029)
(declare-const null-var537 var537)
(declare-const null-var3236 var3236)
(declare-const var3444-assertionsEnabled Bool)
(declare-const var2787 var537) ; Statement: r1 := @this: okhttp3.internal.connection.RealCall$AsyncCall 
(assert (not (= var2787 null-var537)))
(declare-const var2377 var3236) ; Statement: r0 := @parameter0: java.util.concurrent.ExecutorService 
(assert (not (= var2377 null-var3236)))
;(assert (var2150_checkNotNullParameter/-2060636419 (cast-from-var3236-to-var3029 var2377) "executorService")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "executorService") 

(declare-const var2377!1 var3236)
(declare-const var965 String)
(define-const var801 var3224 (this$0/925620624 var2787)) ; Statement: $r2 = r1.<okhttp3.internal.connection.RealCall$AsyncCall: okhttp3.internal.connection.RealCall this$0> 
(assert true)
(define-const var3542 var3241 (getClient/2037925842 var801)) ; Statement: $r3 = virtualinvoke $r2.<okhttp3.internal.connection.RealCall: okhttp3.OkHttpClient getClient()>() 
(assert true)
(define-const var1856 var3496 (dispatcher/-247858644 var3542)) ; Statement: $r30 = virtualinvoke $r3.<okhttp3.OkHttpClient: okhttp3.Dispatcher dispatcher()>() 
(define-const var2191 Bool var3444-assertionsEnabled) ; Statement: $z0 = <okhttp3.internal.Util: boolean assertionsEnabled> 
 ; Statement: if $z0 == 0 goto $r4 = (java.lang.Runnable) r1 
(assert (not (= (ite var2191 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2812 Bool (var672_holdsLock/-145342167 (cast-from-var3496-to-var3029 var1856))) ; Statement: $z1 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>($r30) 
 ; Statement: if $z1 == 0 goto $r4 = (java.lang.Runnable) r1 
(assert (not (= (ite var2812 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2807 var3733 var3733-init) ; Statement: $r5 = new java.lang.AssertionError 
(define-const var1388 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1388)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1388!1 String)
(assert (= var1388!1 ""))
(assert true)
(define-const var478 String (append/672562846 var1388!1 "Thread ")) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ") 
(declare-const var1388!2 String)
(assert (= var1388!2 (str.++ var1388!1 "Thread ")))
(define-const var1023 var672 var672_currentThread/-1037784612) ; Statement: $r7 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert true)
(define-const var1165 String (getName/-942182377 var1023)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.Thread: java.lang.String getName()>() 
(assert true)
(define-const var1815 String (append/672562846 var478 var1165)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var478!1 String)
(assert (= var478!1 (str.++ var478 var1165)))
(assert true)
(define-const var3787 String (append/672562846 var1815 " MUST NOT hold lock on ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST NOT hold lock on ") 
(declare-const var1815!1 String)
(assert (= var1815!1 (str.++ var1815 " MUST NOT hold lock on ")))
(assert true)
(define-const var817 String (append/-1031950772 var3787 (cast-from-var3496-to-var3029 var1856))) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r30) 
(declare-const var3787!1 String)
(assert (str.prefixof var3787 var3787!1))
(assert true)
(define-const var751 String (toString/-2075883882 var817)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var2807 (cast-from-String-to-var3029 var751))) ; Statement: specialinvoke $r5.<java.lang.AssertionError: void <init>(java.lang.Object)>($r13) 

(declare-const var2807!1 var3733)
(declare-const var751!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var2150_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var3236-to-var3029=([java.util.concurrent.ExecutorService], java.lang.Object), this$0/925620624=([okhttp3.internal.connection.RealCall$AsyncCall], okhttp3.internal.connection.RealCall), getClient/2037925842=([okhttp3.internal.connection.RealCall], okhttp3.OkHttpClient), dispatcher/-247858644=([okhttp3.OkHttpClient], okhttp3.Dispatcher), var672_holdsLock/-145342167=([java.lang.Object], boolean), cast-from-var3496-to-var3029=([okhttp3.Dispatcher], java.lang.Object), var3733-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var672_currentThread/-1037784612=([], java.lang.Thread), getName/-942182377=([java.lang.Thread], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var3029=([java.lang.String], java.lang.Object)}
; {var537=okhttp3.internal.connection.RealCall$AsyncCall, var2787=r1, var3236=java.util.concurrent.ExecutorService, var2377=r0, var2150=kotlin.jvm.internal.Intrinsics, var3029=java.lang.Object, var965="executorService", var3224=okhttp3.internal.connection.RealCall, var801=$r2, var3241=okhttp3.OkHttpClient, var3542=$r3, var3496=okhttp3.Dispatcher, var1856=$r30, var3444=okhttp3.internal.Util, var2191=$z0, var672=java.lang.Thread, var2812=$z1, var3733=java.lang.AssertionError, var2807=$r5, var1388=$r6, var478=$r9, var1023=$r7, var1165=$r8, var1815=$r10, var3787=$r11, var817=$r12, var751=$r13}
; {okhttp3.internal.connection.RealCall$AsyncCall=var537, r1=var2787, java.util.concurrent.ExecutorService=var3236, r0=var2377, kotlin.jvm.internal.Intrinsics=var2150, java.lang.Object=var3029, "executorService"=var965, okhttp3.internal.connection.RealCall=var3224, $r2=var801, okhttp3.OkHttpClient=var3241, $r3=var3542, okhttp3.Dispatcher=var3496, $r30=var1856, okhttp3.internal.Util=var3444, $z0=var2191, java.lang.Thread=var672, $z1=var2812, java.lang.AssertionError=var3733, $r5=var2807, $r6=var1388, $r9=var478, $r7=var1023, $r8=var1165, $r10=var1815, $r11=var3787, $r12=var817, $r13=var751}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.internal.connection.RealCall$AsyncCall;	r0 := @parameter0: java.util.concurrent.ExecutorService;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "executorService");	$r2 = r1.<okhttp3.internal.connection.RealCall$AsyncCall: okhttp3.internal.connection.RealCall this$0>;	$r3 = virtualinvoke $r2.<okhttp3.internal.connection.RealCall: okhttp3.OkHttpClient getClient()>();	$r30 = virtualinvoke $r3.<okhttp3.OkHttpClient: okhttp3.Dispatcher dispatcher()>();	$z0 = <okhttp3.internal.Util: boolean assertionsEnabled>;	if $z0 == 0 goto $r4 = (java.lang.Runnable) r1;	$z1 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>($r30);	if $z1 == 0 goto $r4 = (java.lang.Runnable) r1;	$r5 = new java.lang.AssertionError;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ");	$r7 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$r8 = virtualinvoke $r7.<java.lang.Thread: java.lang.String getName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST NOT hold lock on ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r30);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.AssertionError: void <init>(java.lang.Object)>($r13);	throw $r5
;block_num 3