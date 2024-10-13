(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var455 0)
(declare-sort var1871 0)
(declare-sort var2778 0)
(declare-sort var2753 0)
(declare-sort var134 0)
(declare-sort var3592 0)
(declare-sort var2030 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun error/827404130 (var3592 var2030) void)
(declare-fun cast-from-var2753-to-var3592 (var2753) var3592)
(declare-fun cast-from-String-to-var2030 (String) var2030)
(declare-const null-var455 var455)
(declare-const null-String String)
(declare-const null-var2778 var2778)
(declare-const var134-logger var2753)
(declare-const var386 var455) ; Statement: r0 := @parameter0: javax.naming.Context 
(assert (not (= var386 null-var455)))
(declare-const var301 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var301 null-String)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3295 var2778) ; Statement: $r3 := @caughtexception 
(assert (not (= var3295 null-var2778)))
(define-const var3771 var2753 var134-logger) ; Statement: $r5 = <org.apache.log4j.net.JMSSink: org.apache.log4j.Logger logger> 
(define-const var3031 String String-init) ; Statement: $r4 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3031)) ; Statement: specialinvoke $r4.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3031!1 String)
(assert true)
(define-const var2713 String (append/1560614132 var3031!1 "Could not find name [")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Could not find name [") 
(declare-const var3031!2 String)
(assert (str.prefixof var3031!1 var3031!2))
(assert true)
(define-const var12 String (append/1560614132 var2713 var301)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1) 
(declare-const var2713!1 String)
(assert (str.prefixof var2713 var2713!1))
(assert true)
(define-const var3741 String (append/1560614132 var12 "].")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].") 
(declare-const var12!1 String)
(assert (str.prefixof var12 var12!1))
(assert true)
(define-const var1891 String (toString/-222306083 var3741)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (error/827404130 (cast-from-var2753-to-var3592 var3771) (cast-from-String-to-var2030 var1891))) ; Statement: virtualinvoke $r5.<org.apache.log4j.Logger: void error(java.lang.Object)>($r9) 

(declare-const var3771!1 var2753)
(declare-const var1891!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), error/827404130=([org.apache.log4j.Category, java.lang.Object], void), cast-from-var2753-to-var3592=([org.apache.log4j.Logger], org.apache.log4j.Category), cast-from-String-to-var2030=([java.lang.String], java.lang.Object)}
; {var455=javax.naming.Context, var386=r0, var301=r1, var1871=null_type, var2778=javax.naming.NameNotFoundException, var3295=$r3, var2753=org.apache.log4j.Logger, var134=org.apache.log4j.net.JMSSink, var3771=$r5, var3031=$r4, var2713=$r6, var12=$r7, var3741=$r8, var1891=$r9, var3592=org.apache.log4j.Category, var2030=java.lang.Object}
; {javax.naming.Context=var455, r0=var386, r1=var301, null_type=var1871, javax.naming.NameNotFoundException=var2778, $r3=var3295, org.apache.log4j.Logger=var2753, org.apache.log4j.net.JMSSink=var134, $r5=var3771, $r4=var3031, $r6=var2713, $r7=var12, $r8=var3741, $r9=var1891, org.apache.log4j.Category=var3592, java.lang.Object=var2030}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: javax.naming.Context;	r1 := @parameter1: java.lang.String;	$r3 := @caughtexception;	$r5 = <org.apache.log4j.net.JMSSink: org.apache.log4j.Logger logger>;	$r4 = new java.lang.StringBuffer;	specialinvoke $r4.<java.lang.StringBuffer: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Could not find name [");	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1);	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].");	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r5.<org.apache.log4j.Logger: void error(java.lang.Object)>($r9);	throw $r3
;block_num 2