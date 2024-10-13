(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2827 0)
(declare-sort var135 0)
(declare-sort var1084 0)
(declare-sort var1357 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLevel/-1962581926 (var135) var1084)
(declare-fun toString/2069587822 (var1357) String)
(declare-fun cast-from-var1084-to-var1357 (var1084) var1357)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var2827 var2827)
(declare-const null-var135 var135)
(declare-const null-String String)
(declare-const var1905 var2827) ; Statement: r4 := @this: org.apache.log4j.pattern.LevelPatternConverter 
(assert (not (= var1905 null-var2827)))
(declare-const var524 var135) ; Statement: r1 := @parameter0: org.apache.log4j.spi.LoggingEvent 
(assert (not (= var524 null-var135)))
(declare-const var1593 String) ; Statement: r0 := @parameter1: java.lang.StringBuffer 
(assert (not (= var1593 null-String)))
(assert true)
(define-const var2944 var1084 (getLevel/-1962581926 var524)) ; Statement: $r2 = virtualinvoke r1.<org.apache.log4j.spi.LoggingEvent: org.apache.log4j.Level getLevel()>() 
(assert true)
(define-const var3935 String (toString/2069587822 (cast-from-var1084-to-var1357 var2944))) ; Statement: $r3 = virtualinvoke $r2.<org.apache.log4j.Level: java.lang.String toString()>() 
(assert true)
;(assert (append/1560614132 var1593 var3935)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3) 
(declare-const var1593!1 String)
(assert (str.prefixof var1593 var1593!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getLevel/-1962581926=([org.apache.log4j.spi.LoggingEvent], org.apache.log4j.Level), toString/2069587822=([org.apache.log4j.Priority], java.lang.String), cast-from-var1084-to-var1357=([org.apache.log4j.Level], org.apache.log4j.Priority), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer)}
; {var2827=org.apache.log4j.pattern.LevelPatternConverter, var1905=r4, var135=org.apache.log4j.spi.LoggingEvent, var524=r1, var1593=r0, var1084=org.apache.log4j.Level, var2944=$r2, var1357=org.apache.log4j.Priority, var3935=$r3}
; {org.apache.log4j.pattern.LevelPatternConverter=var2827, r4=var1905, org.apache.log4j.spi.LoggingEvent=var135, r1=var524, r0=var1593, org.apache.log4j.Level=var1084, $r2=var2944, org.apache.log4j.Priority=var1357, $r3=var3935}
;seq <org.apache.log4j.Priority: java.lang.String toString()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r4 := @this: org.apache.log4j.pattern.LevelPatternConverter;	r1 := @parameter0: org.apache.log4j.spi.LoggingEvent;	r0 := @parameter1: java.lang.StringBuffer;	$r2 = virtualinvoke r1.<org.apache.log4j.spi.LoggingEvent: org.apache.log4j.Level getLevel()>();	$r3 = virtualinvoke $r2.<org.apache.log4j.Level: java.lang.String toString()>();	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3);	return
;block_num 1