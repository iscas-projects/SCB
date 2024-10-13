(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2885 0)
(declare-sort var161 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun literal/758282103 (var2885) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var2885 var2885)
(declare-const null-var161 var161)
(declare-const null-String String)
(declare-const var974 var2885) ; Statement: r1 := @this: org.apache.log4j.pattern.LiteralPatternConverter 
(assert (not (= var974 null-var2885)))
(declare-const var2859 var161) ; Statement: r3 := @parameter0: org.apache.log4j.spi.LoggingEvent 
(assert (not (= var2859 null-var161)))
(declare-const var424 String) ; Statement: r0 := @parameter1: java.lang.StringBuffer 
(assert (not (= var424 null-String)))
(define-const var3269 String (literal/758282103 var974)) ; Statement: $r2 = r1.<org.apache.log4j.pattern.LiteralPatternConverter: java.lang.String literal> 
(assert true)
;(assert (append/1560614132 var424 var3269)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var424!1 String)
(assert (str.prefixof var424 var424!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {literal/758282103=([org.apache.log4j.pattern.LiteralPatternConverter], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer)}
; {var2885=org.apache.log4j.pattern.LiteralPatternConverter, var974=r1, var161=org.apache.log4j.spi.LoggingEvent, var2859=r3, var424=r0, var3269=$r2}
; {org.apache.log4j.pattern.LiteralPatternConverter=var2885, r1=var974, org.apache.log4j.spi.LoggingEvent=var161, r3=var2859, r0=var424, $r2=var3269}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r1 := @this: org.apache.log4j.pattern.LiteralPatternConverter;	r3 := @parameter0: org.apache.log4j.spi.LoggingEvent;	r0 := @parameter1: java.lang.StringBuffer;	$r2 = r1.<org.apache.log4j.pattern.LiteralPatternConverter: java.lang.String literal>;	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	return
;block_num 1