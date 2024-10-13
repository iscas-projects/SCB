(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2627 0)
(declare-sort var228 0)
(declare-sort var1379 0)
(declare-sort var2570 0)
(declare-sort var3574 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1379_checkNotNullParameter/-2060636419 (var2570 String) void)
(declare-fun cast-from-var228-to-var2570 (var228) var2570)
(declare-fun getClass/1258963082 (var2570) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun var1379_checkNotNullExpressionValue/47304269 (var2570 String) void)
(declare-fun cast-from-String-to-var2570 (String) var2570)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun $packageName/-1184879280 (var2627) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3574_startsWith$default/493066340 (String String Bool Int var2570) Bool)
(declare-const null-var2627 var2627)
(declare-const null-var228 var228)
(declare-const null-var2570 var2570)
(declare-const var3298 var2627) ; Statement: r4 := @this: okhttp3.internal.platform.android.AndroidSocketAdapter$Companion$factory$1 
(assert (not (= var3298 null-var2627)))
(declare-const var229 var228) ; Statement: r0 := @parameter0: javax.net.ssl.SSLSocket 
(assert (not (= var229 null-var228)))
;(assert (var1379_checkNotNullParameter/-2060636419 (cast-from-var228-to-var2570 var229) "sslSocket")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "sslSocket") 

(declare-const var229!1 var228)
(declare-const var2110 String)
(assert true)
(define-const var1446 ClassObject (getClass/1258963082 (cast-from-var228-to-var2570 var229!1))) ; Statement: $r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var850 String (getName/-1958580599 var1446)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.Class: java.lang.String getName()>() 
;(assert (var1379_checkNotNullExpressionValue/47304269 (cast-from-String-to-var2570 var850) "sslSocket.javaClass.name")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r2, "sslSocket.javaClass.name") 

(declare-const var850!1 String)
(declare-const var2884 String)
(define-const var1929 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1929)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1929!1 String)
(assert (= var1929!1 ""))
(define-const var3013 String ($packageName/-1184879280 var3298)) ; Statement: $r5 = r4.<okhttp3.internal.platform.android.AndroidSocketAdapter$Companion$factory$1: java.lang.String $packageName> 
(assert true)
(define-const var963 String (append/672562846 var1929!1 var3013)) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1929!2 String)
(assert (= var1929!2 (str.++ var1929!1 var3013)))
(assert true)
(define-const var1722 String (append/-1166366385 var963 46)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var963!1 String)
(assert (str.prefixof var963 var963!1))
(assert true)
(define-const var2198 String (toString/-2075883882 var1722)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var281 Bool (var3574_startsWith$default/493066340 var850!1 var2198 (ite (= 1 0) true false) 2 null-var2570)) ; Statement: $z0 = staticinvoke <kotlin.text.StringsKt: boolean startsWith$default(java.lang.String,java.lang.String,boolean,int,java.lang.Object)>($r2, $r8, 0, 2, null) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1379_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var228-to-var2570=([javax.net.ssl.SSLSocket], java.lang.Object), getClass/1258963082=([java.lang.Object], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), var1379_checkNotNullExpressionValue/47304269=([java.lang.Object, java.lang.String], void), cast-from-String-to-var2570=([java.lang.String], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), $packageName/-1184879280=([okhttp3.internal.platform.android.AndroidSocketAdapter$Companion$factory$1], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3574_startsWith$default/493066340=([java.lang.String, java.lang.String, boolean, int, java.lang.Object], boolean)}
; {var2627=okhttp3.internal.platform.android.AndroidSocketAdapter$Companion$factory$1, var3298=r4, var228=javax.net.ssl.SSLSocket, var229=r0, var1379=kotlin.jvm.internal.Intrinsics, var2570=java.lang.Object, var2110="sslSocket", var1446=$r1, var850=$r2, var2884="sslSocket.javaClass.name", var1929=$r3, var3013=$r5, var963=$r6, var1722=$r7, var2198=$r8, var3574=kotlin.text.StringsKt, var281=$z0}
; {okhttp3.internal.platform.android.AndroidSocketAdapter$Companion$factory$1=var2627, r4=var3298, javax.net.ssl.SSLSocket=var228, r0=var229, kotlin.jvm.internal.Intrinsics=var1379, java.lang.Object=var2570, "sslSocket"=var2110, $r1=var1446, $r2=var850, "sslSocket.javaClass.name"=var2884, $r3=var1929, $r5=var3013, $r6=var963, $r7=var1722, $r8=var2198, kotlin.text.StringsKt=var3574, $z0=var281}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: okhttp3.internal.platform.android.AndroidSocketAdapter$Companion$factory$1;	r0 := @parameter0: javax.net.ssl.SSLSocket;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "sslSocket");	$r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r2 = virtualinvoke $r1.<java.lang.Class: java.lang.String getName()>();	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r2, "sslSocket.javaClass.name");	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r5 = r4.<okhttp3.internal.platform.android.AndroidSocketAdapter$Companion$factory$1: java.lang.String $packageName>;	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$z0 = staticinvoke <kotlin.text.StringsKt: boolean startsWith$default(java.lang.String,java.lang.String,boolean,int,java.lang.Object)>($r2, $r8, 0, 2, null);	return $z0
;block_num 1