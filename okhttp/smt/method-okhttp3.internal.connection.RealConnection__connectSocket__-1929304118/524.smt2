(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3106 0)
(declare-sort var771 0)
(declare-sort var3978 0)
(declare-sort var2159 0)
(declare-sort var3104 0)
(declare-sort var3291 0)
(declare-sort var1749 0)
(declare-sort var3527 0)
(declare-sort var3946 0)
(declare-sort var161 0)
(declare-sort var2308 0)
(declare-sort var2174 0)
(declare-sort var542 0)
(declare-sort var2015 0)
(declare-sort var1909 0)
(declare-sort var2165 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun route/-1511555494 (var3106) var2159)
(declare-fun proxy/-457978806 (var2159) var3104)
(declare-fun address/678262376 (var2159) var3291)
(declare-fun type/1546983933 (var3104) var1749)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun socketFactory/1474696471 (var3291) var3527)
(declare-fun createSocket/-1496110682 (var3527) var3946)
(declare-fun var161_checkNotNull/185761657 (var2308) void)
(declare-fun cast-from-var3946-to-var2308 (var3946) var2308)
(declare-fun rawSocket/-1511555494 (var3106) var3946)
(declare-fun socketAddress/456820696 (var2159) var2174)
(declare-fun connectStart/703845680 (var3978 var771 var2174 var3104) void)
(declare-fun setSoTimeout/1275523889 (var3946 Int) void)
(declare-fun var1909-init () var1909)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2308) String)
(declare-fun cast-from-var2174-to-var2308 (var2174) var2308)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/49438800 (var1909 String) void)
(declare-fun cast-from-var1909-to-var2165 (var1909) var2165)
(declare-fun initCause/2003336360 (var2165 var2165) var2165)
(declare-const null-var3106 var3106)
(declare-const null-Int Int)
(declare-const null-var771 var771)
(declare-const null-var3978 var3978)
(declare-const null-var1749 var1749)
(declare-const var2015-Companion var542)
(declare-const null-var1909 var1909)
(declare-const var3691 var3106) ; Statement: r0 := @this: okhttp3.internal.connection.RealConnection 
(assert (not (= var3691 null-var3106)))
(declare-const var3698 Int) ; Statement: i2 := @parameter0: int 
(assert (not (= var3698 null-Int)))
(declare-const var1129 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1129 null-Int)))
(declare-const var1222 var771) ; Statement: r9 := @parameter2: okhttp3.Call 
(assert (not (= var1222 null-var771)))
(declare-const var2691 var3978) ; Statement: r8 := @parameter3: okhttp3.EventListener 
(assert (not (= var2691 null-var3978)))
(define-const var3298 var2159 (route/-1511555494 var3691)) ; Statement: $r1 = r0.<okhttp3.internal.connection.RealConnection: okhttp3.Route route> 
(assert true)
(define-const var2973 var3104 (proxy/-457978806 var3298)) ; Statement: r2 = virtualinvoke $r1.<okhttp3.Route: java.net.Proxy proxy()>() 
(define-const var407 var2159 (route/-1511555494 var3691)) ; Statement: $r3 = r0.<okhttp3.internal.connection.RealConnection: okhttp3.Route route> 
(assert true)
(define-const var387 var3291 (address/678262376 var407)) ; Statement: r4 = virtualinvoke $r3.<okhttp3.Route: okhttp3.Address address()>() 
(assert true)
(define-const var1852 var1749 (type/1546983933 var2973)) ; Statement: $r5 = virtualinvoke r2.<java.net.Proxy: java.net.Proxy$Type type()>() 
 ; Statement: if $r5 != null goto $r6 = <okhttp3.internal.connection.RealConnection$WhenMappings: int[] $EnumSwitchMapping$0> 
