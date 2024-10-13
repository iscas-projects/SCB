(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2976 0)
(declare-sort var453 0)
(declare-sort var235 0)
(declare-sort var3747 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun println/1773605060 (var453 String) void)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3747_class$/178203935 (String) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var235_exit/142839841 (Int) void)
(declare-const null-String String)
(declare-const var235-err var453)
(declare-const var3747-class$org$apache$log4j$net$SocketServer ClassObject)
(declare-const null-ClassObject ClassObject)
(declare-const var2459 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2459 null-String)))
(define-const var3081 var453 var235-err) ; Statement: $r1 = <java.lang.System: java.io.PrintStream err> 
(assert true)
;(assert (println/1773605060 var3081 var2459)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>(r0) 

(declare-const var3081!1 var453)
(declare-const var2459!1 String)
(define-const var3211 var453 var235-err) ; Statement: $r3 = <java.lang.System: java.io.PrintStream err> 
(define-const var3951 String String-init) ; Statement: $r2 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3951)) ; Statement: specialinvoke $r2.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3951!1 String)
(assert true)
(define-const var3037 String (append/1560614132 var3951!1 "Usage: java ")) ; Statement: $r6 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Usage: java ") 
(declare-const var3951!2 String)
(assert (str.prefixof var3951!1 var3951!2))
(define-const var746 ClassObject var3747-class$org$apache$log4j$net$SocketServer) ; Statement: $r4 = <org.apache.log4j.net.SocketServer: java.lang.Class class$org$apache$log4j$net$SocketServer> 
 ; Statement: if $r4 != null goto $r10 = <org.apache.log4j.net.SocketServer: java.lang.Class class$org$apache$log4j$net$SocketServer> 
(assert (not (not (= var746 null-ClassObject)))) ; Negate: Cond: $r4 != null  
(define-const var1162 ClassObject (var3747_class$/178203935 "org.apache.log4j.net.SocketServer")) ; Statement: $r10 = staticinvoke <org.apache.log4j.net.SocketServer: java.lang.Class class$(java.lang.String)>("org.apache.log4j.net.SocketServer") 
(define-const var1006 ClassObject var1162) ; Statement: <org.apache.log4j.net.SocketServer: java.lang.Class class$org$apache$log4j$net$SocketServer> = $r10 
 ; Statement: goto [?= $r5 = virtualinvoke $r10.<java.lang.Class: java.lang.String getName()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var617 String (getName/-1958580599 var1162)) ; Statement: $r5 = virtualinvoke $r10.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3996 String (append/1560614132 var3037 var617)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5) 
(declare-const var3037!1 String)
(assert (str.prefixof var3037 var3037!1))
(assert true)
(define-const var77 String (append/1560614132 var3996 " port configFile directory")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" port configFile directory") 
(declare-const var3996!1 String)
(assert (str.prefixof var3996 var3996!1))
(assert true)
(define-const var3856 String (toString/-222306083 var77)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var3211 var3856)) ; Statement: virtualinvoke $r3.<java.io.PrintStream: void println(java.lang.String)>($r9) 

(declare-const var3211!1 var453)
(declare-const var3856!1 String)
;(assert (var235_exit/142839841 1)) ; Statement: staticinvoke <java.lang.System: void exit(int)>(1) 

(declare-const var148 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {println/1773605060=([java.io.PrintStream, java.lang.String], void), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), var3747_class$/178203935=([java.lang.String], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var235_exit/142839841=([int], void)}
; {var2459=r0, var2976=null_type, var453=java.io.PrintStream, var235=java.lang.System, var3081=$r1, var3211=$r3, var3951=$r2, var3037=$r6, var3747=org.apache.log4j.net.SocketServer, var746=$r4, var1162=$r10, var1006=<org.apache.log4j.net.SocketServer: java.lang.Class class$org$apache$log4j$net$SocketServer>, var617=$r5, var3996=$r7, var77=$r8, var3856=$r9, var148=1}
; {r0=var2459, null_type=var2976, java.io.PrintStream=var453, java.lang.System=var235, $r1=var3081, $r3=var3211, $r2=var3951, $r6=var3037, org.apache.log4j.net.SocketServer=var3747, $r4=var746, $r10=var1162, <org.apache.log4j.net.SocketServer: java.lang.Class class$org$apache$log4j$net$SocketServer>=var1006, $r5=var617, $r7=var3996, $r8=var77, $r9=var3856, 1=var148}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = <java.lang.System: java.io.PrintStream err>;	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>(r0);	$r3 = <java.lang.System: java.io.PrintStream err>;	$r2 = new java.lang.StringBuffer;	specialinvoke $r2.<java.lang.StringBuffer: void <init>()>();	$r6 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Usage: java ");	$r4 = <org.apache.log4j.net.SocketServer: java.lang.Class class$org$apache$log4j$net$SocketServer>;	if $r4 != null goto $r10 = <org.apache.log4j.net.SocketServer: java.lang.Class class$org$apache$log4j$net$SocketServer>;	$r10 = staticinvoke <org.apache.log4j.net.SocketServer: java.lang.Class class$(java.lang.String)>("org.apache.log4j.net.SocketServer");	<org.apache.log4j.net.SocketServer: java.lang.Class class$org$apache$log4j$net$SocketServer> = $r10;	goto [?= $r5 = virtualinvoke $r10.<java.lang.Class: java.lang.String getName()>()];	$r5 = virtualinvoke $r10.<java.lang.Class: java.lang.String getName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" port configFile directory");	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r3.<java.io.PrintStream: void println(java.lang.String)>($r9);	staticinvoke <java.lang.System: void exit(int)>(1);	return
;block_num 3