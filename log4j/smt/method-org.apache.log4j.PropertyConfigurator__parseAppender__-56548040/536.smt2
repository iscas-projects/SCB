(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3104 0)
(declare-sort var3132 0)
(declare-sort var279 0)
(declare-sort var577 0)
(declare-sort var3347 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun registryGet/-571225642 (var3104 String) var577)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var3347_debug/381960894 (String) void)
(declare-const null-var3104 var3104)
(declare-const null-var3132 var3132)
(declare-const null-String String)
(declare-const null-var577 var577)
(declare-const var691 var3104) ; Statement: r0 := @this: org.apache.log4j.PropertyConfigurator 
(assert (not (= var691 null-var3104)))
(declare-const var872 var3132) ; Statement: r10 := @parameter0: java.util.Properties 
(assert (not (= var872 null-var3132)))
(declare-const var2537 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2537 null-String)))
(assert true)
(define-const var2364 var577 (registryGet/-571225642 var691 var2537)) ; Statement: r84 = virtualinvoke r0.<org.apache.log4j.PropertyConfigurator: org.apache.log4j.Appender registryGet(java.lang.String)>(r1) 
 ; Statement: if r84 == null goto $r2 = new java.lang.StringBuffer 
(assert (not (= var2364 null-var577))) ; Negate: Cond: r84 == null  
(define-const var3067 String String-init) ; Statement: $r79 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3067)) ; Statement: specialinvoke $r79.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3067!1 String)
(assert true)
(define-const var2874 String (append/1560614132 var3067!1 "Appender \u0022")) ; Statement: $r80 = virtualinvoke $r79.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Appender \"") 
(declare-const var3067!2 String)
(assert (str.prefixof var3067!1 var3067!2))
(assert true)
(define-const var2478 String (append/1560614132 var2874 var2537)) ; Statement: $r81 = virtualinvoke $r80.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1) 
(declare-const var2874!1 String)
(assert (str.prefixof var2874 var2874!1))
(assert true)
(define-const var433 String (append/1560614132 var2478 "\u0022 was already parsed.")) ; Statement: $r82 = virtualinvoke $r81.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\" was already parsed.") 
(declare-const var2478!1 String)
(assert (str.prefixof var2478 var2478!1))
(assert true)
(define-const var2386 String (toString/-222306083 var433)) ; Statement: $r83 = virtualinvoke $r82.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var3347_debug/381960894 var2386)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r83) 

(declare-const var2386!1 String)
 ; Statement: return r84 
(check-sat)
(get-model)
(get-unsat-core)
; {registryGet/-571225642=([org.apache.log4j.PropertyConfigurator, java.lang.String], org.apache.log4j.Appender), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var3347_debug/381960894=([java.lang.String], void)}
; {var3104=org.apache.log4j.PropertyConfigurator, var691=r0, var3132=java.util.Properties, var872=r10, var2537=r1, var279=null_type, var577=org.apache.log4j.Appender, var2364=r84, var3067=$r79, var2874=$r80, var2478=$r81, var433=$r82, var2386=$r83, var3347=org.apache.log4j.helpers.LogLog}
; {org.apache.log4j.PropertyConfigurator=var3104, r0=var691, java.util.Properties=var3132, r10=var872, r1=var2537, null_type=var279, org.apache.log4j.Appender=var577, r84=var2364, $r79=var3067, $r80=var2874, $r81=var2478, $r82=var433, $r83=var2386, org.apache.log4j.helpers.LogLog=var3347}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.PropertyConfigurator;	r10 := @parameter0: java.util.Properties;	r1 := @parameter1: java.lang.String;	r84 = virtualinvoke r0.<org.apache.log4j.PropertyConfigurator: org.apache.log4j.Appender registryGet(java.lang.String)>(r1);	if r84 == null goto $r2 = new java.lang.StringBuffer;	$r79 = new java.lang.StringBuffer;	specialinvoke $r79.<java.lang.StringBuffer: void <init>()>();	$r80 = virtualinvoke $r79.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Appender \"");	$r81 = virtualinvoke $r80.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1);	$r82 = virtualinvoke $r81.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\" was already parsed.");	$r83 = virtualinvoke $r82.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r83);	return r84
;block_num 2