(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2858 0)
(declare-sort var2490 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getRenderedMessage/-847539433 (var2490) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var2858 var2858)
(declare-const null-var2490 var2490)
(declare-const null-String String)
(declare-const var307 var2858) ; Statement: r3 := @this: org.apache.log4j.pattern.MessagePatternConverter 
(assert (not (= var307 null-var2858)))
(declare-const var1620 var2490) ; Statement: r1 := @parameter0: org.apache.log4j.spi.LoggingEvent 
(assert (not (= var1620 null-var2490)))
(declare-const var1201 String) ; Statement: r0 := @parameter1: java.lang.StringBuffer 
(assert (not (= var1201 null-String)))
(assert true)
(define-const var862 String (getRenderedMessage/-847539433 var1620)) ; Statement: $r2 = virtualinvoke r1.<org.apache.log4j.spi.LoggingEvent: java.lang.String getRenderedMessage()>() 
(assert true)
;(assert (append/1560614132 var1201 var862)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var1201!1 String)
(assert (str.prefixof var1201 var1201!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getRenderedMessage/-847539433=([org.apache.log4j.spi.LoggingEvent], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer)}
; {var2858=org.apache.log4j.pattern.MessagePatternConverter, var307=r3, var2490=org.apache.log4j.spi.LoggingEvent, var1620=r1, var1201=r0, var862=$r2}
; {org.apache.log4j.pattern.MessagePatternConverter=var2858, r3=var307, org.apache.log4j.spi.LoggingEvent=var2490, r1=var1620, r0=var1201, $r2=var862}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r3 := @this: org.apache.log4j.pattern.MessagePatternConverter;	r1 := @parameter0: org.apache.log4j.spi.LoggingEvent;	r0 := @parameter1: java.lang.StringBuffer;	$r2 = virtualinvoke r1.<org.apache.log4j.spi.LoggingEvent: java.lang.String getRenderedMessage()>();	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	return
;block_num 1