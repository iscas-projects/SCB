(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3601 0)
(declare-sort var76 0)
(declare-sort var3734 0)
(declare-sort var1427 0)
(declare-sort var1515 0)
(declare-sort var2741 0)
(declare-sort var1073 0)
(declare-sort var474 0)
(declare-sort var696 0)
(declare-sort var2424 0)
(declare-sort var3712 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1427) void)
(declare-fun cast-from-var3601-to-var1427 (var3601) var1427)
(declare-fun socket/-1777471184 (var3601) var76)
(declare-fun hierarchy/-1777471184 (var3601) var3734)
(declare-fun var1515-init () var1515)
(declare-fun var2741-init () var2741)
(declare-fun var474_currentThread/-1037784612 () var474)
(declare-fun interrupt/1189171174 (var474) void)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-143899486 (String var1427) String)
(declare-fun cast-from-var76-to-var1427 (var76) var1427)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun error/-1766755934 (var2424 var1427 var3712) void)
(declare-fun cast-from-var696-to-var2424 (var696) var2424)
(declare-fun cast-from-String-to-var1427 (String) var1427)
(declare-fun cast-from-var1073-to-var3712 (var1073) var3712)
(declare-const null-var3601 var3601)
(declare-const null-var76 var76)
(declare-const null-var3734 var3734)
(declare-const null-var1073 var1073)
(declare-const var3601-logger var696)
(declare-const var2918 var3601) ; Statement: r0 := @this: org.apache.log4j.net.SocketNode 
(assert (not (= var2918 null-var3601)))
(declare-const var1640 var76) ; Statement: r1 := @parameter0: java.net.Socket 
(assert (not (= var1640 null-var76)))
(declare-const var2005 var3734) ; Statement: r2 := @parameter1: org.apache.log4j.spi.LoggerRepository 
(assert (not (= var2005 null-var3734)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3601-to-var1427 var2918))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2918!1 var3601)
(declare-const var2918!2 var3601)
(assert (not (= var2918!2 null-var3601)))
(assert (= (socket/-1777471184 var2918!2) var1640)) ; Statement: r0.<org.apache.log4j.net.SocketNode: java.net.Socket socket> = r1 
(declare-const var2918!3 var3601)
(assert (not (= var2918!3 null-var3601)))
(assert (= (hierarchy/-1777471184 var2918!3) var2005)) ; Statement: r0.<org.apache.log4j.net.SocketNode: org.apache.log4j.spi.LoggerRepository hierarchy> = r2 
(define-const var2805 var1515 var1515-init) ; Statement: $r3 = new java.io.ObjectInputStream 
(define-const var3215 var2741 var2741-init) ; Statement: $r4 = new java.io.BufferedInputStream 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2714 var1073) ; Statement: $r18 := @caughtexception 
(assert (not (= var2714 null-var1073)))
(define-const var1529 var474 var474_currentThread/-1037784612) ; Statement: $r19 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert true)
;(assert (interrupt/1189171174 var1529)) ; Statement: virtualinvoke $r19.<java.lang.Thread: void interrupt()>() 

(declare-const var1529!1 var474)
(define-const var2716 var696 var3601-logger) ; Statement: $r21 = <org.apache.log4j.net.SocketNode: org.apache.log4j.Logger logger> 
(define-const var757 String String-init) ; Statement: $r20 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var757)) ; Statement: specialinvoke $r20.<java.lang.StringBuffer: void <init>()>() 

(declare-const var757!1 String)
(assert true)
(define-const var1332 String (append/1560614132 var757!1 "Could not open ObjectInputStream to ")) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Could not open ObjectInputStream to ") 
(declare-const var757!2 String)
(assert (str.prefixof var757!1 var757!2))
(assert true)
(define-const var933 String (append/-143899486 var1332 (cast-from-var76-to-var1427 var1640))) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r1) 
(assert true)
(define-const var725 String (toString/-222306083 var933)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (error/-1766755934 (cast-from-var696-to-var2424 var2716) (cast-from-String-to-var1427 var725) (cast-from-var1073-to-var3712 var2714))) ; Statement: virtualinvoke $r21.<org.apache.log4j.Logger: void error(java.lang.Object,java.lang.Throwable)>($r24, $r18) 

