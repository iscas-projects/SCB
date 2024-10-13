(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2009 0)
(declare-sort var3466 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun literal/-841528649 (var2009) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var2009 var2009)
(declare-const null-String String)
(declare-const null-var3466 var3466)
(declare-const var1283 var2009) ; Statement: r1 := @this: org.apache.log4j.helpers.PatternParser$LiteralPatternConverter 
(assert (not (= var1283 null-var2009)))
(declare-const var2353 String) ; Statement: r0 := @parameter0: java.lang.StringBuffer 
(assert (not (= var2353 null-String)))
(declare-const var3358 var3466) ; Statement: r3 := @parameter1: org.apache.log4j.spi.LoggingEvent 
(assert (not (= var3358 null-var3466)))
(define-const var1523 String (literal/-841528649 var1283)) ; Statement: $r2 = r1.<org.apache.log4j.helpers.PatternParser$LiteralPatternConverter: java.lang.String literal> 
(assert true)
;(assert (append/1560614132 var2353 var1523)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var2353!1 String)
(assert (str.prefixof var2353 var2353!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {literal/-841528649=([org.apache.log4j.helpers.PatternParser$LiteralPatternConverter], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer)}
; {var2009=org.apache.log4j.helpers.PatternParser$LiteralPatternConverter, var1283=r1, var2353=r0, var3466=org.apache.log4j.spi.LoggingEvent, var3358=r3, var1523=$r2}
; {org.apache.log4j.helpers.PatternParser$LiteralPatternConverter=var2009, r1=var1283, r0=var2353, org.apache.log4j.spi.LoggingEvent=var3466, r3=var3358, $r2=var1523}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r1 := @this: org.apache.log4j.helpers.PatternParser$LiteralPatternConverter;	r0 := @parameter0: java.lang.StringBuffer;	r3 := @parameter1: org.apache.log4j.spi.LoggingEvent;	$r2 = r1.<org.apache.log4j.helpers.PatternParser$LiteralPatternConverter: java.lang.String literal>;	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	return
;block_num 1