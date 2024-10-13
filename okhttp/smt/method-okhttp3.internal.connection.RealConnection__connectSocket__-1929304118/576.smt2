(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var625 0)
(declare-sort var6 0)
(declare-sort var1830 0)
(declare-sort var3159 0)
(declare-sort var768 0)
(declare-sort var3857 0)
(declare-sort var3943 0)
(declare-sort var3254 0)
(declare-sort var1877 0)
(declare-sort var2336 0)
(declare-sort var584 0)
(declare-sort var1715 0)
(declare-sort var3624 0)
(declare-sort var531 0)
(declare-sort var674 0)
(declare-sort var3921 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun route/-1511555494 (var625) var3159)
(declare-fun proxy/-457978806 (var3159) var768)
(declare-fun address/678262376 (var3159) var3857)
(declare-fun type/1546983933 (var768) var3943)
(declare-fun ordinal/-291641772 (var1877) Int)
(declare-fun cast-from-var3943-to-var1877 (var3943) var1877)
(declare-fun var2336-init () var2336)
(declare-fun <init>/2030940170 (var2336 var768) void)
(declare-fun rawSocket/-1511555494 (var625) var2336)
(declare-fun socketAddress/456820696 (var3159) var584)
(declare-fun connectStart/703845680 (var1830 var6 var584 var768) void)
(declare-fun setSoTimeout/1275523889 (var2336 Int) void)
(declare-fun var531-init () var531)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var674) String)
(declare-fun cast-from-var584-to-var674 (var584) var674)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/49438800 (var531 String) void)
(declare-fun cast-from-var531-to-var3921 (var531) var3921)
(declare-fun initCause/2003336360 (var3921 var3921) var3921)
(declare-const null-var625 var625)
(declare-const null-Int Int)
(declare-const null-var6 var6)
(declare-const null-var1830 var1830)
(declare-const null-var3943 var3943)
(declare-const var3254-$EnumSwitchMapping$0 (Array Int Int))
(declare-const var3624-Companion var1715)
(declare-const null-var531 var531)
(declare-const var576 var625) ; Statement: r0 := @this: okhttp3.internal.connection.RealConnection 
(assert (not (= var576 null-var625)))
(declare-const var714 Int) ; Statement: i2 := @parameter0: int 
(assert (not (= var714 null-Int)))
(declare-const var2710 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2710 null-Int)))
(declare-const var1383 var6) ; Statement: r9 := @parameter2: okhttp3.Call 
(assert (not (= var1383 null-var6)))
(declare-const var1580 var1830) ; Statement: r8 := @parameter3: okhttp3.EventListener 
(assert (not (= var1580 null-var1830)))
(define-const var2783 var3159 (route/-1511555494 var576)) ; Statement: $r1 = r0.<okhttp3.internal.connection.RealConnection: okhttp3.Route route> 
(assert true)
(define-const var3366 var768 (proxy/-457978806 var2783)) ; Statement: r2 = virtualinvoke $r1.<okhttp3.Route: java.net.Proxy proxy()>() 
(define-const var527 var3159 (route/-1511555494 var576)) ; Statement: $r3 = r0.<okhttp3.internal.connection.RealConnection: okhttp3.Route route> 
(assert true)
(define-const var743 var3857 (address/678262376 var527)) ; Statement: r4 = virtualinvoke $r3.<okhttp3.Route: okhttp3.Address address()>() 
(assert true)
(define-const var3922 var3943 (type/1546983933 var3366)) ; Statement: $r5 = virtualinvoke r2.<java.net.Proxy: java.net.Proxy$Type type()>() 
 ; Statement: if $r5 != null goto $r6 = <okhttp3.internal.connection.RealConnection$WhenMappings: int[] $EnumSwitchMapping$0> 
