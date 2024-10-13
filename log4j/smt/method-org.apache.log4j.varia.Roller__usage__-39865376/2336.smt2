(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var685 0)
(declare-sort var1418 0)
(declare-sort var211 0)
(declare-sort var3151 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun println/1773605060 (var1418 String) void)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var211_exit/142839841 (Int) void)
(declare-const null-String String)
(declare-const var211-err var1418)
(declare-const var3151-class$org$apache$log4j$varia$Roller ClassObject)
(declare-const null-ClassObject ClassObject)
(declare-const var3676 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3676 null-String)))
(define-const var2183 var1418 var211-err) ; Statement: $r1 = <java.lang.System: java.io.PrintStream err> 
(assert true)
;(assert (println/1773605060 var2183 var3676)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>(r0) 

(declare-const var2183!1 var1418)
(declare-const var3676!1 String)
(define-const var3353 var1418 var211-err) ; Statement: $r3 = <java.lang.System: java.io.PrintStream err> 
(define-const var1869 String String-init) ; Statement: $r2 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1869)) ; Statement: specialinvoke $r2.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1869!1 String)
(assert true)
(define-const var139 String (append/1560614132 var1869!1 "Usage: java ")) ; Statement: $r6 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Usage: java ") 
(declare-const var1869!2 String)
(assert (str.prefixof var1869!1 var1869!2))
(define-const var2633 ClassObject var3151-class$org$apache$log4j$varia$Roller) ; Statement: $r4 = <org.apache.log4j.varia.Roller: java.lang.Class class$org$apache$log4j$varia$Roller> 
 ; Statement: if $r4 != null goto $r10 = <org.apache.log4j.varia.Roller: java.lang.Class class$org$apache$log4j$varia$Roller> 
(assert (not (= var2633 null-ClassObject))) ; Cond: $r4 != null 
(define-const var2904 ClassObject var3151-class$org$apache$log4j$varia$Roller) ; Statement: $r10 = <org.apache.log4j.varia.Roller: java.lang.Class class$org$apache$log4j$varia$Roller> 
(assert true) ; Non Conditional
(assert true)
(define-const var3439 String (getName/-1958580599 var2904)) ; Statement: $r5 = virtualinvoke $r10.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1609 String (append/1560614132 var139 var3439)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5) 
(declare-const var139!1 String)
(assert (str.prefixof var139 var139!1))
(assert true)
(define-const var1846 String (append/1560614132 var1609 "host_name port_number")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("host_name port_number") 
(declare-const var1609!1 String)
(assert (str.prefixof var1609 var1609!1))
(assert true)
(define-const var2188 String (toString/-222306083 var1846)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var3353 var2188)) ; Statement: virtualinvoke $r3.<java.io.PrintStream: void println(java.lang.String)>($r9) 

(declare-const var3353!1 var1418)
(declare-const var2188!1 String)
;(assert (var211_exit/142839841 1)) ; Statement: staticinvoke <java.lang.System: void exit(int)>(1) 

(declare-const var2024 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {println/1773605060=([java.io.PrintStream, java.lang.String], void), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var211_exit/142839841=([int], void)}
; {var3676=r0, var685=null_type, var1418=java.io.PrintStream, var211=java.lang.System, var2183=$r1, var3353=$r3, var1869=$r2, var139=$r6, var3151=org.apache.log4j.varia.Roller, var2633=$r4, var2904=$r10, var3439=$r5, var1609=$r7, var1846=$r8, var2188=$r9, var2024=1}
; {r0=var3676, null_type=var685, java.io.PrintStream=var1418, java.lang.System=var211, $r1=var2183, $r3=var3353, $r2=var1869, $r6=var139, org.apache.log4j.varia.Roller=var3151, $r4=var2633, $r10=var2904, $r5=var3439, $r7=var1609, $r8=var1846, $r9=var2188, 1=var2024}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = <java.lang.System: java.io.PrintStream err>;	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>(r0);	$r3 = <java.lang.System: java.io.PrintStream err>;	$r2 = new java.lang.StringBuffer;	specialinvoke $r2.<java.lang.StringBuffer: void <init>()>();	$r6 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Usage: java ");	$r4 = <org.apache.log4j.varia.Roller: java.lang.Class class$org$apache$log4j$varia$Roller>;	if $r4 != null goto $r10 = <org.apache.log4j.varia.Roller: java.lang.Class class$org$apache$log4j$varia$Roller>;	$r10 = <org.apache.log4j.varia.Roller: java.lang.Class class$org$apache$log4j$varia$Roller>;	$r5 = virtualinvoke $r10.<java.lang.Class: java.lang.String getName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("host_name port_number");	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r3.<java.io.PrintStream: void println(java.lang.String)>($r9);	staticinvoke <java.lang.System: void exit(int)>(1);	return
;block_num 3