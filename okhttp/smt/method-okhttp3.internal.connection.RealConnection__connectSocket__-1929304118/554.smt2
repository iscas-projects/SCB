(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1854 0)
(declare-sort var3014 0)
(declare-sort var2799 0)
(declare-sort var480 0)
(declare-sort var2691 0)
(declare-sort var2324 0)
(declare-sort var1895 0)
(declare-sort var2178 0)
(declare-sort var885 0)
(declare-sort var3146 0)
(declare-sort var1548 0)
(declare-sort var50 0)
(declare-sort var3711 0)
(declare-sort var2176 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun route/-1511555494 (var1854) var480)
(declare-fun proxy/-457978806 (var480) var2691)
(declare-fun address/678262376 (var480) var2324)
(declare-fun type/1546983933 (var2691) var1895)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2178-init () var2178)
(declare-fun <init>/2030940170 (var2178 var2691) void)
(declare-fun rawSocket/-1511555494 (var1854) var2178)
(declare-fun socketAddress/456820696 (var480) var885)
(declare-fun connectStart/703845680 (var2799 var3014 var885 var2691) void)
(declare-fun setSoTimeout/1275523889 (var2178 Int) void)
(declare-fun var50-init () var50)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3711) String)
(declare-fun cast-from-var885-to-var3711 (var885) var3711)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/49438800 (var50 String) void)
(declare-fun cast-from-var50-to-var2176 (var50) var2176)
(declare-fun initCause/2003336360 (var2176 var2176) var2176)
(declare-const null-var1854 var1854)
(declare-const null-Int Int)
(declare-const null-var3014 var3014)
(declare-const null-var2799 var2799)
(declare-const null-var1895 var1895)
(declare-const var1548-Companion var3146)
(declare-const null-var50 var50)
(declare-const var1751 var1854) ; Statement: r0 := @this: okhttp3.internal.connection.RealConnection 
(assert (not (= var1751 null-var1854)))
(declare-const var2172 Int) ; Statement: i2 := @parameter0: int 
(assert (not (= var2172 null-Int)))
(declare-const var2275 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2275 null-Int)))
(declare-const var842 var3014) ; Statement: r9 := @parameter2: okhttp3.Call 
(assert (not (= var842 null-var3014)))
(declare-const var483 var2799) ; Statement: r8 := @parameter3: okhttp3.EventListener 
(assert (not (= var483 null-var2799)))
(define-const var2194 var480 (route/-1511555494 var1751)) ; Statement: $r1 = r0.<okhttp3.internal.connection.RealConnection: okhttp3.Route route> 
(assert true)
(define-const var3039 var2691 (proxy/-457978806 var2194)) ; Statement: r2 = virtualinvoke $r1.<okhttp3.Route: java.net.Proxy proxy()>() 
(define-const var698 var480 (route/-1511555494 var1751)) ; Statement: $r3 = r0.<okhttp3.internal.connection.RealConnection: okhttp3.Route route> 
(assert true)
(define-const var2167 var2324 (address/678262376 var698)) ; Statement: r4 = virtualinvoke $r3.<okhttp3.Route: okhttp3.Address address()>() 
(assert true)
(define-const var2005 var1895 (type/1546983933 var3039)) ; Statement: $r5 = virtualinvoke r2.<java.net.Proxy: java.net.Proxy$Type type()>() 
 ; Statement: if $r5 != null goto $r6 = <okhttp3.internal.connection.RealConnection$WhenMappings: int[] $EnumSwitchMapping$0> 
