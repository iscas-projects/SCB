(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1128 0)
(declare-sort var3686 0)
(declare-sort var1750 0)
(declare-sort var1168 0)
(declare-sort var249 0)
(declare-sort var82 0)
(declare-sort var3653 0)
(declare-sort var207 0)
(declare-sort var2246 0)
(declare-sort var2550 0)
(declare-sort var121 0)
(declare-sort var1860 0)
(declare-sort var1568 0)
(declare-sort var3866 0)
(declare-sort var1796 0)
(declare-sort var2937 0)
(declare-sort var1023 0)
(declare-sort var2832 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun route/-1511555494 (var1128) var1168)
(declare-fun proxy/-457978806 (var1168) var249)
(declare-fun address/678262376 (var1168) var82)
(declare-fun type/1546983933 (var249) var3653)
(declare-fun ordinal/-291641772 (var2246) Int)
(declare-fun cast-from-var3653-to-var2246 (var3653) var2246)
(declare-fun socketFactory/1474696471 (var82) var2550)
(declare-fun createSocket/-1496110682 (var2550) var121)
(declare-fun var1860_checkNotNull/185761657 (var1568) void)
(declare-fun cast-from-var121-to-var1568 (var121) var1568)
(declare-fun rawSocket/-1511555494 (var1128) var121)
(declare-fun socketAddress/456820696 (var1168) var3866)
(declare-fun connectStart/703845680 (var1750 var3686 var3866 var249) void)
(declare-fun setSoTimeout/1275523889 (var121 Int) void)
(declare-fun var1023-init () var1023)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1568) String)
(declare-fun cast-from-var3866-to-var1568 (var3866) var1568)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/49438800 (var1023 String) void)
(declare-fun cast-from-var1023-to-var2832 (var1023) var2832)
(declare-fun initCause/2003336360 (var2832 var2832) var2832)
(declare-const null-var1128 var1128)
(declare-const null-Int Int)
(declare-const null-var3686 var3686)
(declare-const null-var1750 var1750)
(declare-const null-var3653 var3653)
(declare-const var207-$EnumSwitchMapping$0 (Array Int Int))
(declare-const var2937-Companion var1796)
(declare-const null-var1023 var1023)
(declare-const var1673 var1128) ; Statement: r0 := @this: okhttp3.internal.connection.RealConnection 
(assert (not (= var1673 null-var1128)))
(declare-const var3991 Int) ; Statement: i2 := @parameter0: int 
(assert (not (= var3991 null-Int)))
(declare-const var3183 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3183 null-Int)))
(declare-const var886 var3686) ; Statement: r9 := @parameter2: okhttp3.Call 
(assert (not (= var886 null-var3686)))
(declare-const var786 var1750) ; Statement: r8 := @parameter3: okhttp3.EventListener 
(assert (not (= var786 null-var1750)))
(define-const var1921 var1168 (route/-1511555494 var1673)) ; Statement: $r1 = r0.<okhttp3.internal.connection.RealConnection: okhttp3.Route route> 
(assert true)
(define-const var1200 var249 (proxy/-457978806 var1921)) ; Statement: r2 = virtualinvoke $r1.<okhttp3.Route: java.net.Proxy proxy()>() 
(define-const var1144 var1168 (route/-1511555494 var1673)) ; Statement: $r3 = r0.<okhttp3.internal.connection.RealConnection: okhttp3.Route route> 
(assert true)
(define-const var32 var82 (address/678262376 var1144)) ; Statement: r4 = virtualinvoke $r3.<okhttp3.Route: okhttp3.Address address()>() 
(assert true)
(define-const var2841 var3653 (type/1546983933 var1200)) ; Statement: $r5 = virtualinvoke r2.<java.net.Proxy: java.net.Proxy$Type type()>() 
 ; Statement: if $r5 != null goto $r6 = <okhttp3.internal.connection.RealConnection$WhenMappings: int[] $EnumSwitchMapping$0> 
