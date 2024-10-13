(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3749 0)
(declare-sort var3059 0)
(declare-sort var2193 0)
(declare-sort var1058 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun println/1773605060 (var3059 String) void)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var2193_exit/142839841 (Int) void)
(declare-const null-String String)
(declare-const var2193-err var3059)
(declare-const var1058-class$org$apache$log4j$net$SimpleSocketServer ClassObject)
(declare-const null-ClassObject ClassObject)
(declare-const var1615 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1615 null-String)))
(define-const var2903 var3059 var2193-err) ; Statement: $r1 = <java.lang.System: java.io.PrintStream err> 
(assert true)
;(assert (println/1773605060 var2903 var1615)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>(r0) 

(declare-const var2903!1 var3059)
(declare-const var1615!1 String)
(define-const var151 var3059 var2193-err) ; Statement: $r3 = <java.lang.System: java.io.PrintStream err> 
(define-const var2218 String String-init) ; Statement: $r2 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2218)) ; Statement: specialinvoke $r2.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2218!1 String)
(assert true)
(define-const var3845 String (append/1560614132 var2218!1 "Usage: java ")) ; Statement: $r6 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Usage: java ") 
(declare-const var2218!2 String)
(assert (str.prefixof var2218!1 var2218!2))
(define-const var3778 ClassObject var1058-class$org$apache$log4j$net$SimpleSocketServer) ; Statement: $r4 = <org.apache.log4j.net.SimpleSocketServer: java.lang.Class class$org$apache$log4j$net$SimpleSocketServer> 
 ; Statement: if $r4 != null goto $r10 = <org.apache.log4j.net.SimpleSocketServer: java.lang.Class class$org$apache$log4j$net$SimpleSocketServer> 
(assert (not (= var3778 null-ClassObject))) ; Cond: $r4 != null 
(define-const var237 ClassObject var1058-class$org$apache$log4j$net$SimpleSocketServer) ; Statement: $r10 = <org.apache.log4j.net.SimpleSocketServer: java.lang.Class class$org$apache$log4j$net$SimpleSocketServer> 
(assert true) ; Non Conditional
(assert true)
(define-const var2536 String (getName/-1958580599 var237)) ; Statement: $r5 = virtualinvoke $r10.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1646 String (append/1560614132 var3845 var2536)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5) 
(declare-const var3845!1 String)
(assert (str.prefixof var3845 var3845!1))
(assert true)
(define-const var1997 String (append/1560614132 var1646 " port configFile")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" port configFile") 
(declare-const var1646!1 String)
(assert (str.prefixof var1646 var1646!1))
(assert true)
(define-const var771 String (toString/-222306083 var1997)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var151 var771)) ; Statement: virtualinvoke $r3.<java.io.PrintStream: void println(java.lang.String)>($r9) 

(declare-const var151!1 var3059)
(declare-const var771!1 String)
;(assert (var2193_exit/142839841 1)) ; Statement: staticinvoke <java.lang.System: void exit(int)>(1) 

(declare-const var3412 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {println/1773605060=([java.io.PrintStream, java.lang.String], void), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var2193_exit/142839841=([int], void)}
; {var1615=r0, var3749=null_type, var3059=java.io.PrintStream, var2193=java.lang.System, var2903=$r1, var151=$r3, var2218=$r2, var3845=$r6, var1058=org.apache.log4j.net.SimpleSocketServer, var3778=$r4, var237=$r10, var2536=$r5, var1646=$r7, var1997=$r8, var771=$r9, var3412=1}
; {r0=var1615, null_type=var3749, java.io.PrintStream=var3059, java.lang.System=var2193, $r1=var2903, $r3=var151, $r2=var2218, $r6=var3845, org.apache.log4j.net.SimpleSocketServer=var1058, $r4=var3778, $r10=var237, $r5=var2536, $r7=var1646, $r8=var1997, $r9=var771, 1=var3412}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = <java.lang.System: java.io.PrintStream err>;	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>(r0);	$r3 = <java.lang.System: java.io.PrintStream err>;	$r2 = new java.lang.StringBuffer;	specialinvoke $r2.<java.lang.StringBuffer: void <init>()>();	$r6 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Usage: java ");	$r4 = <org.apache.log4j.net.SimpleSocketServer: java.lang.Class class$org$apache$log4j$net$SimpleSocketServer>;	if $r4 != null goto $r10 = <org.apache.log4j.net.SimpleSocketServer: java.lang.Class class$org$apache$log4j$net$SimpleSocketServer>;	$r10 = <org.apache.log4j.net.SimpleSocketServer: java.lang.Class class$org$apache$log4j$net$SimpleSocketServer>;	$r5 = virtualinvoke $r10.<java.lang.Class: java.lang.String getName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" port configFile");	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r3.<java.io.PrintStream: void println(java.lang.String)>($r9);	staticinvoke <java.lang.System: void exit(int)>(1);	return
;block_num 3