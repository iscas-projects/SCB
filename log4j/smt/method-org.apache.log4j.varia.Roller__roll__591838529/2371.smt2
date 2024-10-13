(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var747 0)
(declare-sort var2300 0)
(declare-sort var2681 0)
(declare-sort var1181 0)
(declare-sort var726 0)
(declare-sort var3465 0)
(declare-sort var1414 0)
(declare-sort var2551 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var747-init () var747)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/1845021834 (String Int) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun error/-1766755934 (var726 var3465 var1414) void)
(declare-fun cast-from-var1181-to-var726 (var1181) var726)
(declare-fun cast-from-String-to-var3465 (String) var3465)
(declare-fun cast-from-var2681-to-var1414 (var2681) var1414)
(declare-fun var2551_exit/142839841 (Int) void)
(declare-const var2300-host String)
(declare-const var2300-port Int)
(declare-const null-var2681 var2681)
(declare-const var2300-cat var1181)
(define-const var2929 var747 var747-init) ; Statement: $r0 = new java.net.Socket 
(define-const var1109 String var2300-host) ; Statement: $r1 = <org.apache.log4j.varia.Roller: java.lang.String host> 
(define-const var174 Int var2300-port) ; Statement: $i0 = <org.apache.log4j.varia.Roller: int port> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3682 var2681) ; Statement: $r15 := @caughtexception 
(assert (not (= var3682 null-var2681)))
(define-const var3245 var1181 var2300-cat) ; Statement: $r17 = <org.apache.log4j.varia.Roller: org.apache.log4j.Logger cat> 
(define-const var1019 String String-init) ; Statement: $r16 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1019)) ; Statement: specialinvoke $r16.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1019!1 String)
(assert true)
(define-const var2550 String (append/1560614132 var1019!1 "Could not send roll signal on host ")) ; Statement: $r19 = virtualinvoke $r16.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Could not send roll signal on host ") 
(declare-const var1019!2 String)
(assert (str.prefixof var1019!1 var1019!2))
(define-const var1318 String var2300-host) ; Statement: $r18 = <org.apache.log4j.varia.Roller: java.lang.String host> 
(assert true)
(define-const var985 String (append/1560614132 var2550 var1318)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r18) 
(declare-const var2550!1 String)
(assert (str.prefixof var2550 var2550!1))
(assert true)
(define-const var3581 String (append/1560614132 var985 " port ")) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" port ") 
(declare-const var985!1 String)
(assert (str.prefixof var985 var985!1))
(define-const var2059 Int var2300-port) ; Statement: $i1 = <org.apache.log4j.varia.Roller: int port> 
(assert true)
(define-const var1899 String (append/1845021834 var3581 var2059)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i1) 
(assert true)
(define-const var1838 String (append/1560614132 var1899 " .")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" .") 
(declare-const var1899!1 String)
(assert (str.prefixof var1899 var1899!1))
(assert true)
(define-const var3065 String (toString/-222306083 var1838)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (error/-1766755934 (cast-from-var1181-to-var726 var3245) (cast-from-String-to-var3465 var3065) (cast-from-var2681-to-var1414 var3682))) ; Statement: virtualinvoke $r17.<org.apache.log4j.Logger: void error(java.lang.Object,java.lang.Throwable)>($r24, $r15) 

(declare-const var3245!1 var1181)
(declare-const var3065!1 String)
(declare-const var3682!1 var2681)
;(assert (var2551_exit/142839841 2)) ; Statement: staticinvoke <java.lang.System: void exit(int)>(2) 

(declare-const var1560 Int)
(assert true) ; Non Conditional
;(assert (var2551_exit/142839841 0)) ; Statement: staticinvoke <java.lang.System: void exit(int)>(0) 

(declare-const var1157 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var747-init=([], java.net.Socket), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), error/-1766755934=([org.apache.log4j.Category, java.lang.Object, java.lang.Throwable], void), cast-from-var1181-to-var726=([org.apache.log4j.Logger], org.apache.log4j.Category), cast-from-String-to-var3465=([java.lang.String], java.lang.Object), cast-from-var2681-to-var1414=([java.io.IOException], java.lang.Throwable), var2551_exit/142839841=([int], void)}
; {var747=java.net.Socket, var2929=$r0, var2300=org.apache.log4j.varia.Roller, var1109=$r1, var174=$i0, var2681=java.io.IOException, var3682=$r15, var1181=org.apache.log4j.Logger, var3245=$r17, var1019=$r16, var2550=$r19, var1318=$r18, var985=$r20, var3581=$r21, var2059=$i1, var1899=$r22, var1838=$r23, var3065=$r24, var726=org.apache.log4j.Category, var3465=java.lang.Object, var1414=java.lang.Throwable, var2551=java.lang.System, var1560=2, var1157=0}
; {java.net.Socket=var747, $r0=var2929, org.apache.log4j.varia.Roller=var2300, $r1=var1109, $i0=var174, java.io.IOException=var2681, $r15=var3682, org.apache.log4j.Logger=var1181, $r17=var3245, $r16=var1019, $r19=var2550, $r18=var1318, $r20=var985, $r21=var3581, $i1=var2059, $r22=var1899, $r23=var1838, $r24=var3065, org.apache.log4j.Category=var726, java.lang.Object=var3465, java.lang.Throwable=var1414, java.lang.System=var2551, 2=var1560, 0=var1157}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 4,"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts $r0 = new java.net.Socket;	$r1 = <org.apache.log4j.varia.Roller: java.lang.String host>;	$i0 = <org.apache.log4j.varia.Roller: int port>;	$r15 := @caughtexception;	$r17 = <org.apache.log4j.varia.Roller: org.apache.log4j.Logger cat>;	$r16 = new java.lang.StringBuffer;	specialinvoke $r16.<java.lang.StringBuffer: void <init>()>();	$r19 = virtualinvoke $r16.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Could not send roll signal on host ");	$r18 = <org.apache.log4j.varia.Roller: java.lang.String host>;	$r20 = virtualinvoke $r19.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r18);	$r21 = virtualinvoke $r20.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" port ");	$i1 = <org.apache.log4j.varia.Roller: int port>;	$r22 = virtualinvoke $r21.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i1);	$r23 = virtualinvoke $r22.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" .");	$r24 = virtualinvoke $r23.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r17.<org.apache.log4j.Logger: void error(java.lang.Object,java.lang.Throwable)>($r24, $r15);	staticinvoke <java.lang.System: void exit(int)>(2);	staticinvoke <java.lang.System: void exit(int)>(0);	return
;block_num 3