(assert (not (= var2841 null-var3653))) ; Cond: $r5 != null 
(define-const var240 (Array Int Int) var207-$EnumSwitchMapping$0) ; Statement: $r6 = <okhttp3.internal.connection.RealConnection$WhenMappings: int[] $EnumSwitchMapping$0> 
(assert true)
(define-const var23 Int (ordinal/-291641772 (cast-from-var3653-to-var2246 var2841))) ; Statement: $i0 = virtualinvoke $r5.<java.net.Proxy$Type: int ordinal()>() 
(define-const var1938 Int (select var240 var23)) ; Statement: $i3 = $r6[$i0] 
(assert true) ; Non Conditional
 ; Statement: tableswitch($i3) {     case 1: goto $r7 = virtualinvoke r4.<okhttp3.Address: javax.net.SocketFactory socketFactory()>();     case 2: goto $r7 = virtualinvoke r4.<okhttp3.Address: javax.net.SocketFactory socketFactory()>();     default: goto $r35 = new java.net.Socket; } 
(assert (and (= var1938 1) true)) ; Intersect: Cond: $i3 == 1  and Non Conditional 
(assert true)
(define-const var2860 var2550 (socketFactory/1474696471 var32)) ; Statement: $r7 = virtualinvoke r4.<okhttp3.Address: javax.net.SocketFactory socketFactory()>() 
(assert true)
(define-const var3454 var121 (createSocket/-1496110682 var2860)) ; Statement: $r34 = virtualinvoke $r7.<javax.net.SocketFactory: java.net.Socket createSocket()>() 
;(assert (var1860_checkNotNull/185761657 (cast-from-var121-to-var1568 var3454))) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNull(java.lang.Object)>($r34) 

(declare-const var3454!1 var121)
 ; Statement: goto [?= r0.<okhttp3.internal.connection.RealConnection: java.net.Socket rawSocket> = $r34] 
(assert true) ; Non Conditional
(declare-const var1673!1 var1128)
(assert (not (= var1673!1 null-var1128)))
(assert (= (rawSocket/-1511555494 var1673!1) var3454!1)) ; Statement: r0.<okhttp3.internal.connection.RealConnection: java.net.Socket rawSocket> = $r34 
(define-const var3508 var1168 (route/-1511555494 var1673!1)) ; Statement: $r10 = r0.<okhttp3.internal.connection.RealConnection: okhttp3.Route route> 
(assert true)
(define-const var3408 var3866 (socketAddress/456820696 var3508)) ; Statement: $r11 = virtualinvoke $r10.<okhttp3.Route: java.net.InetSocketAddress socketAddress()>() 
(assert true)
;(assert (connectStart/703845680 var786 var886 var3408 var1200)) ; Statement: virtualinvoke r8.<okhttp3.EventListener: void connectStart(okhttp3.Call,java.net.InetSocketAddress,java.net.Proxy)>(r9, $r11, r2) 

(declare-const var786!1 var1750)
(declare-const var886!1 var3686)
(declare-const var3408!1 var3866)
(declare-const var1200!1 var249)
(assert true)
;(assert (setSoTimeout/1275523889 var3454!1 var3183)) ; Statement: virtualinvoke $r34.<java.net.Socket: void setSoTimeout(int)>(i1) 

(declare-const var3454!2 var121)
(declare-const var3183!1 Int)
(define-const var3959 var1796 var2937-Companion) ; Statement: $r12 = <okhttp3.internal.platform.Platform: okhttp3.internal.platform.Platform$Companion Companion> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var586 var1023) ; Statement: $r24 := @caughtexception 
(assert (not (= var586 null-var1023)))
(define-const var1097 var1023 var1023-init) ; Statement: $r37 = new java.net.ConnectException 
(define-const var3661 String String-init) ; Statement: $r36 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3661)) ; Statement: specialinvoke $r36.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3661!1 String)
(assert (= var3661!1 ""))
(assert true)
(define-const var2097 String (append/672562846 var3661!1 "Failed to connect to ")) ; Statement: $r29 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to connect to ") 
(declare-const var3661!2 String)
(assert (= var3661!2 (str.++ var3661!1 "Failed to connect to ")))
(define-const var958 var1168 (route/-1511555494 var1673!1)) ; Statement: $r27 = r0.<okhttp3.internal.connection.RealConnection: okhttp3.Route route> 
(assert true)
(define-const var1609 var3866 (socketAddress/456820696 var958)) ; Statement: $r28 = virtualinvoke $r27.<okhttp3.Route: java.net.InetSocketAddress socketAddress()>() 
(assert true)
(define-const var1687 String (append/-1031950772 var2097 (cast-from-var3866-to-var1568 var1609))) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r28) 
(declare-const var2097!1 String)
(assert (str.prefixof var2097 var2097!1))
(assert true)
(define-const var1455 String (toString/-2075883882 var1687)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/49438800 var1097 var1455)) ; Statement: specialinvoke $r37.<java.net.ConnectException: void <init>(java.lang.String)>($r31) 

