(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1333 0)
(declare-sort var2299 0)
(declare-sort var3722 0)
(declare-sort var3608 0)
(declare-sort var526 0)
(declare-sort var1772 0)
(declare-sort var2474 0)
(declare-sort var3402 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun var1333_configure/2083061040 (String) void)
(declare-fun var2299-init () var2299)
(declare-fun <init>/1818076365 (var2299 String String String String) void)
(declare-fun var3722-init () var3722)
(declare-fun var3608-init () var3608)
(declare-fun <init>/393586270 (var3608 var526) void)
(declare-fun <init>/30097470 (var3722 var2474) void)
(declare-fun cast-from-var3608-to-var2474 (var3608) var2474)
(declare-fun println/1773605060 (var3402 String) void)
(declare-fun readLine/150542008 (var3722) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var1772-in var526)
(declare-const var1772-out var3402)
(declare-const var1369 (Array Int String)) ; Statement: r0 := @parameter0: java.lang.String[] 
(assert (not (= var1369 null-__Array__Int__String__)))
(define-const var2570 Int (getLength-Arr-String-1 var1369)) ; Statement: $i0 = lengthof r0 
 ; Statement: if $i0 == 5 goto $r7 = r0[0] 
(assert (= var2570 5)) ; Cond: $i0 == 5 
(define-const var3701 String (select var1369 0)) ; Statement: $r7 = r0[0] 
(define-const var1155 String (select var1369 1)) ; Statement: $r8 = r0[1] 
(define-const var1012 String (select var1369 2)) ; Statement: $r9 = r0[2] 
(define-const var3536 String (select var1369 3)) ; Statement: $r10 = r0[3] 
(define-const var272 String (select var1369 4)) ; Statement: $r11 = r0[4] 
(assert true)
(define-const var3555 Bool (endsWith/985337093 var272 ".xml")) ; Statement: $z0 = virtualinvoke $r11.<java.lang.String: boolean endsWith(java.lang.String)>(".xml") 
 ; Statement: if $z0 == 0 goto staticinvoke <org.apache.log4j.PropertyConfigurator: void configure(java.lang.String)>($r11) 
(assert (not (= (ite var3555 1 0) 0))) ; Negate: Cond: $z0 == 0  
;(assert (var1333_configure/2083061040 var272)) ; Statement: staticinvoke <org.apache.log4j.xml.DOMConfigurator: void configure(java.lang.String)>($r11) 

(declare-const var272!1 String)
 ; Statement: goto [?= $r1 = new org.apache.log4j.net.JMSSink] 
(assert true) ; Non Conditional
(define-const var3673 var2299 var2299-init) ; Statement: $r1 = new org.apache.log4j.net.JMSSink 
(assert true)
;(assert (<init>/1818076365 var3673 var3701 var1155 var1012 var3536)) ; Statement: specialinvoke $r1.<org.apache.log4j.net.JMSSink: void <init>(java.lang.String,java.lang.String,java.lang.String,java.lang.String)>($r7, $r8, $r9, $r10) 

(declare-const var3673!1 var2299)
(declare-const var3701!1 String)
(declare-const var1155!1 String)
(declare-const var1012!1 String)
(declare-const var3536!1 String)
(define-const var2727 var3722 var3722-init) ; Statement: $r2 = new java.io.BufferedReader 
(define-const var1859 var3608 var3608-init) ; Statement: $r3 = new java.io.InputStreamReader 
(define-const var1189 var526 var1772-in) ; Statement: $r4 = <java.lang.System: java.io.InputStream in> 
(assert true)
;(assert (<init>/393586270 var1859 var1189)) ; Statement: specialinvoke $r3.<java.io.InputStreamReader: void <init>(java.io.InputStream)>($r4) 

(declare-const var1859!1 var3608)
(declare-const var1189!1 var526)
(assert true)
;(assert (<init>/30097470 var2727 (cast-from-var3608-to-var2474 var1859!1))) ; Statement: specialinvoke $r2.<java.io.BufferedReader: void <init>(java.io.Reader)>($r3) 

(declare-const var2727!1 var3722)
(declare-const var1859!2 var3608)
(define-const var3712 var3402 var1772-out) ; Statement: $r5 = <java.lang.System: java.io.PrintStream out> 
(assert true)
;(assert (println/1773605060 var3712 "Type \u0022exit\u0022 to quit JMSSink.")) ; Statement: virtualinvoke $r5.<java.io.PrintStream: void println(java.lang.String)>("Type \"exit\" to quit JMSSink.") 

(declare-const var3712!1 var3402)
(declare-const var2503 String)
(assert true) ; Non Conditional
(assert true)
(define-const var2409 String (readLine/150542008 var2727!1)) ; Statement: $r12 = virtualinvoke $r2.<java.io.BufferedReader: java.lang.String readLine()>() 
(assert true)
(define-const var1362 Bool (equalsIgnoreCase/-92311102 var2409 "exit")) ; Statement: $z1 = virtualinvoke $r12.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("exit") 
 ; Statement: if $z1 == 0 goto (branch) 
