(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3491 0)
(declare-sort var3962 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lineSep/-1695257063 (var3491) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var3491 var3491)
(declare-const null-var3962 var3962)
(declare-const null-String String)
(declare-const var3829 var3491) ; Statement: r1 := @this: org.apache.log4j.pattern.LineSeparatorPatternConverter 
(assert (not (= var3829 null-var3491)))
(declare-const var1779 var3962) ; Statement: r3 := @parameter0: org.apache.log4j.spi.LoggingEvent 
(assert (not (= var1779 null-var3962)))
(declare-const var1187 String) ; Statement: r0 := @parameter1: java.lang.StringBuffer 
(assert (not (= var1187 null-String)))
(define-const var3172 String (lineSep/-1695257063 var3829)) ; Statement: $r2 = r1.<org.apache.log4j.pattern.LineSeparatorPatternConverter: java.lang.String lineSep> 
(assert true)
;(assert (append/1560614132 var1187 var3172)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var1187!1 String)
(assert (str.prefixof var1187 var1187!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {lineSep/-1695257063=([org.apache.log4j.pattern.LineSeparatorPatternConverter], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer)}
; {var3491=org.apache.log4j.pattern.LineSeparatorPatternConverter, var3829=r1, var3962=org.apache.log4j.spi.LoggingEvent, var1779=r3, var1187=r0, var3172=$r2}
; {org.apache.log4j.pattern.LineSeparatorPatternConverter=var3491, r1=var3829, org.apache.log4j.spi.LoggingEvent=var3962, r3=var1779, r0=var1187, $r2=var3172}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r1 := @this: org.apache.log4j.pattern.LineSeparatorPatternConverter;	r3 := @parameter0: org.apache.log4j.spi.LoggingEvent;	r0 := @parameter1: java.lang.StringBuffer;	$r2 = r1.<org.apache.log4j.pattern.LineSeparatorPatternConverter: java.lang.String lineSep>;	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	return
;block_num 1