(declare-const var1097!1 var1023)
(declare-const var1455!1 String)
(define-const var3925 var2832 (cast-from-var1023-to-var2832 var586)) ; Statement: $r32 = (java.lang.Throwable) $r24 
(assert true)
;(assert (initCause/2003336360 (cast-from-var1023-to-var2832 var1097!1) var3925)) ; Statement: virtualinvoke $r37.<java.net.ConnectException: java.lang.Throwable initCause(java.lang.Throwable)>($r32) 

(declare-const var1097!2 var1023)
(declare-const var3925!1 var2832)
(define-const var2418 var2832 (cast-from-var1023-to-var2832 var1097!2)) ; Statement: $r33 = (java.lang.Throwable) $r37 
 ; Statement: throw $r33 
(check-sat)
(get-model)
(get-unsat-core)
; {route/-1511555494=([okhttp3.internal.connection.RealConnection], okhttp3.Route), proxy/-457978806=([okhttp3.Route], java.net.Proxy), address/678262376=([okhttp3.Route], okhttp3.Address), type/1546983933=([java.net.Proxy], java.net.Proxy$Type), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3653-to-var2246=([java.net.Proxy$Type], java.lang.Enum), socketFactory/1474696471=([okhttp3.Address], javax.net.SocketFactory), createSocket/-1496110682=([javax.net.SocketFactory], java.net.Socket), var1860_checkNotNull/185761657=([java.lang.Object], void), cast-from-var121-to-var1568=([java.net.Socket], java.lang.Object), rawSocket/-1511555494=([okhttp3.internal.connection.RealConnection], java.net.Socket), socketAddress/456820696=([okhttp3.Route], java.net.InetSocketAddress), connectStart/703845680=([okhttp3.EventListener, okhttp3.Call, java.net.InetSocketAddress, java.net.Proxy], void), setSoTimeout/1275523889=([java.net.Socket, int], void), var1023-init=([], java.net.ConnectException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3866-to-var1568=([java.net.InetSocketAddress], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/49438800=([java.net.ConnectException, java.lang.String], void), cast-from-var1023-to-var2832=([java.net.ConnectException], java.lang.Throwable), initCause/2003336360=([java.lang.Throwable, java.lang.Throwable], java.lang.Throwable)}
; {var1128=okhttp3.internal.connection.RealConnection, var1673=r0, var3991=i2, var3183=i1, var3686=okhttp3.Call, var886=r9, var1750=okhttp3.EventListener, var786=r8, var1168=okhttp3.Route, var1921=$r1, var249=java.net.Proxy, var1200=r2, var1144=$r3, var82=okhttp3.Address, var32=r4, var3653=java.net.Proxy$Type, var2841=$r5, var207=okhttp3.internal.connection.RealConnection$WhenMappings, var240=$r6, var2246=java.lang.Enum, var23=$i0, var1938=$i3, var2550=javax.net.SocketFactory, var2860=$r7, var121=java.net.Socket, var3454=$r34, var1860=kotlin.jvm.internal.Intrinsics, var1568=java.lang.Object, var3508=$r10, var3866=java.net.InetSocketAddress, var3408=$r11, var1796=okhttp3.internal.platform.Platform$Companion, var2937=okhttp3.internal.platform.Platform, var3959=$r12, var1023=java.net.ConnectException, var586=$r24, var1097=$r37, var3661=$r36, var2097=$r29, var958=$r27, var1609=$r28, var1687=$r30, var1455=$r31, var2832=java.lang.Throwable, var3925=$r32, var2418=$r33}
; {okhttp3.internal.connection.RealConnection=var1128, r0=var1673, i2=var3991, i1=var3183, okhttp3.Call=var3686, r9=var886, okhttp3.EventListener=var1750, r8=var786, okhttp3.Route=var1168, $r1=var1921, java.net.Proxy=var249, r2=var1200, $r3=var1144, okhttp3.Address=var82, r4=var32, java.net.Proxy$Type=var3653, $r5=var2841, okhttp3.internal.connection.RealConnection$WhenMappings=var207, $r6=var240, java.lang.Enum=var2246, $i0=var23, $i3=var1938, javax.net.SocketFactory=var2550, $r7=var2860, java.net.Socket=var121, $r34=var3454, kotlin.jvm.internal.Intrinsics=var1860, java.lang.Object=var1568, $r10=var3508, java.net.InetSocketAddress=var3866, $r11=var3408, okhttp3.internal.platform.Platform$Companion=var1796, okhttp3.internal.platform.Platform=var2937, $r12=var3959, java.net.ConnectException=var1023, $r24=var586, $r37=var1097, $r36=var3661, $r29=var2097, $r27=var958, $r28=var1609, $r30=var1687, $r31=var1455, java.lang.Throwable=var2832, $r32=var3925, $r33=var2418}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.internal.connection.RealConnection;	i2 := @parameter0: int;	i1 := @parameter1: int;	r9 := @parameter2: okhttp3.Call;	r8 := @parameter3: okhttp3.EventListener;	$r1 = r0.<okhttp3.internal.connection.RealConnection: okhttp3.Route route>;	r2 = virtualinvoke $r1.<okhttp3.Route: java.net.Proxy proxy()>();	$r3 = r0.<okhttp3.internal.connection.RealConnection: okhttp3.Route route>;	r4 = virtualinvoke $r3.<okhttp3.Route: okhttp3.Address address()>();	$r5 = virtualinvoke r2.<java.net.Proxy: java.net.Proxy$Type type()>();	if $r5 != null goto $r6 = <okhttp3.internal.connection.RealConnection$WhenMappings: int[] $EnumSwitchMapping$0>;	$r6 = <okhttp3.internal.connection.RealConnection$WhenMappings: int[] $EnumSwitchMapping$0>;	$i0 = virtualinvoke $r5.<java.net.Proxy$Type: int ordinal()>();	$i3 = $r6[$i0];	tableswitch($i3) {     case 1: goto $r7 = virtualinvoke r4.<okhttp3.Address: javax.net.SocketFactory socketFactory()>();     case 2: goto $r7 = virtualinvoke r4.<okhttp3.Address: javax.net.SocketFactory socketFactory()>();     default: goto $r35 = new java.net.Socket; };	$r7 = virtualinvoke r4.<okhttp3.Address: javax.net.SocketFactory socketFactory()>();	$r34 = virtualinvoke $r7.<javax.net.SocketFactory: java.net.Socket createSocket()>();	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNull(java.lang.Object)>($r34);	goto [?= r0.<okhttp3.internal.connection.RealConnection: java.net.Socket rawSocket> = $r34];	r0.<okhttp3.internal.connection.RealConnection: java.net.Socket rawSocket> = $r34;	$r10 = r0.<okhttp3.internal.connection.RealConnection: okhttp3.Route route>;	$r11 = virtualinvoke $r10.<okhttp3.Route: java.net.InetSocketAddress socketAddress()>();	virtualinvoke r8.<okhttp3.EventListener: void connectStart(okhttp3.Call,java.net.InetSocketAddress,java.net.Proxy)>(r9, $r11, r2);	virtualinvoke $r34.<java.net.Socket: void setSoTimeout(int)>(i1);	$r12 = <okhttp3.internal.platform.Platform: okhttp3.internal.platform.Platform$Companion Companion>;	$r24 := @caughtexception;	$r37 = new java.net.ConnectException;	$r36 = new java.lang.StringBuilder;	specialinvoke $r36.<java.lang.StringBuilder: void <init>()>();	$r29 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to connect to ");	$r27 = r0.<okhttp3.internal.connection.RealConnection: okhttp3.Route route>;	$r28 = virtualinvoke $r27.<okhttp3.Route: java.net.InetSocketAddress socketAddress()>();	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r28);	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r37.<java.net.ConnectException: void <init>(java.lang.String)>($r31);	$r32 = (java.lang.Throwable) $r24;	virtualinvoke $r37.<java.net.ConnectException: java.lang.Throwable initCause(java.lang.Throwable)>($r32);	$r33 = (java.lang.Throwable) $r37;	throw $r33
;block_num 6