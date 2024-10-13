(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3598 0)
(declare-sort var1043 0)
(declare-sort var1593 0)
(declare-sort var1421 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun println/1773605060 (var1043 String) void)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1421_class$/-556617040 (String) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var1593_exit/142839841 (Int) void)
(declare-const null-String String)
(declare-const var1593-err var1043)
(declare-const var1421-class$org$apache$log4j$net$JMSSink ClassObject)
(declare-const null-ClassObject ClassObject)
(declare-const var304 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var304 null-String)))
(define-const var848 var1043 var1593-err) ; Statement: $r1 = <java.lang.System: java.io.PrintStream err> 
(assert true)
;(assert (println/1773605060 var848 var304)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>(r0) 

(declare-const var848!1 var1043)
(declare-const var304!1 String)
(define-const var2316 var1043 var1593-err) ; Statement: $r3 = <java.lang.System: java.io.PrintStream err> 
(define-const var1628 String String-init) ; Statement: $r2 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1628)) ; Statement: specialinvoke $r2.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1628!1 String)
(assert true)
(define-const var971 String (append/1560614132 var1628!1 "Usage: java ")) ; Statement: $r6 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Usage: java ") 
(declare-const var1628!2 String)
(assert (str.prefixof var1628!1 var1628!2))
(define-const var654 ClassObject var1421-class$org$apache$log4j$net$JMSSink) ; Statement: $r4 = <org.apache.log4j.net.JMSSink: java.lang.Class class$org$apache$log4j$net$JMSSink> 
 ; Statement: if $r4 != null goto $r10 = <org.apache.log4j.net.JMSSink: java.lang.Class class$org$apache$log4j$net$JMSSink> 
(assert (not (not (= var654 null-ClassObject)))) ; Negate: Cond: $r4 != null  
(define-const var2099 ClassObject (var1421_class$/-556617040 "org.apache.log4j.net.JMSSink")) ; Statement: $r10 = staticinvoke <org.apache.log4j.net.JMSSink: java.lang.Class class$(java.lang.String)>("org.apache.log4j.net.JMSSink") 
(define-const var2340 ClassObject var2099) ; Statement: <org.apache.log4j.net.JMSSink: java.lang.Class class$org$apache$log4j$net$JMSSink> = $r10 
 ; Statement: goto [?= $r5 = virtualinvoke $r10.<java.lang.Class: java.lang.String getName()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var3549 String (getName/-1958580599 var2099)) ; Statement: $r5 = virtualinvoke $r10.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2284 String (append/1560614132 var971 var3549)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5) 
(declare-const var971!1 String)
(assert (str.prefixof var971 var971!1))
(assert true)
(define-const var3977 String (append/1560614132 var2284 " TopicConnectionFactoryBindingName TopicBindingName username password configFile")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" TopicConnectionFactoryBindingName TopicBindingName username password configFile") 
(declare-const var2284!1 String)
(assert (str.prefixof var2284 var2284!1))
(assert true)
(define-const var406 String (toString/-222306083 var3977)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var2316 var406)) ; Statement: virtualinvoke $r3.<java.io.PrintStream: void println(java.lang.String)>($r9) 

(declare-const var2316!1 var1043)
(declare-const var406!1 String)
;(assert (var1593_exit/142839841 1)) ; Statement: staticinvoke <java.lang.System: void exit(int)>(1) 

(declare-const var1155 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {println/1773605060=([java.io.PrintStream, java.lang.String], void), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), var1421_class$/-556617040=([java.lang.String], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var1593_exit/142839841=([int], void)}
; {var304=r0, var3598=null_type, var1043=java.io.PrintStream, var1593=java.lang.System, var848=$r1, var2316=$r3, var1628=$r2, var971=$r6, var1421=org.apache.log4j.net.JMSSink, var654=$r4, var2099=$r10, var2340=<org.apache.log4j.net.JMSSink: java.lang.Class class$org$apache$log4j$net$JMSSink>, var3549=$r5, var2284=$r7, var3977=$r8, var406=$r9, var1155=1}
; {r0=var304, null_type=var3598, java.io.PrintStream=var1043, java.lang.System=var1593, $r1=var848, $r3=var2316, $r2=var1628, $r6=var971, org.apache.log4j.net.JMSSink=var1421, $r4=var654, $r10=var2099, <org.apache.log4j.net.JMSSink: java.lang.Class class$org$apache$log4j$net$JMSSink>=var2340, $r5=var3549, $r7=var2284, $r8=var3977, $r9=var406, 1=var1155}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = <java.lang.System: java.io.PrintStream err>;	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>(r0);	$r3 = <java.lang.System: java.io.PrintStream err>;	$r2 = new java.lang.StringBuffer;	specialinvoke $r2.<java.lang.StringBuffer: void <init>()>();	$r6 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Usage: java ");	$r4 = <org.apache.log4j.net.JMSSink: java.lang.Class class$org$apache$log4j$net$JMSSink>;	if $r4 != null goto $r10 = <org.apache.log4j.net.JMSSink: java.lang.Class class$org$apache$log4j$net$JMSSink>;	$r10 = staticinvoke <org.apache.log4j.net.JMSSink: java.lang.Class class$(java.lang.String)>("org.apache.log4j.net.JMSSink");	<org.apache.log4j.net.JMSSink: java.lang.Class class$org$apache$log4j$net$JMSSink> = $r10;	goto [?= $r5 = virtualinvoke $r10.<java.lang.Class: java.lang.String getName()>()];	$r5 = virtualinvoke $r10.<java.lang.Class: java.lang.String getName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" TopicConnectionFactoryBindingName TopicBindingName username password configFile");	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r3.<java.io.PrintStream: void println(java.lang.String)>($r9);	staticinvoke <java.lang.System: void exit(int)>(1);	return
;block_num 3