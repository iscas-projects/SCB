(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2851 0)
(declare-sort var718 0)
(declare-sort var2791 0)
(declare-sort var721 0)
(declare-sort var532 0)
(declare-sort var1226 0)
(declare-sort var2479 0)
(declare-sort var2112 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2791_checkNotNullParameter/-2060636419 (var721 String) void)
(declare-fun cast-from-var718-to-var721 (var718) var721)
(declare-fun nextModeIndex/-74746890 (var2851) Int)
(declare-fun connectionSpecs/-74746890 (var2851) var1226)
(declare-fun var1226_size/-959786421 (var1226) Int)
(declare-fun var2479-init () var2479)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun isFallback/-74746890 (var2851) Bool)
(declare-fun append/-388390247 (String Bool) String)
(declare-fun append/-1031950772 (String var721) String)
(declare-fun cast-from-var1226-to-var721 (var1226) var721)
(declare-fun getEnabledProtocols/-1912512472 (var718) (Array Int String))
(declare-fun var2791_checkNotNull/185761657 (var721) void)
(declare-fun cast-from-__Array__Int__String__-to-var721 ((Array Int String)) var721)
(declare-fun var2112_toString/-575966009 ((Array Int var721)) String)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var721__ ((Array Int String)) (Array Int var721))
(declare-fun var2791_checkNotNullExpressionValue/47304269 (var721 String) void)
(declare-fun cast-from-String-to-var721 (String) var721)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1112889453 (var2479 String) void)
(declare-const null-var2851 var2851)
(declare-const null-var718 var718)
(declare-const null-var532 var532)
(declare-const var1160 var2851) ; Statement: r1 := @this: okhttp3.internal.connection.ConnectionSpecSelector 
(assert (not (= var1160 null-var2851)))
(declare-const var2895 var718) ; Statement: r0 := @parameter0: javax.net.ssl.SSLSocket 
(assert (not (= var2895 null-var718)))
;(assert (var2791_checkNotNullParameter/-2060636419 (cast-from-var718-to-var721 var2895) "sslSocket")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "sslSocket") 

(declare-const var2895!1 var718)
(declare-const var1116 String)
(define-const var88 var532 null-var532) ; Statement: r18 = null 
(define-const var1728 Int (nextModeIndex/-74746890 var1160)) ; Statement: i2 = r1.<okhttp3.internal.connection.ConnectionSpecSelector: int nextModeIndex> 
(define-const var3798 var1226 (connectionSpecs/-74746890 var1160)) ; Statement: $r2 = r1.<okhttp3.internal.connection.ConnectionSpecSelector: java.util.List connectionSpecs> 
(define-const var688 Int (var1226_size/-959786421 var3798)) ; Statement: i0 = interfaceinvoke $r2.<java.util.List: int size()>() 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto (branch) 
(assert (>= var1728 var688)) ; Cond: i2 >= i0 
 ; Statement: if r18 != null goto $z0 = specialinvoke r1.<okhttp3.internal.connection.ConnectionSpecSelector: boolean isFallbackPossible(javax.net.ssl.SSLSocket)>(r0) 
(assert (not (not (= var88 null-var532)))) ; Negate: Cond: r18 != null  
(define-const var3957 var2479 var2479-init) ; Statement: $r3 = new java.net.UnknownServiceException 
(define-const var2676 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2676)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2676!1 String)
(assert (= var2676!1 ""))
(assert true)
(define-const var1047 String (append/672562846 var2676!1 "Unable to find acceptable protocols. isFallback=")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to find acceptable protocols. isFallback=") 
(declare-const var2676!2 String)
(assert (= var2676!2 (str.++ var2676!1 "Unable to find acceptable protocols. isFallback=")))
(define-const var1503 Bool (isFallback/-74746890 var1160)) ; Statement: $z2 = r1.<okhttp3.internal.connection.ConnectionSpecSelector: boolean isFallback> 
(assert true)
(define-const var2769 String (append/-388390247 var1047 var1503)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z2) 
(declare-const var1047!1 String)
(assert (str.prefixof var1047 var1047!1))
(assert true)
(define-const var250 String (append/672562846 var2769 ", modes=")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", modes=") 
(declare-const var2769!1 String)
(assert (= var2769!1 (str.++ var2769 ", modes=")))
(define-const var37 var1226 (connectionSpecs/-74746890 var1160)) ; Statement: $r7 = r1.<okhttp3.internal.connection.ConnectionSpecSelector: java.util.List connectionSpecs> 
(assert true)
(define-const var434 String (append/-1031950772 var250 (cast-from-var1226-to-var721 var37))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7) 
(declare-const var250!1 String)
(assert (str.prefixof var250 var250!1))
(assert true)
(define-const var3118 String (append/672562846 var434 ", supported protocols=")) ; Statement: $r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", supported protocols=") 
(declare-const var434!1 String)
(assert (= var434!1 (str.++ var434 ", supported protocols=")))
(assert true)
(define-const var1536 (Array Int String) (getEnabledProtocols/-1912512472 var2895!1)) ; Statement: $r10 = virtualinvoke r0.<javax.net.ssl.SSLSocket: java.lang.String[] getEnabledProtocols()>() 
;(assert (var2791_checkNotNull/185761657 (cast-from-__Array__Int__String__-to-var721 var1536))) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNull(java.lang.Object)>($r10) 

