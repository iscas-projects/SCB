(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1071 0)
(declare-sort var574 0)
(declare-sort var2882 0)
(declare-sort var3709 0)
(declare-sort var2780 0)
(declare-sort var3346 0)
(declare-sort var1009 0)
(declare-sort var115 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3346_checkNotNullParameter/-2060636419 (var1009 String) void)
(declare-fun cast-from-var574-to-var1009 (var574) var1009)
(declare-fun cast-from-String-to-var1009 (String) var1009)
(declare-fun cast-from-var3709-to-var1009 (var3709) var1009)
(declare-fun cast-from-var2780-to-var1009 (var2780) var1009)
(define-fun cast-from-var1071-to-var1071 ((arg var1071)) var1071 arg)
(declare-fun setSocket$okhttp/1866993649 (var1071 var574) void)
(declare-fun client/1192945577 (var1071) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun setConnectionName$okhttp/1795214340 (var1071 String) void)
(declare-fun setSource$okhttp/1636850143 (var1071 var3709) void)
(declare-fun setSink$okhttp/-635378593 (var1071 var2780) void)
(declare-const null-var1071 var1071)
(declare-const null-var574 var574)
(declare-const null-String String)
(declare-const null-var3709 var3709)
(declare-const null-var2780 var2780)
(declare-const var115-okHttpName String)
(declare-const var1125 var1071) ; Statement: r4 := @this: okhttp3.internal.http2.Http2Connection$Builder 
(assert (not (= var1125 null-var1071)))
(declare-const var413 var574) ; Statement: r0 := @parameter0: java.net.Socket 
(assert (not (= var413 null-var574)))
(declare-const var2911 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2911 null-String)))
(declare-const var3552 var3709) ; Statement: r2 := @parameter2: okio.BufferedSource 
(assert (not (= var3552 null-var3709)))
(declare-const var3525 var2780) ; Statement: r3 := @parameter3: okio.BufferedSink 
(assert (not (= var3525 null-var2780)))
;(assert (var3346_checkNotNullParameter/-2060636419 (cast-from-var574-to-var1009 var413) "socket")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "socket") 

(declare-const var413!1 var574)
(declare-const var386 String)
;(assert (var3346_checkNotNullParameter/-2060636419 (cast-from-String-to-var1009 var2911) "peerName")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r1, "peerName") 

(declare-const var2911!1 String)
(declare-const var1160 String)
;(assert (var3346_checkNotNullParameter/-2060636419 (cast-from-var3709-to-var1009 var3552) "source")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r2, "source") 

(declare-const var3552!1 var3709)
(declare-const var3259 String)
;(assert (var3346_checkNotNullParameter/-2060636419 (cast-from-var2780-to-var1009 var3525) "sink")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r3, "sink") 

(declare-const var3525!1 var2780)
(declare-const var103 String)
(define-const var3821 var1071 (cast-from-var1071-to-var1071 var1125)) ; Statement: $r5 = (okhttp3.internal.http2.Http2Connection$Builder) r4 
(assert true)
;(assert (setSocket$okhttp/1866993649 var3821 var413!1)) ; Statement: virtualinvoke $r5.<okhttp3.internal.http2.Http2Connection$Builder: void setSocket$okhttp(java.net.Socket)>(r0) 

(declare-const var3821!1 var1071)
(declare-const var413!2 var574)
(define-const var3467 Bool (client/1192945577 var3821!1)) ; Statement: $z0 = $r5.<okhttp3.internal.http2.Http2Connection$Builder: boolean client> 
 ; Statement: if $z0 == 0 goto $r6 = new java.lang.StringBuilder 
