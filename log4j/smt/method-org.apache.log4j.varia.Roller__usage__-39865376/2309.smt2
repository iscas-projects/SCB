(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2499 0)
(declare-sort var1707 0)
(declare-sort var1793 0)
(declare-sort var2626 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun println/1773605060 (var1707 String) void)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2626_class$/-835094547 (String) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var1793_exit/142839841 (Int) void)
(declare-const null-String String)
(declare-const var1793-err var1707)
(declare-const var2626-class$org$apache$log4j$varia$Roller ClassObject)
(declare-const null-ClassObject ClassObject)
(declare-const var891 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var891 null-String)))
(define-const var1629 var1707 var1793-err) ; Statement: $r1 = <java.lang.System: java.io.PrintStream err> 
(assert true)
;(assert (println/1773605060 var1629 var891)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>(r0) 

(declare-const var1629!1 var1707)
(declare-const var891!1 String)
(define-const var2934 var1707 var1793-err) ; Statement: $r3 = <java.lang.System: java.io.PrintStream err> 
(define-const var735 String String-init) ; Statement: $r2 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var735)) ; Statement: specialinvoke $r2.<java.lang.StringBuffer: void <init>()>() 

(declare-const var735!1 String)
(assert true)
(define-const var677 String (append/1560614132 var735!1 "Usage: java ")) ; Statement: $r6 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Usage: java ") 
(declare-const var735!2 String)
(assert (str.prefixof var735!1 var735!2))
(define-const var532 ClassObject var2626-class$org$apache$log4j$varia$Roller) ; Statement: $r4 = <org.apache.log4j.varia.Roller: java.lang.Class class$org$apache$log4j$varia$Roller> 
 ; Statement: if $r4 != null goto $r10 = <org.apache.log4j.varia.Roller: java.lang.Class class$org$apache$log4j$varia$Roller> 
(assert (not (not (= var532 null-ClassObject)))) ; Negate: Cond: $r4 != null  
(define-const var545 ClassObject (var2626_class$/-835094547 "org.apache.log4j.varia.Roller")) ; Statement: $r10 = staticinvoke <org.apache.log4j.varia.Roller: java.lang.Class class$(java.lang.String)>("org.apache.log4j.varia.Roller") 
(define-const var2850 ClassObject var545) ; Statement: <org.apache.log4j.varia.Roller: java.lang.Class class$org$apache$log4j$varia$Roller> = $r10 
 ; Statement: goto [?= $r5 = virtualinvoke $r10.<java.lang.Class: java.lang.String getName()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var1033 String (getName/-1958580599 var545)) ; Statement: $r5 = virtualinvoke $r10.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var676 String (append/1560614132 var677 var1033)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5) 
(declare-const var677!1 String)
(assert (str.prefixof var677 var677!1))
(assert true)
(define-const var2053 String (append/1560614132 var676 "host_name port_number")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("host_name port_number") 
(declare-const var676!1 String)
(assert (str.prefixof var676 var676!1))
(assert true)
(define-const var655 String (toString/-222306083 var2053)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var2934 var655)) ; Statement: virtualinvoke $r3.<java.io.PrintStream: void println(java.lang.String)>($r9) 

(declare-const var2934!1 var1707)
(declare-const var655!1 String)
;(assert (var1793_exit/142839841 1)) ; Statement: staticinvoke <java.lang.System: void exit(int)>(1) 

(declare-const var3867 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {println/1773605060=([java.io.PrintStream, java.lang.String], void), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), var2626_class$/-835094547=([java.lang.String], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var1793_exit/142839841=([int], void)}
; {var891=r0, var2499=null_type, var1707=java.io.PrintStream, var1793=java.lang.System, var1629=$r1, var2934=$r3, var735=$r2, var677=$r6, var2626=org.apache.log4j.varia.Roller, var532=$r4, var545=$r10, var2850=<org.apache.log4j.varia.Roller: java.lang.Class class$org$apache$log4j$varia$Roller>, var1033=$r5, var676=$r7, var2053=$r8, var655=$r9, var3867=1}
; {r0=var891, null_type=var2499, java.io.PrintStream=var1707, java.lang.System=var1793, $r1=var1629, $r3=var2934, $r2=var735, $r6=var677, org.apache.log4j.varia.Roller=var2626, $r4=var532, $r10=var545, <org.apache.log4j.varia.Roller: java.lang.Class class$org$apache$log4j$varia$Roller>=var2850, $r5=var1033, $r7=var676, $r8=var2053, $r9=var655, 1=var3867}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = <java.lang.System: java.io.PrintStream err>;	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>(r0);	$r3 = <java.lang.System: java.io.PrintStream err>;	$r2 = new java.lang.StringBuffer;	specialinvoke $r2.<java.lang.StringBuffer: void <init>()>();	$r6 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Usage: java ");	$r4 = <org.apache.log4j.varia.Roller: java.lang.Class class$org$apache$log4j$varia$Roller>;	if $r4 != null goto $r10 = <org.apache.log4j.varia.Roller: java.lang.Class class$org$apache$log4j$varia$Roller>;	$r10 = staticinvoke <org.apache.log4j.varia.Roller: java.lang.Class class$(java.lang.String)>("org.apache.log4j.varia.Roller");	<org.apache.log4j.varia.Roller: java.lang.Class class$org$apache$log4j$varia$Roller> = $r10;	goto [?= $r5 = virtualinvoke $r10.<java.lang.Class: java.lang.String getName()>()];	$r5 = virtualinvoke $r10.<java.lang.Class: java.lang.String getName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("host_name port_number");	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r3.<java.io.PrintStream: void println(java.lang.String)>($r9);	staticinvoke <java.lang.System: void exit(int)>(1);	return
;block_num 3