(assert (not (not (= var2005 null-var1895)))) ; Negate: Cond: $r5 != null  
(define-const var1861 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i5 = (int) -1 
(define-const var305 Int var1861) ; Statement: $i3 = $i5 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: tableswitch($i3) {     case 1: goto $r7 = virtualinvoke r4.<okhttp3.Address: javax.net.SocketFactory socketFactory()>();     case 2: goto $r7 = virtualinvoke r4.<okhttp3.Address: javax.net.SocketFactory socketFactory()>();     default: goto $r35 = new java.net.Socket; } 
(assert (and (not (= var305 2)) (and (not (= var305 1)) true))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Non Conditional  
(define-const var1104 var2178 var2178-init) ; Statement: $r35 = new java.net.Socket 
(define-const var838 var2178 var1104) ; Statement: $r34 = $r35 
(assert true)
;(assert (<init>/2030940170 var1104 var3039)) ; Statement: specialinvoke $r35.<java.net.Socket: void <init>(java.net.Proxy)>(r2) 

(declare-const var1104!1 var2178)
(declare-const var3039!1 var2691)
(assert true) ; Non Conditional
(declare-const var1751!1 var1854)
(assert (not (= var1751!1 null-var1854)))
(assert (= (rawSocket/-1511555494 var1751!1) var838)) ; Statement: r0.<okhttp3.internal.connection.RealConnection: java.net.Socket rawSocket> = $r34 
(define-const var741 var480 (route/-1511555494 var1751!1)) ; Statement: $r10 = r0.<okhttp3.internal.connection.RealConnection: okhttp3.Route route> 
(assert true)
(define-const var1177 var885 (socketAddress/456820696 var741)) ; Statement: $r11 = virtualinvoke $r10.<okhttp3.Route: java.net.InetSocketAddress socketAddress()>() 
(assert true)
;(assert (connectStart/703845680 var483 var842 var1177 var3039!1)) ; Statement: virtualinvoke r8.<okhttp3.EventListener: void connectStart(okhttp3.Call,java.net.InetSocketAddress,java.net.Proxy)>(r9, $r11, r2) 

(declare-const var483!1 var2799)
(declare-const var842!1 var3014)
(declare-const var1177!1 var885)
(declare-const var3039!2 var2691)
(assert true)
;(assert (setSoTimeout/1275523889 var838 var2275)) ; Statement: virtualinvoke $r34.<java.net.Socket: void setSoTimeout(int)>(i1) 

(declare-const var838!1 var2178)
(declare-const var2275!1 Int)
(define-const var2575 var3146 var1548-Companion) ; Statement: $r12 = <okhttp3.internal.platform.Platform: okhttp3.internal.platform.Platform$Companion Companion> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3027 var50) ; Statement: $r24 := @caughtexception 
(assert (not (= var3027 null-var50)))
(define-const var3162 var50 var50-init) ; Statement: $r37 = new java.net.ConnectException 
(define-const var3320 String String-init) ; Statement: $r36 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3320)) ; Statement: specialinvoke $r36.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3320!1 String)
(assert (= var3320!1 ""))
(assert true)
(define-const var2720 String (append/672562846 var3320!1 "Failed to connect to ")) ; Statement: $r29 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to connect to ") 
(declare-const var3320!2 String)
(assert (= var3320!2 (str.++ var3320!1 "Failed to connect to ")))
(define-const var490 var480 (route/-1511555494 var1751!1)) ; Statement: $r27 = r0.<okhttp3.internal.connection.RealConnection: okhttp3.Route route> 
(assert true)
(define-const var1870 var885 (socketAddress/456820696 var490)) ; Statement: $r28 = virtualinvoke $r27.<okhttp3.Route: java.net.InetSocketAddress socketAddress()>() 
(assert true)
(define-const var1236 String (append/-1031950772 var2720 (cast-from-var885-to-var3711 var1870))) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r28) 
(declare-const var2720!1 String)
(assert (str.prefixof var2720 var2720!1))
(assert true)
(define-const var982 String (toString/-2075883882 var1236)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/49438800 var3162 var982)) ; Statement: specialinvoke $r37.<java.net.ConnectException: void <init>(java.lang.String)>($r31) 

(declare-const var3162!1 var50)
(declare-const var982!1 String)
(define-const var3775 var2176 (cast-from-var50-to-var2176 var3027)) ; Statement: $r32 = (java.lang.Throwable) $r24 
(assert true)
;(assert (initCause/2003336360 (cast-from-var50-to-var2176 var3162!1) var3775)) ; Statement: virtualinvoke $r37.<java.net.ConnectException: java.lang.Throwable initCause(java.lang.Throwable)>($r32) 

(declare-const var3162!2 var50)
(declare-const var3775!1 var2176)
(define-const var2473 var2176 (cast-from-var50-to-var2176 var3162!2)) ; Statement: $r33 = (java.lang.Throwable) $r37 
 ; Statement: throw $r33 