(assert (not (= var3922 null-var3943))) ; Cond: $r5 != null 
(define-const var3052 (Array Int Int) var3254-$EnumSwitchMapping$0) ; Statement: $r6 = <okhttp3.internal.connection.RealConnection$WhenMappings: int[] $EnumSwitchMapping$0> 
(assert true)
(define-const var2425 Int (ordinal/-291641772 (cast-from-var3943-to-var1877 var3922))) ; Statement: $i0 = virtualinvoke $r5.<java.net.Proxy$Type: int ordinal()>() 
(define-const var2608 Int (select var3052 var2425)) ; Statement: $i3 = $r6[$i0] 
(assert true) ; Non Conditional
 ; Statement: tableswitch($i3) {     case 1: goto $r7 = virtualinvoke r4.<okhttp3.Address: javax.net.SocketFactory socketFactory()>();     case 2: goto $r7 = virtualinvoke r4.<okhttp3.Address: javax.net.SocketFactory socketFactory()>();     default: goto $r35 = new java.net.Socket; } 
(assert (and (not (= var2608 2)) (and (not (= var2608 1)) true))) ; Intersect: Negate: Cond: $i3 == 2   and Intersect: Negate: Cond: $i3 == 1   and Non Conditional  
(define-const var2670 var2336 var2336-init) ; Statement: $r35 = new java.net.Socket 
(define-const var3751 var2336 var2670) ; Statement: $r34 = $r35 
(assert true)
;(assert (<init>/2030940170 var2670 var3366)) ; Statement: specialinvoke $r35.<java.net.Socket: void <init>(java.net.Proxy)>(r2) 

(declare-const var2670!1 var2336)
(declare-const var3366!1 var768)
(assert true) ; Non Conditional
(declare-const var576!1 var625)
(assert (not (= var576!1 null-var625)))
(assert (= (rawSocket/-1511555494 var576!1) var3751)) ; Statement: r0.<okhttp3.internal.connection.RealConnection: java.net.Socket rawSocket> = $r34 
(define-const var2603 var3159 (route/-1511555494 var576!1)) ; Statement: $r10 = r0.<okhttp3.internal.connection.RealConnection: okhttp3.Route route> 
(assert true)
(define-const var805 var584 (socketAddress/456820696 var2603)) ; Statement: $r11 = virtualinvoke $r10.<okhttp3.Route: java.net.InetSocketAddress socketAddress()>() 
(assert true)
;(assert (connectStart/703845680 var1580 var1383 var805 var3366!1)) ; Statement: virtualinvoke r8.<okhttp3.EventListener: void connectStart(okhttp3.Call,java.net.InetSocketAddress,java.net.Proxy)>(r9, $r11, r2) 

(declare-const var1580!1 var1830)
(declare-const var1383!1 var6)
(declare-const var805!1 var584)
(declare-const var3366!2 var768)
(assert true)
;(assert (setSoTimeout/1275523889 var3751 var2710)) ; Statement: virtualinvoke $r34.<java.net.Socket: void setSoTimeout(int)>(i1) 

(declare-const var3751!1 var2336)
(declare-const var2710!1 Int)
(define-const var3803 var1715 var3624-Companion) ; Statement: $r12 = <okhttp3.internal.platform.Platform: okhttp3.internal.platform.Platform$Companion Companion> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1547 var531) ; Statement: $r24 := @caughtexception 
(assert (not (= var1547 null-var531)))
(define-const var716 var531 var531-init) ; Statement: $r37 = new java.net.ConnectException 
(define-const var2001 String String-init) ; Statement: $r36 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2001)) ; Statement: specialinvoke $r36.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2001!1 String)
(assert (= var2001!1 ""))
(assert true)
(define-const var1559 String (append/672562846 var2001!1 "Failed to connect to ")) ; Statement: $r29 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to connect to ") 
(declare-const var2001!2 String)
(assert (= var2001!2 (str.++ var2001!1 "Failed to connect to ")))
(define-const var1675 var3159 (route/-1511555494 var576!1)) ; Statement: $r27 = r0.<okhttp3.internal.connection.RealConnection: okhttp3.Route route> 
(assert true)
(define-const var188 var584 (socketAddress/456820696 var1675)) ; Statement: $r28 = virtualinvoke $r27.<okhttp3.Route: java.net.InetSocketAddress socketAddress()>() 
(assert true)
(define-const var65 String (append/-1031950772 var1559 (cast-from-var584-to-var674 var188))) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r28) 
(declare-const var1559!1 String)
(assert (str.prefixof var1559 var1559!1))
(assert true)
(define-const var88 String (toString/-2075883882 var65)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/49438800 var716 var88)) ; Statement: specialinvoke $r37.<java.net.ConnectException: void <init>(java.lang.String)>($r31) 

