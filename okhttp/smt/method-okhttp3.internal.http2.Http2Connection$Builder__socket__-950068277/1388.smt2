(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3041 0)
(declare-sort var2595 0)
(declare-sort var1966 0)
(declare-sort var820 0)
(declare-sort var3275 0)
(declare-sort var3874 0)
(declare-sort var2150 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3874_checkNotNullParameter/-2060636419 (var2150 String) void)
(declare-fun cast-from-var2595-to-var2150 (var2595) var2150)
(declare-fun cast-from-String-to-var2150 (String) var2150)
(declare-fun cast-from-var820-to-var2150 (var820) var2150)
(declare-fun cast-from-var3275-to-var2150 (var3275) var2150)
(define-fun cast-from-var3041-to-var3041 ((arg var3041)) var3041 arg)
(declare-fun setSocket$okhttp/1866993649 (var3041 var2595) void)
(declare-fun client/1192945577 (var3041) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun setConnectionName$okhttp/1795214340 (var3041 String) void)
(declare-fun setSource$okhttp/1636850143 (var3041 var820) void)
(declare-fun setSink$okhttp/-635378593 (var3041 var3275) void)
(declare-const null-var3041 var3041)
(declare-const null-var2595 var2595)
(declare-const null-String String)
(declare-const null-var820 var820)
(declare-const null-var3275 var3275)
(declare-const var594 var3041) ; Statement: r4 := @this: okhttp3.internal.http2.Http2Connection$Builder 
(assert (not (= var594 null-var3041)))
(declare-const var3177 var2595) ; Statement: r0 := @parameter0: java.net.Socket 
(assert (not (= var3177 null-var2595)))
(declare-const var1934 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1934 null-String)))
(declare-const var66 var820) ; Statement: r2 := @parameter2: okio.BufferedSource 
(assert (not (= var66 null-var820)))
(declare-const var1027 var3275) ; Statement: r3 := @parameter3: okio.BufferedSink 
(assert (not (= var1027 null-var3275)))
;(assert (var3874_checkNotNullParameter/-2060636419 (cast-from-var2595-to-var2150 var3177) "socket")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "socket") 

(declare-const var3177!1 var2595)
(declare-const var3286 String)
;(assert (var3874_checkNotNullParameter/-2060636419 (cast-from-String-to-var2150 var1934) "peerName")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r1, "peerName") 

(declare-const var1934!1 String)
(declare-const var2067 String)
;(assert (var3874_checkNotNullParameter/-2060636419 (cast-from-var820-to-var2150 var66) "source")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r2, "source") 

(declare-const var66!1 var820)
(declare-const var82 String)
;(assert (var3874_checkNotNullParameter/-2060636419 (cast-from-var3275-to-var2150 var1027) "sink")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r3, "sink") 

(declare-const var1027!1 var3275)
(declare-const var3503 String)
(define-const var762 var3041 (cast-from-var3041-to-var3041 var594)) ; Statement: $r5 = (okhttp3.internal.http2.Http2Connection$Builder) r4 
(assert true)
;(assert (setSocket$okhttp/1866993649 var762 var3177!1)) ; Statement: virtualinvoke $r5.<okhttp3.internal.http2.Http2Connection$Builder: void setSocket$okhttp(java.net.Socket)>(r0) 

(declare-const var762!1 var3041)
(declare-const var3177!2 var2595)
(define-const var3783 Bool (client/1192945577 var762!1)) ; Statement: $z0 = $r5.<okhttp3.internal.http2.Http2Connection$Builder: boolean client> 
 ; Statement: if $z0 == 0 goto $r6 = new java.lang.StringBuilder 
