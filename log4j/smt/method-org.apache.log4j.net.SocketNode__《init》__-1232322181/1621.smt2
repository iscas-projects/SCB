(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var895 0)
(declare-sort var3111 0)
(declare-sort var901 0)
(declare-sort var1379 0)
(declare-sort var645 0)
(declare-sort var1894 0)
(declare-sort var805 0)
(declare-sort var1272 0)
(declare-sort var371 0)
(declare-sort var958 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1379) void)
(declare-fun cast-from-var895-to-var1379 (var895) var1379)
(declare-fun socket/-1777471184 (var895) var3111)
(declare-fun hierarchy/-1777471184 (var895) var901)
(declare-fun var645-init () var645)
(declare-fun var1894-init () var1894)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-143899486 (String var1379) String)
(declare-fun cast-from-var3111-to-var1379 (var3111) var1379)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun error/-1766755934 (var371 var1379 var958) void)
(declare-fun cast-from-var1272-to-var371 (var1272) var371)
(declare-fun cast-from-String-to-var1379 (String) var1379)
(declare-fun cast-from-var805-to-var958 (var805) var958)
(declare-const null-var895 var895)
(declare-const null-var3111 var3111)
(declare-const null-var901 var901)
(declare-const null-var805 var805)
(declare-const var895-logger var1272)
(declare-const var457 var895) ; Statement: r0 := @this: org.apache.log4j.net.SocketNode 
(assert (not (= var457 null-var895)))
(declare-const var587 var3111) ; Statement: r1 := @parameter0: java.net.Socket 
(assert (not (= var587 null-var3111)))
(declare-const var1710 var901) ; Statement: r2 := @parameter1: org.apache.log4j.spi.LoggerRepository 
(assert (not (= var1710 null-var901)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var895-to-var1379 var457))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var457!1 var895)
(declare-const var457!2 var895)
(assert (not (= var457!2 null-var895)))
(assert (= (socket/-1777471184 var457!2) var587)) ; Statement: r0.<org.apache.log4j.net.SocketNode: java.net.Socket socket> = r1 
(declare-const var457!3 var895)
(assert (not (= var457!3 null-var895)))
(assert (= (hierarchy/-1777471184 var457!3) var1710)) ; Statement: r0.<org.apache.log4j.net.SocketNode: org.apache.log4j.spi.LoggerRepository hierarchy> = r2 
(define-const var3499 var645 var645-init) ; Statement: $r3 = new java.io.ObjectInputStream 
(define-const var2053 var1894 var1894-init) ; Statement: $r4 = new java.io.BufferedInputStream 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var474 var805) ; Statement: $r6 := @caughtexception 
(assert (not (= var474 null-var805)))
(define-const var273 var1272 var895-logger) ; Statement: $r8 = <org.apache.log4j.net.SocketNode: org.apache.log4j.Logger logger> 
(define-const var1711 String String-init) ; Statement: $r7 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1711)) ; Statement: specialinvoke $r7.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1711!1 String)
(assert true)
(define-const var592 String (append/1560614132 var1711!1 "Could not open ObjectInputStream to ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Could not open ObjectInputStream to ") 
(declare-const var1711!2 String)
(assert (str.prefixof var1711!1 var1711!2))
(assert true)
(define-const var1368 String (append/-143899486 var592 (cast-from-var3111-to-var1379 var587))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r1) 
(assert true)
(define-const var1818 String (toString/-222306083 var1368)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (error/-1766755934 (cast-from-var1272-to-var371 var273) (cast-from-String-to-var1379 var1818) (cast-from-var805-to-var958 var474))) ; Statement: virtualinvoke $r8.<org.apache.log4j.Logger: void error(java.lang.Object,java.lang.Throwable)>($r11, $r6) 

(declare-const var273!1 var1272)
(declare-const var1818!1 String)
(declare-const var474!1 var805)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var895-to-var1379=([org.apache.log4j.net.SocketNode], java.lang.Object), socket/-1777471184=([org.apache.log4j.net.SocketNode], java.net.Socket), hierarchy/-1777471184=([org.apache.log4j.net.SocketNode], org.apache.log4j.spi.LoggerRepository), var645-init=([], java.io.ObjectInputStream), var1894-init=([], java.io.BufferedInputStream), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/-143899486=([java.lang.StringBuffer, java.lang.Object], java.lang.StringBuffer), cast-from-var3111-to-var1379=([java.net.Socket], java.lang.Object), toString/-222306083=([java.lang.StringBuffer], java.lang.String), error/-1766755934=([org.apache.log4j.Category, java.lang.Object, java.lang.Throwable], void), cast-from-var1272-to-var371=([org.apache.log4j.Logger], org.apache.log4j.Category), cast-from-String-to-var1379=([java.lang.String], java.lang.Object), cast-from-var805-to-var958=([java.lang.RuntimeException], java.lang.Throwable)}
; {var895=org.apache.log4j.net.SocketNode, var457=r0, var3111=java.net.Socket, var587=r1, var901=org.apache.log4j.spi.LoggerRepository, var1710=r2, var1379=java.lang.Object, var645=java.io.ObjectInputStream, var3499=$r3, var1894=java.io.BufferedInputStream, var2053=$r4, var805=java.lang.RuntimeException, var474=$r6, var1272=org.apache.log4j.Logger, var273=$r8, var1711=$r7, var592=$r9, var1368=$r10, var1818=$r11, var371=org.apache.log4j.Category, var958=java.lang.Throwable}
; {org.apache.log4j.net.SocketNode=var895, r0=var457, java.net.Socket=var3111, r1=var587, org.apache.log4j.spi.LoggerRepository=var901, r2=var1710, java.lang.Object=var1379, java.io.ObjectInputStream=var645, $r3=var3499, java.io.BufferedInputStream=var1894, $r4=var2053, java.lang.RuntimeException=var805, $r6=var474, org.apache.log4j.Logger=var1272, $r8=var273, $r7=var1711, $r9=var592, $r10=var1368, $r11=var1818, org.apache.log4j.Category=var371, java.lang.Throwable=var958}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.net.SocketNode;	r1 := @parameter0: java.net.Socket;	r2 := @parameter1: org.apache.log4j.spi.LoggerRepository;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.apache.log4j.net.SocketNode: java.net.Socket socket> = r1;	r0.<org.apache.log4j.net.SocketNode: org.apache.log4j.spi.LoggerRepository hierarchy> = r2;	$r3 = new java.io.ObjectInputStream;	$r4 = new java.io.BufferedInputStream;	$r6 := @caughtexception;	$r8 = <org.apache.log4j.net.SocketNode: org.apache.log4j.Logger logger>;	$r7 = new java.lang.StringBuffer;	specialinvoke $r7.<java.lang.StringBuffer: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Could not open ObjectInputStream to ");	$r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r1);	$r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r8.<org.apache.log4j.Logger: void error(java.lang.Object,java.lang.Throwable)>($r11, $r6);	return
;block_num 3