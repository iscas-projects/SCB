(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var591 0)
(declare-sort var3220 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var591 var591)
(declare-const null-var3220 var3220)
(declare-const null-String String)
(declare-const var2158 var591) ; Statement: r1 := @this: org.apache.log4j.pattern.SequenceNumberPatternConverter 
(assert (not (= var2158 null-var591)))
(declare-const var693 var3220) ; Statement: r2 := @parameter0: org.apache.log4j.spi.LoggingEvent 
(assert (not (= var693 null-var3220)))
(declare-const var3552 String) ; Statement: r0 := @parameter1: java.lang.StringBuffer 
(assert (not (= var3552 null-String)))
(assert true)
;(assert (append/1560614132 var3552 "0")) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("0") 
(declare-const var3552!1 String)
(assert (str.prefixof var3552 var3552!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer)}
; {var591=org.apache.log4j.pattern.SequenceNumberPatternConverter, var2158=r1, var3220=org.apache.log4j.spi.LoggingEvent, var693=r2, var3552=r0}
; {org.apache.log4j.pattern.SequenceNumberPatternConverter=var591, r1=var2158, org.apache.log4j.spi.LoggingEvent=var3220, r2=var693, r0=var3552}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r1 := @this: org.apache.log4j.pattern.SequenceNumberPatternConverter;	r2 := @parameter0: org.apache.log4j.spi.LoggingEvent;	r0 := @parameter1: java.lang.StringBuffer;	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("0");	return
;block_num 1