(declare-const var716!1 var531)
(declare-const var88!1 String)
(define-const var3484 var3921 (cast-from-var531-to-var3921 var1547)) ; Statement: $r32 = (java.lang.Throwable) $r24 
(assert true)
;(assert (initCause/2003336360 (cast-from-var531-to-var3921 var716!1) var3484)) ; Statement: virtualinvoke $r37.<java.net.ConnectException: java.lang.Throwable initCause(java.lang.Throwable)>($r32) 

(declare-const var716!2 var531)
(declare-const var3484!1 var3921)
(define-const var232 var3921 (cast-from-var531-to-var3921 var716!2)) ; Statement: $r33 = (java.lang.Throwable) $r37 
 ; Statement: throw $r33 
(check-sat)
(get-model)
(get-unsat-core)
; {route/-1511555494=([okhttp3.internal.connection.RealConnection], okhttp3.Route), proxy/-457978806=([okhttp3.Route], java.net.Proxy), address/678262376=([okhttp3.Route], okhttp3.Address), type/1546983933=([java.net.Proxy], java.net.Proxy$Type), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3943-to-var1877=([java.net.Proxy$Type], java.lang.Enum), var2336-init=([], java.net.Socket), <init>/2030940170=([java.net.Socket, java.net.Proxy], void), rawSocket/-1511555494=([okhttp3.internal.connection.RealConnection], java.net.Socket), socketAddress/456820696=([okhttp3.Route], java.net.InetSocketAddress), connectStart/703845680=([okhttp3.EventListener, okhttp3.Call, java.net.InetSocketAddress, java.net.Proxy], void), setSoTimeout/1275523889=([java.net.Socket, int], void), var531-init=([], java.net.ConnectException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var584-to-var674=([java.net.InetSocketAddress], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/49438800=([java.net.ConnectException, java.lang.String], void), cast-from-var531-to-var3921=([java.net.ConnectException], java.lang.Throwable), initCause/2003336360=([java.lang.Throwable, java.lang.Throwable], java.lang.Throwable)}
; {var625=okhttp3.internal.connection.RealConnection, var576=r0, var714=i2, var2710=i1, var6=okhttp3.Call, var1383=r9, var1830=okhttp3.EventListener, var1580=r8, var3159=okhttp3.Route, var2783=$r1, var768=java.net.Proxy, var3366=r2, var527=$r3, var3857=okhttp3.Address, var743=r4, var3943=java.net.Proxy$Type, var3922=$r5, var3254=okhttp3.internal.connection.RealConnection$WhenMappings, var3052=$r6, var1877=java.lang.Enum, var2425=$i0, var2608=$i3, var2336=java.net.Socket, var2670=$r35, var3751=$r34, var2603=$r10, var584=java.net.InetSocketAddress, var805=$r11, var1715=okhttp3.internal.platform.Platform$Companion, var3624=okhttp3.internal.platform.Platform, var3803=$r12, var531=java.net.ConnectException, var1547=$r24, var716=$r37, var2001=$r36, var1559=$r29, var1675=$r27, var188=$r28, var674=java.lang.Object, var65=$r30, var88=$r31, var3921=java.lang.Throwable, var3484=$r32, var232=$r33}
; {okhttp3.internal.connection.RealConnection=var625, r0=var576, i2=var714, i1=var2710, okhttp3.Call=var6, r9=var1383, okhttp3.EventListener=var1830, r8=var1580, okhttp3.Route=var3159, $r1=var2783, java.net.Proxy=var768, r2=var3366, $r3=var527, okhttp3.Address=var3857, r4=var743, java.net.Proxy$Type=var3943, $r5=var3922, okhttp3.internal.connection.RealConnection$WhenMappings=var3254, $r6=var3052, java.lang.Enum=var1877, $i0=var2425, $i3=var2608, java.net.Socket=var2336, $r35=var2670, $r34=var3751, $r10=var2603, java.net.InetSocketAddress=var584, $r11=var805, okhttp3.internal.platform.Platform$Companion=var1715, okhttp3.internal.platform.Platform=var3624, $r12=var3803, java.net.ConnectException=var531, $r24=var1547, $r37=var716, $r36=var2001, $r29=var1559, $r27=var1675, $r28=var188, java.lang.Object=var674, $r30=var65, $r31=var88, java.lang.Throwable=var3921, $r32=var3484, $r33=var232}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.internal.connection.RealConnection;	i2 := @parameter0: int;	i1 := @parameter1: int;	r9 := @parameter2: okhttp3.Call;	r8 := @parameter3: okhttp3.EventListener;	$r1 = r0.<okhttp3.internal.connection.RealConnection: okhttp3.Route route>;	r2 = virtualinvoke $r1.<okhttp3.Route: java.net.Proxy proxy()>();	$r3 = r0.<okhttp3.internal.connection.RealConnection: okhttp3.Route route>;	r4 = virtualinvoke $r3.<okhttp3.Route: okhttp3.Address address()>();	$r5 = virtualinvoke r2.<java.net.Proxy: java.net.Proxy$Type type()>();	if $r5 != null goto $r6 = <okhttp3.internal.connection.RealConnection$WhenMappings: int[] $EnumSwitchMapping$0>;	$r6 = <okhttp3.internal.connection.RealConnection$WhenMappings: int[] $EnumSwitchMapping$0>;	$i0 = virtualinvoke $r5.<java.net.Proxy$Type: int ordinal()>();	$i3 = $r6[$i0];	tableswitch($i3) {     case 1: goto $r7 = virtualinvoke r4.<okhttp3.Address: javax.net.SocketFactory socketFactory()>();     case 2: goto $r7 = virtualinvoke r4.<okhttp3.Address: javax.net.SocketFactory socketFactory()>();     default: goto $r35 = new java.net.Socket; };	$r35 = new java.net.Socket;	$r34 = $r35;	specialinvoke $r35.<java.net.Socket: void <init>(java.net.Proxy)>(r2);	r0.<okhttp3.internal.connection.RealConnection: java.net.Socket rawSocket> = $r34;	$r10 = r0.<okhttp3.internal.connection.RealConnection: okhttp3.Route route>;	$r11 = virtualinvoke $r10.<okhttp3.Route: java.net.InetSocketAddress socketAddress()>();	virtualinvoke r8.<okhttp3.EventListener: void connectStart(okhttp3.Call,java.net.InetSocketAddress,java.net.Proxy)>(r9, $r11, r2);	virtualinvoke $r34.<java.net.Socket: void setSoTimeout(int)>(i1);	$r12 = <okhttp3.internal.platform.Platform: okhttp3.internal.platform.Platform$Companion Companion>;	$r24 := @caughtexception;	$r37 = new java.net.ConnectException;	$r36 = new java.lang.StringBuilder;	specialinvoke $r36.<java.lang.StringBuilder: void <init>()>();	$r29 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to connect to ");	$r27 = r0.<okhttp3.internal.connection.RealConnection: okhttp3.Route route>;	$r28 = virtualinvoke $r27.<okhttp3.Route: java.net.InetSocketAddress socketAddress()>();	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r28);	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r37.<java.net.ConnectException: void <init>(java.lang.String)>($r31);	$r32 = (java.lang.Throwable) $r24;	virtualinvoke $r37.<java.net.ConnectException: java.lang.Throwable initCause(java.lang.Throwable)>($r32);	$r33 = (java.lang.Throwable) $r37;	throw $r33
;block_num 6