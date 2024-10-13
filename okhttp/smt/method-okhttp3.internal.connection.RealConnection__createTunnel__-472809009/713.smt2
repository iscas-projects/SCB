(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3762 0)
(declare-sort var2800 0)
(declare-sort var3164 0)
(declare-sort var2662 0)
(declare-sort var1273 0)
(declare-sort var35 0)
(declare-sort var1288 0)
(declare-sort var1301 0)
(declare-sort var1034 0)
(declare-sort var521 0)
(declare-sort var1440 0)
(declare-sort var3358 0)
(declare-sort var1858 0)
(declare-sort var3958 0)
(declare-sort var1142 0)
(declare-sort var1454 0)
(declare-sort var2269 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2662_toHostHeader/-1233356706 (var3164 Bool) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun source/-1511555494 (var3762) var1273)
(declare-fun var35_checkNotNull/185761657 (var1288) void)
(declare-fun cast-from-var1273-to-var1288 (var1273) var1288)
(declare-fun sink/-1511555494 (var3762) var1301)
(declare-fun cast-from-var1301-to-var1288 (var1301) var1288)
(declare-fun var1034-init () var1034)
(declare-fun <init>/210029668 (var1034 var521 var3762 var1273 var1301) void)
(declare-fun var1273_timeout/1344034231 (var1273) var3358)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun timeout/-1209963384 (var3358 Int var1858) var3358)
(declare-fun var1301_timeout/-493144449 (var1301) var3358)
(declare-fun headers/1032010954 (var2800) var3958)
(declare-fun writeRequest/-355679178 (var1034 var3958 String) void)
(declare-fun finishRequest/-221741854 (var1034) void)
(declare-fun readResponseHeaders/-1664124218 (var1034 Bool) var1142)
(declare-fun cast-from-var1142-to-var1288 (var1142) var1288)
(declare-fun request/-462371300 (var1142 var2800) var1142)
(declare-fun build/1127514294 (var1142) var1454)
(declare-fun skipConnectBody/357263857 (var1034 var1454) void)
(declare-fun code/-1887255971 (var1454) Int)
(declare-fun var2269-init () var2269)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun <init>/-1557872005 (var2269 String) void)
(declare-const null-var3762 var3762)
(declare-const null-Int Int)
(declare-const null-var2800 var2800)
(declare-const null-var3164 var3164)
(declare-const null-NullType var1440)
(declare-const null-var521 var521)
(declare-const var1858-MILLISECONDS var1858)
(declare-const var2124 var3762) ; Statement: r8 := @this: okhttp3.internal.connection.RealConnection 
(assert (not (= var2124 null-var3762)))
(declare-const var3153 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3153 null-Int)))
(declare-const var1633 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var1633 null-Int)))
(declare-const var333 var2800) ; Statement: r0 := @parameter2: okhttp3.Request 
(assert (not (= var333 null-var2800)))
(declare-const var2256 var3164) ; Statement: r2 := @parameter3: okhttp3.HttpUrl 
(assert (not (= var2256 null-var3164)))
(define-const var2083 var2800 var333) ; Statement: r35 = r0 
(define-const var685 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var685)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var685!1 String)
(assert (= var685!1 ""))
(assert true)
(define-const var1213 String (append/672562846 var685!1 "CONNECT ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CONNECT ") 
(declare-const var685!2 String)
(assert (= var685!2 (str.++ var685!1 "CONNECT ")))
(define-const var3364 String (var2662_toHostHeader/-1233356706 var2256 (ite (= 1 1) true false))) ; Statement: $r3 = staticinvoke <okhttp3.internal.Util: java.lang.String toHostHeader(okhttp3.HttpUrl,boolean)>(r2, 1) 
(assert true)
(define-const var984 String (append/672562846 var1213 var3364)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1213!1 String)
(assert (= var1213!1 (str.++ var1213 var3364)))
(assert true)
(define-const var951 String (append/672562846 var984 " HTTP/1.1")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" HTTP/1.1") 
(declare-const var984!1 String)
(assert (= var984!1 (str.++ var984 " HTTP/1.1")))
(assert true)
(define-const var3649 String (toString/-2075883882 var951)) ; Statement: r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var95 var1273 (source/-1511555494 var2124)) ; Statement: $r9 = r8.<okhttp3.internal.connection.RealConnection: okio.BufferedSource source> 
;(assert (var35_checkNotNull/185761657 (cast-from-var1273-to-var1288 var95))) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNull(java.lang.Object)>($r9) 

