(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2136 0)
(declare-sort var2059 0)
(declare-sort var2707 0)
(declare-sort var1009 0)
(declare-sort var2804 0)
(declare-sort var1763 0)
(declare-sort var3875 0)
(declare-sort var1841 0)
(declare-sort var1788 0)
(declare-sort var742 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1009) void)
(declare-fun cast-from-var2136-to-var1009 (var2136) var1009)
(declare-fun socket/-1777471184 (var2136) var2059)
(declare-fun hierarchy/-1777471184 (var2136) var2707)
(declare-fun var2804-init () var2804)
(declare-fun var1763-init () var1763)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-143899486 (String var1009) String)
(declare-fun cast-from-var2059-to-var1009 (var2059) var1009)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun error/-1766755934 (var1788 var1009 var742) void)
(declare-fun cast-from-var1841-to-var1788 (var1841) var1788)
(declare-fun cast-from-String-to-var1009 (String) var1009)
(declare-fun cast-from-var3875-to-var742 (var3875) var742)
(declare-const null-var2136 var2136)
(declare-const null-var2059 var2059)
(declare-const null-var2707 var2707)
(declare-const null-var3875 var3875)
(declare-const var2136-logger var1841)
(declare-const var1433 var2136) ; Statement: r0 := @this: org.apache.log4j.net.SocketNode 
(assert (not (= var1433 null-var2136)))
(declare-const var3592 var2059) ; Statement: r1 := @parameter0: java.net.Socket 
(assert (not (= var3592 null-var2059)))
(declare-const var2474 var2707) ; Statement: r2 := @parameter1: org.apache.log4j.spi.LoggerRepository 
(assert (not (= var2474 null-var2707)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2136-to-var1009 var1433))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1433!1 var2136)
(declare-const var1433!2 var2136)
(assert (not (= var1433!2 null-var2136)))
(assert (= (socket/-1777471184 var1433!2) var3592)) ; Statement: r0.<org.apache.log4j.net.SocketNode: java.net.Socket socket> = r1 
(declare-const var1433!3 var2136)
(assert (not (= var1433!3 null-var2136)))
(assert (= (hierarchy/-1777471184 var1433!3) var2474)) ; Statement: r0.<org.apache.log4j.net.SocketNode: org.apache.log4j.spi.LoggerRepository hierarchy> = r2 
(define-const var1279 var2804 var2804-init) ; Statement: $r3 = new java.io.ObjectInputStream 
(define-const var3963 var1763 var1763-init) ; Statement: $r4 = new java.io.BufferedInputStream 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var805 var3875) ; Statement: $r12 := @caughtexception 
(assert (not (= var805 null-var3875)))
(define-const var317 var1841 var2136-logger) ; Statement: $r14 = <org.apache.log4j.net.SocketNode: org.apache.log4j.Logger logger> 
(define-const var870 String String-init) ; Statement: $r13 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var870)) ; Statement: specialinvoke $r13.<java.lang.StringBuffer: void <init>()>() 

(declare-const var870!1 String)
(assert true)
(define-const var2909 String (append/1560614132 var870!1 "Could not open ObjectInputStream to ")) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Could not open ObjectInputStream to ") 
(declare-const var870!2 String)
(assert (str.prefixof var870!1 var870!2))
(assert true)
(define-const var2447 String (append/-143899486 var2909 (cast-from-var2059-to-var1009 var3592))) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r1) 
(assert true)
(define-const var2383 String (toString/-222306083 var2447)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (error/-1766755934 (cast-from-var1841-to-var1788 var317) (cast-from-String-to-var1009 var2383) (cast-from-var3875-to-var742 var805))) ; Statement: virtualinvoke $r14.<org.apache.log4j.Logger: void error(java.lang.Object,java.lang.Throwable)>($r17, $r12) 

(declare-const var317!1 var1841)
(declare-const var2383!1 String)
(declare-const var805!1 var3875)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2136-to-var1009=([org.apache.log4j.net.SocketNode], java.lang.Object), socket/-1777471184=([org.apache.log4j.net.SocketNode], java.net.Socket), hierarchy/-1777471184=([org.apache.log4j.net.SocketNode], org.apache.log4j.spi.LoggerRepository), var2804-init=([], java.io.ObjectInputStream), var1763-init=([], java.io.BufferedInputStream), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/-143899486=([java.lang.StringBuffer, java.lang.Object], java.lang.StringBuffer), cast-from-var2059-to-var1009=([java.net.Socket], java.lang.Object), toString/-222306083=([java.lang.StringBuffer], java.lang.String), error/-1766755934=([org.apache.log4j.Category, java.lang.Object, java.lang.Throwable], void), cast-from-var1841-to-var1788=([org.apache.log4j.Logger], org.apache.log4j.Category), cast-from-String-to-var1009=([java.lang.String], java.lang.Object), cast-from-var3875-to-var742=([java.io.IOException], java.lang.Throwable)}
; {var2136=org.apache.log4j.net.SocketNode, var1433=r0, var2059=java.net.Socket, var3592=r1, var2707=org.apache.log4j.spi.LoggerRepository, var2474=r2, var1009=java.lang.Object, var2804=java.io.ObjectInputStream, var1279=$r3, var1763=java.io.BufferedInputStream, var3963=$r4, var3875=java.io.IOException, var805=$r12, var1841=org.apache.log4j.Logger, var317=$r14, var870=$r13, var2909=$r15, var2447=$r16, var2383=$r17, var1788=org.apache.log4j.Category, var742=java.lang.Throwable}
; {org.apache.log4j.net.SocketNode=var2136, r0=var1433, java.net.Socket=var2059, r1=var3592, org.apache.log4j.spi.LoggerRepository=var2707, r2=var2474, java.lang.Object=var1009, java.io.ObjectInputStream=var2804, $r3=var1279, java.io.BufferedInputStream=var1763, $r4=var3963, java.io.IOException=var3875, $r12=var805, org.apache.log4j.Logger=var1841, $r14=var317, $r13=var870, $r15=var2909, $r16=var2447, $r17=var2383, org.apache.log4j.Category=var1788, java.lang.Throwable=var742}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.net.SocketNode;	r1 := @parameter0: java.net.Socket;	r2 := @parameter1: org.apache.log4j.spi.LoggerRepository;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.apache.log4j.net.SocketNode: java.net.Socket socket> = r1;	r0.<org.apache.log4j.net.SocketNode: org.apache.log4j.spi.LoggerRepository hierarchy> = r2;	$r3 = new java.io.ObjectInputStream;	$r4 = new java.io.BufferedInputStream;	$r12 := @caughtexception;	$r14 = <org.apache.log4j.net.SocketNode: org.apache.log4j.Logger logger>;	$r13 = new java.lang.StringBuffer;	specialinvoke $r13.<java.lang.StringBuffer: void <init>()>();	$r15 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Could not open ObjectInputStream to ");	$r16 = virtualinvoke $r15.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r1);	$r17 = virtualinvoke $r16.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r14.<org.apache.log4j.Logger: void error(java.lang.Object,java.lang.Throwable)>($r17, $r12);	goto [?= return];	return
;block_num 3