(assert (not (not (= var1852 null-var1749)))) ; Negate: Cond: $r5 != null  
(define-const var2508 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i5 = (int) -1 
(define-const var1405 Int var2508) ; Statement: $i3 = $i5 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: tableswitch($i3) {     case 1: goto $r7 = virtualinvoke r4.<okhttp3.Address: javax.net.SocketFactory socketFactory()>();     case 2: goto $r7 = virtualinvoke r4.<okhttp3.Address: javax.net.SocketFactory socketFactory()>();     default: goto $r35 = new java.net.Socket; } 
(assert (and (= var1405 1) true)) ; Intersect: Cond: $i3 == 1  and Non Conditional 
(assert true)
(define-const var1192 var3527 (socketFactory/1474696471 var387)) ; Statement: $r7 = virtualinvoke r4.<okhttp3.Address: javax.net.SocketFactory socketFactory()>() 
(assert true)
(define-const var2154 var3946 (createSocket/-1496110682 var1192)) ; Statement: $r34 = virtualinvoke $r7.<javax.net.SocketFactory: java.net.Socket createSocket()>() 
;(assert (var161_checkNotNull/185761657 (cast-from-var3946-to-var2308 var2154))) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNull(java.lang.Object)>($r34) 

(declare-const var2154!1 var3946)
 ; Statement: goto [?= r0.<okhttp3.internal.connection.RealConnection: java.net.Socket rawSocket> = $r34] 
(assert true) ; Non Conditional
(declare-const var3691!1 var3106)
(assert (not (= var3691!1 null-var3106)))
(assert (= (rawSocket/-1511555494 var3691!1) var2154!1)) ; Statement: r0.<okhttp3.internal.connection.RealConnection: java.net.Socket rawSocket> = $r34 
(define-const var192 var2159 (route/-1511555494 var3691!1)) ; Statement: $r10 = r0.<okhttp3.internal.connection.RealConnection: okhttp3.Route route> 
(assert true)
(define-const var1655 var2174 (socketAddress/456820696 var192)) ; Statement: $r11 = virtualinvoke $r10.<okhttp3.Route: java.net.InetSocketAddress socketAddress()>() 
(assert true)
;(assert (connectStart/703845680 var2691 var1222 var1655 var2973)) ; Statement: virtualinvoke r8.<okhttp3.EventListener: void connectStart(okhttp3.Call,java.net.InetSocketAddress,java.net.Proxy)>(r9, $r11, r2) 

(declare-const var2691!1 var3978)
(declare-const var1222!1 var771)
(declare-const var1655!1 var2174)
(declare-const var2973!1 var3104)
(assert true)
;(assert (setSoTimeout/1275523889 var2154!1 var1129)) ; Statement: virtualinvoke $r34.<java.net.Socket: void setSoTimeout(int)>(i1) 

(declare-const var2154!2 var3946)
(declare-const var1129!1 Int)
(define-const var1432 var542 var2015-Companion) ; Statement: $r12 = <okhttp3.internal.platform.Platform: okhttp3.internal.platform.Platform$Companion Companion> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3737 var1909) ; Statement: $r24 := @caughtexception 
(assert (not (= var3737 null-var1909)))
(define-const var1415 var1909 var1909-init) ; Statement: $r37 = new java.net.ConnectException 
(define-const var829 String String-init) ; Statement: $r36 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var829)) ; Statement: specialinvoke $r36.<java.lang.StringBuilder: void <init>()>() 
(declare-const var829!1 String)
(assert (= var829!1 ""))
(assert true)
(define-const var3440 String (append/672562846 var829!1 "Failed to connect to ")) ; Statement: $r29 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to connect to ") 
(declare-const var829!2 String)
(assert (= var829!2 (str.++ var829!1 "Failed to connect to ")))
(define-const var3032 var2159 (route/-1511555494 var3691!1)) ; Statement: $r27 = r0.<okhttp3.internal.connection.RealConnection: okhttp3.Route route> 
(assert true)
(define-const var3193 var2174 (socketAddress/456820696 var3032)) ; Statement: $r28 = virtualinvoke $r27.<okhttp3.Route: java.net.InetSocketAddress socketAddress()>() 
(assert true)
(define-const var1462 String (append/-1031950772 var3440 (cast-from-var2174-to-var2308 var3193))) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r28) 
(declare-const var3440!1 String)
(assert (str.prefixof var3440 var3440!1))
(assert true)
(define-const var1476 String (toString/-2075883882 var1462)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/49438800 var1415 var1476)) ; Statement: specialinvoke $r37.<java.net.ConnectException: void <init>(java.lang.String)>($r31) 

