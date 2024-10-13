(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3472 0)
(declare-sort var2944 0)
(declare-sort var3545 0)
(declare-sort var2265 0)
(declare-sort var516 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun interceptors/1555930318 (var3472) var2944)
(declare-fun var3545_checkNotNull/-1048323646 (var2265 String) void)
(declare-fun cast-from-var2944-to-var2265 (var2944) var2265)
(declare-fun var2944_contains/-441121415 (var2944 var2265) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2265) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var516-init () var516)
(declare-fun toString/-522406933 (var2265) String)
(declare-fun cast-from-String-to-var2265 (String) var2265)
(declare-fun <init>/-1092629202 (var516 String) void)
(declare-const null-var3472 var3472)
(declare-const null-var2265 var2265)
(declare-const var1827 var3472) ; Statement: r0 := @this: okhttp3.OkHttpClient 
(assert (not (= var1827 null-var3472)))
(define-const var2648 var2944 (interceptors/1555930318 var1827)) ; Statement: $r1 = r0.<okhttp3.OkHttpClient: java.util.List interceptors> 
;(assert (var3545_checkNotNull/-1048323646 (cast-from-var2944-to-var2265 var2648) "null cannot be cast to non-null type kotlin.collections.List<okhttp3.Interceptor?>")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNull(java.lang.Object,java.lang.String)>($r1, "null cannot be cast to non-null type kotlin.collections.List<okhttp3.Interceptor?>") 

(declare-const var2648!1 var2944)
(declare-const var2233 String)
(define-const var2972 Bool (var2944_contains/-441121415 var2648!1 null-var2265)) ; Statement: $z0 = interfaceinvoke $r1.<java.util.List: boolean contains(java.lang.Object)>(null) 
 ; Statement: if $z0 != 0 goto $z6 = 0 
(assert (not (= (ite var2972 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2047 Bool (ite (= 1 0) true false)) ; Statement: $z6 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z6 != 0 goto $r2 = r0.<okhttp3.OkHttpClient: java.util.List networkInterceptors> 
(assert (not (not (= (ite var2047 1 0) 0)))) ; Negate: Cond: $z6 != 0  
(define-const var957 String String-init) ; Statement: $r37 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var957)) ; Statement: specialinvoke $r37.<java.lang.StringBuilder: void <init>()>() 
(declare-const var957!1 String)
(assert (= var957!1 ""))
(assert true)
(define-const var3933 String (append/672562846 var957!1 "Null interceptor: ")) ; Statement: $r39 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Null interceptor: ") 
(declare-const var957!2 String)
(assert (= var957!2 (str.++ var957!1 "Null interceptor: ")))
(define-const var3420 var2944 (interceptors/1555930318 var1827)) ; Statement: $r38 = r0.<okhttp3.OkHttpClient: java.util.List interceptors> 
(assert true)
(define-const var584 String (append/-1031950772 var3933 (cast-from-var2944-to-var2265 var3420))) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r38) 
(declare-const var3933!1 String)
(assert (str.prefixof var3933 var3933!1))
(assert true)
(define-const var1983 String (toString/-2075883882 var584)) ; Statement: $r43 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1631 var516 var516-init) ; Statement: $r41 = new java.lang.IllegalStateException 
(assert true)
(define-const var1925 String (toString/-522406933 (cast-from-String-to-var2265 var1983))) ; Statement: $r42 = virtualinvoke $r43.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var1631 var1925)) ; Statement: specialinvoke $r41.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r42) 

(declare-const var1631!1 var516)
(declare-const var1925!1 String)
 ; Statement: throw $r41 
(check-sat)
(get-model)
(get-unsat-core)
; {interceptors/1555930318=([okhttp3.OkHttpClient], java.util.List), var3545_checkNotNull/-1048323646=([java.lang.Object, java.lang.String], void), cast-from-var2944-to-var2265=([java.util.List], java.lang.Object), var2944_contains/-441121415=([java.util.List, java.lang.Object], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var516-init=([], java.lang.IllegalStateException), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-String-to-var2265=([java.lang.String], java.lang.Object), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var3472=okhttp3.OkHttpClient, var1827=r0, var2944=java.util.List, var2648=$r1, var3545=kotlin.jvm.internal.Intrinsics, var2265=java.lang.Object, var2233="null cannot be cast to non-null type kotlin.collections.List<okhttp3.Interceptor?>", var2972=$z0, var2047=$z6, var957=$r37, var3933=$r39, var3420=$r38, var584=$r40, var1983=$r43, var516=java.lang.IllegalStateException, var1631=$r41, var1925=$r42}
; {okhttp3.OkHttpClient=var3472, r0=var1827, java.util.List=var2944, $r1=var2648, kotlin.jvm.internal.Intrinsics=var3545, java.lang.Object=var2265, "null cannot be cast to non-null type kotlin.collections.List<okhttp3.Interceptor?>"=var2233, $z0=var2972, $z6=var2047, $r37=var957, $r39=var3933, $r38=var3420, $r40=var584, $r43=var1983, java.lang.IllegalStateException=var516, $r41=var1631, $r42=var1925}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.OkHttpClient;	$r1 = r0.<okhttp3.OkHttpClient: java.util.List interceptors>;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNull(java.lang.Object,java.lang.String)>($r1, "null cannot be cast to non-null type kotlin.collections.List<okhttp3.Interceptor?>");	$z0 = interfaceinvoke $r1.<java.util.List: boolean contains(java.lang.Object)>(null);	if $z0 != 0 goto $z6 = 0;	$z6 = 0;	if $z6 != 0 goto $r2 = r0.<okhttp3.OkHttpClient: java.util.List networkInterceptors>;	$r37 = new java.lang.StringBuilder;	specialinvoke $r37.<java.lang.StringBuilder: void <init>()>();	$r39 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Null interceptor: ");	$r38 = r0.<okhttp3.OkHttpClient: java.util.List interceptors>;	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r38);	$r43 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>();	$r41 = new java.lang.IllegalStateException;	$r42 = virtualinvoke $r43.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r41.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r42);	throw $r41
;block_num 4