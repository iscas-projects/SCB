(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2361 0)
(declare-sort var3685 0)
(declare-sort var1125 0)
(declare-sort var3819 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun println/1773605060 (var3685 String) void)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3819_class$/513887821 (String) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var1125_exit/142839841 (Int) void)
(declare-const null-String String)
(declare-const var1125-err var3685)
(declare-const var3819-class$org$apache$log4j$net$SimpleSocketServer ClassObject)
(declare-const null-ClassObject ClassObject)
(declare-const var37 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var37 null-String)))
(define-const var3117 var3685 var1125-err) ; Statement: $r1 = <java.lang.System: java.io.PrintStream err> 
(assert true)
;(assert (println/1773605060 var3117 var37)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>(r0) 

(declare-const var3117!1 var3685)
(declare-const var37!1 String)
(define-const var863 var3685 var1125-err) ; Statement: $r3 = <java.lang.System: java.io.PrintStream err> 
(define-const var728 String String-init) ; Statement: $r2 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var728)) ; Statement: specialinvoke $r2.<java.lang.StringBuffer: void <init>()>() 

(declare-const var728!1 String)
(assert true)
(define-const var2881 String (append/1560614132 var728!1 "Usage: java ")) ; Statement: $r6 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Usage: java ") 
(declare-const var728!2 String)
(assert (str.prefixof var728!1 var728!2))
(define-const var2412 ClassObject var3819-class$org$apache$log4j$net$SimpleSocketServer) ; Statement: $r4 = <org.apache.log4j.net.SimpleSocketServer: java.lang.Class class$org$apache$log4j$net$SimpleSocketServer> 
 ; Statement: if $r4 != null goto $r10 = <org.apache.log4j.net.SimpleSocketServer: java.lang.Class class$org$apache$log4j$net$SimpleSocketServer> 
(assert (not (not (= var2412 null-ClassObject)))) ; Negate: Cond: $r4 != null  
(define-const var1565 ClassObject (var3819_class$/513887821 "org.apache.log4j.net.SimpleSocketServer")) ; Statement: $r10 = staticinvoke <org.apache.log4j.net.SimpleSocketServer: java.lang.Class class$(java.lang.String)>("org.apache.log4j.net.SimpleSocketServer") 
(define-const var540 ClassObject var1565) ; Statement: <org.apache.log4j.net.SimpleSocketServer: java.lang.Class class$org$apache$log4j$net$SimpleSocketServer> = $r10 
 ; Statement: goto [?= $r5 = virtualinvoke $r10.<java.lang.Class: java.lang.String getName()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var1766 String (getName/-1958580599 var1565)) ; Statement: $r5 = virtualinvoke $r10.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1005 String (append/1560614132 var2881 var1766)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5) 
(declare-const var2881!1 String)
(assert (str.prefixof var2881 var2881!1))
(assert true)
(define-const var2397 String (append/1560614132 var1005 " port configFile")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" port configFile") 
(declare-const var1005!1 String)
(assert (str.prefixof var1005 var1005!1))
(assert true)
(define-const var1744 String (toString/-222306083 var2397)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var863 var1744)) ; Statement: virtualinvoke $r3.<java.io.PrintStream: void println(java.lang.String)>($r9) 

(declare-const var863!1 var3685)
(declare-const var1744!1 String)
;(assert (var1125_exit/142839841 1)) ; Statement: staticinvoke <java.lang.System: void exit(int)>(1) 

(declare-const var533 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {println/1773605060=([java.io.PrintStream, java.lang.String], void), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), var3819_class$/513887821=([java.lang.String], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var1125_exit/142839841=([int], void)}
; {var37=r0, var2361=null_type, var3685=java.io.PrintStream, var1125=java.lang.System, var3117=$r1, var863=$r3, var728=$r2, var2881=$r6, var3819=org.apache.log4j.net.SimpleSocketServer, var2412=$r4, var1565=$r10, var540=<org.apache.log4j.net.SimpleSocketServer: java.lang.Class class$org$apache$log4j$net$SimpleSocketServer>, var1766=$r5, var1005=$r7, var2397=$r8, var1744=$r9, var533=1}
; {r0=var37, null_type=var2361, java.io.PrintStream=var3685, java.lang.System=var1125, $r1=var3117, $r3=var863, $r2=var728, $r6=var2881, org.apache.log4j.net.SimpleSocketServer=var3819, $r4=var2412, $r10=var1565, <org.apache.log4j.net.SimpleSocketServer: java.lang.Class class$org$apache$log4j$net$SimpleSocketServer>=var540, $r5=var1766, $r7=var1005, $r8=var2397, $r9=var1744, 1=var533}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = <java.lang.System: java.io.PrintStream err>;	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>(r0);	$r3 = <java.lang.System: java.io.PrintStream err>;	$r2 = new java.lang.StringBuffer;	specialinvoke $r2.<java.lang.StringBuffer: void <init>()>();	$r6 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Usage: java ");	$r4 = <org.apache.log4j.net.SimpleSocketServer: java.lang.Class class$org$apache$log4j$net$SimpleSocketServer>;	if $r4 != null goto $r10 = <org.apache.log4j.net.SimpleSocketServer: java.lang.Class class$org$apache$log4j$net$SimpleSocketServer>;	$r10 = staticinvoke <org.apache.log4j.net.SimpleSocketServer: java.lang.Class class$(java.lang.String)>("org.apache.log4j.net.SimpleSocketServer");	<org.apache.log4j.net.SimpleSocketServer: java.lang.Class class$org$apache$log4j$net$SimpleSocketServer> = $r10;	goto [?= $r5 = virtualinvoke $r10.<java.lang.Class: java.lang.String getName()>()];	$r5 = virtualinvoke $r10.<java.lang.Class: java.lang.String getName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" port configFile");	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r3.<java.io.PrintStream: void println(java.lang.String)>($r9);	staticinvoke <java.lang.System: void exit(int)>(1);	return
;block_num 3