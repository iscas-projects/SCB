(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var529 0)
(declare-sort var1150 0)
(declare-sort var238 0)
(declare-sort var1760 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun key/458878388 (var529) String)
(declare-fun getMDC/1581378960 (var1150 String) var1760)
(declare-const null-var529 var529)
(declare-const null-var1150 var1150)
(declare-const null-String String)
(declare-const null-var1760 var1760)
(declare-const var803 var529) ; Statement: r0 := @this: org.apache.log4j.helpers.PatternParser$MDCPatternConverter 
(assert (not (= var803 null-var529)))
(declare-const var317 var1150) ; Statement: r2 := @parameter0: org.apache.log4j.spi.LoggingEvent 
(assert (not (= var317 null-var1150)))
(define-const var336 String (key/458878388 var803)) ; Statement: $r1 = r0.<org.apache.log4j.helpers.PatternParser$MDCPatternConverter: java.lang.String key> 
 ; Statement: if $r1 != null goto $r3 = r0.<org.apache.log4j.helpers.PatternParser$MDCPatternConverter: java.lang.String key> 
(assert (not (= var336 null-String))) ; Cond: $r1 != null 
(define-const var2281 String (key/458878388 var803)) ; Statement: $r3 = r0.<org.apache.log4j.helpers.PatternParser$MDCPatternConverter: java.lang.String key> 
(assert true)
(define-const var1699 var1760 (getMDC/1581378960 var317 var2281)) ; Statement: r13 = virtualinvoke r2.<org.apache.log4j.spi.LoggingEvent: java.lang.Object getMDC(java.lang.String)>($r3) 
 ; Statement: if r13 != null goto $r4 = virtualinvoke r13.<java.lang.Object: java.lang.String toString()>() 
(assert (not (not (= var1699 null-var1760)))) ; Negate: Cond: r13 != null  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {key/458878388=([org.apache.log4j.helpers.PatternParser$MDCPatternConverter], java.lang.String), getMDC/1581378960=([org.apache.log4j.spi.LoggingEvent, java.lang.String], java.lang.Object)}
; {var529=org.apache.log4j.helpers.PatternParser$MDCPatternConverter, var803=r0, var1150=org.apache.log4j.spi.LoggingEvent, var317=r2, var336=$r1, var238=null_type, var2281=$r3, var1760=java.lang.Object, var1699=r13}
; {org.apache.log4j.helpers.PatternParser$MDCPatternConverter=var529, r0=var803, org.apache.log4j.spi.LoggingEvent=var1150, r2=var317, $r1=var336, null_type=var238, $r3=var2281, java.lang.Object=var1760, r13=var1699}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.log4j.helpers.PatternParser$MDCPatternConverter;	r2 := @parameter0: org.apache.log4j.spi.LoggingEvent;	$r1 = r0.<org.apache.log4j.helpers.PatternParser$MDCPatternConverter: java.lang.String key>;	if $r1 != null goto $r3 = r0.<org.apache.log4j.helpers.PatternParser$MDCPatternConverter: java.lang.String key>;	$r3 = r0.<org.apache.log4j.helpers.PatternParser$MDCPatternConverter: java.lang.String key>;	r13 = virtualinvoke r2.<org.apache.log4j.spi.LoggingEvent: java.lang.Object getMDC(java.lang.String)>($r3);	if r13 != null goto $r4 = virtualinvoke r13.<java.lang.Object: java.lang.String toString()>();	return null
;block_num 3