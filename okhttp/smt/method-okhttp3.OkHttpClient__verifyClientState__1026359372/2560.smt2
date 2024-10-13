(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3567 0)
(declare-sort var2649 0)
(declare-sort var3564 0)
(declare-sort var1509 0)
(declare-sort var2294 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun interceptors/1555930318 (var3567) var2649)
(declare-fun var3564_checkNotNull/-1048323646 (var1509 String) void)
(declare-fun cast-from-var2649-to-var1509 (var2649) var1509)
(declare-fun var2649_contains/-441121415 (var2649 var1509) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1509) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2294-init () var2294)
(declare-fun toString/-522406933 (var1509) String)
(declare-fun cast-from-String-to-var1509 (String) var1509)
(declare-fun <init>/-1092629202 (var2294 String) void)
(declare-const null-var3567 var3567)
(declare-const null-var1509 var1509)
(declare-const var1900 var3567) ; Statement: r0 := @this: okhttp3.OkHttpClient 
(assert (not (= var1900 null-var3567)))
(define-const var3088 var2649 (interceptors/1555930318 var1900)) ; Statement: $r1 = r0.<okhttp3.OkHttpClient: java.util.List interceptors> 
;(assert (var3564_checkNotNull/-1048323646 (cast-from-var2649-to-var1509 var3088) "null cannot be cast to non-null type kotlin.collections.List<okhttp3.Interceptor?>")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNull(java.lang.Object,java.lang.String)>($r1, "null cannot be cast to non-null type kotlin.collections.List<okhttp3.Interceptor?>") 

(declare-const var3088!1 var2649)
(declare-const var598 String)
(define-const var1321 Bool (var2649_contains/-441121415 var3088!1 null-var1509)) ; Statement: $z0 = interfaceinvoke $r1.<java.util.List: boolean contains(java.lang.Object)>(null) 
 ; Statement: if $z0 != 0 goto $z6 = 0 
(assert (not (not (= (ite var1321 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var272 Bool (ite (= 1 1) true false)) ; Statement: $z6 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z6 != 0 goto $r2 = r0.<okhttp3.OkHttpClient: java.util.List networkInterceptors> 
(assert (not (not (= (ite var272 1 0) 0)))) ; Negate: Cond: $z6 != 0  
(define-const var2207 String String-init) ; Statement: $r37 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2207)) ; Statement: specialinvoke $r37.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2207!1 String)
(assert (= var2207!1 ""))
(assert true)
(define-const var3939 String (append/672562846 var2207!1 "Null interceptor: ")) ; Statement: $r39 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Null interceptor: ") 
(declare-const var2207!2 String)
(assert (= var2207!2 (str.++ var2207!1 "Null interceptor: ")))
(define-const var1489 var2649 (interceptors/1555930318 var1900)) ; Statement: $r38 = r0.<okhttp3.OkHttpClient: java.util.List interceptors> 
(assert true)
(define-const var3487 String (append/-1031950772 var3939 (cast-from-var2649-to-var1509 var1489))) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r38) 
(declare-const var3939!1 String)
(assert (str.prefixof var3939 var3939!1))
(assert true)
(define-const var2205 String (toString/-2075883882 var3487)) ; Statement: $r43 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3316 var2294 var2294-init) ; Statement: $r41 = new java.lang.IllegalStateException 
(assert true)
(define-const var2567 String (toString/-522406933 (cast-from-String-to-var1509 var2205))) ; Statement: $r42 = virtualinvoke $r43.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var3316 var2567)) ; Statement: specialinvoke $r41.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r42) 

(declare-const var3316!1 var2294)
(declare-const var2567!1 String)
 ; Statement: throw $r41 
(check-sat)
(get-model)
(get-unsat-core)
; {interceptors/1555930318=([okhttp3.OkHttpClient], java.util.List), var3564_checkNotNull/-1048323646=([java.lang.Object, java.lang.String], void), cast-from-var2649-to-var1509=([java.util.List], java.lang.Object), var2649_contains/-441121415=([java.util.List, java.lang.Object], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2294-init=([], java.lang.IllegalStateException), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-String-to-var1509=([java.lang.String], java.lang.Object), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var3567=okhttp3.OkHttpClient, var1900=r0, var2649=java.util.List, var3088=$r1, var3564=kotlin.jvm.internal.Intrinsics, var1509=java.lang.Object, var598="null cannot be cast to non-null type kotlin.collections.List<okhttp3.Interceptor?>", var1321=$z0, var272=$z6, var2207=$r37, var3939=$r39, var1489=$r38, var3487=$r40, var2205=$r43, var2294=java.lang.IllegalStateException, var3316=$r41, var2567=$r42}
; {okhttp3.OkHttpClient=var3567, r0=var1900, java.util.List=var2649, $r1=var3088, kotlin.jvm.internal.Intrinsics=var3564, java.lang.Object=var1509, "null cannot be cast to non-null type kotlin.collections.List<okhttp3.Interceptor?>"=var598, $z0=var1321, $z6=var272, $r37=var2207, $r39=var3939, $r38=var1489, $r40=var3487, $r43=var2205, java.lang.IllegalStateException=var2294, $r41=var3316, $r42=var2567}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.OkHttpClient;	$r1 = r0.<okhttp3.OkHttpClient: java.util.List interceptors>;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNull(java.lang.Object,java.lang.String)>($r1, "null cannot be cast to non-null type kotlin.collections.List<okhttp3.Interceptor?>");	$z0 = interfaceinvoke $r1.<java.util.List: boolean contains(java.lang.Object)>(null);	if $z0 != 0 goto $z6 = 0;	$z6 = 1;	goto [?= (branch)];	if $z6 != 0 goto $r2 = r0.<okhttp3.OkHttpClient: java.util.List networkInterceptors>;	$r37 = new java.lang.StringBuilder;	specialinvoke $r37.<java.lang.StringBuilder: void <init>()>();	$r39 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Null interceptor: ");	$r38 = r0.<okhttp3.OkHttpClient: java.util.List interceptors>;	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r38);	$r43 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>();	$r41 = new java.lang.IllegalStateException;	$r42 = virtualinvoke $r43.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r41.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r42);	throw $r41
;block_num 4