(declare-const var95!1 var1273)
(define-const var1592 var1301 (sink/-1511555494 var2124)) ; Statement: $r10 = r8.<okhttp3.internal.connection.RealConnection: okio.BufferedSink sink> 
;(assert (var35_checkNotNull/185761657 (cast-from-var1301-to-var1288 var1592))) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNull(java.lang.Object)>($r10) 

(declare-const var1592!1 var1301)
(define-const var3858 var1034 var1034-init) ; Statement: $r11 = new okhttp3.internal.http1.Http1ExchangeCodec 
(assert true)
;(assert (<init>/210029668 var3858 null-var521 var2124 var95!1 var1592!1)) ; Statement: specialinvoke $r11.<okhttp3.internal.http1.Http1ExchangeCodec: void <init>(okhttp3.OkHttpClient,okhttp3.internal.connection.RealConnection,okio.BufferedSource,okio.BufferedSink)>(null, r8, $r9, $r10) 

(declare-const var3858!1 var1034)
(declare-const var236 var1440)
(declare-const var2124!1 var3762)
(declare-const var95!2 var1273)
(declare-const var1592!2 var1301)
(define-const var3309 var3358 (var1273_timeout/1344034231 var95!2)) ; Statement: $r13 = interfaceinvoke $r9.<okio.BufferedSource: okio.Timeout timeout()>() 
(define-const var917 Int (cast-from-Int-to-Int var3153)) ; Statement: $l1 = (long) i0 
(define-const var2894 var1858 var1858-MILLISECONDS) ; Statement: $r12 = <java.util.concurrent.TimeUnit: java.util.concurrent.TimeUnit MILLISECONDS> 
(assert true)
;(assert (timeout/-1209963384 var3309 var917 var2894)) ; Statement: virtualinvoke $r13.<okio.Timeout: okio.Timeout timeout(long,java.util.concurrent.TimeUnit)>($l1, $r12) 

(declare-const var3309!1 var3358)
(declare-const var917!1 Int)
(declare-const var2894!1 var1858)
(define-const var1669 var3358 (var1301_timeout/-493144449 var1592!2)) ; Statement: $r15 = interfaceinvoke $r10.<okio.BufferedSink: okio.Timeout timeout()>() 
(define-const var3981 Int (cast-from-Int-to-Int var1633)) ; Statement: $l3 = (long) i2 
(define-const var787 var1858 var1858-MILLISECONDS) ; Statement: $r14 = <java.util.concurrent.TimeUnit: java.util.concurrent.TimeUnit MILLISECONDS> 
(assert true)
;(assert (timeout/-1209963384 var1669 var3981 var787)) ; Statement: virtualinvoke $r15.<okio.Timeout: okio.Timeout timeout(long,java.util.concurrent.TimeUnit)>($l3, $r14) 

(declare-const var1669!1 var3358)
(declare-const var3981!1 Int)
(declare-const var787!1 var1858)
(assert true)
(define-const var225 var3958 (headers/1032010954 var2083)) ; Statement: $r16 = virtualinvoke r35.<okhttp3.Request: okhttp3.Headers headers()>() 
(assert true)
;(assert (writeRequest/-355679178 var3858!1 var225 var3649)) ; Statement: virtualinvoke $r11.<okhttp3.internal.http1.Http1ExchangeCodec: void writeRequest(okhttp3.Headers,java.lang.String)>($r16, r7) 

