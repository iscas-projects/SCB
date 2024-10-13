(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var541 0)
(declare-sort var1020 0)
(declare-sort var579 0)
(declare-sort var3301 0)
(declare-sort var1892 0)
(declare-sort var2489 0)
(declare-sort var1158 0)
(declare-sort var403 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun var541_configure/-1964612118 (String) void)
(declare-fun var1020-init () var1020)
(declare-fun <init>/1818076365 (var1020 String String String String) void)
(declare-fun var579-init () var579)
(declare-fun var3301-init () var3301)
(declare-fun <init>/393586270 (var3301 var1892) void)
(declare-fun <init>/30097470 (var579 var1158) void)
(declare-fun cast-from-var3301-to-var1158 (var3301) var1158)
(declare-fun println/1773605060 (var403 String) void)
(declare-fun readLine/150542008 (var579) String)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var2489-in var1892)
(declare-const var2489-out var403)
(declare-const var2455 (Array Int String)) ; Statement: r0 := @parameter0: java.lang.String[] 
(assert (not (= var2455 null-__Array__Int__String__)))
(define-const var2272 Int (getLength-Arr-String-1 var2455)) ; Statement: $i0 = lengthof r0 
 ; Statement: if $i0 == 5 goto $r7 = r0[0] 
(assert (= var2272 5)) ; Cond: $i0 == 5 
(define-const var922 String (select var2455 0)) ; Statement: $r7 = r0[0] 
(define-const var1068 String (select var2455 1)) ; Statement: $r8 = r0[1] 
(define-const var3661 String (select var2455 2)) ; Statement: $r9 = r0[2] 
(define-const var2136 String (select var2455 3)) ; Statement: $r10 = r0[3] 
(define-const var831 String (select var2455 4)) ; Statement: $r11 = r0[4] 
(assert true)
(define-const var2727 Bool (endsWith/985337093 var831 ".xml")) ; Statement: $z0 = virtualinvoke $r11.<java.lang.String: boolean endsWith(java.lang.String)>(".xml") 
 ; Statement: if $z0 == 0 goto staticinvoke <org.apache.log4j.PropertyConfigurator: void configure(java.lang.String)>($r11) 
(assert (= (ite var2727 1 0) 0)) ; Cond: $z0 == 0 
;(assert (var541_configure/-1964612118 var831)) ; Statement: staticinvoke <org.apache.log4j.PropertyConfigurator: void configure(java.lang.String)>($r11) 

(declare-const var831!1 String)
(assert true) ; Non Conditional
(define-const var951 var1020 var1020-init) ; Statement: $r1 = new org.apache.log4j.net.JMSSink 
(assert true)
;(assert (<init>/1818076365 var951 var922 var1068 var3661 var2136)) ; Statement: specialinvoke $r1.<org.apache.log4j.net.JMSSink: void <init>(java.lang.String,java.lang.String,java.lang.String,java.lang.String)>($r7, $r8, $r9, $r10) 

(declare-const var951!1 var1020)
(declare-const var922!1 String)
(declare-const var1068!1 String)
(declare-const var3661!1 String)
(declare-const var2136!1 String)
(define-const var3855 var579 var579-init) ; Statement: $r2 = new java.io.BufferedReader 
(define-const var1074 var3301 var3301-init) ; Statement: $r3 = new java.io.InputStreamReader 
(define-const var1079 var1892 var2489-in) ; Statement: $r4 = <java.lang.System: java.io.InputStream in> 
(assert true)
;(assert (<init>/393586270 var1074 var1079)) ; Statement: specialinvoke $r3.<java.io.InputStreamReader: void <init>(java.io.InputStream)>($r4) 

(declare-const var1074!1 var3301)
(declare-const var1079!1 var1892)
(assert true)
;(assert (<init>/30097470 var3855 (cast-from-var3301-to-var1158 var1074!1))) ; Statement: specialinvoke $r2.<java.io.BufferedReader: void <init>(java.io.Reader)>($r3) 

(declare-const var3855!1 var579)
(declare-const var1074!2 var3301)
(define-const var1809 var403 var2489-out) ; Statement: $r5 = <java.lang.System: java.io.PrintStream out> 
(assert true)
;(assert (println/1773605060 var1809 "Type \u0022exit\u0022 to quit JMSSink.")) ; Statement: virtualinvoke $r5.<java.io.PrintStream: void println(java.lang.String)>("Type \"exit\" to quit JMSSink.") 

(declare-const var1809!1 var403)
(declare-const var870 String)
(assert true) ; Non Conditional
(assert true)
(define-const var1833 String (readLine/150542008 var3855!1)) ; Statement: $r12 = virtualinvoke $r2.<java.io.BufferedReader: java.lang.String readLine()>() 
(assert true)
(define-const var778 Bool (equalsIgnoreCase/-92311102 var1833 "exit")) ; Statement: $z1 = virtualinvoke $r12.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("exit") 
 ; Statement: if $z1 == 0 goto (branch) 
