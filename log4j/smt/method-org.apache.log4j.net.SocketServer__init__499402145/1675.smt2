(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var809 0)
(declare-sort var2352 0)
(declare-sort var3460 0)
(declare-sort var3492 0)
(declare-sort var1713 0)
(declare-sort var3304 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun printStackTrace/885456489 (var3460) void)
(declare-fun cast-from-var2352-to-var3460 (var2352) var3460)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var3492_usage/311829522 (String) void)
(declare-fun var1713_configure/-1964612118 (String) void)
(declare-fun var3304-init () var3304)
(declare-fun <init>/-1681595970 (var3304 String) void)
(declare-fun isDirectory/-2122094196 (var3304) Bool)
(declare-fun var3492-init () var3492)
(declare-fun <init>/-1409261294 (var3492 var3304) void)
(declare-const null-String String)
(declare-const null-var2352 var2352)
(declare-const var1880 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1880 null-String)))
(declare-const var346 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var346 null-String)))
(declare-const var41 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var41 null-String)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2157 var2352) ; Statement: $r10 := @caughtexception 
(assert (not (= var2157 null-var2352)))
(assert true)
;(assert (printStackTrace/885456489 (cast-from-var2352-to-var3460 var2157))) ; Statement: virtualinvoke $r10.<java.lang.NumberFormatException: void printStackTrace()>() 

(declare-const var2157!1 var2352)
(define-const var390 String String-init) ; Statement: $r11 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var390)) ; Statement: specialinvoke $r11.<java.lang.StringBuffer: void <init>()>() 

(declare-const var390!1 String)
(assert true)
(define-const var2737 String (append/1560614132 var390!1 "Could not interpret port number [")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Could not interpret port number [") 
(declare-const var390!2 String)
(assert (str.prefixof var390!1 var390!2))
(assert true)
(define-const var3427 String (append/1560614132 var2737 var1880)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r0) 
(declare-const var2737!1 String)
(assert (str.prefixof var2737 var2737!1))
(assert true)
(define-const var2836 String (append/1560614132 var3427 "].")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].") 
(declare-const var3427!1 String)
(assert (str.prefixof var3427 var3427!1))
(assert true)
(define-const var815 String (toString/-222306083 var2836)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var3492_usage/311829522 var815)) ; Statement: staticinvoke <org.apache.log4j.net.SocketServer: void usage(java.lang.String)>($r15) 

(declare-const var815!1 String)
(assert true) ; Non Conditional
;(assert (var1713_configure/-1964612118 var346)) ; Statement: staticinvoke <org.apache.log4j.PropertyConfigurator: void configure(java.lang.String)>(r1) 

(declare-const var346!1 String)
(define-const var488 var3304 var3304-init) ; Statement: $r2 = new java.io.File 
(assert true)
;(assert (<init>/-1681595970 var488 var41)) ; Statement: specialinvoke $r2.<java.io.File: void <init>(java.lang.String)>(r3) 

(declare-const var488!1 var3304)
(declare-const var41!1 String)
(assert true)
(define-const var306 Bool (isDirectory/-2122094196 var488!1)) ; Statement: $z0 = virtualinvoke $r2.<java.io.File: boolean isDirectory()>() 
 ; Statement: if $z0 != 0 goto $r4 = new org.apache.log4j.net.SocketServer 
(assert (not (= (ite var306 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2498 var3492 var3492-init) ; Statement: $r4 = new org.apache.log4j.net.SocketServer 
(assert true)
;(assert (<init>/-1409261294 var2498 var488!1)) ; Statement: specialinvoke $r4.<org.apache.log4j.net.SocketServer: void <init>(java.io.File)>($r2) 

(declare-const var2498!1 var3492)
(declare-const var488!2 var3304)
(define-const var2712 var3492 var2498!1) ; Statement: <org.apache.log4j.net.SocketServer: org.apache.log4j.net.SocketServer server> = $r4 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {printStackTrace/885456489=([java.lang.Throwable], void), cast-from-var2352-to-var3460=([java.lang.NumberFormatException], java.lang.Throwable), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var3492_usage/311829522=([java.lang.String], void), var1713_configure/-1964612118=([java.lang.String], void), var3304-init=([], java.io.File), <init>/-1681595970=([java.io.File, java.lang.String], void), isDirectory/-2122094196=([java.io.File], boolean), var3492-init=([], org.apache.log4j.net.SocketServer), <init>/-1409261294=([org.apache.log4j.net.SocketServer, java.io.File], void)}
; {var1880=r0, var809=null_type, var346=r1, var41=r3, var2352=java.lang.NumberFormatException, var2157=$r10, var3460=java.lang.Throwable, var390=$r11, var2737=$r12, var3427=$r13, var2836=$r14, var815=$r15, var3492=org.apache.log4j.net.SocketServer, var1713=org.apache.log4j.PropertyConfigurator, var3304=java.io.File, var488=$r2, var306=$z0, var2498=$r4, var2712=<org.apache.log4j.net.SocketServer: org.apache.log4j.net.SocketServer server>}
; {r0=var1880, null_type=var809, r1=var346, r3=var41, java.lang.NumberFormatException=var2352, $r10=var2157, java.lang.Throwable=var3460, $r11=var390, $r12=var2737, $r13=var3427, $r14=var2836, $r15=var815, org.apache.log4j.net.SocketServer=var3492, org.apache.log4j.PropertyConfigurator=var1713, java.io.File=var3304, $r2=var488, $z0=var306, $r4=var2498, <org.apache.log4j.net.SocketServer: org.apache.log4j.net.SocketServer server>=var2712}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	r3 := @parameter2: java.lang.String;	$r10 := @caughtexception;	virtualinvoke $r10.<java.lang.NumberFormatException: void printStackTrace()>();	$r11 = new java.lang.StringBuffer;	specialinvoke $r11.<java.lang.StringBuffer: void <init>()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Could not interpret port number [");	$r13 = virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r0);	$r14 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].");	$r15 = virtualinvoke $r14.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.net.SocketServer: void usage(java.lang.String)>($r15);	staticinvoke <org.apache.log4j.PropertyConfigurator: void configure(java.lang.String)>(r1);	$r2 = new java.io.File;	specialinvoke $r2.<java.io.File: void <init>(java.lang.String)>(r3);	$z0 = virtualinvoke $r2.<java.io.File: boolean isDirectory()>();	if $z0 != 0 goto $r4 = new org.apache.log4j.net.SocketServer;	$r4 = new org.apache.log4j.net.SocketServer;	specialinvoke $r4.<org.apache.log4j.net.SocketServer: void <init>(java.io.File)>($r2);	<org.apache.log4j.net.SocketServer: org.apache.log4j.net.SocketServer server> = $r4;	return
;block_num 4