(declare-const var3858!2 var1034)
(declare-const var225!1 var3958)
(declare-const var3649!1 String)
(assert true)
;(assert (finishRequest/-221741854 var3858!2)) ; Statement: virtualinvoke $r11.<okhttp3.internal.http1.Http1ExchangeCodec: void finishRequest()>() 

(declare-const var3858!3 var1034)
(assert true)
(define-const var936 var1142 (readResponseHeaders/-1664124218 var3858!3 (ite (= 1 0) true false))) ; Statement: $r17 = virtualinvoke $r11.<okhttp3.internal.http1.Http1ExchangeCodec: okhttp3.Response$Builder readResponseHeaders(boolean)>(0) 
;(assert (var35_checkNotNull/185761657 (cast-from-var1142-to-var1288 var936))) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNull(java.lang.Object)>($r17) 

(declare-const var936!1 var1142)
(assert true)
(define-const var571 var1142 (request/-462371300 var936!1 var2083)) ; Statement: $r18 = virtualinvoke $r17.<okhttp3.Response$Builder: okhttp3.Response$Builder request(okhttp3.Request)>(r35) 
(assert true)
(define-const var2720 var1454 (build/1127514294 var571)) ; Statement: $r25 = virtualinvoke $r18.<okhttp3.Response$Builder: okhttp3.Response build()>() 
(assert true)
;(assert (skipConnectBody/357263857 var3858!3 var2720)) ; Statement: virtualinvoke $r11.<okhttp3.internal.http1.Http1ExchangeCodec: void skipConnectBody(okhttp3.Response)>($r25) 

(declare-const var3858!4 var1034)
(declare-const var2720!1 var1454)
(assert true)
(define-const var3637 Int (code/-1887255971 var2720!1)) ; Statement: $i4 = virtualinvoke $r25.<okhttp3.Response: int code()>() 
 ; Statement: lookupswitch($i4) {     case 200: goto $r27 = interfaceinvoke $r9.<okio.BufferedSource: okio.Buffer getBuffer()>();     case 407: goto $r19 = r8.<okhttp3.internal.connection.RealConnection: okhttp3.Route route>;     default: goto $r30 = new java.io.IOException; } 
(assert (and (not (= var3637 407)) (and (not (= var3637 200)) true))) ; Intersect: Negate: Cond: $i4 == 407   and Intersect: Negate: Cond: $i4 == 200   and Non Conditional  
(define-const var3493 var2269 var2269-init) ; Statement: $r30 = new java.io.IOException 
(define-const var3483 String String-init) ; Statement: $r31 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3483)) ; Statement: specialinvoke $r31.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3483!1 String)
(assert (= var3483!1 ""))
(assert true)
(define-const var2667 String (append/672562846 var3483!1 "Unexpected response code for CONNECT: ")) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected response code for CONNECT: ") 
(declare-const var3483!2 String)
(assert (= var3483!2 (str.++ var3483!1 "Unexpected response code for CONNECT: ")))
(assert true)
(define-const var3094 Int (code/-1887255971 var2720!1)) ; Statement: $i5 = virtualinvoke $r25.<okhttp3.Response: int code()>() 
(assert true)
(define-const var609 String (append/-1001720160 var2667 var3094)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i5) 
(declare-const var2667!1 String)
(assert (str.prefixof var2667 var2667!1))
(assert true)
(define-const var3134 String (toString/-2075883882 var609)) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var3493 var3134)) ; Statement: specialinvoke $r30.<java.io.IOException: void <init>(java.lang.String)>($r34) 