(assert (not (= (ite var1362 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1033 var3402 var1772-out) ; Statement: $r6 = <java.lang.System: java.io.PrintStream out> 
(assert true)
;(assert (println/1773605060 var1033 "Exiting. Kill the application if it does not exit due to daemon threads.")) ; Statement: virtualinvoke $r6.<java.io.PrintStream: void println(java.lang.String)>("Exiting. Kill the application if it does not exit due to daemon threads.") 

(declare-const var1033!1 var3402)
(declare-const var803 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-String-1=([java.lang.String[]], int), endsWith/985337093=([java.lang.String, java.lang.String], boolean), var1333_configure/2083061040=([java.lang.String], void), var2299-init=([], org.apache.log4j.net.JMSSink), <init>/1818076365=([org.apache.log4j.net.JMSSink, java.lang.String, java.lang.String, java.lang.String, java.lang.String], void), var3722-init=([], java.io.BufferedReader), var3608-init=([], java.io.InputStreamReader), <init>/393586270=([java.io.InputStreamReader, java.io.InputStream], void), <init>/30097470=([java.io.BufferedReader, java.io.Reader], void), cast-from-var3608-to-var2474=([java.io.InputStreamReader], java.io.Reader), println/1773605060=([java.io.PrintStream, java.lang.String], void), readLine/150542008=([java.io.BufferedReader], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var1369=r0, var2570=$i0, var3701=$r7, var1155=$r8, var1012=$r9, var3536=$r10, var272=$r11, var3555=$z0, var1333=org.apache.log4j.xml.DOMConfigurator, var2299=org.apache.log4j.net.JMSSink, var3673=$r1, var3722=java.io.BufferedReader, var2727=$r2, var3608=java.io.InputStreamReader, var1859=$r3, var526=java.io.InputStream, var1772=java.lang.System, var1189=$r4, var2474=java.io.Reader, var3402=java.io.PrintStream, var3712=$r5, var2503="Type \"exit\" to quit JMSSink.", var2409=$r12, var1362=$z1, var1033=$r6, var803="Exiting. Kill the application if it does not exit due to daemon threads."}
; {r0=var1369, $i0=var2570, $r7=var3701, $r8=var1155, $r9=var1012, $r10=var3536, $r11=var272, $z0=var3555, org.apache.log4j.xml.DOMConfigurator=var1333, org.apache.log4j.net.JMSSink=var2299, $r1=var3673, java.io.BufferedReader=var3722, $r2=var2727, java.io.InputStreamReader=var3608, $r3=var1859, java.io.InputStream=var526, java.lang.System=var1772, $r4=var1189, java.io.Reader=var2474, java.io.PrintStream=var3402, $r5=var3712, "Type \"exit\" to quit JMSSink."=var2503, $r12=var2409, $z1=var1362, $r6=var1033, "Exiting. Kill the application if it does not exit due to daemon threads."=var803}
;seq <java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String[];	$i0 = lengthof r0;	if $i0 == 5 goto $r7 = r0[0];	$r7 = r0[0];	$r8 = r0[1];	$r9 = r0[2];	$r10 = r0[3];	$r11 = r0[4];	$z0 = virtualinvoke $r11.<java.lang.String: boolean endsWith(java.lang.String)>(".xml");	if $z0 == 0 goto staticinvoke <org.apache.log4j.PropertyConfigurator: void configure(java.lang.String)>($r11);	staticinvoke <org.apache.log4j.xml.DOMConfigurator: void configure(java.lang.String)>($r11);	goto [?= $r1 = new org.apache.log4j.net.JMSSink];	$r1 = new org.apache.log4j.net.JMSSink;	specialinvoke $r1.<org.apache.log4j.net.JMSSink: void <init>(java.lang.String,java.lang.String,java.lang.String,java.lang.String)>($r7, $r8, $r9, $r10);	$r2 = new java.io.BufferedReader;	$r3 = new java.io.InputStreamReader;	$r4 = <java.lang.System: java.io.InputStream in>;	specialinvoke $r3.<java.io.InputStreamReader: void <init>(java.io.InputStream)>($r4);	specialinvoke $r2.<java.io.BufferedReader: void <init>(java.io.Reader)>($r3);	$r5 = <java.lang.System: java.io.PrintStream out>;	virtualinvoke $r5.<java.io.PrintStream: void println(java.lang.String)>("Type \"exit\" to quit JMSSink.");	$r12 = virtualinvoke $r2.<java.io.BufferedReader: java.lang.String readLine()>();	$z1 = virtualinvoke $r12.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("exit");	if $z1 == 0 goto (branch);	$r6 = <java.lang.System: java.io.PrintStream out>;	virtualinvoke $r6.<java.io.PrintStream: void println(java.lang.String)>("Exiting. Kill the application if it does not exit due to daemon threads.");	return
;block_num 6