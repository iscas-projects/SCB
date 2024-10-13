(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var872 0)
(declare-sort var3393 0)
(declare-sort var2010 0)
(declare-sort var542 0)
(declare-sort var3713 0)
(declare-sort var2380 0)
(declare-sort var1402 0)
(declare-sort var1558 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var542_checkNotNullParameter/-2060636419 (var3713 String) void)
(declare-fun cast-from-var3393-to-var3713 (var3393) var3713)
(declare-fun var1402_holdsLock/-145342167 (var3713) Bool)
(declare-fun cast-from-var872-to-var3713 (var872) var3713)
(declare-fun var1558-init () var1558)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1402_currentThread/-1037784612 () var1402)
(declare-fun getName/-942182377 (var1402) String)
(declare-fun append/-1031950772 (String var3713) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var1558 var3713) void)
(declare-fun cast-from-String-to-var3713 (String) var3713)
(declare-const null-var872 var872)
(declare-const null-var3393 var3393)
(declare-const null-var2010 var2010)
(declare-const var2380-assertionsEnabled Bool)
(declare-const var2550 var872) ; Statement: r2 := @this: okhttp3.internal.http2.Http2Connection 
(assert (not (= var2550 null-var872)))
(declare-const var3557 var3393) ; Statement: r0 := @parameter0: okhttp3.internal.http2.ErrorCode 
(assert (not (= var3557 null-var3393)))
(declare-const var475 var3393) ; Statement: r1 := @parameter1: okhttp3.internal.http2.ErrorCode 
(assert (not (= var475 null-var3393)))
(declare-const var3072 var2010) ; Statement: r11 := @parameter2: java.io.IOException 
(assert (not (= var3072 null-var2010)))
;(assert (var542_checkNotNullParameter/-2060636419 (cast-from-var3393-to-var3713 var3557) "connectionCode")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "connectionCode") 

(declare-const var3557!1 var3393)
(declare-const var2942 String)
;(assert (var542_checkNotNullParameter/-2060636419 (cast-from-var3393-to-var3713 var475) "streamCode")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r1, "streamCode") 

(declare-const var475!1 var3393)
(declare-const var1660 String)
(define-const var1800 Bool var2380-assertionsEnabled) ; Statement: $z0 = <okhttp3.internal.Util: boolean assertionsEnabled> 
 ; Statement: if $z0 == 0 goto virtualinvoke r2.<okhttp3.internal.http2.Http2Connection: void shutdown(okhttp3.internal.http2.ErrorCode)>(r0) 
(assert (not (= (ite var1800 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3244 Bool (var1402_holdsLock/-145342167 (cast-from-var872-to-var3713 var2550))) ; Statement: $z2 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>(r2) 
 ; Statement: if $z2 == 0 goto virtualinvoke r2.<okhttp3.internal.http2.Http2Connection: void shutdown(okhttp3.internal.http2.ErrorCode)>(r0) 
(assert (not (= (ite var3244 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var2268 var1558 var1558-init) ; Statement: $r16 = new java.lang.AssertionError 
(define-const var2952 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2952)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2952!1 String)
(assert (= var2952!1 ""))
(assert true)
(define-const var2363 String (append/672562846 var2952!1 "Thread ")) ; Statement: $r20 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ") 
(declare-const var2952!2 String)
(assert (= var2952!2 (str.++ var2952!1 "Thread ")))
(define-const var2087 var1402 var1402_currentThread/-1037784612) ; Statement: $r18 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert true)
(define-const var3943 String (getName/-942182377 var2087)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.Thread: java.lang.String getName()>() 
(assert true)
(define-const var2742 String (append/672562846 var2363 var3943)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var2363!1 String)
(assert (= var2363!1 (str.++ var2363 var3943)))
(assert true)
(define-const var1168 String (append/672562846 var2742 " MUST NOT hold lock on ")) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST NOT hold lock on ") 
(declare-const var2742!1 String)
(assert (= var2742!1 (str.++ var2742 " MUST NOT hold lock on ")))
(assert true)
(define-const var1557 String (append/-1031950772 var1168 (cast-from-var872-to-var3713 var2550))) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var1168!1 String)
(assert (str.prefixof var1168 var1168!1))
(assert true)
(define-const var2528 String (toString/-2075883882 var1557)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var2268 (cast-from-String-to-var3713 var2528))) ; Statement: specialinvoke $r16.<java.lang.AssertionError: void <init>(java.lang.Object)>($r24) 

(declare-const var2268!1 var1558)
(declare-const var2528!1 String)
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {var542_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var3393-to-var3713=([okhttp3.internal.http2.ErrorCode], java.lang.Object), var1402_holdsLock/-145342167=([java.lang.Object], boolean), cast-from-var872-to-var3713=([okhttp3.internal.http2.Http2Connection], java.lang.Object), var1558-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1402_currentThread/-1037784612=([], java.lang.Thread), getName/-942182377=([java.lang.Thread], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var3713=([java.lang.String], java.lang.Object)}
; {var872=okhttp3.internal.http2.Http2Connection, var2550=r2, var3393=okhttp3.internal.http2.ErrorCode, var3557=r0, var475=r1, var2010=java.io.IOException, var3072=r11, var542=kotlin.jvm.internal.Intrinsics, var3713=java.lang.Object, var2942="connectionCode", var1660="streamCode", var2380=okhttp3.internal.Util, var1800=$z0, var1402=java.lang.Thread, var3244=$z2, var1558=java.lang.AssertionError, var2268=$r16, var2952=$r17, var2363=$r20, var2087=$r18, var3943=$r19, var2742=$r21, var1168=$r22, var1557=$r23, var2528=$r24}
; {okhttp3.internal.http2.Http2Connection=var872, r2=var2550, okhttp3.internal.http2.ErrorCode=var3393, r0=var3557, r1=var475, java.io.IOException=var2010, r11=var3072, kotlin.jvm.internal.Intrinsics=var542, java.lang.Object=var3713, "connectionCode"=var2942, "streamCode"=var1660, okhttp3.internal.Util=var2380, $z0=var1800, java.lang.Thread=var1402, $z2=var3244, java.lang.AssertionError=var1558, $r16=var2268, $r17=var2952, $r20=var2363, $r18=var2087, $r19=var3943, $r21=var2742, $r22=var1168, $r23=var1557, $r24=var2528}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: okhttp3.internal.http2.Http2Connection;	r0 := @parameter0: okhttp3.internal.http2.ErrorCode;	r1 := @parameter1: okhttp3.internal.http2.ErrorCode;	r11 := @parameter2: java.io.IOException;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "connectionCode");	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r1, "streamCode");	$z0 = <okhttp3.internal.Util: boolean assertionsEnabled>;	if $z0 == 0 goto virtualinvoke r2.<okhttp3.internal.http2.Http2Connection: void shutdown(okhttp3.internal.http2.ErrorCode)>(r0);	$z2 = staticinvoke <java.lang.Thread: boolean holdsLock(java.lang.Object)>(r2);	if $z2 == 0 goto virtualinvoke r2.<okhttp3.internal.http2.Http2Connection: void shutdown(okhttp3.internal.http2.ErrorCode)>(r0);	$r16 = new java.lang.AssertionError;	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r20 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Thread ");	$r18 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$r19 = virtualinvoke $r18.<java.lang.Thread: java.lang.String getName()>();	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" MUST NOT hold lock on ");	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r16.<java.lang.AssertionError: void <init>(java.lang.Object)>($r24);	throw $r16
;block_num 3