(assert (not (= (ite var778 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2876 var403 var2489-out) ; Statement: $r6 = <java.lang.System: java.io.PrintStream out> 
(assert true)
;(assert (println/1773605060 var2876 "Exiting. Kill the application if it does not exit due to daemon threads.")) ; Statement: virtualinvoke $r6.<java.io.PrintStream: void println(java.lang.String)>("Exiting. Kill the application if it does not exit due to daemon threads.") 

(declare-const var2876!1 var403)
(declare-const var3119 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-String-1=([java.lang.String[]], int), endsWith/985337093=([java.lang.String, java.lang.String], boolean), var541_configure/-1964612118=([java.lang.String], void), var1020-init=([], org.apache.log4j.net.JMSSink), <init>/1818076365=([org.apache.log4j.net.JMSSink, java.lang.String, java.lang.String, java.lang.String, java.lang.String], void), var579-init=([], java.io.BufferedReader), var3301-init=([], java.io.InputStreamReader), <init>/393586270=([java.io.InputStreamReader, java.io.InputStream], void), <init>/30097470=([java.io.BufferedReader, java.io.Reader], void), cast-from-var3301-to-var1158=([java.io.InputStreamReader], java.io.Reader), println/1773605060=([java.io.PrintStream, java.lang.String], void), readLine/150542008=([java.io.BufferedReader], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var2455=r0, var2272=$i0, var922=$r7, var1068=$r8, var3661=$r9, var2136=$r10, var831=$r11, var2727=$z0, var541=org.apache.log4j.PropertyConfigurator, var1020=org.apache.log4j.net.JMSSink, var951=$r1, var579=java.io.BufferedReader, var3855=$r2, var3301=java.io.InputStreamReader, var1074=$r3, var1892=java.io.InputStream, var2489=java.lang.System, var1079=$r4, var1158=java.io.Reader, var403=java.io.PrintStream, var1809=$r5, var870="Type \"exit\" to quit JMSSink.", var1833=$r12, var778=$z1, var2876=$r6, var3119="Exiting. Kill the application if it does not exit due to daemon threads."}
; {r0=var2455, $i0=var2272, $r7=var922, $r8=var1068, $r9=var3661, $r10=var2136, $r11=var831, $z0=var2727, org.apache.log4j.PropertyConfigurator=var541, org.apache.log4j.net.JMSSink=var1020, $r1=var951, java.io.BufferedReader=var579, $r2=var3855, java.io.InputStreamReader=var3301, $r3=var1074, java.io.InputStream=var1892, java.lang.System=var2489, $r4=var1079, java.io.Reader=var1158, java.io.PrintStream=var403, $r5=var1809, "Type \"exit\" to quit JMSSink."=var870, $r12=var1833, $z1=var778, $r6=var2876, "Exiting. Kill the application if it does not exit due to daemon threads."=var3119}
;seq <java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String[];	$i0 = lengthof r0;	if $i0 == 5 goto $r7 = r0[0];	$r7 = r0[0];	$r8 = r0[1];	$r9 = r0[2];	$r10 = r0[3];	$r11 = r0[4];	$z0 = virtualinvoke $r11.<java.lang.String: boolean endsWith(java.lang.String)>(".xml");	if $z0 == 0 goto staticinvoke <org.apache.log4j.PropertyConfigurator: void configure(java.lang.String)>($r11);	staticinvoke <org.apache.log4j.PropertyConfigurator: void configure(java.lang.String)>($r11);	$r1 = new org.apache.log4j.net.JMSSink;	specialinvoke $r1.<org.apache.log4j.net.JMSSink: void <init>(java.lang.String,java.lang.String,java.lang.String,java.lang.String)>($r7, $r8, $r9, $r10);	$r2 = new java.io.BufferedReader;	$r3 = new java.io.InputStreamReader;	$r4 = <java.lang.System: java.io.InputStream in>;	specialinvoke $r3.<java.io.InputStreamReader: void <init>(java.io.InputStream)>($r4);	specialinvoke $r2.<java.io.BufferedReader: void <init>(java.io.Reader)>($r3);	$r5 = <java.lang.System: java.io.PrintStream out>;	virtualinvoke $r5.<java.io.PrintStream: void println(java.lang.String)>("Type \"exit\" to quit JMSSink.");	$r12 = virtualinvoke $r2.<java.io.BufferedReader: java.lang.String readLine()>();	$z1 = virtualinvoke $r12.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("exit");	if $z1 == 0 goto (branch);	$r6 = <java.lang.System: java.io.PrintStream out>;	virtualinvoke $r6.<java.io.PrintStream: void println(java.lang.String)>("Exiting. Kill the application if it does not exit due to daemon threads.");	return
;block_num 6