(declare-const var1536!1 (Array Int String))
(define-const var477 String (var2112_toString/-575966009 (cast-from-__Array__Int__String__-to-__Array__Int__var721__ var1536!1))) ; Statement: $r11 = staticinvoke <java.util.Arrays: java.lang.String toString(java.lang.Object[])>($r10) 
;(assert (var2791_checkNotNullExpressionValue/47304269 (cast-from-String-to-var721 var477) "toString(this)")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r11, "toString(this)") 

(declare-const var477!1 String)
(declare-const var3067 String)
(assert true)
(define-const var327 String (append/672562846 var3118 var477!1)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3118!1 String)
(assert (= var3118!1 (str.++ var3118 var477!1)))
(assert true)
(define-const var2448 String (toString/-2075883882 var327)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1112889453 var3957 var2448)) ; Statement: specialinvoke $r3.<java.net.UnknownServiceException: void <init>(java.lang.String)>($r14) 

(declare-const var3957!1 var2479)
(declare-const var2448!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var2791_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var718-to-var721=([javax.net.ssl.SSLSocket], java.lang.Object), nextModeIndex/-74746890=([okhttp3.internal.connection.ConnectionSpecSelector], int), connectionSpecs/-74746890=([okhttp3.internal.connection.ConnectionSpecSelector], java.util.List), var1226_size/-959786421=([java.util.List], int), var2479-init=([], java.net.UnknownServiceException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), isFallback/-74746890=([okhttp3.internal.connection.ConnectionSpecSelector], boolean), append/-388390247=([java.lang.StringBuilder, boolean], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1226-to-var721=([java.util.List], java.lang.Object), getEnabledProtocols/-1912512472=([javax.net.ssl.SSLSocket], java.lang.String[]), var2791_checkNotNull/185761657=([java.lang.Object], void), cast-from-__Array__Int__String__-to-var721=([java.lang.String[]], java.lang.Object), var2112_toString/-575966009=([java.lang.Object[]], java.lang.String), cast-from-__Array__Int__String__-to-__Array__Int__var721__=([java.lang.String[]], java.lang.Object[]), var2791_checkNotNullExpressionValue/47304269=([java.lang.Object, java.lang.String], void), cast-from-String-to-var721=([java.lang.String], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1112889453=([java.net.UnknownServiceException, java.lang.String], void)}
; {var2851=okhttp3.internal.connection.ConnectionSpecSelector, var1160=r1, var718=javax.net.ssl.SSLSocket, var2895=r0, var2791=kotlin.jvm.internal.Intrinsics, var721=java.lang.Object, var1116="sslSocket", var532=okhttp3.ConnectionSpec, var88=r18, var1728=i2, var1226=java.util.List, var3798=$r2, var688=i0, var2479=java.net.UnknownServiceException, var3957=$r3, var2676=$r4, var1047=$r5, var1503=$z2, var2769=$r6, var250=$r8, var37=$r7, var434=$r9, var3118=$r12, var1536=$r10, var2112=java.util.Arrays, var477=$r11, var3067="toString(this)", var327=$r13, var2448=$r14}
; {okhttp3.internal.connection.ConnectionSpecSelector=var2851, r1=var1160, javax.net.ssl.SSLSocket=var718, r0=var2895, kotlin.jvm.internal.Intrinsics=var2791, java.lang.Object=var721, "sslSocket"=var1116, okhttp3.ConnectionSpec=var532, r18=var88, i2=var1728, java.util.List=var1226, $r2=var3798, i0=var688, java.net.UnknownServiceException=var2479, $r3=var3957, $r4=var2676, $r5=var1047, $z2=var1503, $r6=var2769, $r8=var250, $r7=var37, $r9=var434, $r12=var3118, $r10=var1536, java.util.Arrays=var2112, $r11=var477, "toString(this)"=var3067, $r13=var327, $r14=var2448}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.util.Arrays: java.lang.String toString(java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.internal.connection.ConnectionSpecSelector;	r0 := @parameter0: javax.net.ssl.SSLSocket;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "sslSocket");	r18 = null;	i2 = r1.<okhttp3.internal.connection.ConnectionSpecSelector: int nextModeIndex>;	$r2 = r1.<okhttp3.internal.connection.ConnectionSpecSelector: java.util.List connectionSpecs>;	i0 = interfaceinvoke $r2.<java.util.List: int size()>();	if i2 >= i0 goto (branch);	if r18 != null goto $z0 = specialinvoke r1.<okhttp3.internal.connection.ConnectionSpecSelector: boolean isFallbackPossible(javax.net.ssl.SSLSocket)>(r0);	$r3 = new java.net.UnknownServiceException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to find acceptable protocols. isFallback=");	$z2 = r1.<okhttp3.internal.connection.ConnectionSpecSelector: boolean isFallback>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z2);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", modes=");	$r7 = r1.<okhttp3.internal.connection.ConnectionSpecSelector: java.util.List connectionSpecs>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7);	$r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", supported protocols=");	$r10 = virtualinvoke r0.<javax.net.ssl.SSLSocket: java.lang.String[] getEnabledProtocols()>();	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNull(java.lang.Object)>($r10);	$r11 = staticinvoke <java.util.Arrays: java.lang.String toString(java.lang.Object[])>($r10);	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r11, "toString(this)");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.net.UnknownServiceException: void <init>(java.lang.String)>($r14);	throw $r3
;block_num 4