(assert (not (= (ite var3467 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3000 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3000)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3000!1 String)
(assert (= var3000!1 ""))
(define-const var3091 String var115-okHttpName) ; Statement: $r11 = <okhttp3.internal.Util: java.lang.String okHttpName> 
(assert true)
(define-const var970 String (append/672562846 var3000!1 var3091)) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3000!2 String)
(assert (= var3000!2 (str.++ var3000!1 var3091)))
(assert true)
(define-const var2375 String (append/-1166366385 var970 32)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var970!1 String)
(assert (str.prefixof var970 var970!1))
(assert true)
(define-const var668 String (append/672562846 var2375 var2911!1)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2375!1 String)
(assert (= var2375!1 (str.++ var2375 var2911!1)))
(assert true)
(define-const var2074 String (toString/-2075883882 var668)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= virtualinvoke $r5.<okhttp3.internal.http2.Http2Connection$Builder: void setConnectionName$okhttp(java.lang.String)>($r15)] 
(assert true) ; Non Conditional
(assert true)
;(assert (setConnectionName$okhttp/1795214340 var3821!1 var2074)) ; Statement: virtualinvoke $r5.<okhttp3.internal.http2.Http2Connection$Builder: void setConnectionName$okhttp(java.lang.String)>($r15) 

(declare-const var3821!2 var1071)
(declare-const var2074!1 String)
(assert true)
;(assert (setSource$okhttp/1636850143 var3821!2 var3552!1)) ; Statement: virtualinvoke $r5.<okhttp3.internal.http2.Http2Connection$Builder: void setSource$okhttp(okio.BufferedSource)>(r2) 

(declare-const var3821!3 var1071)
(declare-const var3552!2 var3709)
(assert true)
;(assert (setSink$okhttp/-635378593 var3821!3 var3525!1)) ; Statement: virtualinvoke $r5.<okhttp3.internal.http2.Http2Connection$Builder: void setSink$okhttp(okio.BufferedSink)>(r3) 

(declare-const var3821!4 var1071)
(declare-const var3525!2 var2780)
(define-const var786 var1071 (cast-from-var1071-to-var1071 var1125)) ; Statement: $r9 = (okhttp3.internal.http2.Http2Connection$Builder) r4 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var3346_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var574-to-var1009=([java.net.Socket], java.lang.Object), cast-from-String-to-var1009=([java.lang.String], java.lang.Object), cast-from-var3709-to-var1009=([okio.BufferedSource], java.lang.Object), cast-from-var2780-to-var1009=([okio.BufferedSink], java.lang.Object), cast-from-var1071-to-var1071=([okhttp3.internal.http2.Http2Connection$Builder], okhttp3.internal.http2.Http2Connection$Builder), setSocket$okhttp/1866993649=([okhttp3.internal.http2.Http2Connection$Builder, java.net.Socket], void), client/1192945577=([okhttp3.internal.http2.Http2Connection$Builder], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), setConnectionName$okhttp/1795214340=([okhttp3.internal.http2.Http2Connection$Builder, java.lang.String], void), setSource$okhttp/1636850143=([okhttp3.internal.http2.Http2Connection$Builder, okio.BufferedSource], void), setSink$okhttp/-635378593=([okhttp3.internal.http2.Http2Connection$Builder, okio.BufferedSink], void)}
; {var1071=okhttp3.internal.http2.Http2Connection$Builder, var1125=r4, var574=java.net.Socket, var413=r0, var2911=r1, var2882=null_type, var3709=okio.BufferedSource, var3552=r2, var2780=okio.BufferedSink, var3525=r3, var3346=kotlin.jvm.internal.Intrinsics, var1009=java.lang.Object, var386="socket", var1160="peerName", var3259="source", var103="sink", var3821=$r5, var3467=$z0, var3000=$r10, var115=okhttp3.internal.Util, var3091=$r11, var970=$r12, var2375=$r13, var668=$r14, var2074=$r15, var786=$r9}
; {okhttp3.internal.http2.Http2Connection$Builder=var1071, r4=var1125, java.net.Socket=var574, r0=var413, r1=var2911, null_type=var2882, okio.BufferedSource=var3709, r2=var3552, okio.BufferedSink=var2780, r3=var3525, kotlin.jvm.internal.Intrinsics=var3346, java.lang.Object=var1009, "socket"=var386, "peerName"=var1160, "source"=var3259, "sink"=var103, $r5=var3821, $z0=var3467, $r10=var3000, okhttp3.internal.Util=var115, $r11=var3091, $r12=var970, $r13=var2375, $r14=var668, $r15=var2074, $r9=var786}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: okhttp3.internal.http2.Http2Connection$Builder;	r0 := @parameter0: java.net.Socket;	r1 := @parameter1: java.lang.String;	r2 := @parameter2: okio.BufferedSource;	r3 := @parameter3: okio.BufferedSink;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "socket");	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r1, "peerName");	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r2, "source");	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r3, "sink");	$r5 = (okhttp3.internal.http2.Http2Connection$Builder) r4;	virtualinvoke $r5.<okhttp3.internal.http2.Http2Connection$Builder: void setSocket$okhttp(java.net.Socket)>(r0);	$z0 = $r5.<okhttp3.internal.http2.Http2Connection$Builder: boolean client>;	if $z0 == 0 goto $r6 = new java.lang.StringBuilder;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = <okhttp3.internal.Util: java.lang.String okHttpName>;	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= virtualinvoke $r5.<okhttp3.internal.http2.Http2Connection$Builder: void setConnectionName$okhttp(java.lang.String)>($r15)];	virtualinvoke $r5.<okhttp3.internal.http2.Http2Connection$Builder: void setConnectionName$okhttp(java.lang.String)>($r15);	virtualinvoke $r5.<okhttp3.internal.http2.Http2Connection$Builder: void setSource$okhttp(okio.BufferedSource)>(r2);	virtualinvoke $r5.<okhttp3.internal.http2.Http2Connection$Builder: void setSink$okhttp(okio.BufferedSink)>(r3);	$r9 = (okhttp3.internal.http2.Http2Connection$Builder) r4;	return $r9
;block_num 3