(assert (= (ite var3783 1 0) 0)) ; Cond: $z0 == 0 
(define-const var18 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var18)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var18!1 String)
(assert (= var18!1 ""))
(assert true)
(define-const var1062 String (append/672562846 var18!1 "MockWebServer ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("MockWebServer ") 
(declare-const var18!2 String)
(assert (= var18!2 (str.++ var18!1 "MockWebServer ")))
(assert true)
(define-const var3591 String (append/672562846 var1062 var1934!1)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1062!1 String)
(assert (= var1062!1 (str.++ var1062 var1934!1)))
(assert true)
(define-const var3946 String (toString/-2075883882 var3591)) ; Statement: $r15 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
;(assert (setConnectionName$okhttp/1795214340 var762!1 var3946)) ; Statement: virtualinvoke $r5.<okhttp3.internal.http2.Http2Connection$Builder: void setConnectionName$okhttp(java.lang.String)>($r15) 

(declare-const var762!2 var3041)
(declare-const var3946!1 String)
(assert true)
;(assert (setSource$okhttp/1636850143 var762!2 var66!1)) ; Statement: virtualinvoke $r5.<okhttp3.internal.http2.Http2Connection$Builder: void setSource$okhttp(okio.BufferedSource)>(r2) 

(declare-const var762!3 var3041)
(declare-const var66!2 var820)
(assert true)
;(assert (setSink$okhttp/-635378593 var762!3 var1027!1)) ; Statement: virtualinvoke $r5.<okhttp3.internal.http2.Http2Connection$Builder: void setSink$okhttp(okio.BufferedSink)>(r3) 

(declare-const var762!4 var3041)
(declare-const var1027!2 var3275)
(define-const var3128 var3041 (cast-from-var3041-to-var3041 var594)) ; Statement: $r9 = (okhttp3.internal.http2.Http2Connection$Builder) r4 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var3874_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var2595-to-var2150=([java.net.Socket], java.lang.Object), cast-from-String-to-var2150=([java.lang.String], java.lang.Object), cast-from-var820-to-var2150=([okio.BufferedSource], java.lang.Object), cast-from-var3275-to-var2150=([okio.BufferedSink], java.lang.Object), cast-from-var3041-to-var3041=([okhttp3.internal.http2.Http2Connection$Builder], okhttp3.internal.http2.Http2Connection$Builder), setSocket$okhttp/1866993649=([okhttp3.internal.http2.Http2Connection$Builder, java.net.Socket], void), client/1192945577=([okhttp3.internal.http2.Http2Connection$Builder], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), setConnectionName$okhttp/1795214340=([okhttp3.internal.http2.Http2Connection$Builder, java.lang.String], void), setSource$okhttp/1636850143=([okhttp3.internal.http2.Http2Connection$Builder, okio.BufferedSource], void), setSink$okhttp/-635378593=([okhttp3.internal.http2.Http2Connection$Builder, okio.BufferedSink], void)}
; {var3041=okhttp3.internal.http2.Http2Connection$Builder, var594=r4, var2595=java.net.Socket, var3177=r0, var1934=r1, var1966=null_type, var820=okio.BufferedSource, var66=r2, var3275=okio.BufferedSink, var1027=r3, var3874=kotlin.jvm.internal.Intrinsics, var2150=java.lang.Object, var3286="socket", var2067="peerName", var82="source", var3503="sink", var762=$r5, var3783=$z0, var18=$r6, var1062=$r7, var3591=$r8, var3946=$r15, var3128=$r9}
; {okhttp3.internal.http2.Http2Connection$Builder=var3041, r4=var594, java.net.Socket=var2595, r0=var3177, r1=var1934, null_type=var1966, okio.BufferedSource=var820, r2=var66, okio.BufferedSink=var3275, r3=var1027, kotlin.jvm.internal.Intrinsics=var3874, java.lang.Object=var2150, "socket"=var3286, "peerName"=var2067, "source"=var82, "sink"=var3503, $r5=var762, $z0=var3783, $r6=var18, $r7=var1062, $r8=var3591, $r15=var3946, $r9=var3128}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: okhttp3.internal.http2.Http2Connection$Builder;	r0 := @parameter0: java.net.Socket;	r1 := @parameter1: java.lang.String;	r2 := @parameter2: okio.BufferedSource;	r3 := @parameter3: okio.BufferedSink;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "socket");	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r1, "peerName");	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r2, "source");	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r3, "sink");	$r5 = (okhttp3.internal.http2.Http2Connection$Builder) r4;	virtualinvoke $r5.<okhttp3.internal.http2.Http2Connection$Builder: void setSocket$okhttp(java.net.Socket)>(r0);	$z0 = $r5.<okhttp3.internal.http2.Http2Connection$Builder: boolean client>;	if $z0 == 0 goto $r6 = new java.lang.StringBuilder;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("MockWebServer ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r15 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r5.<okhttp3.internal.http2.Http2Connection$Builder: void setConnectionName$okhttp(java.lang.String)>($r15);	virtualinvoke $r5.<okhttp3.internal.http2.Http2Connection$Builder: void setSource$okhttp(okio.BufferedSource)>(r2);	virtualinvoke $r5.<okhttp3.internal.http2.Http2Connection$Builder: void setSink$okhttp(okio.BufferedSink)>(r3);	$r9 = (okhttp3.internal.http2.Http2Connection$Builder) r4;	return $r9
;block_num 3