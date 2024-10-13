(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1007 0)
(declare-sort var3725 0)
(declare-sort var2338 0)
(declare-sort var530 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun println/1773605060 (var3725 String) void)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var2338_exit/142839841 (Int) void)
(declare-const null-String String)
(declare-const var2338-err var3725)
(declare-const var530-class$org$apache$log4j$net$SocketServer ClassObject)
(declare-const null-ClassObject ClassObject)
(declare-const var3138 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3138 null-String)))
(define-const var291 var3725 var2338-err) ; Statement: $r1 = <java.lang.System: java.io.PrintStream err> 
(assert true)
;(assert (println/1773605060 var291 var3138)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>(r0) 

(declare-const var291!1 var3725)
(declare-const var3138!1 String)
(define-const var1009 var3725 var2338-err) ; Statement: $r3 = <java.lang.System: java.io.PrintStream err> 
(define-const var3570 String String-init) ; Statement: $r2 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3570)) ; Statement: specialinvoke $r2.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3570!1 String)
(assert true)
(define-const var3048 String (append/1560614132 var3570!1 "Usage: java ")) ; Statement: $r6 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Usage: java ") 
(declare-const var3570!2 String)
(assert (str.prefixof var3570!1 var3570!2))
(define-const var3643 ClassObject var530-class$org$apache$log4j$net$SocketServer) ; Statement: $r4 = <org.apache.log4j.net.SocketServer: java.lang.Class class$org$apache$log4j$net$SocketServer> 
 ; Statement: if $r4 != null goto $r10 = <org.apache.log4j.net.SocketServer: java.lang.Class class$org$apache$log4j$net$SocketServer> 
(assert (not (= var3643 null-ClassObject))) ; Cond: $r4 != null 
(define-const var3803 ClassObject var530-class$org$apache$log4j$net$SocketServer) ; Statement: $r10 = <org.apache.log4j.net.SocketServer: java.lang.Class class$org$apache$log4j$net$SocketServer> 
(assert true) ; Non Conditional
(assert true)
(define-const var152 String (getName/-1958580599 var3803)) ; Statement: $r5 = virtualinvoke $r10.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2687 String (append/1560614132 var3048 var152)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5) 
(declare-const var3048!1 String)
(assert (str.prefixof var3048 var3048!1))
(assert true)
(define-const var3563 String (append/1560614132 var2687 " port configFile directory")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" port configFile directory") 
(declare-const var2687!1 String)
(assert (str.prefixof var2687 var2687!1))
(assert true)
(define-const var412 String (toString/-222306083 var3563)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var1009 var412)) ; Statement: virtualinvoke $r3.<java.io.PrintStream: void println(java.lang.String)>($r9) 

(declare-const var1009!1 var3725)
(declare-const var412!1 String)
;(assert (var2338_exit/142839841 1)) ; Statement: staticinvoke <java.lang.System: void exit(int)>(1) 

(declare-const var1408 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {println/1773605060=([java.io.PrintStream, java.lang.String], void), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var2338_exit/142839841=([int], void)}
; {var3138=r0, var1007=null_type, var3725=java.io.PrintStream, var2338=java.lang.System, var291=$r1, var1009=$r3, var3570=$r2, var3048=$r6, var530=org.apache.log4j.net.SocketServer, var3643=$r4, var3803=$r10, var152=$r5, var2687=$r7, var3563=$r8, var412=$r9, var1408=1}
; {r0=var3138, null_type=var1007, java.io.PrintStream=var3725, java.lang.System=var2338, $r1=var291, $r3=var1009, $r2=var3570, $r6=var3048, org.apache.log4j.net.SocketServer=var530, $r4=var3643, $r10=var3803, $r5=var152, $r7=var2687, $r8=var3563, $r9=var412, 1=var1408}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = <java.lang.System: java.io.PrintStream err>;	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>(r0);	$r3 = <java.lang.System: java.io.PrintStream err>;	$r2 = new java.lang.StringBuffer;	specialinvoke $r2.<java.lang.StringBuffer: void <init>()>();	$r6 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Usage: java ");	$r4 = <org.apache.log4j.net.SocketServer: java.lang.Class class$org$apache$log4j$net$SocketServer>;	if $r4 != null goto $r10 = <org.apache.log4j.net.SocketServer: java.lang.Class class$org$apache$log4j$net$SocketServer>;	$r10 = <org.apache.log4j.net.SocketServer: java.lang.Class class$org$apache$log4j$net$SocketServer>;	$r5 = virtualinvoke $r10.<java.lang.Class: java.lang.String getName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" port configFile directory");	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r3.<java.io.PrintStream: void println(java.lang.String)>($r9);	staticinvoke <java.lang.System: void exit(int)>(1);	return
;block_num 3