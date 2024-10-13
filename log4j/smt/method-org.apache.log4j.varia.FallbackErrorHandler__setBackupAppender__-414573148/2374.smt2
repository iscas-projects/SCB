(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1742 0)
(declare-sort var573 0)
(declare-sort var3754 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var573_getName/-564791716 (var573) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var3754_debug/381960894 (String) void)
(declare-fun backup/-2057649827 (var1742) var573)
(declare-const null-var1742 var1742)
(declare-const null-var573 var573)
(declare-const var791 var1742) ; Statement: r7 := @this: org.apache.log4j.varia.FallbackErrorHandler 
(assert (not (= var791 null-var1742)))
(declare-const var1806 var573) ; Statement: r1 := @parameter0: org.apache.log4j.Appender 
(assert (not (= var1806 null-var573)))
(define-const var1999 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1999)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1999!1 String)
(assert true)
(define-const var3083 String (append/1560614132 var1999!1 "FB: Setting backup appender to [")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("FB: Setting backup appender to [") 
(declare-const var1999!2 String)
(assert (str.prefixof var1999!1 var1999!2))
(define-const var3004 String (var573_getName/-564791716 var1806)) ; Statement: $r2 = interfaceinvoke r1.<org.apache.log4j.Appender: java.lang.String getName()>() 
(assert true)
(define-const var3859 String (append/1560614132 var3083 var3004)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var3083!1 String)
(assert (str.prefixof var3083 var3083!1))
(assert true)
(define-const var749 String (append/1560614132 var3859 "].")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].") 
(declare-const var3859!1 String)
(assert (str.prefixof var3859 var3859!1))
(assert true)
(define-const var2722 String (toString/-222306083 var749)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var3754_debug/381960894 var2722)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r6) 

(declare-const var2722!1 String)
(declare-const var791!1 var1742)
(assert (not (= var791!1 null-var1742)))
(assert (= (backup/-2057649827 var791!1) var1806)) ; Statement: r7.<org.apache.log4j.varia.FallbackErrorHandler: org.apache.log4j.Appender backup> = r1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), var573_getName/-564791716=([org.apache.log4j.Appender], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var3754_debug/381960894=([java.lang.String], void), backup/-2057649827=([org.apache.log4j.varia.FallbackErrorHandler], org.apache.log4j.Appender)}
; {var1742=org.apache.log4j.varia.FallbackErrorHandler, var791=r7, var573=org.apache.log4j.Appender, var1806=r1, var1999=$r0, var3083=$r3, var3004=$r2, var3859=$r4, var749=$r5, var2722=$r6, var3754=org.apache.log4j.helpers.LogLog}
; {org.apache.log4j.varia.FallbackErrorHandler=var1742, r7=var791, org.apache.log4j.Appender=var573, r1=var1806, $r0=var1999, $r3=var3083, $r2=var3004, $r4=var3859, $r5=var749, $r6=var2722, org.apache.log4j.helpers.LogLog=var3754}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r7 := @this: org.apache.log4j.varia.FallbackErrorHandler;	r1 := @parameter0: org.apache.log4j.Appender;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("FB: Setting backup appender to [");	$r2 = interfaceinvoke r1.<org.apache.log4j.Appender: java.lang.String getName()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].");	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r6);	r7.<org.apache.log4j.varia.FallbackErrorHandler: org.apache.log4j.Appender backup> = r1;	return
;block_num 1