(declare-const var2716!1 var696)
(declare-const var725!1 String)
(declare-const var2714!1 var1073)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3601-to-var1427=([org.apache.log4j.net.SocketNode], java.lang.Object), socket/-1777471184=([org.apache.log4j.net.SocketNode], java.net.Socket), hierarchy/-1777471184=([org.apache.log4j.net.SocketNode], org.apache.log4j.spi.LoggerRepository), var1515-init=([], java.io.ObjectInputStream), var2741-init=([], java.io.BufferedInputStream), var474_currentThread/-1037784612=([], java.lang.Thread), interrupt/1189171174=([java.lang.Thread], void), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/-143899486=([java.lang.StringBuffer, java.lang.Object], java.lang.StringBuffer), cast-from-var76-to-var1427=([java.net.Socket], java.lang.Object), toString/-222306083=([java.lang.StringBuffer], java.lang.String), error/-1766755934=([org.apache.log4j.Category, java.lang.Object, java.lang.Throwable], void), cast-from-var696-to-var2424=([org.apache.log4j.Logger], org.apache.log4j.Category), cast-from-String-to-var1427=([java.lang.String], java.lang.Object), cast-from-var1073-to-var3712=([java.io.InterruptedIOException], java.lang.Throwable)}
; {var3601=org.apache.log4j.net.SocketNode, var2918=r0, var76=java.net.Socket, var1640=r1, var3734=org.apache.log4j.spi.LoggerRepository, var2005=r2, var1427=java.lang.Object, var1515=java.io.ObjectInputStream, var2805=$r3, var2741=java.io.BufferedInputStream, var3215=$r4, var1073=java.io.InterruptedIOException, var2714=$r18, var474=java.lang.Thread, var1529=$r19, var696=org.apache.log4j.Logger, var2716=$r21, var757=$r20, var1332=$r22, var933=$r23, var725=$r24, var2424=org.apache.log4j.Category, var3712=java.lang.Throwable}
; {org.apache.log4j.net.SocketNode=var3601, r0=var2918, java.net.Socket=var76, r1=var1640, org.apache.log4j.spi.LoggerRepository=var3734, r2=var2005, java.lang.Object=var1427, java.io.ObjectInputStream=var1515, $r3=var2805, java.io.BufferedInputStream=var2741, $r4=var3215, java.io.InterruptedIOException=var1073, $r18=var2714, java.lang.Thread=var474, $r19=var1529, org.apache.log4j.Logger=var696, $r21=var2716, $r20=var757, $r22=var1332, $r23=var933, $r24=var725, org.apache.log4j.Category=var2424, java.lang.Throwable=var3712}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.net.SocketNode;	r1 := @parameter0: java.net.Socket;	r2 := @parameter1: org.apache.log4j.spi.LoggerRepository;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.apache.log4j.net.SocketNode: java.net.Socket socket> = r1;	r0.<org.apache.log4j.net.SocketNode: org.apache.log4j.spi.LoggerRepository hierarchy> = r2;	$r3 = new java.io.ObjectInputStream;	$r4 = new java.io.BufferedInputStream;	$r18 := @caughtexception;	$r19 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	virtualinvoke $r19.<java.lang.Thread: void interrupt()>();	$r21 = <org.apache.log4j.net.SocketNode: org.apache.log4j.Logger logger>;	$r20 = new java.lang.StringBuffer;	specialinvoke $r20.<java.lang.StringBuffer: void <init>()>();	$r22 = virtualinvoke $r20.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Could not open ObjectInputStream to ");	$r23 = virtualinvoke $r22.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r1);	$r24 = virtualinvoke $r23.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r21.<org.apache.log4j.Logger: void error(java.lang.Object,java.lang.Throwable)>($r24, $r18);	goto [?= return];	return
;block_num 3