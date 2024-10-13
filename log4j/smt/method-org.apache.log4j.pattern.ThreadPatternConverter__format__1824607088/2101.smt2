(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3914 0)
(declare-sort var3589 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getThreadName/-1888294532 (var3589) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var3914 var3914)
(declare-const null-var3589 var3589)
(declare-const null-String String)
(declare-const var2804 var3914) ; Statement: r3 := @this: org.apache.log4j.pattern.ThreadPatternConverter 
(assert (not (= var2804 null-var3914)))
(declare-const var749 var3589) ; Statement: r1 := @parameter0: org.apache.log4j.spi.LoggingEvent 
(assert (not (= var749 null-var3589)))
(declare-const var3083 String) ; Statement: r0 := @parameter1: java.lang.StringBuffer 
(assert (not (= var3083 null-String)))
(assert true)
(define-const var3547 String (getThreadName/-1888294532 var749)) ; Statement: $r2 = virtualinvoke r1.<org.apache.log4j.spi.LoggingEvent: java.lang.String getThreadName()>() 
(assert true)
;(assert (append/1560614132 var3083 var3547)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var3083!1 String)
(assert (str.prefixof var3083 var3083!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getThreadName/-1888294532=([org.apache.log4j.spi.LoggingEvent], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer)}
; {var3914=org.apache.log4j.pattern.ThreadPatternConverter, var2804=r3, var3589=org.apache.log4j.spi.LoggingEvent, var749=r1, var3083=r0, var3547=$r2}
; {org.apache.log4j.pattern.ThreadPatternConverter=var3914, r3=var2804, org.apache.log4j.spi.LoggingEvent=var3589, r1=var749, r0=var3083, $r2=var3547}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r3 := @this: org.apache.log4j.pattern.ThreadPatternConverter;	r1 := @parameter0: org.apache.log4j.spi.LoggingEvent;	r0 := @parameter1: java.lang.StringBuffer;	$r2 = virtualinvoke r1.<org.apache.log4j.spi.LoggingEvent: java.lang.String getThreadName()>();	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	return
;block_num 1