(declare-const var3493!1 var2269)
(declare-const var3134!1 String)
 ; Statement: throw $r30 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2662_toHostHeader/-1233356706=([okhttp3.HttpUrl, boolean], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), source/-1511555494=([okhttp3.internal.connection.RealConnection], okio.BufferedSource), var35_checkNotNull/185761657=([java.lang.Object], void), cast-from-var1273-to-var1288=([okio.BufferedSource], java.lang.Object), sink/-1511555494=([okhttp3.internal.connection.RealConnection], okio.BufferedSink), cast-from-var1301-to-var1288=([okio.BufferedSink], java.lang.Object), var1034-init=([], okhttp3.internal.http1.Http1ExchangeCodec), <init>/210029668=([okhttp3.internal.http1.Http1ExchangeCodec, okhttp3.OkHttpClient, okhttp3.internal.connection.RealConnection, okio.BufferedSource, okio.BufferedSink], void), var1273_timeout/1344034231=([okio.BufferedSource], okio.Timeout), cast-from-Int-to-Int=([int], long), timeout/-1209963384=([okio.Timeout, long, java.util.concurrent.TimeUnit], okio.Timeout), var1301_timeout/-493144449=([okio.BufferedSink], okio.Timeout), headers/1032010954=([okhttp3.Request], okhttp3.Headers), writeRequest/-355679178=([okhttp3.internal.http1.Http1ExchangeCodec, okhttp3.Headers, java.lang.String], void), finishRequest/-221741854=([okhttp3.internal.http1.Http1ExchangeCodec], void), readResponseHeaders/-1664124218=([okhttp3.internal.http1.Http1ExchangeCodec, boolean], okhttp3.Response$Builder), cast-from-var1142-to-var1288=([okhttp3.Response$Builder], java.lang.Object), request/-462371300=([okhttp3.Response$Builder, okhttp3.Request], okhttp3.Response$Builder), build/1127514294=([okhttp3.Response$Builder], okhttp3.Response), skipConnectBody/357263857=([okhttp3.internal.http1.Http1ExchangeCodec, okhttp3.Response], void), code/-1887255971=([okhttp3.Response], int), var2269-init=([], java.io.IOException), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var3762=okhttp3.internal.connection.RealConnection, var2124=r8, var3153=i0, var1633=i2, var2800=okhttp3.Request, var333=r0, var3164=okhttp3.HttpUrl, var2256=r2, var2083=r35, var685=$r1, var1213=$r4, var2662=okhttp3.internal.Util, var3364=$r3, var984=$r5, var951=$r6, var3649=r7, var1273=okio.BufferedSource, var95=$r9, var35=kotlin.jvm.internal.Intrinsics, var1288=java.lang.Object, var1301=okio.BufferedSink, var1592=$r10, var1034=okhttp3.internal.http1.Http1ExchangeCodec, var3858=$r11, var521=okhttp3.OkHttpClient, var236=null, var1440=null_type, var3358=okio.Timeout, var3309=$r13, var917=$l1, var1858=java.util.concurrent.TimeUnit, var2894=$r12, var1669=$r15, var3981=$l3, var787=$r14, var3958=okhttp3.Headers, var225=$r16, var1142=okhttp3.Response$Builder, var936=$r17, var571=$r18, var1454=okhttp3.Response, var2720=$r25, var3637=$i4, var2269=java.io.IOException, var3493=$r30, var3483=$r31, var2667=$r32, var3094=$i5, var609=$r33, var3134=$r34}
