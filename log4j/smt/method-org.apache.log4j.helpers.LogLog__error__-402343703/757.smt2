(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3875 0)
(declare-sort var2438 0)
(declare-sort var3280 0)
(declare-sort var2284 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun println/1773605060 (var3280 String) void)
(declare-const null-String String)
(declare-const var2438-quietMode Bool)
(declare-const var2284-err var3280)
(declare-const var198 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var198 null-String)))
(define-const var395 Bool var2438-quietMode) ; Statement: $z0 = <org.apache.log4j.helpers.LogLog: boolean quietMode> 
 ; Statement: if $z0 == 0 goto $r1 = <java.lang.System: java.io.PrintStream err> 
(assert (= (ite var395 1 0) 0)) ; Cond: $z0 == 0 
(define-const var780 var3280 var2284-err) ; Statement: $r1 = <java.lang.System: java.io.PrintStream err> 
(define-const var1375 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1375)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1375!1 String)
(assert true)
(define-const var3519 String (append/1560614132 var1375!1 "log4j:ERROR ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("log4j:ERROR ") 
(declare-const var1375!2 String)
(assert (str.prefixof var1375!1 var1375!2))
(assert true)
(define-const var2306 String (append/1560614132 var3519 var198)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r2) 
(declare-const var3519!1 String)
(assert (str.prefixof var3519 var3519!1))
(assert true)
(define-const var2595 String (toString/-222306083 var2306)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var780 var2595)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r5) 

(declare-const var780!1 var3280)
(declare-const var2595!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var198=r2, var3875=null_type, var2438=org.apache.log4j.helpers.LogLog, var395=$z0, var3280=java.io.PrintStream, var2284=java.lang.System, var780=$r1, var1375=$r0, var3519=$r3, var2306=$r4, var2595=$r5}
; {r2=var198, null_type=var3875, org.apache.log4j.helpers.LogLog=var2438, $z0=var395, java.io.PrintStream=var3280, java.lang.System=var2284, $r1=var780, $r0=var1375, $r3=var3519, $r4=var2306, $r5=var2595}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.String;	$z0 = <org.apache.log4j.helpers.LogLog: boolean quietMode>;	if $z0 == 0 goto $r1 = <java.lang.System: java.io.PrintStream err>;	$r1 = <java.lang.System: java.io.PrintStream err>;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("log4j:ERROR ");	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r5);	return
;block_num 2