(declare-const var1415!1 var1909)
(declare-const var1476!1 String)
(define-const var551 var2165 (cast-from-var1909-to-var2165 var3737)) ; Statement: $r32 = (java.lang.Throwable) $r24 
(assert true)
;(assert (initCause/2003336360 (cast-from-var1909-to-var2165 var1415!1) var551)) ; Statement: virtualinvoke $r37.<java.net.ConnectException: java.lang.Throwable initCause(java.lang.Throwable)>($r32) 

(declare-const var1415!2 var1909)
(declare-const var551!1 var2165)
(define-const var3077 var2165 (cast-from-var1909-to-var2165 var1415!2)) ; Statement: $r33 = (java.lang.Throwable) $r37 
 ; Statement: throw $r33 
(check-sat)
(get-model)
(get-unsat-core)
; {route/-1511555494=([okhttp3.internal.connection.RealConnection], okhttp3.Route), proxy/-457978806=([okhttp3.Route], java.net.Proxy), address/678262376=([okhttp3.Route], okhttp3.Address), type/1546983933=([java.net.Proxy], java.net.Proxy$Type), cast-from-Int-to-Int=([int], int), socketFactory/1474696471=([okhttp3.Address], javax.net.SocketFactory), createSocket/-1496110682=([javax.net.SocketFactory], java.net.Socket), var161_checkNotNull/185761657=([java.lang.Object], void), cast-from-var3946-to-var2308=([java.net.Socket], java.lang.Object), rawSocket/-1511555494=([okhttp3.internal.connection.RealConnection], java.net.Socket), socketAddress/456820696=([okhttp3.Route], java.net.InetSocketAddress), connectStart/703845680=([okhttp3.EventListener, okhttp3.Call, java.net.InetSocketAddress, java.net.Proxy], void), setSoTimeout/1275523889=([java.net.Socket, int], void), var1909-init=([], java.net.ConnectException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2174-to-var2308=([java.net.InetSocketAddress], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/49438800=([java.net.ConnectException, java.lang.String], void), cast-from-var1909-to-var2165=([java.net.ConnectException], java.lang.Throwable), initCause/2003336360=([java.lang.Throwable, java.lang.Throwable], java.lang.Throwable)}
; {var3106=okhttp3.internal.connection.RealConnection, var3691=r0, var3698=i2, var1129=i1, var771=okhttp3.Call, var1222=r9, var3978=okhttp3.EventListener, var2691=r8, var2159=okhttp3.Route, var3298=$r1, var3104=java.net.Proxy, var2973=r2, var407=$r3, var3291=okhttp3.Address, var387=r4, var1749=java.net.Proxy$Type, var1852=$r5, var2508=$i5, var1405=$i3, var3527=javax.net.SocketFactory, var1192=$r7, var3946=java.net.Socket, var2154=$r34, var161=kotlin.jvm.internal.Intrinsics, var2308=java.lang.Object, var192=$r10, var2174=java.net.InetSocketAddress, var1655=$r11, var542=okhttp3.internal.platform.Platform$Companion, var2015=okhttp3.internal.platform.Platform, var1432=$r12, var1909=java.net.ConnectException, var3737=$r24, var1415=$r37, var829=$r36, var3440=$r29, var3032=$r27, var3193=$r28, var1462=$r30, var1476=$r31, var2165=java.lang.Throwable, var551=$r32, var3077=$r33}
; {okhttp3.internal.connection.RealConnection=var3106, r0=var3691, i2=var3698, i1=var1129, okhttp3.Call=var771, r9=var1222, okhttp3.EventListener=var3978, r8=var2691, okhttp3.Route=var2159, $r1=var3298, java.net.Proxy=var3104, r2=var2973, $r3=var407, okhttp3.Address=var3291, r4=var387, java.net.Proxy$Type=var1749, $r5=var1852, $i5=var2508, $i3=var1405, javax.net.SocketFactory=var3527, $r7=var1192, java.net.Socket=var3946, $r34=var2154, kotlin.jvm.internal.Intrinsics=var161, java.lang.Object=var2308, $r10=var192, java.net.InetSocketAddress=var2174, $r11=var1655, okhttp3.internal.platform.Platform$Companion=var542, okhttp3.internal.platform.Platform=var2015, $r12=var1432, java.net.ConnectException=var1909, $r24=var3737, $r37=var1415, $r36=var829, $r29=var3440, $r27=var3032, $r28=var3193, $r30=var1462, $r31=var1476, java.lang.Throwable=var2165, $r32=var551, $r33=var3077}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.internal.connection.RealConnection;	i2 := @parameter0: int;	i1 := @parameter1: int;	r9 := @parameter2: okhttp3.Call;	r8 := @parameter3: okhttp3.EventListener;	$r1 = r0.<okhttp3.internal.connection.RealConnection: okhttp3.Route route>;	r2 = virtualinvoke $r1.<okhttp3.Route: java.net.Proxy proxy()>();	$r3 = r0.<okhttp3.internal.connection.RealConnection: okhttp3.Route route>;	r4 = virtualinvoke $r3.<okhttp3.Route: okhttp3.Address address()>();	$r5 = virtualinvoke r2.<java.net.Proxy: java.net.Proxy$Type type()>();	if $r5 != null goto $r6 = <okhttp3.internal.connection.RealConnection$WhenMappings: int[] $EnumSwitchMapping$0>;	$i5 = (int) -1;	$i3 = $i5;	goto [?= (branch)];	tableswitch($i3) {     case 1: goto $r7 = virtualinvoke r4.<okhttp3.Address: javax.net.SocketFactory socketFactory()>();     case 2: goto $r7 = virtualinvoke r4.<okhttp3.Address: javax.net.SocketFactory socketFactory()>();     default: goto $r35 = new java.net.Socket; };	$r7 = virtualinvoke r4.<okhttp3.Address: javax.net.SocketFactory socketFactory()>();	$r34 = virtualinvoke $r7.<javax.net.SocketFactory: java.net.Socket createSocket()>();	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNull(java.lang.Object)>($r34);	goto [?= r0.<okhttp3.internal.connection.RealConnection: java.net.Socket rawSocket> = $r34];	r0.<okhttp3.internal.connection.RealConnection: java.net.Socket rawSocket> = $r34;	$r10 = r0.<okhttp3.internal.connection.RealConnection: okhttp3.Route route>;	$r11 = virtualinvoke $r10.<okhttp3.Route: java.net.InetSocketAddress socketAddress()>();	virtualinvoke r8.<okhttp3.EventListener: void connectStart(okhttp3.Call,java.net.InetSocketAddress,java.net.Proxy)>(r9, $r11, r2);	virtualinvoke $r34.<java.net.Socket: void setSoTimeout(int)>(i1);	$r12 = <okhttp3.internal.platform.Platform: okhttp3.internal.platform.Platform$Companion Companion>;	$r24 := @caughtexception;	$r37 = new java.net.ConnectException;	$r36 = new java.lang.StringBuilder;	specialinvoke $r36.<java.lang.StringBuilder: void <init>()>();	$r29 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to connect to ");	$r27 = r0.<okhttp3.internal.connection.RealConnection: okhttp3.Route route>;	$r28 = virtualinvoke $r27.<okhttp3.Route: java.net.InetSocketAddress socketAddress()>();	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r28);	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r37.<java.net.ConnectException: void <init>(java.lang.String)>($r31);	$r32 = (java.lang.Throwable) $r24;	virtualinvoke $r37.<java.net.ConnectException: java.lang.Throwable initCause(java.lang.Throwable)>($r32);	$r33 = (java.lang.Throwable) $r37;	throw $r33
;block_num 6