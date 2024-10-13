(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var224 0)
(declare-sort var1192 0)
(declare-sort var3026 0)
(declare-sort var3298 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun println/1773605060 (var1192 String) void)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var3026_exit/142839841 (Int) void)
(declare-const null-String String)
(declare-const var3026-err var1192)
(declare-const var3298-class$org$apache$log4j$net$JMSSink ClassObject)
(declare-const null-ClassObject ClassObject)
(declare-const var3122 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3122 null-String)))
(define-const var434 var1192 var3026-err) ; Statement: $r1 = <java.lang.System: java.io.PrintStream err> 
(assert true)
;(assert (println/1773605060 var434 var3122)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>(r0) 

(declare-const var434!1 var1192)
(declare-const var3122!1 String)
(define-const var2576 var1192 var3026-err) ; Statement: $r3 = <java.lang.System: java.io.PrintStream err> 
(define-const var3817 String String-init) ; Statement: $r2 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3817)) ; Statement: specialinvoke $r2.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3817!1 String)
(assert true)
(define-const var933 String (append/1560614132 var3817!1 "Usage: java ")) ; Statement: $r6 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Usage: java ") 
(declare-const var3817!2 String)
(assert (str.prefixof var3817!1 var3817!2))
(define-const var673 ClassObject var3298-class$org$apache$log4j$net$JMSSink) ; Statement: $r4 = <org.apache.log4j.net.JMSSink: java.lang.Class class$org$apache$log4j$net$JMSSink> 
 ; Statement: if $r4 != null goto $r10 = <org.apache.log4j.net.JMSSink: java.lang.Class class$org$apache$log4j$net$JMSSink> 
(assert (not (= var673 null-ClassObject))) ; Cond: $r4 != null 
(define-const var904 ClassObject var3298-class$org$apache$log4j$net$JMSSink) ; Statement: $r10 = <org.apache.log4j.net.JMSSink: java.lang.Class class$org$apache$log4j$net$JMSSink> 
(assert true) ; Non Conditional
(assert true)
(define-const var3521 String (getName/-1958580599 var904)) ; Statement: $r5 = virtualinvoke $r10.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3330 String (append/1560614132 var933 var3521)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5) 
(declare-const var933!1 String)
(assert (str.prefixof var933 var933!1))
(assert true)
(define-const var3087 String (append/1560614132 var3330 " TopicConnectionFactoryBindingName TopicBindingName username password configFile")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" TopicConnectionFactoryBindingName TopicBindingName username password configFile") 
(declare-const var3330!1 String)
(assert (str.prefixof var3330 var3330!1))
(assert true)
(define-const var1645 String (toString/-222306083 var3087)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var2576 var1645)) ; Statement: virtualinvoke $r3.<java.io.PrintStream: void println(java.lang.String)>($r9) 

(declare-const var2576!1 var1192)
(declare-const var1645!1 String)
;(assert (var3026_exit/142839841 1)) ; Statement: staticinvoke <java.lang.System: void exit(int)>(1) 

(declare-const var2808 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {println/1773605060=([java.io.PrintStream, java.lang.String], void), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var3026_exit/142839841=([int], void)}
; {var3122=r0, var224=null_type, var1192=java.io.PrintStream, var3026=java.lang.System, var434=$r1, var2576=$r3, var3817=$r2, var933=$r6, var3298=org.apache.log4j.net.JMSSink, var673=$r4, var904=$r10, var3521=$r5, var3330=$r7, var3087=$r8, var1645=$r9, var2808=1}
; {r0=var3122, null_type=var224, java.io.PrintStream=var1192, java.lang.System=var3026, $r1=var434, $r3=var2576, $r2=var3817, $r6=var933, org.apache.log4j.net.JMSSink=var3298, $r4=var673, $r10=var904, $r5=var3521, $r7=var3330, $r8=var3087, $r9=var1645, 1=var2808}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = <java.lang.System: java.io.PrintStream err>;	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>(r0);	$r3 = <java.lang.System: java.io.PrintStream err>;	$r2 = new java.lang.StringBuffer;	specialinvoke $r2.<java.lang.StringBuffer: void <init>()>();	$r6 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Usage: java ");	$r4 = <org.apache.log4j.net.JMSSink: java.lang.Class class$org$apache$log4j$net$JMSSink>;	if $r4 != null goto $r10 = <org.apache.log4j.net.JMSSink: java.lang.Class class$org$apache$log4j$net$JMSSink>;	$r10 = <org.apache.log4j.net.JMSSink: java.lang.Class class$org$apache$log4j$net$JMSSink>;	$r5 = virtualinvoke $r10.<java.lang.Class: java.lang.String getName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" TopicConnectionFactoryBindingName TopicBindingName username password configFile");	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r3.<java.io.PrintStream: void println(java.lang.String)>($r9);	staticinvoke <java.lang.System: void exit(int)>(1);	return
;block_num 3