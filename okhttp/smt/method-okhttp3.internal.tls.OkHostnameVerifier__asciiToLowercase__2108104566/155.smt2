(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2090 0)
(declare-sort var1935 0)
(declare-sort var2800 0)
(declare-sort var3286 0)
(declare-sort var1156 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isAscii/-1326924409 (var2090 String) Bool)
(declare-fun var3286_checkNotNullExpressionValue/47304269 (var1156 String) void)
(declare-fun cast-from-var2800-to-var1156 (var2800) var1156)
(declare-fun toLowerCase/1946809429 (String var2800) String)
(declare-fun cast-from-String-to-var1156 (String) var1156)
(declare-const null-var2090 var2090)
(declare-const null-String String)
(declare-const var2800-US var2800)
(declare-const var1849 var2090) ; Statement: r0 := @this: okhttp3.internal.tls.OkHostnameVerifier 
(assert (not (= var1849 null-var2090)))
(declare-const var701 String) ; Statement: $r1 := @parameter0: java.lang.String 
(assert (not (= var701 null-String)))
(assert true)
(define-const var1956 Bool (isAscii/-1326924409 var1849 var701)) ; Statement: $z0 = specialinvoke r0.<okhttp3.internal.tls.OkHostnameVerifier: boolean isAscii(java.lang.String)>($r1) 
 ; Statement: if $z0 == 0 goto $r3 = $r1 
(assert (not (= (ite var1956 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1980 var2800 var2800-US) ; Statement: $r2 = <java.util.Locale: java.util.Locale US> 
;(assert (var3286_checkNotNullExpressionValue/47304269 (cast-from-var2800-to-var1156 var1980) "US")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r2, "US") 

(declare-const var1980!1 var2800)
(declare-const var3887 String)
(assert true)
(define-const var3883 String (toLowerCase/1946809429 var701 var1980!1)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
;(assert (var3286_checkNotNullExpressionValue/47304269 (cast-from-String-to-var1156 var3883) "this as java.lang.String).toLowerCase(locale)")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r3, "this as java.lang.String).toLowerCase(locale)") 

(declare-const var3883!1 String)
(declare-const var1689 String)
 ; Statement: goto [?= return $r3] 
(assert true) ; Non Conditional
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {isAscii/-1326924409=([okhttp3.internal.tls.OkHostnameVerifier, java.lang.String], boolean), var3286_checkNotNullExpressionValue/47304269=([java.lang.Object, java.lang.String], void), cast-from-var2800-to-var1156=([java.util.Locale], java.lang.Object), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), cast-from-String-to-var1156=([java.lang.String], java.lang.Object)}
; {var2090=okhttp3.internal.tls.OkHostnameVerifier, var1849=r0, var701=$r1, var1935=null_type, var1956=$z0, var2800=java.util.Locale, var1980=$r2, var3286=kotlin.jvm.internal.Intrinsics, var1156=java.lang.Object, var3887="US", var3883=$r3, var1689="this as java.lang.String).toLowerCase(locale)"}
; {okhttp3.internal.tls.OkHostnameVerifier=var2090, r0=var1849, $r1=var701, null_type=var1935, $z0=var1956, java.util.Locale=var2800, $r2=var1980, kotlin.jvm.internal.Intrinsics=var3286, java.lang.Object=var1156, "US"=var3887, $r3=var3883, "this as java.lang.String).toLowerCase(locale)"=var1689}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @this: okhttp3.internal.tls.OkHostnameVerifier;	$r1 := @parameter0: java.lang.String;	$z0 = specialinvoke r0.<okhttp3.internal.tls.OkHostnameVerifier: boolean isAscii(java.lang.String)>($r1);	if $z0 == 0 goto $r3 = $r1;	$r2 = <java.util.Locale: java.util.Locale US>;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r2, "US");	$r3 = virtualinvoke $r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r3, "this as java.lang.String).toLowerCase(locale)");	goto [?= return $r3];	return $r3
;block_num 3