; {okhttp3.internal.connection.RealConnection=var3762, r8=var2124, i0=var3153, i2=var1633, okhttp3.Request=var2800, r0=var333, okhttp3.HttpUrl=var3164, r2=var2256, r35=var2083, $r1=var685, $r4=var1213, okhttp3.internal.Util=var2662, $r3=var3364, $r5=var984, $r6=var951, r7=var3649, okio.BufferedSource=var1273, $r9=var95, kotlin.jvm.internal.Intrinsics=var35, java.lang.Object=var1288, okio.BufferedSink=var1301, $r10=var1592, okhttp3.internal.http1.Http1ExchangeCodec=var1034, $r11=var3858, okhttp3.OkHttpClient=var521, null=var236, null_type=var1440, okio.Timeout=var3358, $r13=var3309, $l1=var917, java.util.concurrent.TimeUnit=var1858, $r12=var2894, $r15=var1669, $l3=var3981, $r14=var787, okhttp3.Headers=var3958, $r16=var225, okhttp3.Response$Builder=var1142, $r17=var936, $r18=var571, okhttp3.Response=var1454, $r25=var2720, $i4=var3637, java.io.IOException=var2269, $r30=var3493, $r31=var3483, $r32=var2667, $i5=var3094, $r33=var609, $r34=var3134}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1}
;stmts r8 := @this: okhttp3.internal.connection.RealConnection;	i0 := @parameter0: int;	i2 := @parameter1: int;	r0 := @parameter2: okhttp3.Request;	r2 := @parameter3: okhttp3.HttpUrl;	r35 = r0;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CONNECT ");	$r3 = staticinvoke <okhttp3.internal.Util: java.lang.String toHostHeader(okhttp3.HttpUrl,boolean)>(r2, 1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" HTTP/1.1");	r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = r8.<okhttp3.internal.connection.RealConnection: okio.BufferedSource source>;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNull(java.lang.Object)>($r9);	$r10 = r8.<okhttp3.internal.connection.RealConnection: okio.BufferedSink sink>;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNull(java.lang.Object)>($r10);	$r11 = new okhttp3.internal.http1.Http1ExchangeCodec;	specialinvoke $r11.<okhttp3.internal.http1.Http1ExchangeCodec: void <init>(okhttp3.OkHttpClient,okhttp3.internal.connection.RealConnection,okio.BufferedSource,okio.BufferedSink)>(null, r8, $r9, $r10);	$r13 = interfaceinvoke $r9.<okio.BufferedSource: okio.Timeout timeout()>();	$l1 = (long) i0;	$r12 = <java.util.concurrent.TimeUnit: java.util.concurrent.TimeUnit MILLISECONDS>;	virtualinvoke $r13.<okio.Timeout: okio.Timeout timeout(long,java.util.concurrent.TimeUnit)>($l1, $r12);	$r15 = interfaceinvoke $r10.<okio.BufferedSink: okio.Timeout timeout()>();	$l3 = (long) i2;	$r14 = <java.util.concurrent.TimeUnit: java.util.concurrent.TimeUnit MILLISECONDS>;	virtualinvoke $r15.<okio.Timeout: okio.Timeout timeout(long,java.util.concurrent.TimeUnit)>($l3, $r14);	$r16 = virtualinvoke r35.<okhttp3.Request: okhttp3.Headers headers()>();	virtualinvoke $r11.<okhttp3.internal.http1.Http1ExchangeCodec: void writeRequest(okhttp3.Headers,java.lang.String)>($r16, r7);	virtualinvoke $r11.<okhttp3.internal.http1.Http1ExchangeCodec: void finishRequest()>();	$r17 = virtualinvoke $r11.<okhttp3.internal.http1.Http1ExchangeCodec: okhttp3.Response$Builder readResponseHeaders(boolean)>(0);	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNull(java.lang.Object)>($r17);	$r18 = virtualinvoke $r17.<okhttp3.Response$Builder: okhttp3.Response$Builder request(okhttp3.Request)>(r35);	$r25 = virtualinvoke $r18.<okhttp3.Response$Builder: okhttp3.Response build()>();	virtualinvoke $r11.<okhttp3.internal.http1.Http1ExchangeCodec: void skipConnectBody(okhttp3.Response)>($r25);	$i4 = virtualinvoke $r25.<okhttp3.Response: int code()>();	lookupswitch($i4) {     case 200: goto $r27 = interfaceinvoke $r9.<okio.BufferedSource: okio.Buffer getBuffer()>();     case 407: goto $r19 = r8.<okhttp3.internal.connection.RealConnection: okhttp3.Route route>;     default: goto $r30 = new java.io.IOException; };	$r30 = new java.io.IOException;	$r31 = new java.lang.StringBuilder;	specialinvoke $r31.<java.lang.StringBuilder: void <init>()>();	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected response code for CONNECT: ");	$i5 = virtualinvoke $r25.<okhttp3.Response: int code()>();	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i5);	$r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r30.<java.io.IOException: void <init>(java.lang.String)>($r34);	throw $r30
;block_num 3