(check-sat)
(get-model)
(get-unsat-core)
; {route/-1511555494=([okhttp3.internal.connection.RealConnection], okhttp3.Route), proxy/-457978806=([okhttp3.Route], java.net.Proxy), address/678262376=([okhttp3.Route], okhttp3.Address), type/1546983933=([java.net.Proxy], java.net.Proxy$Type), cast-from-Int-to-Int=([int], int), var2178-init=([], java.net.Socket), <init>/2030940170=([java.net.Socket, java.net.Proxy], void), rawSocket/-1511555494=([okhttp3.internal.connection.RealConnection], java.net.Socket), socketAddress/456820696=([okhttp3.Route], java.net.InetSocketAddress), connectStart/703845680=([okhttp3.EventListener, okhttp3.Call, java.net.InetSocketAddress, java.net.Proxy], void), setSoTimeout/1275523889=([java.net.Socket, int], void), var50-init=([], java.net.ConnectException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var885-to-var3711=([java.net.InetSocketAddress], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/49438800=([java.net.ConnectException, java.lang.String], void), cast-from-var50-to-var2176=([java.net.ConnectException], java.lang.Throwable), initCause/2003336360=([java.lang.Throwable, java.lang.Throwable], java.lang.Throwable)}
; {var1854=okhttp3.internal.connection.RealConnection, var1751=r0, var2172=i2, var2275=i1, var3014=okhttp3.Call, var842=r9, var2799=okhttp3.EventListener, var483=r8, var480=okhttp3.Route, var2194=$r1, var2691=java.net.Proxy, var3039=r2, var698=$r3, var2324=okhttp3.Address, var2167=r4, var1895=java.net.Proxy$Type, var2005=$r5, var1861=$i5, var305=$i3, var2178=java.net.Socket, var1104=$r35, var838=$r34, var741=$r10, var885=java.net.InetSocketAddress, var1177=$r11, var3146=okhttp3.internal.platform.Platform$Companion, var1548=okhttp3.internal.platform.Platform, var2575=$r12, var50=java.net.ConnectException, var3027=$r24, var3162=$r37, var3320=$r36, var2720=$r29, var490=$r27, var1870=$r28, var3711=java.lang.Object, var1236=$r30, var982=$r31, var2176=java.lang.Throwable, var3775=$r32, var2473=$r33}
; {okhttp3.internal.connection.RealConnection=var1854, r0=var1751, i2=var2172, i1=var2275, okhttp3.Call=var3014, r9=var842, okhttp3.EventListener=var2799, r8=var483, okhttp3.Route=var480, $r1=var2194, java.net.Proxy=var2691, r2=var3039, $r3=var698, okhttp3.Address=var2324, r4=var2167, java.net.Proxy$Type=var1895, $r5=var2005, $i5=var1861, $i3=var305, java.net.Socket=var2178, $r35=var1104, $r34=var838, $r10=var741, java.net.InetSocketAddress=var885, $r11=var1177, okhttp3.internal.platform.Platform$Companion=var3146, okhttp3.internal.platform.Platform=var1548, $r12=var2575, java.net.ConnectException=var50, $r24=var3027, $r37=var3162, $r36=var3320, $r29=var2720, $r27=var490, $r28=var1870, java.lang.Object=var3711, $r30=var1236, $r31=var982, java.lang.Throwable=var2176, $r32=var3775, $r33=var2473}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.internal.connection.RealConnection;	i2 := @parameter0: int;	i1 := @parameter1: int;	r9 := @parameter2: okhttp3.Call;	r8 := @parameter3: okhttp3.EventListener;	$r1 = r0.<okhttp3.internal.connection.RealConnection: okhttp3.Route route>;	r2 = virtualinvoke $r1.<okhttp3.Route: java.net.Proxy proxy()>();	$r3 = r0.<okhttp3.internal.connection.RealConnection: okhttp3.Route route>;	r4 = virtualinvoke $r3.<okhttp3.Route: okhttp3.Address address()>();	$r5 = virtualinvoke r2.<java.net.Proxy: java.net.Proxy$Type type()>();	if $r5 != null goto $r6 = <okhttp3.internal.connection.RealConnection$WhenMappings: int[] $EnumSwitchMapping$0>;	$i5 = (int) -1;	$i3 = $i5;	goto [?= (branch)];	tableswitch($i3) {     case 1: goto $r7 = virtualinvoke r4.<okhttp3.Address: javax.net.SocketFactory socketFactory()>();     case 2: goto $r7 = virtualinvoke r4.<okhttp3.Address: javax.net.SocketFactory socketFactory()>();     default: goto $r35 = new java.net.Socket; };	$r35 = new java.net.Socket;	$r34 = $r35;	specialinvoke $r35.<java.net.Socket: void <init>(java.net.Proxy)>(r2);	r0.<okhttp3.internal.connection.RealConnection: java.net.Socket rawSocket> = $r34;	$r10 = r0.<okhttp3.internal.connection.RealConnection: okhttp3.Route route>;	$r11 = virtualinvoke $r10.<okhttp3.Route: java.net.InetSocketAddress socketAddress()>();	virtualinvoke r8.<okhttp3.EventListener: void connectStart(okhttp3.Call,java.net.InetSocketAddress,java.net.Proxy)>(r9, $r11, r2);	virtualinvoke $r34.<java.net.Socket: void setSoTimeout(int)>(i1);	$r12 = <okhttp3.internal.platform.Platform: okhttp3.internal.platform.Platform$Companion Companion>;	$r24 := @caughtexception;	$r37 = new java.net.ConnectException;	$r36 = new java.lang.StringBuilder;	specialinvoke $r36.<java.lang.StringBuilder: void <init>()>();	$r29 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to connect to ");	$r27 = r0.<okhttp3.internal.connection.RealConnection: okhttp3.Route route>;	$r28 = virtualinvoke $r27.<okhttp3.Route: java.net.InetSocketAddress socketAddress()>();	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r28);	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r37.<java.net.ConnectException: void <init>(java.lang.String)>($r31);	$r32 = (java.lang.Throwable) $r24;	virtualinvoke $r37.<java.net.ConnectException: java.lang.Throwable initCause(java.lang.Throwable)>($r32);	$r33 = (java.lang.Throwable) $r37;	throw $r33
;block_num 6