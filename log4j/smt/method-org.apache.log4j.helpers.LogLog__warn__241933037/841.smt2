(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2685 0)
(declare-sort var511 0)
(declare-sort var589 0)
(declare-sort var970 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun println/1773605060 (var589 String) void)
(declare-const null-String String)
(declare-const var511-quietMode Bool)
(declare-const var970-err var589)
(declare-const var667 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var667 null-String)))
(define-const var2498 Bool var511-quietMode) ; Statement: $z0 = <org.apache.log4j.helpers.LogLog: boolean quietMode> 
 ; Statement: if $z0 == 0 goto $r1 = <java.lang.System: java.io.PrintStream err> 
(assert (= (ite var2498 1 0) 0)) ; Cond: $z0 == 0 
(define-const var377 var589 var970-err) ; Statement: $r1 = <java.lang.System: java.io.PrintStream err> 
(define-const var2790 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2790)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2790!1 String)
(assert true)
(define-const var2349 String (append/1560614132 var2790!1 "log4j:WARN ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("log4j:WARN ") 
(declare-const var2790!2 String)
(assert (str.prefixof var2790!1 var2790!2))
(assert true)
(define-const var505 String (append/1560614132 var2349 var667)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r2) 
(declare-const var2349!1 String)
(assert (str.prefixof var2349 var2349!1))
(assert true)
(define-const var2711 String (toString/-222306083 var505)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var377 var2711)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r5) 

(declare-const var377!1 var589)
(declare-const var2711!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var667=r2, var2685=null_type, var511=org.apache.log4j.helpers.LogLog, var2498=$z0, var589=java.io.PrintStream, var970=java.lang.System, var377=$r1, var2790=$r0, var2349=$r3, var505=$r4, var2711=$r5}
; {r2=var667, null_type=var2685, org.apache.log4j.helpers.LogLog=var511, $z0=var2498, java.io.PrintStream=var589, java.lang.System=var970, $r1=var377, $r0=var2790, $r3=var2349, $r4=var505, $r5=var2711}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.String;	$z0 = <org.apache.log4j.helpers.LogLog: boolean quietMode>;	if $z0 == 0 goto $r1 = <java.lang.System: java.io.PrintStream err>;	$r1 = <java.lang.System: java.io.PrintStream err>;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("log4j:WARN ");	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r5);	return
;block_num 2